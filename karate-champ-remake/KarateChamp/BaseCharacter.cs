using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace KarateChamp {
    public class BaseCharacter : GameObject {

        public float speed_Walk = 50f;
        public float speed_Jump = 350f;
        public float gravityPull = 12f;
        public State state;
        public CollisionBox attackCollision;

        protected Vector2 velocity = Vector2.Zero;

        Animator animator = new Animator();

        public enum State{

            Idle,
            Walking,
            PunchShort,
            JumpForward,
        }

        void AnimatorStateMachine(GameTime gameTime) {

            
        //    animator.Animate(this, 0.15f, gameTime);
            switch (state) {
                case State.Idle:

             //       animator.Run(this, MainGame.whiteAnim_Idle, 0.1f, gameTime, 0);
             //       animator.Play();
                    break;

                case State.Walking:
                    break;

                case State.PunchShort:

                    animator.Run(this, MainGame.whiteAnim_PunchShort, 0.10f, gameTime, 3);
             //      if (animator.state != Animator.State.Hold)
                   if (Keyboard.GetState().IsKeyDown(Keys.Right))
                        animator.Play();
                   else
                       animator.RollBack();
                    if (animator.Finished)
                        state = State.Idle;
                    break;

                case State.JumpForward:

                    animator.Run(this, MainGame.whiteAnim_JumpForward, 0.085f, gameTime, MainGame.whiteAnim_JumpForward.Length - 1);
                    if (animator.state != Animator.State.Hold)
                        animator.Play();
                    if (animator.Finished)
                        state = State.Idle;
                    break;
            }
        }

        protected void BaseUpdate(GameTime gameTime) {

            AnimatorStateMachine(gameTime);
            UpdateCollisionPosition();
            CheckIfAttackHit(gameTime);
        }

        public void Attack(GameTime gameTime) {

            attackCollision = new CollisionBox(this, new Vector2(position.X + 20, position.Y - 30), new Vector2(30, 15));
            state = State.PunchShort;

            System.Diagnostics.Debug.WriteLine("Attack");
            DEBUG_Collision.p1AttackCollision = attackCollision;
        }

        public void HoldAttack(GameTime gameTime) {

         //   animator.Hold();
         //   System.Diagnostics.Debug.WriteLine("HOOOOOOOOOOOOOOOOOOOOOOOOOOOLD");
        }

        public void JumpForward() {

            state = State.JumpForward;
            System.Diagnostics.Debug.WriteLine("JUMP FORWARD");
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