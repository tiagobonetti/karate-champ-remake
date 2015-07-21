using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System.Collections.Generic;

namespace KarateChamp {
    public class MainGame : Game {

        public static Texture2D colSprite;
        public KeyboardState previousKeyboardState;

        public GraphicsDeviceManager graphics;
        public SpriteBatch spriteBatch;
        public SceneControl sceneControl;

        public MainGame() {

            graphics = new GraphicsDeviceManager(this);
            graphics.PreferredBackBufferWidth = 580; //774
            graphics.PreferredBackBufferHeight = 768; //1024
            Content.RootDirectory = "Content";
            IsMouseVisible = true;
        }

        protected override void Initialize() {
            sceneControl = new SceneControl(this);
            base.Initialize();
        }

        protected override void LoadContent() {
            Debug.LoadContent(Content);
            colSprite = Content.Load<Texture2D>("KarateChampCollision");
            spriteBatch = new SpriteBatch(GraphicsDevice);
            sceneControl.EnterScene(SceneType.FBI, SceneTransition.Type.FadeIn, 1.5f);
        }

        protected override void UnloadContent() {
        }

        protected override void Update(GameTime gameTime) {
            if (GamePad.GetState(PlayerIndex.One).Buttons.Back == ButtonState.Pressed || Keyboard.GetState().IsKeyDown(Keys.Back))
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