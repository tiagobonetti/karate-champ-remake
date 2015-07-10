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

        public Scene_Fight(ContentManager content) {
            Init(content);
        }
        
        public void Update(GameTime gameTime) {
            whiteCharacter.Update(gameTime);
            redCharacter.Update(gameTime);
        }

        public void Draw(SpriteBatch spriteBatch, ContentManager content, GraphicsDeviceManager graphics) {
            Background(spriteBatch, content, graphics);
            whiteCharacter.Draw(spriteBatch);
            redCharacter.Draw(spriteBatch);
            debugCollision.Draw(spriteBatch);
        }

        void Init(ContentManager content) {

            debugCollision = new DEBUG_Collision();
            colSprite = content.Load<Texture2D>("KarateChampCollision");
            spritesheet = content.Load<Texture2D>("KarateChampAligned");
            bg = content.Load<Texture2D>("Sprites/Background/Bg");

            whiteCharacter = new PlayerCharacter(spritesheet, MainGame.Tag.PlayerOne, 300.0f, BaseCharacter.Orientation.Right, "p1");
            whiteCharacter.PlayerInput = new KeyboardInput();

            redCharacter = new PlayerCharacter(spritesheet, MainGame.Tag.PlayerOne, 400.0f, BaseCharacter.Orientation.Left, "p2");
            redCharacter.PlayerInput = new GamePadInput(PlayerIndex.One);
            redCharacter.PlayerInput.Position = new Vector2(600.0f, 0.0f);

            whiteCharacter.Opponent = redCharacter;
            redCharacter.Opponent = whiteCharacter;
        }

        void Background(SpriteBatch spriteBatch, ContentManager content, GraphicsDeviceManager graphics) {
            
            Vector2 bgPos = new Vector2(graphics.PreferredBackBufferWidth * 0.5f, graphics.PreferredBackBufferWidth * 0.5f - 150);
            spriteBatch.Begin(SpriteSortMode.Deferred, BlendState.AlphaBlend, SamplerState.PointClamp, null, null, null, null);
            spriteBatch.Draw(bg, bgPos, null, null, new Vector2(bg.Width * 0.5f, bg.Height * 0.5f), 0f, Vector2.One * 0.5f, Color.White, SpriteEffects.None, 0f);
            spriteBatch.End();
        }
    }
}
