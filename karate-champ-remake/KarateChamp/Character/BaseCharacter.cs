using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using KarateChamp.Animation;
using KarateChamp.Collision;
using KarateChamp.Character;

namespace KarateChamp.Character {

    public enum State {
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

        public float speed_Walk = 50f;
        public float speed_Jump = 350f;
        public float gravityPull = 12f;
        public State state;
        public CollisionBox attackCollision;
        public int testVal = 0;
        protected Vector2 velocity = Vector2.Zero;

        Animator animator = new Animator();

        void AnimatorStateMachine(GameTime gameTime) {
            System.Diagnostics.Debug.WriteLine(state);
            animator.Update();

            switch (state) {
                case State.Idle:

                    animator.PlayLoop(MainGame.white_Idle, this, gameTime);
                    break;

                case State.Forward:
                    break;

                case State.MiddleReversePunch:

                    if (Keyboard.GetState().IsKeyDown(Keys.Right))
                        animator.PlayTo(MainGame.white_PunchShort, this, gameTime);
                    else if (animator.Stopped())
                        state = State.Idle;
                    else if (animator.PlayedToFrame)
                        animator.PlayAfter(MainGame.white_PunchShort, this, gameTime);
                    else
                        animator.RollBack();
                    break;

                case State.RoundKick:

                    if (Keyboard.GetState().IsKeyDown(Keys.Left))
                        animator.PlayTo(MainGame.white_KickRound, this, gameTime);
                    else if (animator.Stopped())
                        state = State.Idle;
                    else if (animator.PlayedToFrame)
                        animator.PlayAfter(MainGame.white_KickRound, this, gameTime);
                    else
                        animator.RollBack();
                    break;

                case State.ForwardSomersault:

                    if (animator.Stopped())
                        state = State.Idle;
                    animator.Play(MainGame.white_JumpForward, this, gameTime);

                    break;
            }
        }

        protected void BaseUpdate(GameTime gameTime) {

            AnimatorStateMachine(gameTime);
            UpdateCollisionPosition();
            CheckIfAttackHit(gameTime);
        }

        public void Attack_PunchShort(GameTime gameTime) {

            attackCollision = new CollisionBox(this, new Vector2(position.X + 20, position.Y - 30), new Vector2(30, 15));
            state = State.MiddleReversePunch;

            System.Diagnostics.Debug.WriteLine("Punch");
            DEBUG_Collision.p1AttackCollision = attackCollision;
        }

        public void Attack_KickRound(GameTime gameTime) {

            attackCollision = new CollisionBox(this, new Vector2(position.X + 20, position.Y - 30), new Vector2(30, 15));
            state = State.RoundKick;

            System.Diagnostics.Debug.WriteLine("Kick");
            DEBUG_Collision.p1AttackCollision = attackCollision;
        }

        public void HoldAttack(GameTime gameTime) {

            //   animator.Hold();
            //   System.Diagnostics.Debug.WriteLine("HOOOOOOOOOOOOOOOOOOOOOOOOOOOLD");
        }

        public void JumpForward() {

            state = State.ForwardSomersault;
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
            System.Diagnostics.Debug.WriteLine("Hit");
        }

        public void TakeDamage() {

        }

        protected bool IsGrounded() {

            float floor = 330;
            float characterFeet = position.Y + sprite.Height;

            if (characterFeet >= floor)
                return true;
            else
                return false;
        }

        protected void ApplyGravity() {

            float floor = 330;

            if (IsGrounded()) {
                velocity.Y = 0f;
                position.Y = floor - sprite.Height;
            }
            else
                velocity.Y += gravityPull;
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