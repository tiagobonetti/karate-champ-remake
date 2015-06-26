using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Karate_Prototype_Collision {
    class Attack {

        public int HitFrame { get; private set; }
        public CollisionBox Collision { get; private set; }
        public Animation Animation { get; private set; }
        public GameObject Owner { get; private set; }
        public bool finished { get; private set; }

        Animatorator animator = new Animatorator();

        public Attack(Animation animation, int hitFrame, GameObject owner) {

            HitFrame = hitFrame;
            Owner = owner;
            Collision = CalcCollision(MainGame.colSprite, new Rectangle(83 * hitFrame, animation.spriteRectPosition.Y, 83, 53), Owner);
            Animation = animation;
        }

        public void Execute(Keys key, GameTime gameTime){

            if (Keyboard.GetState().IsKeyDown(key))
                animator.PlayTo(HitFrame, Animation, Collision.owner, gameTime);

            else if (animator.Stopped())
                finished = true;

            else if (animator.PlayedToFrame)
                animator.PlayAfter(HitFrame, Animation, Collision.owner, gameTime);

            else
                animator.RollBack();

            if (animator.PlayedToFrame) {
                Collision = CalcCollision(MainGame.colSprite, new Rectangle(83 * HitFrame, Animation.spriteRectPosition.Y, 83, 53), Owner);
                CheckIfHit(gameTime);
                DEBUG_Collision.p1AttackCollision = Collision;
            }

            animator.Update();
        }

        void CheckIfHit(GameTime gameTime) {

            GameObject objectHit;
            if (Collision.OnCollision(out objectHit)) {
                if (objectHit.tag == MainGame.Tag.Computer)
                    Hit(objectHit);
            }
        }

        void Hit(GameObject obj) {
        }

        public CollisionBox CalcCollision(Texture2D sprite, Rectangle uvRect, GameObject owner) {

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

            Vector2 pos;
            if (owner.orientation == GameObject.Orientation.Right)
                pos = owner.position + new Vector2(rectStartPosition.X, rectStartPosition.Y);
            else
                pos = owner.position - new Vector2(rectStartPosition.X, rectStartPosition.Y);

            Vector2 size = new Vector2(rectEndPosition.X - rectStartPosition.X, rectEndPosition.Y - rectStartPosition.Y);
            return new CollisionBox(owner, pos, size);
        }
    }
}