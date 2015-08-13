using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace KarateChamp {
    public class Scene_FBI : Scene{
        public Texture2D image;
        float scenelength = 3;
        Timer timer;

        public Scene_FBI(MainGame game) {
            this.game = game;
            Init();
        }

        void Init() {
            image = game.Content.Load<Texture2D>("GUI/winners");
            game.CurrentBgm = null;
            timer = new Timer();
        }

        public void Update(GameTime gameTime) {
            bool timeEnded;
            timer.TimerCounter(gameTime, scenelength, out timeEnded);
            if (timeEnded) {
                game.sceneControl.EnterScene(SceneType.MainMenu, SceneTransition.Type.FadeOutIn, 1.5f);
            }
        }

        public void Draw() {
            game.GraphicsDevice.Clear(new Color(0, 128, 255));
            Background();
        }

        void Background() {
            Vector2 imagePos = new Vector2(game.graphics.PreferredBackBufferWidth * 0.5f, game.graphics.PreferredBackBufferHeight * 0.5f);
            game.spriteBatch.Begin(SpriteSortMode.Deferred, BlendState.AlphaBlend, SamplerState.PointClamp, null, null, null, null);
            game.spriteBatch.Draw(image, imagePos, null, null, new Vector2(image.Width * 0.5f, image.Height * 0.5f), 0f, Vector2.One * 1.2f, Color.White, SpriteEffects.None, 0f);
            game.spriteBatch.End();
        }
    }
}
