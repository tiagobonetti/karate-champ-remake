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

        public CharacterState state = CharacterState.Idle;
        protected Vector2 velocity = Vector2.Zero;
        public CollisionBox attackCollision;

        Animator animator = new Animator();
        Animation idle = new Animation(new Point(84, 53 * 0), 0, 0, 0.10f);
        Animation jumpForward = new Animation(new Point(84, 53 * 10), 0, 10, 0.10f);
        Attack punchShort;
        Attack roundKick;

        void ChangeState(GameTime gameTime, CharacterState input) {
            System.Diagnostics.Debug.WriteLine("State: " + state.ToString() + " Input: " + input.ToString());
            state = input;
            switch (input) {
                default:
                case CharacterState.Idle:
                    velocity = Vector2.Zero;
                    animator.PlayLoop(idle, this, gameTime);
                    break;

                case CharacterState.Forward:
                    velocity.X = speedWalk;
                    break;

                case CharacterState.Withdraw:
                    velocity.X = -speedWalk;
                    break;

                case CharacterState.MiddleLungePunch:
                    velocity = Vector2.Zero;
                    MiddleReversePunch();
                    break;

                case CharacterState.RoundKick:
                    velocity = Vector2.Zero;
                    RoundKick();
                    break;

                case CharacterState.ForwardSomersault:
                    velocity = new Vector2(speedWalk, -speedJump);
                    animator.Play(jumpForward, this, gameTime);
                    break;
            }
        }
        void StateMachine(GameTime gameTime, CharacterState input) {

            System.Diagnostics.Debug.WriteLine(state);
            switch (state) {
                default:
                case CharacterState.Idle:
                case CharacterState.Forward:
                case CharacterState.Withdraw:
                    animator.Update();
                    ChangeState(gameTime, input);
                    break;

                case CharacterState.ForwardSomersault:
                    animator.Update();
                    if (IsGrounded()) {
                        ChangeState(gameTime, input);
                    }
                    break;

                case CharacterState.MiddleReversePunch:
                    punchShort.Execute(input, gameTime);
                    if (punchShort.finished) {
                        ChangeState(gameTime, input);
                    }
                    break;

                case CharacterState.RoundKick:
                    roundKick.Execute(input, gameTime);
                    if (roundKick.finished) {
                        ChangeState(gameTime, input);
                    }
                    break;
            }
        }

        protected void BaseUpdate(GameTime gameTime, CharacterState input) {
            StateMachine(gameTime, input);
            ApplyPhysics(gameTime);
            UpdateCollisionPosition();
            CheckIfAttackHit(gameTime);
        }

        public void MiddleReversePunch() {
            // CollisionBox collision = new CollisionBox(this, new Vector2(position.X + 60, position.Y), new Vector2(30, 15));
            Animation animation = new Animation(new Point(83, 53 * 14), 0, 7, 0.10f);
            punchShort = new Attack(CharacterState.MiddleReversePunch, animation, 3, this);
            System.Diagnostics.Debug.WriteLine("Punch");
        }

        public void RoundKick() {
            // CollisionBox collision = new CollisionBox(this, new Vector2(position.X + 20, position.Y - 30), new Vector2(30, 15));
            Animation animation = new Animation(new Point(83, 53 * 4), 0, 10, 0.10f);
            roundKick = new Attack(CharacterState.RoundKick, animation, 5, this);
            System.Diagnostics.Debug.WriteLine("Kick");
        }

        public void HoldAttack(GameTime gameTime) {
            // animator.Hold();
            // System.Diagnostics.Debug.WriteLine("HOOOOOOOOOOOOOOOOOOOOOOOOOOOLD");
        }

        public void JumpForward() {
        }

        void CheckIfAttackHit(GameTime gameTime) {
            GameObject objectHit;
            if (attackCollision != null) {
                if (attackCollision.OnCollision(out objectHit)) {
                    if (objectHit.tag == MainGame.Tag.Computer)
                        Hit(objectHit);
                }
            }
        }

        void Hit(GameObject obj) {
            //      System.Diagnostics.Debug.WriteLine("Hit");
        }

        public void TakeDamage() {

        }

        protected bool IsGrounded() {
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

        protected Point frameSize = new Point(50, 54);
        protected Point currentFrame = new Point(0, 0);
        protected Point sheetSize = new Point(12, 22);

        protected Rectangle GetSpriteRect() {

            return new Rectangle(frameSize.X * currentFrame.X, frameSize.Y * currentFrame.Y, frameSize.X, frameSize.Y);
        }

        protected Vector2 GetPosition() {

            return new Vector2(150, 150);
        }
    }
}