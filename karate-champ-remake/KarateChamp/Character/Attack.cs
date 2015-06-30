using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;

namespace KarateChamp {
    class Attack {
        public CharacterState State { get; private set; }
        public int HitFrame { get; private set; }
        public CollisionBox CollisionLeft { get; private set; }
        public CollisionBox CollisionRight { get; private set; }
        public Animation Animation { get; private set; }
        public GameObject Owner { get; private set; }
        public bool finished { get; private set; }

        Animator animator = new Animator();

        public Attack(CharacterState state, Animation animation, int hitFrame, GameObject owner) {
            State = state;
            HitFrame = hitFrame;
            Owner = owner;
            CollisionLeft = CalcCollision(MainGame.colSprite, new Rectangle(83 * hitFrame, animation.spriteRectPosition.Y, 83, 53), Owner, false);
            CollisionRight = CalcCollision(MainGame.colSprite, new Rectangle(83 * hitFrame, animation.spriteRectPosition.Y, 83, 53), Owner, true);
            Animation = animation;
        }

        public CollisionBox GetCollision() {
            if (Owner.orientation == GameObject.Orientation.Left)
                return CollisionLeft;
            else
                return CollisionRight;
        }

        public void Execute(CharacterState input, GameTime gameTime) {
            if (State == input) {
                animator.PlayTo(HitFrame, Animation, Owner, gameTime);
            }
            else if (animator.Stopped()) {
                finished = true;
            }
            else if (animator.PlayedToFrame) {
                animator.PlayAfter(HitFrame, Animation, Owner, gameTime);
            }
            else {
                animator.RollBack();
            }

            if (animator.PlayedToFrame) {
                CheckIfHit(gameTime);
                DEBUG_Collision.p1AttackCollisionLeft = CollisionLeft;
                DEBUG_Collision.p1AttackCollisionRight = CollisionRight;
            }
            animator.Update();
        }

        void CheckIfHit(GameTime gameTime) {
            GameObject objectHit;
            if (CollisionLeft.OnCollision(out objectHit)) {
                if (objectHit.tag == MainGame.Tag.Computer)
                    Hit(objectHit);
            }
        }

        void Hit(GameObject obj) {
        }

        public CollisionBox CalcCollision(Texture2D sprite, Rectangle uvRect, GameObject owner, bool facingRight) {
            Point rectStartPosition = Point.Zero;
            Point rectEndPosition = Point.Zero;
            Color[] colorData = new Color[uvRect.Size.X * uvRect.Size.Y];
            sprite.GetData<Color>(0, uvRect, colorData, 0, uvRect.Size.X * uvRect.Size.Y);
            int d = 0;
            for (int i = 0; i < colorData.Length; i++) {
                if (colorData[i] == Color.Red) {
                    if (rectStartPosition == Point.Zero) {
                        rectStartPosition = new Point(i % uvRect.Size.X, ((int)Math.Ceiling((double)i / (double)uvRect.Size.X)) - 1);
                        d = i;
                    }
                    rectEndPosition = new Point(i % uvRect.Size.X, ((int)Math.Ceiling((double)i / (double)uvRect.Size.X)) - 1);
                }
            }

            System.Diagnostics.Debug.WriteLine(d + " " + rectStartPosition + " " + rectEndPosition);

            Vector2 size = new Vector2(rectEndPosition.X - rectStartPosition.X, rectEndPosition.Y - rectStartPosition.Y);
            Vector2 pos;
            if (facingRight) {
                pos = owner.position + new Vector2(rectStartPosition.X, rectStartPosition.Y);
            }
            else {
                pos = owner.position + new Vector2(83 - rectStartPosition.X - size.X, rectStartPosition.Y);
            }
            return new CollisionBox(owner, pos, size);
        }
    }
}