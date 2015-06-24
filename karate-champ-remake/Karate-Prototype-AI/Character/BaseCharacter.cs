using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Karate_Prototype_AI.Animation;
using Karate_Prototype_AI.Collision;
using Karate_Prototype_AI.Character;

namespace Karate_Prototype_AI.Character {
    public class BaseCharacter : GameObject {

        public float speed_Walk = 50f;
        public float speed_Jump = 350f;
        public float gravityPull = 12f;
        public State state;
        public CollisionBox attackCollision;
        public int testVal = 0;
        protected Vector2 velocity = Vector2.Zero;

        Animator animator = new Animator();

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
        }

        public void Attack_KickRound(GameTime gameTime) {
            attackCollision = new CollisionBox(this, new Vector2(position.X + 20, position.Y - 30), new Vector2(30, 15));
            state = State.RoundKick;
            System.Diagnostics.Debug.WriteLine("Kick");
        }

        public void HoldAttack(GameTime gameTime) {
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
                position = new Vector2(position.X, floor - sprite.Height);
            }
            else
                velocity.Y += gravityPull;
        }

    }
}