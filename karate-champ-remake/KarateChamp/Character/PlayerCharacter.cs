using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace KarateChamp {
    class PlayerCharacter : BaseCharacter {
        public IPlayerInput PlayerInput { get; set; }

        public PlayerCharacter(Texture2D spriteSheet, MainGame.Tag tag, float positionX, Orientation orientation, string name) {
            this.spriteSheet = spriteSheet;
            this.tag = tag;
            this.position = new Vector2(positionX, floor - uvRect.Height);
            this.orientation = orientation;
            this.PlayerInput = null;
            this.name = name;
            collisionOffset = new Vector2(20f, 0);
            collision = new CollisionBox(this, new Vector2(uvRect.Center.X, uvRect.Center.Y) * collisionOffset, new Vector2(25, 53));
            DEBUG_Collision.bodyCollisionList.Add(collision);
        }

        public void Update(GameTime gameTime) {
            CharacterState input;
            if (state == CharacterState.Fall)
                input = CharacterState.Fall;
            else {
                if (PlayerInput == null) {
                    input = CharacterState.Idle;
                }
                else {
                    input = PlayerInput.GetMove(Modifier.None, orientation);
                }
            }
            
            BaseUpdate(gameTime, input);
        }

        public void Draw(SpriteBatch spriteBatch) {

            Vector2 origin = new Vector2(uvRect.Width * 0.5f, uvRect.Height * 0.5f);
            spriteBatch.Begin(SpriteSortMode.Deferred, BlendState.AlphaBlend, SamplerState.PointClamp, null, null, null, null);
            spriteBatch.Draw(spriteSheet, position, null, uvRect, Vector2.One, 0f, Vector2.One, Color.White, FlipWithOrientation(), 0f);
            if (PlayerInput != null) {
                PlayerInput.DrawDebug(spriteBatch, orientation);
            }
            spriteBatch.End();
        }
    }
}
