using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace KarateChamp {
    class Scene_Fight {

        public static Texture2D colSprite;
        PlayerCharacter whiteCharacter;
        PlayerCharacter redCharacter;
        DEBUG_Collision debugCollision;
        Texture2D spritesheet;        
        Texture2D bg;
        MainGame game;

        public Scene_Fight(MainGame game) {
            this.game = game;
            Init();
        }
        
        public void Update(GameTime gameTime) {
            whiteCharacter.Update(gameTime);
            redCharacter.Update(gameTime);
            debugCollision.Update(gameTime);
            Debug.Update();
        }

        public void Draw() {
            Background();
            whiteCharacter.Draw(game.spriteBatch);
            redCharacter.Draw(game.spriteBatch);
            debugCollision.Draw(game.spriteBatch);
        }

        public virtual void Init() {

            debugCollision = new DEBUG_Collision();
            colSprite = game.Content.Load<Texture2D>("KarateChampCollision");
            spritesheet = game.Content.Load<Texture2D>("KarateChampAligned");
            bg = game.Content.Load<Texture2D>("Sprites/Background/Bg");

            whiteCharacter = new PlayerCharacter(spritesheet, MainGame.Tag.PlayerOne, game.graphics.PreferredBackBufferWidth / 2 - 210, BaseCharacter.Orientation.Right, "p1");
            whiteCharacter.PlayerInput = new KeyboardInput();

            redCharacter = new PlayerCharacter(spritesheet, MainGame.Tag.PlayerOne, game.graphics.PreferredBackBufferWidth / 2 + 10, BaseCharacter.Orientation.Left, "p2");
            redCharacter.PlayerInput = new GamePadInput(PlayerIndex.One);
            redCharacter.PlayerInput.Position = new Vector2(600.0f, 0.0f);

            whiteCharacter.Opponent = redCharacter;
            redCharacter.Opponent = whiteCharacter;
        }

        void Background() {
            
            Vector2 bgPos = new Vector2(game.graphics.PreferredBackBufferWidth * 0.5f, game.graphics.PreferredBackBufferHeight * 0.5f);
            game.spriteBatch.Begin(SpriteSortMode.Deferred, BlendState.AlphaBlend, SamplerState.PointClamp, null, null, null, null);
            game.spriteBatch.Draw(bg, bgPos, null, null, new Vector2(bg.Width * 0.5f, bg.Height * 0.5f), 0f, Vector2.One * 0.75f, Color.White, SpriteEffects.None, 0f);
            game.spriteBatch.End();
        }

        void Restart() {

        }
    }
}
