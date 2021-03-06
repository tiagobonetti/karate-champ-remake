﻿using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System.Collections.Generic;

namespace Karate_Prototype_Attacking {
    public class MainGame : Game {

        public static IList<BaseCharacter> characterList;
        public static KeyboardState previousKeyboardState;

        GraphicsDeviceManager graphics;
        SpriteBatch spriteBatch;
        
        Texture2D sprite_WhiteCharacter;
        Texture2D[] whiteAnim_Punch;
        PlayerCharacter whiteCharacter;
        CpuCharacter redCharacter;
        DEBUG_Collision debugCollision;

        public MainGame() {

            graphics = new GraphicsDeviceManager(this);
            graphics.PreferredBackBufferWidth = 800;
            graphics.PreferredBackBufferHeight = 480;
            System.Diagnostics.Debug.WriteLine(graphics.PreferredBackBufferWidth + " " + graphics.PreferredBackBufferHeight);
            System.Diagnostics.Debug.WriteLine(Window.ClientBounds.Width + " " + Window.ClientBounds.Height);
    //        System.Diagnostics.Debug.WriteLine(GraphicsDevice.Viewport.Width + " " + GraphicsDevice.Viewport.Height);
            Content.RootDirectory = "Content";
            IsMouseVisible = true;
            debugCollision = new DEBUG_Collision();
            characterList = new List<BaseCharacter>();
            
        }

        protected override void Initialize() {
            base.Initialize();
        }

        protected override void LoadContent() {

            spriteBatch = new SpriteBatch(GraphicsDevice);

            sprite_WhiteCharacter = Content.Load<Texture2D>("Sprites/Main Character/slice14_14");/*
            for(int i = 0; i < whiteAnim_Punch.Length; i++)
                whiteAnim_Punch[0] = Content.Load<Texture2D>("Sprites/Main Character/slice14_14");*/

            whiteCharacter = new PlayerCharacter(sprite_WhiteCharacter, new Vector2(380, 300), BaseCharacter.Orientation.Right);
            redCharacter = new CpuCharacter(sprite_WhiteCharacter, new Vector2(420, 300), BaseCharacter.Orientation.Left);
        }

        protected override void UnloadContent() {
        }

        protected override void Update(GameTime gameTime) {
            if (GamePad.GetState(PlayerIndex.One).Buttons.Back == ButtonState.Pressed || Keyboard.GetState().IsKeyDown(Keys.Escape))
                Exit();

            whiteCharacter.Update(gameTime);
            redCharacter.Update(gameTime);
            base.Update(gameTime);
            previousKeyboardState = Keyboard.GetState();
        }

        protected override void Draw(GameTime gameTime) {
            GraphicsDevice.Clear(Color.CornflowerBlue);

            Background();
            whiteCharacter.Draw(spriteBatch);
            redCharacter.Draw(spriteBatch);
            debugCollision.Draw(spriteBatch);
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