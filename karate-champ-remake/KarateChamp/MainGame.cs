using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System.Collections.Generic;

namespace KarateChamp {
    public class MainGame : Game {

        public static IList<GameObject> gameObjectList;
        public static KeyboardState previousKeyboardState;

        public static Texture2D[] whiteAnim_Idle = new Texture2D[1];
        public static Texture2D[] whiteAnim_PunchShort = new Texture2D[7];
        public static Texture2D[] whiteAnim_JumpForward = new Texture2D[10];

        GraphicsDeviceManager graphics;
        SpriteBatch spriteBatch;
        
        Texture2D sprite_WhiteCharacter;
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

            for (int i = 0; i < whiteAnim_Idle.Length; i++)
                whiteAnim_Idle[i] = Content.Load<Texture2D>("Sprites/Main Character/White_Idle");
            for (int i = 0; i < whiteAnim_PunchShort.Length; i++)
                whiteAnim_PunchShort[i] = Content.Load<Texture2D>("Sprites/Main Character/White_PunchShort_" + i);
            for (int i = 0; i < whiteAnim_JumpForward.Length; i++)
                whiteAnim_JumpForward[i] = Content.Load<Texture2D>("Sprites/Main Character/White_JumpForward_" + i);

            whiteCharacter = new PlayerCharacter(whiteAnim_Idle, MainGame.Tag.Player, new Vector2(300, 100), BaseCharacter.Orientation.Right);
            redCharacter = new CpuCharacter(whiteAnim_Idle, MainGame.Tag.Computer, new Vector2(400, 200), BaseCharacter.Orientation.Left);
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