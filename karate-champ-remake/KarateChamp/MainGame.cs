using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System.Collections.Generic;

namespace KarateChamp {
    public class MainGame : Game {

        public static Texture2D colSprite;
        public bool turboMode = true;
        public KeyboardState previousKeyboardState;
        public GraphicsDeviceManager graphics;
        public SpriteBatch spriteBatch;
        public SceneControl sceneControl;
        public Rectangle[,] bodyCollisionRight = new Rectangle[12, 21];
        public Rectangle[,] bodyCollisionLeft = new Rectangle[12, 21];
        HitboxCalculator hitboxCalc;
        Texture2D spritesheet;

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
            hitboxCalc = new HitboxCalculator();
            spritesheet = Content.Load<Texture2D>("Sprites/Main Character/BodyCollision");
            colSprite = Content.Load<Texture2D>("KarateChampCollision");
       //     StoreCharacterHitbox();
            spriteBatch = new SpriteBatch(GraphicsDevice);
            sceneControl.EnterScene(SceneType.MainMenu, SceneTransition.Type.FadeIn, 1.5f);
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

        void StoreCharacterHitbox() {
            

            for (int i = 0; i < bodyCollisionRight.GetLength(0); i++) {
                for (int j = 0; j < bodyCollisionRight.GetLength(1); j++) {
                    System.Diagnostics.Debug.WriteLine("index " + i + " " + j);
                    bodyCollisionRight[i, j] = hitboxCalc.CalcHitbox(spritesheet, new Rectangle(i * 140, j * 53, 140, 53));
                }
            }
            /*
            for (int i = 0; i < bodyCollisionLeft.GetLength(0); i++) {
                for (int j = 0; j < bodyCollisionLeft.GetLength(1); j++) {
                    bodyCollisionLeft[i, j] = bodyCollisionRight[i, j];
                }
            }*/
        }
    }
}