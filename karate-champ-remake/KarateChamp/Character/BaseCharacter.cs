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
        DuckingReversePunch, // LJ: Down   RJ: Up
        FrontKick,           // LJ: None   RJ: Right
        MiddleReversePunch,  // LJ: None   RJ: Right          Mod: Close to Opponent
        LowKick,             // LJ: None   RJ: Down
        RoundKick,           // LJ: None   RJ: Up 
        BackKick,            // LJ: None   RJ: Left 
    }

    public class BaseCharacter : GameObject {
        public const float speedWalk = 50f;
        public const float speedJump = 350f;
        public const float gravityPull = 12f;
        public const float floor = 330;

        public BaseCharacter Opponent { get; set;}
        public CharacterState state = CharacterState.Idle;
        public Vector2 velocity = Vector2.Zero;

        Animator animator = new Animator();
        Animation idle;
        Animation forward;
        Animation changeDirection;
        Animation withdraw;
        Animation upperBlock;
        Animation middleBlock;
        Animation jump;
        Animation forwardSomersault;
        Animation backwardSomersault;
        Animation squat;
        Attack upperLungePunch;
        Attack middleLungePunch;
        Attack upperPunch;
        Attack backRoundKick;
        Attack jumpingSideKick;
        Attack jumpingBackKick;
        Attack frontFootSweep;
        Attack duckingReversePunch;
        Attack frontKick;
        Attack middleReversePunch;
        Attack lowKick;
        Attack roundKick;
        Attack backKick;

        public BaseCharacter() {
            uvRect = new Rectangle(0, 0, 83, 53);
            idle = new Animation(new Point(uvRect.Width, uvRect.Height * 0), 6, 1, 0.10f);
            forward = new Animation(new Point(uvRect.Width, uvRect.Height * 0), 6, 12, 0.10f);
            withdraw = new Animation(new Point(uvRect.Width, uvRect.Height * 0), 6, 12, 0.10f);
            forwardSomersault = new Animation(new Point(uvRect.Width, uvRect.Height * 10), 0, 10, 0.10f);
            backwardSomersault = new Animation(new Point(uvRect.Width, uvRect.Height * 11), 0, 10, 0.10f);
        }

        void ChangeState(GameTime gameTime, CharacterState input) {
            //System.Diagnostics.Debug.WriteLine("State: " + state.ToString() + " Input: " + input.ToString());
            state = input;
            switch (input) {
                default:
                case CharacterState.Idle:
                    velocity = Vector2.Zero;
                    animator.PlayLoop(idle, this, gameTime);
                    break;

                case CharacterState.Forward:
                    if (orientation == Orientation.Right)
                        velocity.X = speedWalk;
                    else
                        velocity.X = -speedWalk;
                    animator.PlayLoop(forward, this, gameTime);
                    break;

                case CharacterState.ChangeDirection:
                    velocity = Vector2.Zero;
                    Flip();
                    break;

                case CharacterState.Withdraw:
                    if (orientation == Orientation.Right)
                        velocity.X = -speedWalk;
                    else
                        velocity.X = speedWalk;
                    animator.PlayLoop(withdraw, this, gameTime);
                    break;

                case CharacterState.ForwardSomersault:
                    if (uvRect.Location == new Point(uvRect.Width * 2, uvRect.Height * 10))
                        if (orientation == Orientation.Right)
                            velocity = new Vector2(speedWalk, -speedJump);
                        else
                            velocity = new Vector2(-speedWalk, -speedJump);
                        
                    animator.Play(forwardSomersault, this, gameTime);
                    break;

                case CharacterState.BackwardSomersault:
                    if (uvRect.Location == new Point(uvRect.Width * 2, uvRect.Height * 11))
                        if (orientation == Orientation.Right)
                            velocity = new Vector2(-speedWalk, -speedJump);
                        else
                            velocity = new Vector2(speedWalk, -speedJump);
                    animator.Play(backwardSomersault, this, gameTime);
                    break;

                case CharacterState.UpperLungePunch:
                    velocity = Vector2.Zero;
                    UpperLungePunch();
                    break;

                case CharacterState.MiddleLungePunch:
                    velocity = Vector2.Zero;
                    MiddleLungePunch();
                    break;

                case CharacterState.UpperPunch:
                    velocity = Vector2.Zero;
                    UpperPunch();
                    break;

                case CharacterState.BackRoundKick:
                    velocity = Vector2.Zero;
                    BackRoundKick();
                    break;

                case CharacterState.JumpingSideKick:
                    velocity = Vector2.Zero;
                    JumpingSideKick();
                    break;

                case CharacterState.JumpingBackKick:
                    velocity = Vector2.Zero;
                    JumpingBackKick();
                    break;

                case CharacterState.FrontFootSweep:
                    velocity = Vector2.Zero;
                    FrontFootSweep();
                    break;

                case CharacterState.DuckingReversePunch:
                    velocity = Vector2.Zero;
                    DuckingReversePunch();
                    break;

                case CharacterState.FrontKick:
                    velocity = Vector2.Zero;
                    FrontKick();
                    break;

                case CharacterState.MiddleReversePunch:
                    velocity = Vector2.Zero;
                    MiddleReversePunch();
                    break;

                case CharacterState.LowKick:
                    velocity = Vector2.Zero;
                    LowKick();
                    break;

                case CharacterState.RoundKick:
                    velocity = Vector2.Zero;
                    RoundKick();
                    break;

                case CharacterState.BackKick:
                    velocity = Vector2.Zero;
                    BackKick();
                    break;
            }
        }
        void StateMachine(GameTime gameTime, CharacterState input) {

            //System.Diagnostics.Debug.WriteLine(state);
            switch (state) {
                default:
                case CharacterState.Idle:
                case CharacterState.Forward:
                case CharacterState.Withdraw:
                    animator.Update();
                    ChangeState(gameTime, input);
                    break;

                case CharacterState.ChangeDirection:
                    ChangeState(gameTime, input);
                    break;

                case CharacterState.ForwardSomersault:
                    animator.Update();
                    if (IsGrounded()) {
                        ChangeState(gameTime, input);
                    }
                    break;

                case CharacterState.BackwardSomersault:
                    animator.Update();
                    if (IsGrounded()) {
                        ChangeState(gameTime, input);
                    }
                    break;

                case CharacterState.UpperLungePunch:
                    upperLungePunch.Execute(input, gameTime);
                    if (upperLungePunch.finished) {
                        ChangeState(gameTime, input);
                    }
                    break;

                case CharacterState.MiddleLungePunch:
                    middleLungePunch.Execute(input, gameTime);
                    if (middleLungePunch.finished) {
                        ChangeState(gameTime, input);
                    }
                    break;

                case CharacterState.UpperPunch:
                    upperPunch.Execute(input, gameTime);
                    if (upperPunch.finished) {
                        ChangeState(gameTime, input);
                    }
                    break;

                case CharacterState.BackRoundKick:
                    backRoundKick.Execute(input, gameTime);
                    if (backRoundKick.finished) {
                        ChangeState(gameTime, input);
                    }
                    break;

                case CharacterState.JumpingSideKick:
                    Vector2 velocityChange;
                    if (orientation == Orientation.Right)
                        velocityChange = new Vector2(60, -335);
                    else
                        velocityChange = new Vector2(-60, -335);
                    jumpingSideKick.ExecuteMoving(input, gameTime,  velocityChange, this);
                    if (jumpingSideKick.finished) {
                        ChangeState(gameTime, input);
                    }
                    break;

                case CharacterState.JumpingBackKick:
                    jumpingBackKick.Execute(input, gameTime);

                    if (jumpingBackKick.finished) {
                        ChangeState(gameTime, input);
                        Flip();
                    }
                    break;

                case CharacterState.FrontFootSweep:
                    frontFootSweep.Execute(input, gameTime);
                    if (frontFootSweep.finished) {
                        ChangeState(gameTime, input);
                    }
                    break;

                case CharacterState.DuckingReversePunch:
                    duckingReversePunch.Execute(input, gameTime);
                    if (duckingReversePunch.finished) {
                        ChangeState(gameTime, input);
                    }
                    break;

                case CharacterState.FrontKick:
                    frontKick.Execute(input, gameTime);
                    if (frontKick.finished) {
                        ChangeState(gameTime, input);
                    }
                    break;

                case CharacterState.MiddleReversePunch:
                    middleReversePunch.Execute(input, gameTime);
                    if (middleReversePunch.finished) {
                        ChangeState(gameTime, input);
                    }
                    break;

                case CharacterState.LowKick:
                    lowKick.Execute(input, gameTime);
                    if (lowKick.finished) {
                        ChangeState(gameTime, input);
                    }
                    break;

                case CharacterState.RoundKick:
                    roundKick.Execute(input, gameTime);
                    if (roundKick.finished) {
                        ChangeState(gameTime, input);
                    }
                    break;

                case CharacterState.BackKick:
                    backKick.Execute(input, gameTime);
                    if (backKick.finished) {
                        ChangeState(gameTime, input);
                    }
                    break;
            }
        }

        protected void BaseUpdate(GameTime gameTime, CharacterState input) {
            StateMachine(gameTime, input);
            ApplyPhysics(gameTime);
            UpdateCollisionPosition();
        }

        public void TakeHit() {

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

        public void UpperLungePunch() {
            int offset_Y = 12;
            int size = 10;
            int hitFrame = 5;
            Animation animation = new Animation(new Point(uvRect.Width, uvRect.Height * offset_Y), 0, size, 0.10f);
            upperLungePunch = new Attack(CharacterState.UpperLungePunch, animation, hitFrame, this);
            System.Diagnostics.Debug.WriteLine("Kick");
        }

        public void MiddleLungePunch() {
            int offset_Y = 13;
            int size = 10;
            int hitFrame = 5;
            Animation animation = new Animation(new Point(uvRect.Width, uvRect.Height * offset_Y), 0, size, 0.10f);
            middleLungePunch = new Attack(CharacterState.MiddleLungePunch, animation, hitFrame, this);
            System.Diagnostics.Debug.WriteLine("Kick");
        }

        public void UpperPunch() { // NÃO TEM NO SPRITESHEET!
            int offset_Y = 12;
            int size = 10;
            int hitFrame = 5;
            Animation animation = new Animation(new Point(uvRect.Width, uvRect.Height * offset_Y), 0, size, 0.10f);
            upperPunch = new Attack(CharacterState.UpperPunch, animation, hitFrame, this);
            System.Diagnostics.Debug.WriteLine("Kick");
        }

        public void BackRoundKick() {
            int offset_Y = 4;
            int size = 10;
            int hitFrame = 5;
            Animation animation = new Animation(new Point(uvRect.Width, uvRect.Height * offset_Y), 0, size, 0.10f);
            backRoundKick = new Attack(CharacterState.BackRoundKick, animation, hitFrame, this);
            System.Diagnostics.Debug.WriteLine("Kick");
        }

        public void JumpingSideKick() {
            int offset_Y = 9;
            int size = 10;
            int hitFrame = 6;
            Rectangle rect;
            if (orientation == Orientation.Right)
                rect = new Rectangle((int)position.X + 112, (int)position.Y, 10, 5);
            else
                rect = new Rectangle((int)position.X - uvRect.Width/2, (int)position.Y, 10, 5);
            Animation animation = new Animation(new Point(uvRect.Width, uvRect.Height * offset_Y), 0, size, 0.10f);
            jumpingSideKick = new Attack(CharacterState.JumpingSideKick, animation, hitFrame, rect, this);
            System.Diagnostics.Debug.WriteLine("Kick");
        }

        public void JumpingBackKick() {
            int offset_Y = 6;
            int size = 10;
            int hitFrame = 5;
            Animation animation = new Animation(new Point(uvRect.Width, uvRect.Height * offset_Y), 0, size, 0.10f);
            jumpingBackKick = new Attack(CharacterState.JumpingBackKick, animation, hitFrame, this);
            System.Diagnostics.Debug.WriteLine("Kick");
        }

        public void FrontFootSweep() {
            int offset_Y = 8;
            int size = 10;
            int hitFrame = 5;
            Animation animation = new Animation(new Point(uvRect.Width, uvRect.Height * offset_Y), 0, size, 0.10f);
            frontFootSweep = new Attack(CharacterState.FrontFootSweep, animation, hitFrame, this);
            System.Diagnostics.Debug.WriteLine("Kick");
        }

        public void DuckingReversePunch() {
            int offset_Y = 15;
            int size = 12;
            int hitFrame = 5;
            Animation animation = new Animation(new Point(uvRect.Width, uvRect.Height * offset_Y), 0, size, 0.10f);
            duckingReversePunch = new Attack(CharacterState.DuckingReversePunch, animation, hitFrame, this);
            System.Diagnostics.Debug.WriteLine("Kick");
        }

        public void FrontKick() {
            int offset_Y = 2;
            int size = 10;
            int hitFrame = 5;
            Animation animation = new Animation(new Point(uvRect.Width, uvRect.Height * offset_Y), 0, size, 0.01f);
            frontKick = new Attack(CharacterState.FrontKick, animation, hitFrame, this);
            System.Diagnostics.Debug.WriteLine("Kick");
        }

        public void MiddleReversePunch() {
            int offset_Y = 14;
            int size = 7;
            int hitFrame = 3;
            Animation animation = new Animation(new Point(uvRect.Width, uvRect.Height * offset_Y), 0, size, 0.10f);
            middleReversePunch = new Attack(CharacterState.MiddleReversePunch, animation, hitFrame, this);
            System.Diagnostics.Debug.WriteLine("Kick");
        }

        public void LowKick() {
            int offset_Y = 3;
            int size = 11;
            int hitFrame = 5;
            Animation animation = new Animation(new Point(uvRect.Width, uvRect.Height * offset_Y), 0, size, 0.10f);
            lowKick = new Attack(CharacterState.LowKick, animation, hitFrame, this);
            System.Diagnostics.Debug.WriteLine("Kick");
        }

        public void RoundKick() {
            int offset_Y = 1;
            int size = 10;
            int hitFrame = 4;
            Animation animation = new Animation(new Point(uvRect.Width, uvRect.Height * offset_Y), 0, size, 0.10f);
            roundKick = new Attack(CharacterState.RoundKick, animation, hitFrame, this);
            System.Diagnostics.Debug.WriteLine("Kick");
        }

        public void BackKick() {
            int offset_Y = 5;
            int size = 9;
            int hitFrame = 4;
            Animation animation = new Animation(new Point(uvRect.Width, uvRect.Height * offset_Y), 0, size, 0.10f);
            backKick = new Attack(CharacterState.BackKick, animation, hitFrame, this);
            System.Diagnostics.Debug.WriteLine("Kick");
        }

        /* Não tem na lista!
        public void BackFootSweep() {
            int offset_Y = 7;
            int size = 12;
            int hitFrame = 5;
            Animation animation = new Animation(new Point(uvRect.Width, uvRect.Height * offset_Y), 0, size, 0.10f);
            backFootSweep = new Attack(CharacterState.BackFootSweep, animation, hitFrame, this);
            System.Diagnostics.Debug.WriteLine("Kick");
        }
        */
    }
}