using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System.Collections.Generic;

namespace KarateChamp {
    public class MainGame : Game {

        public bool turboMode = true;
        public KeyboardState previousKeyboardState;
        public GraphicsDeviceManager graphics;
        public SpriteBatch spriteBatch;
        public SceneControl sceneControl;
        public Rectangle[,] bodyCollisionRight = new Rectangle[12, 21];
        public Rectangle[,] bodyCollisionLeft = new Rectangle[12, 21];
        public Rectangle[,] SuperMovesBodyCollisionRight = new Rectangle[12, 5];
        public Rectangle[,] SuperMovesBodyCollisionLeft = new Rectangle[12, 5];
        public Rectangle[,] SuperMovesAttackRight = new Rectangle[12, 5];
        public Rectangle[,] SuperMovesAttackLeft = new Rectangle[12, 5];
        public Texture2D bodyCollision;
        public Texture2D SuperMovesBodyCollision;
        public Texture2D SuperMovesAttackCollision;
        HitboxCalculator hitboxCalc;

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
            bodyCollision = Content.Load<Texture2D>("Sprites/Main Character/BodyCollision");
            SuperMovesBodyCollision = Content.Load<Texture2D>("Sprites/Main Character/SuperMovesBodyCollision");
            SuperMovesAttackCollision = Content.Load<Texture2D>("Sprites/Main Character/SuperMovesAttackCollision");
            StoreCharacterBodyHitbox();
            StoreSuperMovesBodyHitbox();
            StoreSuperMovesAttackHitbox();
            spriteBatch = new SpriteBatch(GraphicsDevice);
            sceneControl.EnterScene(SceneType.FightTurbo, SceneTransition.Type.FadeIn, 1.5f);
        }

        protected override void UnloadContent() {
        }

        protected override void Update(GameTime gameTime) {
            if (GamePad.GetState(PlayerIndex.One).Buttons.Back == ButtonState.Pressed || Keyboard.GetState().IsKeyDown(Keys.Back))
                Exit();
            InputManager.Update(gameTime);
            sceneControl.Update(gameTime);
            base.Update(gameTime);
            previousKeyboardState = Keyboard.GetState();
        }

        protected override void Draw(GameTime gameTime) {
            sceneControl.Draw(spriteBatch, Content, graphics);
            base.Draw(gameTime);
        }

        public enum Tag {
            PlayerOne,
            PlayerTwo,
            Computer,
            Fireball
        }

        void StoreCharacterBodyHitbox() {

            for (int i = 0; i < bodyCollisionRight.GetLength(0); i++) {
                for (int j = 0; j < bodyCollisionRight.GetLength(1); j++) {
                    bodyCollisionRight[i, j] = hitboxCalc.CalcHitbox(bodyCollision, new Rectangle(i * 140, j * 53, 140, 53), Color.Blue);
             //       System.Diagnostics.Debug.WriteLine("Collision Generator (Body): " + i + " " + j + " " + bodyCollisionRight[i, j]);
                }
            }

            for (int i = 0; i < bodyCollisionLeft.GetLength(0); i++) {
                for (int j = 0; j < bodyCollisionLeft.GetLength(1); j++) {
                    bodyCollisionLeft[i, j] = bodyCollisionRight[i, j];
                    bodyCollisionLeft[i, j].X = (int)(BaseCharacter.ScaleAdjust(140) - (bodyCollisionLeft[i, j].X + bodyCollisionLeft[i, j].Width) - 5); 
                }
            }
        }

        void StoreSuperMovesBodyHitbox() {

            for (int i = 0; i < SuperMovesBodyCollisionRight.GetLength(0); i++) {
                for (int j = 0; j < SuperMovesBodyCollisionRight.GetLength(1); j++) {
                    SuperMovesBodyCollisionRight[i, j] = hitboxCalc.CalcHitbox(SuperMovesBodyCollision, new Rectangle(i * 140, j * 53, 140, 53), Color.Blue);
                    //       System.Diagnostics.Debug.WriteLine("Collision Generator (Body): " + i + " " + j + " " + bodyCollisionRight[i, j]);
                }
            }

            for (int i = 0; i < SuperMovesAttackLeft.GetLength(0); i++) {
                for (int j = 0; j < SuperMovesAttackLeft.GetLength(1); j++) {
                    SuperMovesAttackLeft[i, j] = SuperMovesAttackRight[i, j];
                    SuperMovesAttackLeft[i, j].X = (int)(BaseCharacter.ScaleAdjust(140) - (SuperMovesAttackLeft[i, j].X + SuperMovesAttackLeft[i, j].Width) - 5);
                }
            }
        }

        void StoreSuperMovesAttackHitbox() {

            for (int i = 0; i < SuperMovesAttackRight.GetLength(0); i++) {
                for (int j = 0; j < SuperMovesAttackRight.GetLength(1); j++) {
                    SuperMovesAttackRight[i, j] = hitboxCalc.CalcHitbox(SuperMovesAttackCollision, new Rectangle(i * 140, j * 53, 140, 53), Color.Red);
                    System.Diagnostics.Debug.WriteLine("Collision Generator (Super Moves): " + i + " " + j + " " + SuperMovesAttackRight[i, j]);

                }
            }

            for (int i = 0; i < SuperMovesAttackLeft.GetLength(0); i++) {
                for (int j = 0; j < SuperMovesAttackLeft.GetLength(1); j++) {
                    SuperMovesAttackLeft[i, j] = SuperMovesAttackRight[i, j];
                    SuperMovesAttackLeft[i, j].X = (int)(BaseCharacter.ScaleAdjust(140) - (SuperMovesAttackLeft[i, j].X + SuperMovesAttackLeft[i, j].Width) - 5);

                }
            }
        }
    }
}