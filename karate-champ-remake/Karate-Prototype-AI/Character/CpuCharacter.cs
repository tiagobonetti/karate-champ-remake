using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Karate_Prototype_AI.Collision;

namespace Karate_Prototype_AI.Character {
    class CpuCharacter : BaseCharacter {

        public BaseCharacter Opponent { get; set; }

        public CpuCharacter(Texture2D[] spriteList, MainGame.Tag tag, Vector2 position, Orientation orientation) {
            this.Opponent = null;
            this.spriteList = spriteList;
            this.sprite = spriteList[0];
            this.tag = tag;
            this.position = position;
            this.orientation = orientation;
            collision = new CollisionBox(this, position, new Vector2(sprite.Width - 15, sprite.Height + 25));

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
            spriteBatch.Draw(sprite, position, null, null, origin, 0f, Vector2.One * 1.5f, Color.Red, FlipWithOrientation(), 0f);
            spriteBatch.End();
        }

        void Control(GameTime gameTime) {
            if (Opponent != null) {
                const float kOptimalDiff = 20.0f;
                float diff =  Opponent.position.X - position.X;
                if (diff > kOptimalDiff) {
                    orientation = Orientation.Right;
                    velocity.X = speed_Walk;
                }
                else
                    if (diff < - kOptimalDiff)  {
                    orientation = Orientation.Left;
                    velocity.X = -speed_Walk;
                }
                else {
                    velocity.X = 0f;
                }
            }
            position += velocity * (float)gameTime.ElapsedGameTime.TotalSeconds;
        }
    }
}
