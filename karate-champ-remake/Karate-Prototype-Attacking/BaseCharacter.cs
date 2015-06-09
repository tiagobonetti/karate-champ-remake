using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Karate_Prototype_Attacking {
    public class BaseCharacter {

        public float speed_Walk = 150f;
        public float speed_Jump = 350f;
        public float gravityPull = 12f;
        public Vector2 position;
        public CollisionBox attackCollision;
        public CollisionBox bodyCollision;
        public Type type;
        public Orientation orientation;

        protected Texture2D sprite;
        protected Vector2 velocity = Vector2.Zero;

        public enum Type {
            White,
            Red
        }

        public enum Orientation {
            Left,
            Right
        }

        protected SpriteEffects FlipWithOrientation() {
            
            if (orientation == Orientation.Left)
                return SpriteEffects.FlipHorizontally;
            else
                return SpriteEffects.None;
        }

        protected void BaseUpdate() {
            UpdateCollision();
        }

        void UpdateCollision() {

            if (orientation == Orientation.Right) {
                bodyCollision.rect.X = (int)position.X - 17;
                bodyCollision.rect.Y = (int)position.Y - 36;
            }
            else {
                bodyCollision.rect.X = (int)position.X;
                bodyCollision.rect.Y = (int)position.Y - 36;
            }
        }

        public void Attack() {

            attackCollision = new CollisionBox(this, new Vector2(position.X + 20, position.Y - 30), new Vector2(30, 15));
            DEBUG_Collision.p1AttackCollision = attackCollision;

            BaseCharacter characterHit;
            if (attackCollision != null) {
                if (attackCollision.OnCollision(out characterHit)) {
                    Hit(characterHit);
                }
            }
        }

        void Hit(BaseCharacter character) {
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
    }
}