using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace KarateChamp {
    public class BaseCharacter : GameObject {

        public float speed_Walk = 150f;
        public float speed_Jump = 350f;
        public float gravityPull = 12f;
        
        public CollisionBox attackCollision;
        public Type type;

        protected Vector2 velocity = Vector2.Zero;

        float elapsedTime = 0;
        float interval = 0.125f;
        int i = 0;

        public enum Type {
            White,
            Red
        }

        protected void BaseUpdate(GameTime gameTime) {
            UpdateCollision();
            CheckIfAttackHit(gameTime);
        }

        void UpdateCollision() {

            if (orientation == Orientation.Right) {
                collision.rect.X = (int)position.X - 17;
                collision.rect.Y = (int)position.Y - 36;
            }
            else {
                collision.rect.X = (int)position.X;
                collision.rect.Y = (int)position.Y - 36;
            }
        }

        public void Attack(GameTime gameTime) {

            attackCollision = new CollisionBox(this, new Vector2(position.X + 20, position.Y - 30), new Vector2(30, 15));

            System.Diagnostics.Debug.WriteLine("Attack");
            DEBUG_Collision.p1AttackCollision = attackCollision;
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

        void Animate(Texture2D[] spriteList, GameTime gameTime) {

            if (elapsedTime < interval) {
                elapsedTime += (float)gameTime.ElapsedGameTime.TotalSeconds;
            }
            else {
                i++;
                if (i >= spriteList.Length)
                    i = 1;
                sprite = spriteList[i];
                elapsedTime = 0;
            }
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