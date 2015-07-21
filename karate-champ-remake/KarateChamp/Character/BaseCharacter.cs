using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace KarateChamp {

    public enum CharacterState {
        Idle,
        Fall,
        Forward,             // LJ: Front  RJ: None
        UpperLungePunch,     // LJ: Front  RJ: Up
        MiddleLungePunch,    // LJ: Front  RJ: Rigth
        ChangeDirection,     // LJ: Front  RJ: Left
        Withdraw,            // LJ: Back   RJ: None
        UpperBlock,          // LJ: Back   RJ: None           Mod: Incoming Upper Attack
        MiddleBlock,         // LJ: Back   RJ: None           Mod: Incoming Middle Attack
        UpperPunch,          // LJ: Back   RJ: Up    
        BackRoundKick,       // LJ: Back   RJ: Right 
        Jump,                // LJ: Up     RJ: None
        ForwardSomersault,   // LJ: Up     RJ: Down
        BackwardSomersault,  // LJ: Up     RJ: Up
        JumpingSideKick,     // LJ: Up     RJ: Right 
        JumpingBackKick,     // LJ: Up     RJ: Left 
        Squat,               // LJ: Down   RJ: None
        FrontFootSweep,      // LJ: Down   RJ: Down or Right
        BackFootSweep,       // LJ: Down   RJ: Left
        DuckingReversePunch, // LJ: Down   RJ: Up
        FrontKick,           // LJ: None   RJ: Right
        MiddleReversePunch,  // LJ: None   RJ: Right          Mod: Close to Opponent
        LowKick,             // LJ: None   RJ: Down
        RoundKick,           // LJ: None   RJ: Up 
        BackKick,            // LJ: None   RJ: Left 
        Hadouken,
        CheckCheckTchugen
    }

    public class BaseCharacter : GameObject {
        const float scaleAdjust = 2.5f;
        public const float speedWalk = 45f * scaleAdjust;
        public const float speedSomersault = 260f * scaleAdjust;
        public const float speedWalkSideKick = 60 * scaleAdjust;
        public const float speedJumpSideKick = 210f * scaleAdjust;
        public const float speedJump = 200f * scaleAdjust;
        public const float gravityPull = 12f * scaleAdjust;
        public const float floor = 430;
        public bool canControl = true;

        public BaseCharacter Opponent { get; set; }
        public CharacterState state = CharacterState.Idle;
        public Vector2 velocity = Vector2.Zero;
        CharacterState previousState;

        Animator animator = new Animator();

        Animation idle;
        Animation forwardFar;
        Animation withdrawFar;
        Animation forwardClose;
        Animation withdrawClose;
        Animation jump;
        Animation forwardSomersault;
        Animation backwardSomersault;
        Animation squat;
        Animation fallSide;
        Animation fallDown;
        Animation fallForward;
        Animation fallForward2;
        Animation fallBack;

        Block currentBlock;
        Attack currentAttack;

        public BaseCharacter(Texture2D spriteSheet, MainGame.Tag tag, Vector2 position, Orientation orientation, string name, MainGame game)
            : base(spriteSheet, tag, position, orientation, name, game) {

            uvRect = new Rectangle(0, 0, 140, 53);
            idle = new Animation(new Point(uvRect.Width, uvRect.Height * 0), 5, 1, 0.00f);
            forwardFar = new Animation(new Point(uvRect.Width, uvRect.Height * 20), 0, 6, 0.1f);
            withdrawFar = new Animation(new Point(uvRect.Width, uvRect.Height * 0), 0, 6, 0.1f);
            forwardClose = new Animation(new Point(uvRect.Width, uvRect.Height * 0), 12, 15, 0.13f);
            withdrawClose = new Animation(new Point(uvRect.Width, uvRect.Height * 0), 14, 3, 0.13f);
            jump = new Animation(new Point(uvRect.Width, uvRect.Height * 9), 0, 6, 0.10f);
            forwardSomersault = new Animation(new Point(uvRect.Width, uvRect.Height * 10), 0, 9, 0.10f);
            backwardSomersault = new Animation(new Point(uvRect.Width, uvRect.Height * 11), 0, 11, 0.10f);
            squat = new Animation(new Point(uvRect.Width, uvRect.Height * 18), 0, 3, 0.10f);

            fallSide = new Animation(new Point(uvRect.Width, uvRect.Height * 18), 4, 6, 0.10f);
            fallDown = new Animation(new Point(uvRect.Width, uvRect.Height * 18), 8, 11, 0.10f);
            fallForward = new Animation(new Point(uvRect.Width, uvRect.Height * 19), 4, 7, 0.10f);
            fallForward2 = new Animation(new Point(uvRect.Width, uvRect.Height * 19), 8, 11, 0.10f);
            fallBack = new Animation(new Point(uvRect.Width, uvRect.Height * 19), 0, 3, 0.10f);

            velocity = Vector2.Zero;
            uvRect.Location = new Point(uvRect.Width * 5, uvRect.Height * 0);
        }

        void EvalInput(GameTime gameTime, CharacterState input) {
            //System.Diagnostics.Debug.WriteLine("State: " + state.ToString() + " Input: " + input.ToString());
            if (state == CharacterState.Fall)
                input = CharacterState.Fall;

            if (input == state) {
                switch (state) {
                    // States here can be change even if input doesn't change
                    case CharacterState.Jump:
                    case CharacterState.ForwardSomersault:
                    case CharacterState.BackwardSomersault:
                    case CharacterState.JumpingSideKick:
                        break;
                    // All other states will end here if input doesn't change
                    default:
                        return;
                }
            }

            switch (state) {
                default:
                case CharacterState.Idle:
                case CharacterState.Forward:
                case CharacterState.Withdraw:
                case CharacterState.ChangeDirection:
                    ChangeState(input, gameTime);
                    break;
                case CharacterState.Squat:
                    ChangeState(input, gameTime);
                    break;
                case CharacterState.Jump:
                case CharacterState.ForwardSomersault:
                case CharacterState.BackwardSomersault:
                    if (animator.state == Animator.State.Stop && IsGrounded()) {
                        ChangeState(input, gameTime);
                    }
                    break;
                case CharacterState.UpperLungePunch:
                case CharacterState.MiddleLungePunch:
                case CharacterState.UpperPunch:
                case CharacterState.BackRoundKick:
                case CharacterState.FrontFootSweep:
                case CharacterState.BackFootSweep:
                case CharacterState.DuckingReversePunch:
                case CharacterState.FrontKick:
                case CharacterState.MiddleReversePunch:
                case CharacterState.LowKick:
                case CharacterState.RoundKick:
                case CharacterState.BackKick:
                case CharacterState.JumpingSideKick:
                case CharacterState.Hadouken:
                case CharacterState.CheckCheckTchugen:
                    if (!currentAttack.Locked) {
                        ChangeState(input, gameTime);
                    }
                    break;
                case CharacterState.JumpingBackKick:
                    if (!currentAttack.Locked) {
                        Flip();
                        ChangeState(input, gameTime);
                    }
                    break;
                case CharacterState.UpperBlock:
                case CharacterState.MiddleBlock:
                    if (!currentBlock.Locked) {
                        currentBlock = null;
                        ChangeState(input, gameTime);
                    }
                    break;
                case CharacterState.Fall:
                    ChangeState(input, gameTime);
                    break;
            }
        }

        void ChangeState(CharacterState newState, GameTime gameTime) {

            previousState = state;
            state = newState;

            System.Diagnostics.Debug.WriteLine("OnEntry: State: " + state.ToString() + " Name: " + name);
            // On exit
            switch (previousState) {
                default:
                case CharacterState.Jump:
                case CharacterState.ForwardSomersault:
                case CharacterState.BackwardSomersault:
                case CharacterState.JumpingSideKick:
                    velocity = Vector2.Zero;
                    break;
            }
            // On Entry
            switch (state) {
                default:
                case CharacterState.Idle:
                    velocity = Vector2.Zero;
                    animator.Play(idle, this, gameTime);
                    break;

                case CharacterState.Fall:
                    velocity = Vector2.Zero;
                    animator.Play(GetFallingAnimation(CharacterState.UpperLungePunch), this, gameTime);
                    System.Diagnostics.Debug.WriteLine("CharacterState.Fall");
                    break;

                case CharacterState.Forward:
                    velocity.Y = 0.0f;
                    if (orientation == Orientation.Right)
                        velocity.X = speedWalk;
                    else
                        velocity.X = -speedWalk;
                    animator.PlayLoop(forwardFar, this, gameTime);
                    break;

                case CharacterState.ChangeDirection:
                    velocity = Vector2.Zero;
                    if (Opponent.position.X > position.X)
                        orientation = Orientation.Right;
                    else if ((Opponent.position.X < position.X))
                        orientation = Orientation.Left;
                    break;

                case CharacterState.Withdraw:
                    velocity.Y = 0.0f;
                    if (orientation == Orientation.Right)
                        velocity.X = -speedWalk;
                    else
                        velocity.X = speedWalk;
                    animator.PlayLoop(withdrawFar, this, gameTime);
                    break;

                case CharacterState.UpperBlock:
                    velocity = Vector2.Zero;
                    currentAttack = null;
                    Animation upperBlockAnimation = new Animation(new Point(uvRect.Width, uvRect.Height * 16), 0, 5, 0.10f);
                    currentBlock = new Block(state, upperBlockAnimation, 4, Location.Upper, this);
                    currentBlock.Start(gameTime);
                    break;
                case CharacterState.MiddleBlock:
                    velocity = Vector2.Zero;
                    currentAttack = null;
                    Animation middleBlockAnimation = new Animation(new Point(uvRect.Width, uvRect.Height * 17), 0, 6, 0.10f);
                    currentBlock = new Block(state, middleBlockAnimation, 5, Location.Middle, this);
                    currentBlock.Start(gameTime);
                    break;

                case CharacterState.Jump:
                    animator.Play(jump, this, gameTime);
                    break;

                case CharacterState.ForwardSomersault:
                    animator.Play(forwardSomersault, this, gameTime);
                    break;

                case CharacterState.BackwardSomersault:
                    animator.Play(backwardSomersault, this, gameTime);
                    break;

                case CharacterState.Squat:
                    velocity = Vector2.Zero;

                    if (previousState == CharacterState.BackFootSweep || previousState == CharacterState.FrontFootSweep) {
                        Animation fastSquat = new Animation(new Point(uvRect.Width, uvRect.Height * 18), 2, 1, 0.10f);
                        animator.Play(fastSquat, this, gameTime);
                    }
                    else {
                        animator.Play(squat, this, gameTime);
                    }
                    break;

                case CharacterState.UpperLungePunch:
                    velocity = Vector2.Zero;
                    currentAttack = CreateAttack(state, 12, 10, 5, 0.10f, Location.Upper);
                    currentAttack.Start(gameTime);
                    break;

                case CharacterState.MiddleLungePunch:
                    velocity = Vector2.Zero;
                    currentAttack = CreateAttack(state, 13, 10, 5, 0.10f, Location.Middle);
                    currentAttack.Start(gameTime);
                    break;

                case CharacterState.UpperPunch:
                    velocity = Vector2.Zero;
                    currentAttack = CreateAttack(state, 12, 10, 5, 0.10f, Location.Upper);
                    currentAttack.Start(gameTime);
                    break;

                case CharacterState.BackRoundKick:
                    velocity = Vector2.Zero;
                    currentAttack = CreateAttack(state, 4, 10, 5, 0.10f, Location.Upper);
                    currentAttack.Start(gameTime);
                    break;

                case CharacterState.JumpingSideKick:
                    currentAttack = CreateAttack(state, 9, 10, 6, 0.10f, Location.Upper);
                    currentAttack.Start(gameTime);
                    break;

                case CharacterState.JumpingBackKick:
                    velocity = Vector2.Zero;
                    currentAttack = CreateAttack(state, 6, 10, 5, 0.10f, Location.Upper);
                    currentAttack.Start(gameTime);
                    break;

                case CharacterState.FrontFootSweep:
                    velocity = Vector2.Zero;
                    if (previousState == CharacterState.Squat)
                        currentAttack = CreateAttack(state, 3, 8, 10, 5, 0.10f, Location.Lower);
                    else
                        currentAttack = CreateAttack(state, 8, 10, 5, 0.10f, Location.Lower);
                    currentAttack.Start(gameTime);
                    break;

                case CharacterState.BackFootSweep:
                    velocity = Vector2.Zero;
                    if (previousState == CharacterState.Squat)
                        currentAttack = CreateAttack(state, 3, 7, 12, 5, 0.10f, Location.Lower);
                    else
                        currentAttack = CreateAttack(state, 7, 12, 5, 0.10f, Location.Lower);
                    currentAttack.Start(gameTime);
                    break;

                case CharacterState.DuckingReversePunch:
                    velocity = Vector2.Zero;
                    currentAttack = CreateAttack(state, 15, 12, 5, 0.10f, Location.Middle);
                    currentAttack.Start(gameTime);
                    break;

                case CharacterState.FrontKick:
                    velocity = Vector2.Zero;
                    currentAttack = CreateAttack(state, 2, 10, 5, 0.10f, Location.Middle);
                    currentAttack.Start(gameTime);
                    break;

                case CharacterState.MiddleReversePunch:
                    velocity = Vector2.Zero;
                    currentAttack = CreateAttack(state, 14, 7, 3, 0.10f, Location.Middle);
                    currentAttack.Start(gameTime);
                    break;

                case CharacterState.LowKick:
                    velocity = Vector2.Zero;
                    currentAttack = CreateAttack(state, 3, 11, 5, 0.10f, Location.Lower);
                    currentAttack.Start(gameTime);
                    break;

                case CharacterState.RoundKick:
                    velocity = Vector2.Zero;
                    currentAttack = CreateAttack(state, 1, 10, 4, 0.10f, Location.Upper);
                    currentAttack.Start(gameTime);
                    break;

                case CharacterState.BackKick:
                    velocity = Vector2.Zero;
                    currentAttack = CreateAttack(state, 5, 9, 4, 0.10f, Location.Middle);
                    currentAttack.Start(gameTime);
                    break;

                case CharacterState.Hadouken:
                    velocity = Vector2.Zero;
                    currentAttack = CreateAttack(state, 1, 9, 4, 0.04f, Location.Middle);
                    currentAttack.Start(gameTime);
                    break;

                case CharacterState.CheckCheckTchugen:
                    velocity = Vector2.Zero;
                    currentAttack = CreateAttack(state, 2, 12, 3, 0.06f, Location.Upper);
                    currentAttack.Start(gameTime);
                    break;
            }
        }

        void StateMachine(GameTime gameTime, CharacterState input) {
            EvalInput(gameTime, input);
            if (name == "p1") {
                //System.Diagnostics.Debug.WriteLine("State: " + input.ToString());
            }
            switch (state) {
                case CharacterState.ChangeDirection:
                    break;
                default:
                case CharacterState.Idle:
                case CharacterState.Squat:
                case CharacterState.Forward:
                case CharacterState.Withdraw:
                    animator.Update();
                    break;

                case CharacterState.Fall:
                    animator.Update();
                    break;

                case CharacterState.Jump:
                    if (animator.FrameIndex == 3) {
                        velocity = new Vector2(0, -speedJump);
                    }
                    animator.Update();
                    break;

                case CharacterState.BackwardSomersault:
                    if (animator.FrameIndex == 3) {
                        if (orientation == Orientation.Right)
                            velocity = new Vector2(-speedWalk, -speedSomersault);
                        else
                            velocity = new Vector2(speedWalk, -speedSomersault);
                    }
                    animator.Update();
                    break;


                case CharacterState.ForwardSomersault:
                    if (animator.FrameIndex == 3)
                        if (orientation == Orientation.Right)
                            velocity = new Vector2(speedWalk, -speedSomersault);
                        else
                            velocity = new Vector2(-speedWalk, -speedSomersault);
                    animator.Update();
                    break;

                case CharacterState.JumpingSideKick:
                    if (currentAttack.animator.FrameIndex == 3) {
                        if (orientation == Orientation.Right)
                            velocity = new Vector2(speedWalk, -speedJumpSideKick);
                        else
                            velocity = new Vector2(-speedWalk, -speedJumpSideKick);
                    }
                    currentAttack.Execute(input, gameTime);
                    break;

                case CharacterState.JumpingBackKick:
                case CharacterState.UpperLungePunch:
                case CharacterState.MiddleLungePunch:
                case CharacterState.UpperPunch:
                case CharacterState.BackRoundKick:
                case CharacterState.FrontFootSweep:
                case CharacterState.BackFootSweep:
                case CharacterState.DuckingReversePunch:
                case CharacterState.FrontKick:
                case CharacterState.MiddleReversePunch:
                case CharacterState.LowKick:
                case CharacterState.RoundKick:
                case CharacterState.BackKick:
                case CharacterState.Hadouken:
                    currentAttack.Execute(input, gameTime);
                    break;
                case CharacterState.CheckCheckTchugen:
                    if (currentAttack.animator.FrameIndex == 4) {
                        if (orientation == Orientation.Right)
                            velocity = new Vector2(255, 0);
                        else
                            velocity = new Vector2(-255, 0);
                    }
                    currentAttack.Execute(input, gameTime);
                    break;
                case CharacterState.UpperBlock:
                case CharacterState.MiddleBlock:
                    currentBlock.Execute(input, gameTime);
                    break;
            }
        }

        protected void BaseUpdate(GameTime gameTime, CharacterState input) {
            if (canControl)
                StateMachine(gameTime, input);
            ApplyPhysics(gameTime);
            UpdateCollisionPosition();
        }

        public bool TakeHit(Location attackLocation, GameTime gameTime) {
            System.Diagnostics.Debug.WriteLine("Take Hit!");
            if (currentBlock == null) {
                ChangeState(CharacterState.Fall, gameTime);
                return true;
            }
            else if (currentBlock.HitLocation != attackLocation) {
                ChangeState(CharacterState.Fall, gameTime);
                return true;
            }
            else {
                return false;
            }
        }

        Animation GetFallingAnimation(CharacterState attackState) {

            switch (attackState) {
                default:
                case CharacterState.UpperLungePunch:
                case CharacterState.MiddleLungePunch:
                case CharacterState.UpperPunch:
                case CharacterState.RoundKick:
                case CharacterState.BackKick:
                case CharacterState.BackRoundKick:
                case CharacterState.FrontKick:
                case CharacterState.JumpingBackKick:
                case CharacterState.DuckingReversePunch:
                case CharacterState.MiddleReversePunch:
                case CharacterState.LowKick:
                case CharacterState.FrontFootSweep:
                    return fallDown;
            }
        }

        protected Modifier CheckBlockModifier(CharacterState state) {
            if (CanBlock() && Vector2.Distance(position, Opponent.position) < 70) {
                //    System.Diagnostics.Debug.WriteLine("Distance: " + Vector2.Distance(position, Opponent.position));
                switch (state) {
                    default:
                        return Modifier.None;

                    case CharacterState.UpperLungePunch:
                    case CharacterState.UpperPunch:
                    case CharacterState.BackRoundKick:
                    case CharacterState.JumpingSideKick:
                    case CharacterState.JumpingBackKick:
                    case CharacterState.RoundKick:
                        return Modifier.IncomingUpperAttack;

                    case CharacterState.MiddleLungePunch:
                    case CharacterState.DuckingReversePunch:
                    case CharacterState.FrontKick:
                    case CharacterState.MiddleReversePunch:
                    case CharacterState.BackKick:
                        return Modifier.IncomingMiddleAttack;

                    case CharacterState.FrontFootSweep:
                    case CharacterState.BackFootSweep:
                    case CharacterState.LowKick:
                        return Modifier.None;
                }
            }
            else
                return Modifier.None;
        }

        bool CanBlock() {
            if (position.X > Opponent.position.X) {
                if (orientation == GameObject.Orientation.Left)
                    return true;
                else
                    return false;
            }
            else {
                if (orientation == GameObject.Orientation.Right)
                    return true;
                else
                    return false;
            }
        }

        public bool IsGrounded() {
            float characterFeet = position.Y + uvRect.Height;
            return (characterFeet >= floor);
        }

        protected void ApplyPhysics(GameTime gameTime) {
            if (IsGrounded()) {
                position.Y = floor - uvRect.Height;
            }
            else {
                velocity.Y += gravityPull;
            }
            position += velocity * (float)gameTime.ElapsedGameTime.TotalSeconds;
        }

        Attack CreateAttack(CharacterState state, int offset_Y, int size, int hitFrame, float speed, Location location) {
            Animation animation = new Animation(new Point(uvRect.Width, uvRect.Height * offset_Y), 0, size, speed);
            return new Attack(state, animation, hitFrame, location, this);
        }

        Attack CreateAttack(CharacterState state, int startFrame, int offset_Y, int size, int hitFrame, float speed, Location location) {
            Animation animation = new Animation(new Point(uvRect.Width, uvRect.Height * offset_Y), startFrame, size, speed);
            return new Attack(state, animation, hitFrame, location, this);
        }

        public Vector2 ScaleAdjust(Vector2 value) {
            return value * 2.5f;
        }

        public float ScaleAdjust(float value) {
            return value * scaleAdjust;
        }
    }
}