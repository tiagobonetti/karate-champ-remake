﻿using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Karate_Prototype_Collision {
    public class BaseCharacter : GameObject {

        public float speed_Walk = 50f;
        public float speed_Jump = 350f;
        public float gravityPull = 12f;
        public State state;
        public CollisionBox attackCollision;
        public int testVal = 0;
        protected Vector2 velocity = Vector2.Zero;

        Animatorator animatorator = new Animatorator();
        Animation idle = new Animation(new Point(84, 53 * 0), 0, 0, 0.10f);
        Attack punchShort;
        Attack KickRound;

        public enum State {

            Idle,
            Walking,
            PunchShort,
            KickRound,
            JumpForward,
        }

        void StateMachine(GameTime gameTime) {
            System.Diagnostics.Debug.WriteLine(state);
            switch (state) {
                case State.Idle:
                    animatorator.PlayLoop(idle, this, gameTime);
                    animatorator.Update();
                    break;

                case State.Walking:
                    break;

                case State.PunchShort:
                    punchShort.Execute(Keys.Right, gameTime);
                    if (punchShort.finished)
                        state = State.Idle;
                    break;

                case State.KickRound:
                    KickRound.Execute(Keys.Left, gameTime);
                    if (KickRound.finished)
                        state = State.Idle;
                    break;

                case State.JumpForward:
                    if (animatorator.Stopped())
                        state = State.Idle;
                    animatorator.Play(MainGame.white_JumpForward, this, gameTime);
                   
                    break;
            }
        }

        protected void BaseUpdate(GameTime gameTime) {

            StateMachine(gameTime);
            UpdateCollisionPosition();
            CheckIfAttackHit(gameTime);
        }

        public void Attack_PunchShort(GameTime gameTime) {

      //      CollisionBox collision = new CollisionBox(this, new Vector2(position.X + 60, position.Y), new Vector2(30, 15));
            Animation animation = new Animation(new Point(83, 53 * 14), 0, 7, 0.10f);
            punchShort = new Attack(animation, 3, this);
            state = State.PunchShort;

            System.Diagnostics.Debug.WriteLine("Punch");
        }

        public void Attack_KickRound(GameTime gameTime) {

     //       CollisionBox collision = new CollisionBox(this, new Vector2(position.X + 20, position.Y - 30), new Vector2(30, 15));
            Animation animation = new Animation(new Point(83, 53 * 4), 0, 10, 0.10f);
            KickRound = new Attack(animation, 5, this);

            state = State.KickRound;

            System.Diagnostics.Debug.WriteLine("Kick");
        }

        public void HoldAttack(GameTime gameTime) {

            //   animator.Hold();
            //   System.Diagnostics.Debug.WriteLine("HOOOOOOOOOOOOOOOOOOOOOOOOOOOLD");
        }

        public void JumpForward() {

            state = State.JumpForward;
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

            float floor = 330;
            float characterFeet = position.Y + spriteSheet.Height;

            if (characterFeet >= floor)
                return true;
            else
                return false;
        }

        protected void ApplyGravity() {

            float floor = 330;

            if (IsGrounded()) {
                velocity.Y = 0f;
     //           position.Y = floor - sprite.Height;
                position.Y = floor - uvRect.Height;
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