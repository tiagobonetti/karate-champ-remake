using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace KarateChamp {
    class PlayerCharacter : BaseCharacter {

        public PlayerCharacter(Texture2D[] spriteList, MainGame.Tag tag, Vector2 position, Orientation orientation) {

            this.spriteList = spriteList;
            this.sprite = spriteList[0];
            this.tag = tag;
            this.position = position;
            this.orientation = orientation;
            collision = new CollisionBox(this, position, new Vector2(sprite.Width - 15, sprite.Height + 25));
            
            DEBUG_Collision.bodyCollisionList.Add(collision);
            MainGame.gameObjectList.Add(this);
        }

        public void Update(GameTime gameTime) {

            Control(gameTime);
            ApplyGravity();
            BaseUpdate(gameTime);
        }

        public void Draw(SpriteBatch spriteBatch) {

            Vector2 origin = new Vector2(sprite.Width * 0.5f, sprite.Height * 0.5f);

            spriteBatch.Begin(SpriteSortMode.Deferred, BlendState.AlphaBlend, SamplerState.PointClamp, null, null, null, null);
            spriteBatch.Draw(sprite, position, null, null, origin, 0f, Vector2.One * 1.5f, Color.White, FlipWithOrientation(), 0f);
            spriteBatch.End();
        }

        void Control(GameTime gameTime) {

            if (IsGrounded()) {
                if (Keyboard.GetState().IsKeyDown(Keys.Right)) {
                    HoldAttack(gameTime);
                    if (MainGame.previousKeyboardState.IsKeyDown(Keys.Right) != Keyboard.GetState().IsKeyDown(Keys.Right)) {
                        Attack(gameTime);
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
                    position.Y -= 2f;
                    velocity.Y = -speed_Jump;
                    JumpForward();
                }
            }
            if (Keyboard.GetState().IsKeyDown(Keys.Up)) {
                if (IsGrounded()) {
                    JumpForward();
                }
            }

            position += velocity * (float)gameTime.ElapsedGameTime.TotalSeconds;
        }
    }
}
