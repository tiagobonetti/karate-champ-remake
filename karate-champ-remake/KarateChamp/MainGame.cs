using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System.Collections.Generic;

namespace KarateChamp {
    public class MainGame : Game {

        public static IList<GameObject> gameObjectList;
        public static KeyboardState previousKeyboardState;
        public static Texture2D colSprite;
        public static Scoreboard scoreboard;

        GraphicsDeviceManager graphics;
        SpriteBatch spriteBatch;

        SceneControl sceneControl;
        /* Now in Scene_Fight.cs
        PlayerCharacter whiteCharacter;
        PlayerCharacter redCharacter;
        DEBUG_Collision debugCollision;
        */
        
        public MainGame() {

            graphics = new GraphicsDeviceManager(this);
            Content.RootDirectory = "Content";
            IsMouseVisible = true;
            //debugCollision = new DEBUG_Collision();  Now in Scene_Fight.cs
            gameObjectList = new List<GameObject>();
            scoreboard = new Scoreboard();
        }

        protected override void Initialize() {
            base.Initialize();
        }

        protected override void LoadContent() {
            Debug.LoadContent(Content);
            spriteBatch = new SpriteBatch(GraphicsDevice);
            sceneControl = new SceneControl(Content);

            /* Now in Scene_Fight.cs
            colSprite = Content.Load<Texture2D>("KarateChampCollision");
            Texture2D spritesheet = Content.Load<Texture2D>("KarateChampAligned");

            whiteCharacter = new PlayerCharacter(spritesheet, MainGame.Tag.PlayerOne, 300.0f, BaseCharacter.Orientation.Right, "p1");
            whiteCharacter.PlayerInput = new KeyboardInput();

            redCharacter = new PlayerCharacter(spritesheet, MainGame.Tag.PlayerOne, 400.0f, BaseCharacter.Orientation.Left, "p2");
            redCharacter.PlayerInput = new GamePadInput(PlayerIndex.One);
            redCharacter.PlayerInput.Position = new Vector2(600.0f, 0.0f);

            whiteCharacter.Opponent = redCharacter;
            redCharacter.Opponent = whiteCharacter;
            */
        }

        protected override void UnloadContent() {
        }

        protected override void Update(GameTime gameTime) {
            if (GamePad.GetState(PlayerIndex.One).Buttons.Back == ButtonState.Pressed || Keyboard.GetState().IsKeyDown(Keys.Escape))
                Exit();

            sceneControl.Update(gameTime);
            /* Now in Scene_Fight.cs
            whiteCharacter.Update(gameTime);
            redCharacter.Update(gameTime);*/
            base.Update(gameTime);
            previousKeyboardState = Keyboard.GetState();
        }

        protected override void Draw(GameTime gameTime) {
            GraphicsDevice.Clear(Color.CornflowerBlue);
            
            sceneControl.Draw(spriteBatch, Content, graphics);
            /* Now in Scene_Fight.cs
            whiteCharacter.Draw(spriteBatch);
            redCharacter.Draw(spriteBatch);
            debugCollision.Draw(spriteBatch);
            */
            base.Draw(gameTime);
        }

        public enum Tag {
            PlayerOne,
            PlayerTwo,
            Computer
        }
    }
}