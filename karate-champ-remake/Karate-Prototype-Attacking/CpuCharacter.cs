using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Karate_Prototype_Attacking {
    class CpuCharacter : BaseCharacter {

        public CpuCharacter(Texture2D sprite, Vector2 position, Orientation orientation) {
            this.sprite = sprite;
            this.position = position;
            this.orientation = orientation;
            bodyCollision = new CollisionBox(this, position, new Vector2(sprite.Width - 15, sprite.Height + 25));
            type = BaseCharacter.Type.Red;
            MainGame.characterList.Add(this);
            DEBUG_Collision.bodyCollisionList.Insert(1, bodyCollision);
        }

        public void Update(GameTime gameTime) {
            Control(gameTime);
            ApplyGravity();
            BaseUpdate();
        }

        public void Draw(SpriteBatch spriteBatch) {

            Vector2 origin = new Vector2(sprite.Width * 0.5f, sprite.Height * 0.5f);

            spriteBatch.Begin(SpriteSortMode.Deferred, BlendState.AlphaBlend, SamplerState.PointClamp, null, null, null, null);
            spriteBatch.Draw(sprite, position, null, null, origin, 0f, Vector2.One * 1.5f, Color.Red, FlipWithOrientation(), 0f);
            spriteBatch.End();
        }

        void Control(GameTime gameTime) {
            position += velocity * (float)gameTime.ElapsedGameTime.TotalSeconds;
        }
    }
}
