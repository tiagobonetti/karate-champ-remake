using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System.Collections.Generic;
using System;

namespace Karate_Prototype_Collision {
    public class MainGame : Game {

        public static IList<GameObject> gameObjectList;
        public static KeyboardState previousKeyboardState;

        public static Animation white_Idle;
        public static Animation white_PunchShort;
        public static Animation white_JumpForward;
        public static Animation white_KickRound;

        GraphicsDeviceManager graphics;
        SpriteBatch spriteBatch;

        public static Texture2D colSprite;

        PlayerCharacter whiteCharacter;
        //       CpuCharacter redCharacter;
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

            /*
            int a = 0;
            white_Idle = new Animation(new Point(84, 53 * a), 12, 0.10f, 5);
            int b = 2;
            white_PunchShort = new Animation(new Point(84, 53 * b), 9, 0.10f, 5);
            int c = 4;
            white_KickRound = new Animation(new Point(84, 53 * c), 9, 0.10f, 5);
            int d = 3;
            white_JumpForward = new Animation(new Point(84, 53 * d), 9, 0.10f, 5);
            */
            Texture2D spritesheet = Content.Load<Texture2D>("KarateChampAligned");
            colSprite = Content.Load<Texture2D>("KarateChampCollision");

            whiteCharacter = new PlayerCharacter(spritesheet, MainGame.Tag.Player, new Vector2(100, 100), BaseCharacter.Orientation.Right);
            //       whiteCharacter = new PlayerCharacter(Sprites_White_Idle, MainGame.Tag.Player, new Vector2(300, 100), BaseCharacter.Orientation.Right);
            //      redCharacter = new CpuCharacter(Sprites_White_Idle, MainGame.Tag.Computer, new Vector2(400, 200), BaseCharacter.Orientation.Left);
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

        void TestGetColisionFromSprite() {
            
            Rectangle uvRect = new Rectangle(83 * 5, 53 * 4, 83, 53);
            GameObject obj = new GameObject();
            GetCol(colSprite, uvRect, obj);
        }

        public CollisionBox GetCol(Texture2D sprite, Rectangle uvRect, GameObject owner) {

            Point rectStartPosition = Point.Zero;
            Point rectEndPosition = Point.Zero;
            Color[] colorData = new Color[uvRect.Width * uvRect.Height];
            sprite.GetData<Color>(0, uvRect, colorData, 0, uvRect.Width * uvRect.Height);
            int d = 0;
            for (int i = 0; i < colorData.Length; i++) {
                if (colorData[i] == Color.Red){
                    if (rectStartPosition == Point.Zero) {
                        rectStartPosition = new Point(i % uvRect.Width, (int)Math.Ceiling((double)i / (double)uvRect.Width));
                        d = i;
                    }
                    rectEndPosition = new Point(i % uvRect.Width, (int)Math.Ceiling((double)i / (double)uvRect.Width));
                }
               
            }
            System.Diagnostics.Debug.WriteLine(d + " " + rectStartPosition + " " + rectEndPosition);
            Vector2 pos = new Vector2(rectStartPosition.X, rectStartPosition.Y);
            Vector2 size = new Vector2(rectEndPosition.X - rectStartPosition.X, rectEndPosition.Y - rectStartPosition.Y);
            return new CollisionBox(owner, pos, size);
        }

        protected override void Draw(GameTime gameTime) {
            GraphicsDevice.Clear(Color.CornflowerBlue);

            Background();
            whiteCharacter.Draw(spriteBatch);

            Rectangle animationRect = new Rectangle(0, 0, 84 * 0, 53 * 0);
            Vector2 position = new Vector2(100, 100);
            Vector2 origin = new Vector2(animationRect.Width * 0.5f, animationRect.Height * 0.5f);
            Texture2D spritesheet = Content.Load<Texture2D>("KarateChampAligned");

            spriteBatch.Begin(SpriteSortMode.Deferred, BlendState.AlphaBlend, SamplerState.PointClamp, null, null, null, null);
            spriteBatch.Draw(spritesheet, position, null, animationRect, Vector2.One, 0f, Vector2.One, Color.White, SpriteEffects.None, 0f);
            //  spriteBatch.Draw(sprite, position, null, null, origin, 0f, Vector2.One * 1.5f, Color.White, FlipWithOrientation(), 0f);
            spriteBatch.End();

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