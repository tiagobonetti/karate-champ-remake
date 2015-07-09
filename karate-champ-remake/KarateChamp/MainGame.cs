using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System.Collections.Generic;

namespace KarateChamp {
    public class MainGame : Game {

        public static IList<GameObject> gameObjectList;
        public static KeyboardState previousKeyboardState;
        public static Texture2D colSprite;

        GraphicsDeviceManager graphics;
        SpriteBatch spriteBatch;
        
        PlayerCharacter whiteCharacter;
        PlayerCharacter redCharacter;
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
            Debug.LoadContent(Content);
            spriteBatch = new SpriteBatch(GraphicsDevice);

            colSprite = Content.Load<Texture2D>("KarateChampCollision");
            Texture2D spritesheet = Content.Load<Texture2D>("KarateChampAligned");

            whiteCharacter = new PlayerCharacter(spritesheet, MainGame.Tag.PlayerOne, 300.0f, BaseCharacter.Orientation.Right);
            whiteCharacter.PlayerInput = new KeyboardInput();

            redCharacter = new PlayerCharacter(spritesheet, MainGame.Tag.PlayerOne, 400.0f, BaseCharacter.Orientation.Left);
            redCharacter.PlayerInput = new GamePadInput(PlayerIndex.One);
            redCharacter.PlayerInput.Position = new Vector2(600.0f, 0.0f);

            whiteCharacter.Opponent = redCharacter;
            redCharacter.Opponent = whiteCharacter;


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
            PlayerOne,
            PlayerTwo,
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