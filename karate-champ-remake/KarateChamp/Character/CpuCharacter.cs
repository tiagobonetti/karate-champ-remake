using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace KarateChamp {
    class CpuCharacter : BaseCharacter {

        public CpuCharacter (Texture2D spriteSheet, MainGame.Tag tag, Vector2 position, Orientation orientation, string name, MainGame game)
            : base(spriteSheet, tag, position, orientation, name, game) {

            collisionOffset = new Vector2(20f, 0);
            collision = new CollisionBox(this, new Vector2(uvRect.Center.X, uvRect.Center.Y) * collisionOffset, new Vector2(25, 53));
        }

        public void Update(GameTime gameTime) {
            BaseUpdate(gameTime, CharacterState.Idle);
        }

        public void Draw(SpriteBatch spriteBatch) {

            Vector2 origin = new Vector2(uvRect.Width * 0.5f, uvRect.Height * 0.5f);

            spriteBatch.Begin(SpriteSortMode.Deferred, BlendState.AlphaBlend, SamplerState.PointClamp, null, null, null, null);
            spriteBatch.Draw(spriteSheet, position, null, uvRect, Vector2.One, 0f, Vector2.One, Color.White, FlipWithOrientation(), 0f);
            //  spriteBatch.Draw(sprite, position, null, null, origin, 0f, Vector2.One * 1.5f, Color.White, FlipWithOrientation(), 0f);
            spriteBatch.End();
        }

        void Control(GameTime gameTime) {
            position += velocity * (float)gameTime.ElapsedGameTime.TotalSeconds;
        }
    }
}
