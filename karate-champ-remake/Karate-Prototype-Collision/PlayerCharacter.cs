using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Karate_Prototype_Collision {
    class PlayerCharacter : BaseCharacter {

        public PlayerCharacter(Texture2D spriteSheet, MainGame.Tag tag, Vector2 position, Orientation orientation) {

            this.sprite = spriteSheet;
            this.tag = tag;
            this.position = position;
            this.orientation = orientation;
            collision = new CollisionBox(this, position, new Vector2(sprite.Width - 15, sprite.Height + 25));
            animationRect = new Rectangle(0, 0, 84, 53);
        }

        public void Update(GameTime gameTime) {

            Control(gameTime);
            ApplyGravity();
            BaseUpdate(gameTime);
        }

        public void Draw(SpriteBatch spriteBatch) {

            Vector2 origin = new Vector2(animationRect.Width * 0.5f, animationRect.Height * 0.5f);

            spriteBatch.Begin(SpriteSortMode.Deferred, BlendState.AlphaBlend, SamplerState.PointClamp, null, null, null, null);
            spriteBatch.Draw(sprite, position, null, animationRect, Vector2.One, 0f, Vector2.One, Color.White, FlipWithOrientation(), 0f);
            //  spriteBatch.Draw(sprite, position, null, null, origin, 0f, Vector2.One * 1.5f, Color.White, FlipWithOrientation(), 0f);
            spriteBatch.End();
        }

        void Control(GameTime gameTime) {

            if (IsGrounded()) {
                if (Keyboard.GetState().IsKeyDown(Keys.Right)) {
                    if (MainGame.previousKeyboardState.IsKeyDown(Keys.Right) != Keyboard.GetState().IsKeyDown(Keys.Right)) {
                        Attack_PunchShort(gameTime);
                    }
                }

                if (Keyboard.GetState().IsKeyDown(Keys.Left)) {
                    if (MainGame.previousKeyboardState.IsKeyDown(Keys.Left) != Keyboard.GetState().IsKeyDown(Keys.Left)) {
                        Attack_KickRound(gameTime);
                    }
                }
            }

            if (IsGrounded()) {
                if (Keyboard.GetState().IsKeyDown(Keys.A)) {
                    orientation = Orientation.Left;
                    velocity.X = -speed_Walk;
                }
                else if (Keyboard.GetState().IsKeyDown(Keys.D)) {
                    orientation = Orientation.Right;
                    velocity.X = speed_Walk;
                }
                else {
                    velocity.X = 0f;
                }
            }

            if (Keyboard.GetState().IsKeyDown(Keys.W)) {
                if (IsGrounded()) {
                    JumpForward();
                    position.Y -= 2f;
                    velocity.Y = -speed_Jump;
                }
            }

            position += velocity * (float)gameTime.ElapsedGameTime.TotalSeconds;
        }
    }
}
