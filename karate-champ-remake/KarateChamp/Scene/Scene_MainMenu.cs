using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace KarateChamp {
    class Scene_MainMenu {
        public Texture2D coverImage;
        MainGame game;
        SpriteFont arial20;

        public Scene_MainMenu(MainGame game) {
            this.game = game;
            Init();
        }

        void Init() {
            coverImage = game.Content.Load<Texture2D>("GUI/Title");
        }

        public void Update(GameTime gameTime) {
            StartGame();
        }

        public void Draw() {
            game.GraphicsDevice.Clear(Color.Black);
            Background();
            DrawStartText();
        }        

        void StartGame() {
            if (Keyboard.GetState().IsKeyDown(Keys.Enter) && game.previousKeyboardState != Keyboard.GetState()) {
                game.sceneControl.EnterScene(Scene.Fight, Scene_Transition.Type.FadeOutIn, 0.5f);
            }
            game.previousKeyboardState = Keyboard.GetState();
        }

        void Background() {

            Vector2 bgPos = new Vector2(game.graphics.PreferredBackBufferWidth * 0.5f + 15f, game.graphics.PreferredBackBufferHeight * 0.5f - 100f);
            game.spriteBatch.Begin(SpriteSortMode.Deferred, BlendState.AlphaBlend, SamplerState.PointClamp, null, null, null, null);
            game.spriteBatch.Draw(coverImage, bgPos, null, null, new Vector2(coverImage.Width * 0.5f, coverImage.Height * 0.5f), 0f, Vector2.One * 0.6f, Color.White, SpriteEffects.None, 0f);
            game.spriteBatch.End();
        }

        void DrawStartText() {

            arial20 = game.Content.Load<SpriteFont>("Arial20");
            string startText = "Press Enter";
            Vector2 position = new Vector2(game.graphics.PreferredBackBufferWidth * 0.5f, game.graphics.PreferredBackBufferHeight * 0.5f + 150f);
            Vector2 origin = arial20.MeasureString(startText)/2;

            game.spriteBatch.Begin(SpriteSortMode.Deferred, BlendState.AlphaBlend, SamplerState.PointClamp, null, null, null, null);
            game.spriteBatch.DrawString(arial20, startText, position, Color.White, 0.0f, origin, 1.0f, SpriteEffects.None, 1.0f);
            game.spriteBatch.End();
        }
    }
}
