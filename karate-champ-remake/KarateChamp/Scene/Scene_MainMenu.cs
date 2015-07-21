using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace KarateChamp {
    public class Scene_MainMenu : Scene {
        public Texture2D coverImage;
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
                game.sceneControl.EnterScene(SceneType.Fight, SceneTransition.Type.FadeOutIn, 0.5f);
            }
            game.previousKeyboardState = Keyboard.GetState();
        }

        void Background() {

            Vector2 bgPos = new Vector2(game.graphics.PreferredBackBufferWidth * 0.5f + 15f, game.graphics.PreferredBackBufferHeight * 0.5f - 100f);
            game.spriteBatch.Begin(SpriteSortMode.Deferred, BlendState.AlphaBlend, SamplerState.PointClamp, null, null, null, null);
            game.spriteBatch.Draw(coverImage, bgPos, null, null, new Vector2(coverImage.Width * 0.5f, coverImage.Height * 0.5f), 0f, Vector2.One * 0.6f, Color.White, SpriteEffects.None, 0f);
        Vector2 next_option = new Vector2(0.0f, 2.2f);
        Vector2 next_option = new Vector2(0.0f, 2.2f);
            game.spriteBatch.End();
        }

        List<string> options = new List<string>() { "Start Game", "Options" };


        void DrawStartText() {
            arial20 = game.Content.Load<SpriteFont>("Arial20");

            Vector2 position = new Vector2(game.graphics.PreferredBackBufferWidth * 0.5f, game.graphics.PreferredBackBufferHeight * 0.5f + 150f);

            game.spriteBatch.Begin(SpriteSortMode.Deferred, BlendState.AlphaBlend, SamplerState.PointClamp, null, null, null, null);
            uint count = 0;
            Vector2 next = new Vector2(0.0f, 2.2f);
            foreach (string name in options) {
                Vector2 origin = arial20.MeasureString(name) / 2;
                game.spriteBatch.DrawString(arial20, name, position, Color.White, 0.0f, origin, 1.0f, SpriteEffects.None, 1.0f);
                position += origin * next;
                count++;
            }
            game.spriteBatch.End();
        }
    }
}