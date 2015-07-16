using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System.Collections.Generic;

namespace KarateChamp {
    public class MainGame : Game {

        public static IList<GameObject> gameObjectList;
        public KeyboardState previousKeyboardState;
        public static Scoreboard scoreboard;

        public GraphicsDeviceManager graphics;
        public SpriteBatch spriteBatch;
        public SceneControl sceneControl;

        public MainGame() {

            graphics = new GraphicsDeviceManager(this);
            graphics.PreferredBackBufferWidth = 580; //774
            graphics.PreferredBackBufferHeight = 768; //1024

            Content.RootDirectory = "Content";
            IsMouseVisible = true;
            gameObjectList = new List<GameObject>();
            scoreboard = new Scoreboard();
        }

        protected override void Initialize() {
            base.Initialize();
        }

        protected override void LoadContent() {
            Debug.LoadContent(Content);
            spriteBatch = new SpriteBatch(GraphicsDevice);
            sceneControl = new SceneControl(this);
        }

        protected override void UnloadContent() {
        }

        protected override void Update(GameTime gameTime) {
            if (GamePad.GetState(PlayerIndex.One).Buttons.Back == ButtonState.Pressed || Keyboard.GetState().IsKeyDown(Keys.Escape))
                Exit();

            sceneControl.Update(gameTime);
            base.Update(gameTime);
            previousKeyboardState = Keyboard.GetState();
        }

        protected override void Draw(GameTime gameTime) {
            GraphicsDevice.Clear(Color.CornflowerBlue);
            
            sceneControl.Draw(spriteBatch, Content, graphics);
            base.Draw(gameTime);
        }

        public enum Tag {
            PlayerOne,
            PlayerTwo,
            Computer
        }
    }
}