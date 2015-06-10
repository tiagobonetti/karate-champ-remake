using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Karate_Prototype_Movement {

    class Character {

        public float speed_Walk = 150f;
        public float speed_Jump = 350f;
        public float gravityPull = 12f;
        public Vector2 position;

        Texture2D sprite;
        Vector2 velocity = Vector2.Zero;
        bool isGrounded;

        public Character(Texture2D sprite, Vector2 position) {
            this.sprite = sprite;
            this.position = position;
        }

        public void Update(GameTime gameTime) {
            Movement(gameTime);
        }

        public void Draw(SpriteBatch spriteBatch) {

            spriteBatch.Begin(SpriteSortMode.Deferred, BlendState.AlphaBlend, SamplerState.PointClamp, null, null, null, null);
            spriteBatch.Draw(sprite, position, null, null, new Vector2(sprite.Width * 0.5f, sprite.Height * 0.5f), 0f, Vector2.One * 1.5f, Color.White, SpriteEffects.None, 0f);
            spriteBatch.End();
        }

        void Movement(GameTime gameTime) {

            float floor = 330;
            float characterFeet = position.Y + sprite.Height;

            if (isGrounded) {
                if (Keyboard.GetState().IsKeyDown(Keys.A)) {
                    velocity.X = -speed_Walk;
                }
                else if (Keyboard.GetState().IsKeyDown(Keys.D)) {
                    velocity.X = speed_Walk;
                }
                else {
                    velocity.X = 0f;
                }
            }

            if (isGrounded) {
                if (Keyboard.GetState().IsKeyDown(Keys.W) && Keyboard.GetState().IsKeyDown(Keys.Down)) {
                    position.Y -= 2f;
                    velocity.Y = -speed_Jump;
                    velocity.X = speed_Walk;
                    isGrounded = false;
                }
                else
                    if (Keyboard.GetState().IsKeyDown(Keys.W) && Keyboard.GetState().IsKeyDown(Keys.Up)) {
                        position.Y -= 2f;
                        velocity.Y = -speed_Jump;
                        velocity.X = -speed_Walk;
                        isGrounded = false;
                    }
            }
            else {
                if (characterFeet >= floor)
                    isGrounded = true;
            }
            if (isGrounded) {
                velocity.Y = 0f;
            }
            else {
                velocity.Y += gravityPull;
            }

            position += velocity * (float)gameTime.ElapsedGameTime.TotalSeconds;
        }
    }
}
