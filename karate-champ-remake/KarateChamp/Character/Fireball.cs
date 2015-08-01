using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace KarateChamp {
    class Fireball : GameObject {

        public Vector2 velocity;
        float Speed { get; set; }
        GameObject Owner { get; set; }
        Animator animator = new Animator();
        Animation alive;

        public Fireball(Texture2D spriteSheet, MainGame.Tag tag, Vector2 position, Orientation orientation, string name, MainGame game, float Speed, GameObject owner)
            : base(spriteSheet, tag, position, orientation, name, game) {

            this.Owner = owner;
            uvRect = new Rectangle(0, 0, 140, 53);
            velocity = Vector2.Zero;
            uvRect.Location = new Point(uvRect.Width * 5, uvRect.Height * 0);
            alive = new Animation(new Point(uvRect.Width, uvRect.Height * 0), 7, 5, 0.075f);
            collisionOffset = new Vector2(80f, 9);
            collision = new CollisionBox(this, new Vector2(uvRect.Center.X, uvRect.Center.Y) * collisionOffset, BaseCharacter.ScaleAdjust(new Vector2(13, 48)));
            DEBUG_Collision.bodyCollisionList.Add(collision);
        }

        public void Update(GameTime gameTime) {
            Movement(gameTime);
            animator.Play(alive, this, gameTime);
        }

        public void Draw(SpriteBatch spriteBatch) {
            Vector2 origin = new Vector2(uvRect.Width * 0.5f, uvRect.Height * 0.5f);
            spriteBatch.Begin(SpriteSortMode.Deferred, BlendState.AlphaBlend, SamplerState.PointClamp, null, null, null, null);
            spriteBatch.Draw(spriteSheet, position, null, uvRect, Vector2.One, 0f, BaseCharacter.ScaleAdjust(Vector2.One), Color.White, FlipWithOrientation(), 0f);
            spriteBatch.End();
        }

        protected void Movement(GameTime gameTime) {

            if (orientation == GameObject.Orientation.Right) {
                velocity.X = 1f;
            }
            else {
                velocity.X = -1f;
            }
            position += (velocity * Speed) * (float)gameTime.ElapsedGameTime.TotalSeconds;
        }
    }
}
