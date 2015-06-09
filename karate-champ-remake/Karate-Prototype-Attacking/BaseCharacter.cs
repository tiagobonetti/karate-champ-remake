using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Karate_Prototype_Attacking {
    public class BaseCharacter {

        public Vector2 position;
        public CollisionBox attackCollision;
        public CollisionBox bodyCollision;
        public Type type;
        public Orientation orientation;

        protected Texture2D sprite;

        public enum Type {
            White,
            Red
        }

        public enum Orientation {
            Left,
            Right
        }

        protected void BaseUpdate(GameTime gameTime) {
            UpdateCollision();
            CheckIfAttackHit();
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
            System.Diagnostics.Debug.WriteLine("Attack");
            DEBUG_Collision.p1AttackCollision = attackCollision;
        }

        void CheckIfAttackHit() {

            BaseCharacter characterHit;
            if (attackCollision != null) {
                if (attackCollision.OnCollision(out characterHit)) {
                    Hit(characterHit);
                }
            }
        }

        void Hit(BaseCharacter character) {
            System.Diagnostics.Debug.WriteLine("Hit");
            attackCollision = null;
        }

        public void TakeDamage() {

        }

        float elapsedTime = 0;
        float interval = 0.3f;
        int i = 1;

        void Animate(GameTime gameTime) {

            if (elapsedTime < interval) {
                elapsedTime += (float)gameTime.ElapsedGameTime.TotalSeconds;
            }
            else {
                if (i < 4)
                    i++;
                else
                    i = 1;
           //     sprite = content.Load<Texture2D>("Sprite/balloon-" + i);
                elapsedTime = 0;
            }

            /*
            protected Point frameSize = new Point(50, 54);
            protected Point currentFrame = new Point(0, 0);
            protected Point sheetSize = new Point(12, 22);

            protected Rectangle GetSpriteRect() {

                return new Rectangle(frameSize.X * currentFrame.X, frameSize.Y * currentFrame.Y, frameSize.X, frameSize.Y);
            }

            protected Vector2 GetPosition() {

                return new Vector2(150, 150);
            }*/
        }
    }
}