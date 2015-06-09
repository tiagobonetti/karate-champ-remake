using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Karate_Prototype_Attacking {
    class PlayerCharacter : BaseCharacter {

        public PlayerCharacter(Texture2D sprite, Vector2 position, Orientation orientation) {
            this.sprite = sprite;
            this.position = position;
            this.orientation = orientation;
            bodyCollision = new CollisionBox(this, position, new Vector2(sprite.Width - 15, sprite.Height + 25));
            this.type = BaseCharacter.Type.White;
            MainGame.characterList.Add(this);
            DEBUG_Collision.bodyCollisionList.Insert(0, bodyCollision);
        }

        public void Update(GameTime gameTime) {
            Control(gameTime);
            BaseUpdate(gameTime);
        }

        public void Draw(SpriteBatch spriteBatch) {

            Vector2 origin = new Vector2(sprite.Width * 0.5f, sprite.Height * 0.5f);

            spriteBatch.Begin(SpriteSortMode.Deferred, BlendState.AlphaBlend, SamplerState.PointClamp, null, null, null, null);
      //      spriteBatch.Draw(sprite, GetPosition(), GetSpriteRect(), Color.White, 0f, Vector2.Zero, 1f, SpriteEffects.None, 0f);
            spriteBatch.Draw(sprite, position, null, null, origin, 0f, Vector2.One * 1.5f, Color.White, SpriteEffects.None, 0f);
            spriteBatch.End();
        }

        void Control(GameTime gameTime) {

            if (MainGame.previousKeyboardState.IsKeyDown(Keys.Right) != Keyboard.GetState().IsKeyDown(Keys.Right) && 
                Keyboard.GetState().IsKeyDown(Keys.Right)) {
                Attack();
            }
        }
    }
}
