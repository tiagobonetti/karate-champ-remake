﻿using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System.Collections.Generic;

namespace KarateChamp {
    public class MainGame : Game {

        public static IList<GameObject> gameObjectList;
        public static KeyboardState previousKeyboardState;

        public static Animation white_Idle;
        public static Animation white_PunchShort;
        public static Animation white_JumpForward;
        public static Animation white_KickRound;

        GraphicsDeviceManager graphics;
        SpriteBatch spriteBatch;
        
        PlayerCharacter whiteCharacter;
        CpuCharacter redCharacter;
        DEBUG_Collision debugCollision;

        public MainGame() {

            graphics = new GraphicsDeviceManager(this);
            Content.RootDirectory = "Content";
            IsMouseVisible = true;
            debugCollision = new DEBUG_Collision();
            gameObjectList = new List<GameObject>();
        }

        protected override void Initialize() {
            base.Initialize();
        }

        protected override void LoadContent() {

            spriteBatch = new SpriteBatch(GraphicsDevice);

            Texture2D[] Sprites_White_Idle = new Texture2D[2];
            for (int i = 0; i < Sprites_White_Idle.Length; i++)
                Sprites_White_Idle[i] = Content.Load<Texture2D>("Sprites/Main Character/White_Idle");

            Texture2D[] Sprites_White_PunchShort = new Texture2D[7];
            for (int i = 0; i < Sprites_White_PunchShort.Length; i++)
                Sprites_White_PunchShort[i] = Content.Load<Texture2D>("Sprites/Main Character/White_PunchShort_" + i);
            
            Texture2D[] Sprites_White_JumpForward = new Texture2D[10];
            for (int i = 0; i < Sprites_White_JumpForward.Length; i++)
                Sprites_White_JumpForward[i] = Content.Load<Texture2D>("Sprites/Main Character/White_JumpForward_" + i);
            
            Texture2D[] Sprites_White_KickRound = new Texture2D[10];
            for (int i = 0; i < Sprites_White_KickRound.Length; i++)
                Sprites_White_KickRound[i] = Content.Load<Texture2D>("Sprites/Main Character/White_KickRound_" + i);

            Rectangle rect_PunchShort = new Rectangle(25, 25, 30, 15);
            Rectangle rect_KickRound = new Rectangle(25, 25, 30, 15);

            white_PunchShort = new Animation(Sprites_White_PunchShort, 0.10f, 3, rect_PunchShort);
            white_KickRound = new Animation(Sprites_White_KickRound, 0.10f, 6, rect_KickRound);
            white_Idle = new Animation(Sprites_White_Idle, 0.1f);
            white_JumpForward = new Animation(Sprites_White_JumpForward, 0.13f);

            whiteCharacter = new PlayerCharacter(Sprites_White_Idle, MainGame.Tag.Player, new Vector2(300, 100), BaseCharacter.Orientation.Right);
            redCharacter = new CpuCharacter(Sprites_White_Idle, MainGame.Tag.Computer, new Vector2(400, 200), BaseCharacter.Orientation.Left);
        }

        protected override void UnloadContent() {
        }

        protected override void Update(GameTime gameTime) {
            if (GamePad.GetState(PlayerIndex.One).Buttons.Back == ButtonState.Pressed || Keyboard.GetState().IsKeyDown(Keys.Escape))
                Exit();

            whiteCharacter.Update(gameTime);
        //    redCharacter.Update(gameTime);
            base.Update(gameTime);
            previousKeyboardState = Keyboard.GetState();
        }

        protected override void Draw(GameTime gameTime) {
            GraphicsDevice.Clear(Color.CornflowerBlue);

            Background();
            whiteCharacter.Draw(spriteBatch);
       //     redCharacter.Draw(spriteBatch);
            debugCollision.Draw(spriteBatch);
            base.Draw(gameTime);
        }

        public enum Tag {
            Player,
            Computer
        }

        void Background() {

            Texture2D bg = Content.Load<Texture2D>("Sprites/Background/Bg");
            Vector2 bgPos = new Vector2(graphics.PreferredBackBufferWidth * 0.5f, graphics.PreferredBackBufferWidth * 0.5f - 150);

            spriteBatch.Begin(SpriteSortMode.Deferred, BlendState.AlphaBlend, SamplerState.PointClamp, null, null, null, null);
            spriteBatch.Draw(bg, bgPos, null, null, new Vector2(bg.Width * 0.5f, bg.Height * 0.5f), 0f, Vector2.One * 0.5f, Color.White, SpriteEffects.None, 0f);
            spriteBatch.End();
        }

    }
}