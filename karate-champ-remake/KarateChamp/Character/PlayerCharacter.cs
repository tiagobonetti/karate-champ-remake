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

        public PlayerCharacter(Texture2D spriteSheet, MainGame.Tag tag, Vector2 position, Orientation orientation, string name, MainGame game)
            : base(spriteSheet, tag, position, orientation, name, game) {
            this.PlayerInput = null;
            collisionOffset = new Vector2(80f, 9);
            collision = new CollisionBox(this, new Vector2(uvRect.Center.X, uvRect.Center.Y) * collisionOffset, ScaleAdjust(new Vector2(13, 48)));
            DEBUG_Collision.bodyCollisionList.Add(collision);
        }

        public void Update(GameTime gameTime) {
            CharacterState input;
            if (PlayerInput == null) {
                input = CharacterState.Idle;
            }
            else {
                input = PlayerInput.GetMove(CheckBlockModifier(Opponent.state), orientation);
            }

            BaseUpdate(gameTime, input);
        }

        public void Draw(SpriteBatch spriteBatch) {

            if (state == CharacterState.Hadouken || state == CharacterState.CheckCheckTchugen)
                spriteSheet = game.Content.Load<Texture2D>("Sprites/Main Character/SuperMoves");
            else
                spriteSheet = game.Content.Load<Texture2D>("Sprites/Main Character/CharacterSpritesheet");

            Vector2 origin = new Vector2(uvRect.Width * 0.5f, uvRect.Height * 0.5f);
            spriteBatch.Begin(SpriteSortMode.Deferred, BlendState.AlphaBlend, SamplerState.PointClamp, null, null, null, null);
            spriteBatch.Draw(spriteSheet, position, null, uvRect, Vector2.One, 0f, ScaleAdjust(Vector2.One), Color.White, FlipWithOrientation(), 0f);
            if (PlayerInput != null) {
                PlayerInput.DrawDebug(spriteBatch, orientation);
            }
            spriteBatch.End();
            BaseDraw(spriteBatch);
        }
    }
}
