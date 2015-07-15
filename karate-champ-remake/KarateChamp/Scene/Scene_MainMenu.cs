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
        public static Texture2D coverImage;

        public Scene_MainMenu(ContentManager content) {
            Init(content);
        }
        
        public void Update(GameTime gameTime) {
        }

        public void Draw(SpriteBatch spriteBatch, ContentManager content, GraphicsDeviceManager graphics) {
            Background(spriteBatch, content, graphics);
        }

        void Init(ContentManager content) {
            coverImage = content.Load<Texture2D>("GUI/Cover");
        }

        void Background(SpriteBatch spriteBatch, ContentManager content, GraphicsDeviceManager graphics) {
            
            Vector2 bgPos = new Vector2(graphics.PreferredBackBufferWidth * 0.5f, graphics.PreferredBackBufferWidth * 0.5f - 150);
            spriteBatch.Begin(SpriteSortMode.Deferred, BlendState.AlphaBlend, SamplerState.PointClamp, null, null, null, null);
            spriteBatch.Draw(coverImage, bgPos, null, null, new Vector2(coverImage.Width * 0.5f, coverImage.Height * 0.5f), 0f, Vector2.One, Color.White, SpriteEffects.None, 0f);
            spriteBatch.End();
        }
    }
}
