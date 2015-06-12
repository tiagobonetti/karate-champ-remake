using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System;
using System.Diagnostics;

namespace Karate_Prototype_Movement {

    public class MainGame : Game {

        GraphicsDeviceManager graphics;
        SpriteBatch spriteBatch;

        Texture2D sprite_WhiteCharacter;
        Character whiteCharacter;

        Texture2D sprite_WhiteCharacter2;

        public MainGame() {

            graphics = new GraphicsDeviceManager(this);
            Content.RootDirectory = "Content";
            IsMouseVisible = true;
        }

        protected override void Initialize() {
            base.Initialize();
        }

        protected override void LoadContent() {

            spriteBatch = new SpriteBatch(GraphicsDevice);

            sprite_WhiteCharacter = Content.Load<Texture2D>("Sprites/Main Character/slice14_14");
            whiteCharacter = new Character(sprite_WhiteCharacter, new Vector2(300, 100));

            sprite_WhiteCharacter2 = Content.Load<Texture2D>("KarateChampAligned");
        }

        protected override void UnloadContent() {
        }

        protected override void Update(GameTime gameTime) {
            if (GamePad.GetState(PlayerIndex.One).Buttons.Back == ButtonState.Pressed || Keyboard.GetState().IsKeyDown(Keys.Escape))
                Exit();

            whiteCharacter.Update(gameTime);
            base.Update(gameTime);
        }

        protected override void Draw(GameTime gameTime) {
            GraphicsDevice.Clear(Color.CornflowerBlue);

     //       Background();
   //         whiteCharacter.Draw(spriteBatch);

            Vector2 origin = new Vector2(sprite_WhiteCharacter2.Width * 0.5f, sprite_WhiteCharacter2.Height * 0.5f);
            Vector2 offset = new Vector2(96, 96);
            Vector2 position = new Vector2(350, 200);
            Rectangle rect = new Rectangle(0, 0, 84, 53);
            //15 x 22
            //1248 x 2069
            //83.2 x 94,04545454545455
            spriteBatch.Begin(SpriteSortMode.Deferred, BlendState.AlphaBlend, SamplerState.PointClamp, null, null, null, null);
            spriteBatch.Draw(sprite_WhiteCharacter2, position, null, rect, Vector2.One, 0f, Vector2.One, Color.White, SpriteEffects.None, 0f);
            spriteBatch.End();

            Rectangle rectDebug = new Rectangle((int)position.X + rect.X, (int)position.Y + rect.Y, rect.Width, rect.Height);
            DEBUG_Collision.rectDraw = rectDebug;
            DEBUG_Collision.Draw(spriteBatch);


            base.Draw(gameTime);
        }

        void Background() {

            Texture2D sprite = Content.Load<Texture2D>("Sprites/Main Character/slice14_14");
            Texture2D bg = Content.Load<Texture2D>("Sprites/Background/Bg");
            Vector2 bgPos = new Vector2(graphics.PreferredBackBufferWidth * 0.5f, graphics.PreferredBackBufferWidth * 0.5f - 150);

            spriteBatch.Begin(SpriteSortMode.Deferred, BlendState.AlphaBlend, SamplerState.PointClamp, null, null, null, null);
            spriteBatch.Draw(bg, bgPos, null, null, new Vector2(bg.Width * 0.5f, bg.Height * 0.5f), 0f, Vector2.One * 0.5f, Color.White, SpriteEffects.None, 0f);
            spriteBatch.End();
        }

    }
}