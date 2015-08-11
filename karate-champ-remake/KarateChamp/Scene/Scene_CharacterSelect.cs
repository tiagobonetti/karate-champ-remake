using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace KarateChamp {
    public class Scene_CharacterSelect : Scene {
        public CharacterGrid p1Selection = CharacterGrid.None;
        public CharacterGrid p2Selection = CharacterGrid.None;
        public IPlayerInput WhiteInput { get; set; }
        public IPlayerInput RedInput { get; set; }
        Timer timer = new Timer();
        CharacterGrid[] characterList = new CharacterGrid[2];
        State state;
        bool changeScreen = false;
        int redCursor;
        int blueCursor;
        PlayerCharacter whiteCharacter;
        PlayerCharacter redCharacter;
        KeyboardState previousButtonState;

        Vector2 scrollingTextBar1pos;
        Vector2 scrollingTextBar2pos;
        Vector2 bluePositon;
        Vector2 redPositon;
        Vector2 smallPortraitPosition;

        Texture2D characterSpritesheet;
        Texture2D scrollingTextBar;
        Texture2D scrollingText;
        Texture2D smallPortraits;
        Texture2D karateLargePortrait;
        Texture2D randomLargePortrait;
        Texture2D largePortraitLeft;
        Texture2D largePortraitRight;
        Texture2D cursorRed;
        Texture2D cursorBlue;
        Texture2D cursorBoth;
        Texture2D bg;
        Texture2D[] bgSpriteList = new Texture2D[24];

        BgAnimator bgAnimator;

        public Scene_CharacterSelect(MainGame game) {
            this.game = game;
            floor = 405f;
            Init();
        }

        public enum CharacterGrid {
            None,
            KarateGuy,
            Random
        }

        enum State {
            BuildGameObjects,
            CharacterSelection,
            End,
        }

        public void Update(GameTime gameTime) {
            switch (state) {
                case State.BuildGameObjects:
                    BuildGameObjects();
                    break;
                case State.CharacterSelection:
                    Control();
                    whiteCharacter.canControl = false;
                    redCharacter.canControl = false;
                    whiteCharacter.Update(gameTime);
                    redCharacter.Update(gameTime);
                    MoveScrollingText(gameTime);
                    bgAnimator.PlayLoopAnimation(out bg, gameTime);
                    UpdateCursor();
                    break;
                case State.End:
                    whiteCharacter.canControl = false;
                    redCharacter.canControl = false;
                    whiteCharacter.Update(gameTime);
                    redCharacter.Update(gameTime);
                    MoveScrollingText(gameTime);
                    bgAnimator.PlayLoopAnimation(out bg, gameTime);
                    UpdateCursor();
                    if (changeScreen == false) {
                        changeScreen = true;
                        game.sceneControl.EnterScene(SceneType.FightTurbo, SceneTransition.Type.FadeOutIn, 1f);
                    }
                    break;
            }
        }

        public void Draw() {
            game.graphics.GraphicsDevice.Clear(Color.Black);
            DrawBackground();
            switch (state) {
                case State.BuildGameObjects:
                    break;
                case State.CharacterSelection:
                    DrawSmallPortraits();
                    DrawLargePortraits();
                    DrawScrollingText();
                    DrawCursors();
                    break;
                case State.End:
                    DrawSmallPortraits();
                    DrawLargePortraits();
                    DrawScrollingText();
                    DrawCursors();
                    break;
            }
        }

        void Control() {

            if (Keyboard.GetState().IsKeyDown(Keys.Z) && previousButtonState != Keyboard.GetState()) {
                if (p1Selection == CharacterGrid.None) {
                    p1Selection = characterList[blueCursor];
                    System.Diagnostics.Debug.WriteLine("p1 selection " + p1Selection);
                }
            }
            else if (Keyboard.GetState().IsKeyDown(Keys.D) && previousButtonState != Keyboard.GetState()) {
                blueCursor = MathHelper.Clamp(blueCursor + 1, 0, 1);
            }
            else if (Keyboard.GetState().IsKeyDown(Keys.A) && previousButtonState != Keyboard.GetState()) {
                blueCursor = MathHelper.Clamp(blueCursor - 1, 0, 1);
            }
            else if (Keyboard.GetState().IsKeyDown(Keys.F5) && previousButtonState != Keyboard.GetState()) {
                p1Selection = CharacterGrid.None;
            }


            if (Keyboard.GetState().IsKeyDown(Keys.C) && previousButtonState != Keyboard.GetState()) {
                if (p2Selection == CharacterGrid.None) {
                    p2Selection = characterList[redCursor];
                    System.Diagnostics.Debug.WriteLine("p2 selection " + p2Selection);
                }
            }
            else if (Keyboard.GetState().IsKeyDown(Keys.Right) && previousButtonState != Keyboard.GetState()) {
                redCursor = MathHelper.Clamp(redCursor + 1, 0, 1);
            }
            else if (Keyboard.GetState().IsKeyDown(Keys.Left) && previousButtonState != Keyboard.GetState()) {
                redCursor = MathHelper.Clamp(redCursor - 1, 0, 1);
            }
            else if (Keyboard.GetState().IsKeyDown(Keys.F6) && previousButtonState != Keyboard.GetState()) {
                p2Selection = CharacterGrid.None;
            }


            if (p1Selection != CharacterGrid.None && p2Selection != CharacterGrid.None) {
                if (p1Selection == CharacterGrid.Random) {
                    p1Selection = CharacterGrid.KarateGuy;
                }
                if (p2Selection == CharacterGrid.Random) {
                    p2Selection = CharacterGrid.KarateGuy;
                }
                state = State.End;
            }

            previousButtonState = Keyboard.GetState();
        }

        void UpdateCursor() {
            bluePositon = new Vector2((smallPortraitPosition.X - smallPortraits.Width * 0.25f) + blueCursor * smallPortraits.Width * 0.5f, smallPortraitPosition.Y - 2f);
            redPositon = new Vector2((smallPortraitPosition.X - smallPortraits.Width * 0.25f) + redCursor * smallPortraits.Width * 0.5f, smallPortraitPosition.Y - 2f);
        }

        void SelectionTimer(GameTime gameTime) {
            bool timerEnded;
            timer.TimerCounter(gameTime, 2f, out timerEnded);
            if (timerEnded) {
                state = State.End;
            }
        }

        void MoveScrollingText(GameTime gameTime) {
            Vector2 scrollingTextBarVelocity = new Vector2(-1f, 0f);
            float scrollingTextSpeed = 150f;
            scrollingTextBar1pos += scrollingTextBarVelocity * scrollingTextSpeed * (float)gameTime.ElapsedGameTime.TotalSeconds;
            scrollingTextBar2pos += scrollingTextBarVelocity * scrollingTextSpeed * (float)gameTime.ElapsedGameTime.TotalSeconds;
            if (scrollingTextBar1pos.X < -scrollingText.Width * 0.5f)
                scrollingTextBar1pos.X = game.graphics.PreferredBackBufferWidth + scrollingText.Width;
            if (scrollingTextBar2pos.X < -scrollingText.Width * 0.5f)
                scrollingTextBar2pos.X = game.graphics.PreferredBackBufferWidth + scrollingText.Width;
        }

        void DrawScrollingText() {
            Vector2 barpos = new Vector2(game.graphics.PreferredBackBufferWidth * 0.5f, game.graphics.PreferredBackBufferHeight * 0.055f);
            game.spriteBatch.Begin(SpriteSortMode.Deferred, BlendState.AlphaBlend, SamplerState.PointClamp, null, null, null, null);
            game.spriteBatch.Draw(scrollingTextBar, barpos, null, null, new Vector2(scrollingTextBar.Width * 0.5f, scrollingTextBar.Height * 0.5f), 0f, Vector2.One, Color.White, SpriteEffects.None, 0f);
            game.spriteBatch.Draw(scrollingText, scrollingTextBar1pos, null, null, new Vector2(scrollingText.Width * 0.5f, scrollingText.Height * 0.5f), 0f, Vector2.One, Color.White, SpriteEffects.None, 0f);
            game.spriteBatch.Draw(scrollingText, scrollingTextBar2pos, null, null, new Vector2(scrollingText.Width * 0.5f, scrollingText.Height * 0.5f), 0f, Vector2.One, Color.White, SpriteEffects.None, 0f);
            game.spriteBatch.End();
        }

        void DrawSmallPortraits() {
            game.spriteBatch.Begin(SpriteSortMode.Deferred, BlendState.AlphaBlend, SamplerState.PointClamp, null, null, null, null);
            game.spriteBatch.Draw(smallPortraits, smallPortraitPosition, null, null, new Vector2(smallPortraits.Width * 0.5f, smallPortraits.Height * 0.5f), 0f, Vector2.One, Color.White, SpriteEffects.None, 0f);
            game.spriteBatch.End();
        }

        void DrawCursors() {
            Texture2D blue;
            Texture2D red;
            if (redCursor == blueCursor) {
                blue = cursorBoth;
                red = cursorBoth;
            }
            else {
                blue = cursorBlue;
                red = cursorRed;
            }
            game.spriteBatch.Begin(SpriteSortMode.Deferred, BlendState.AlphaBlend, SamplerState.PointClamp, null, null, null, null);
            game.spriteBatch.Draw(blue, bluePositon, null, null, new Vector2(blue.Width * 0.5f, blue.Height * 0.5f), 0f, Vector2.One, Color.White, SpriteEffects.None, 0f);
            game.spriteBatch.Draw(red, redPositon, null, null, new Vector2(red.Width * 0.5f, red.Height * 0.5f), 0f, Vector2.One, Color.White, SpriteEffects.None, 0f);
            game.spriteBatch.End();
        }

        void DrawLargePortraits() {

            Vector2 posLeft = new Vector2(game.graphics.PreferredBackBufferWidth * 0.24f, game.graphics.PreferredBackBufferHeight * 0.325f);
            Vector2 posRight = new Vector2(game.graphics.PreferredBackBufferWidth * 0.76f, game.graphics.PreferredBackBufferHeight * 0.325f); ;
            SpriteEffects flipRight;

            if (characterList[blueCursor] == CharacterGrid.KarateGuy) {
                largePortraitLeft = karateLargePortrait;
                whiteCharacter.Draw(game.spriteBatch);

            }
            else {
                largePortraitLeft = randomLargePortrait;
            }

            if (characterList[redCursor] == CharacterGrid.KarateGuy) {
                largePortraitRight = karateLargePortrait;
                redCharacter.Draw(game.spriteBatch);
                flipRight = SpriteEffects.FlipHorizontally;
            }
            else {
                largePortraitRight = randomLargePortrait;
                flipRight = SpriteEffects.None;
            }

            game.spriteBatch.Begin(SpriteSortMode.Deferred, BlendState.AlphaBlend, SamplerState.PointClamp, null, null, null, null);
            game.spriteBatch.Draw(largePortraitLeft, posLeft, null, null, new Vector2(largePortraitLeft.Width * 0.5f, largePortraitLeft.Height * 0.5f), 0f, Vector2.One, Color.White, SpriteEffects.None, 0f);
            game.spriteBatch.Draw(largePortraitRight, posRight, null, null, new Vector2(largePortraitRight.Width * 0.5f, largePortraitRight.Height * 0.5f), 0f, Vector2.One, Color.White, flipRight, 0f);
            game.spriteBatch.End();
            if (characterList[blueCursor] == CharacterGrid.KarateGuy)
                whiteCharacter.Draw(game.spriteBatch);
            if (characterList[redCursor] == CharacterGrid.KarateGuy)
                redCharacter.Draw(game.spriteBatch);
        }

        void DrawBackground() {
            Vector2 bgPos = new Vector2(game.graphics.PreferredBackBufferWidth * 0.5f, game.graphics.PreferredBackBufferHeight * 0.5f);
            game.spriteBatch.Begin(SpriteSortMode.Deferred, BlendState.AlphaBlend, SamplerState.PointClamp, null, null, null, null);
            game.spriteBatch.Draw(bg, bgPos, null, null, new Vector2(bg.Width * 0.5f, bg.Height * 0.5f), 1.57f, Vector2.One, Color.White, SpriteEffects.None, 0f);
            game.spriteBatch.End();
        }

        void BuildGameObjects() {

            Vector2 whiteStartingPosition = new Vector2(game.graphics.PreferredBackBufferWidth / 2 - 340, floor - 53);
            Vector2 redStartingPosition = new Vector2(game.graphics.PreferredBackBufferWidth / 2 - 0, floor - 53);

            whiteCharacter = new PlayerCharacter(characterSpritesheet, MainGame.Tag.PlayerOne, whiteStartingPosition, BaseCharacter.Orientation.Right, "p1", game);
            redCharacter = new PlayerCharacter(characterSpritesheet, MainGame.Tag.PlayerOne, redStartingPosition, BaseCharacter.Orientation.Left, "p2", game);
            Debug.enabled = false;

            switch (game.sceneControl.mainMenu.InputOption) {
                default:
                case Scene_MainMenu.InputOptions.Keyboard:
                    whiteCharacter.PlayerInput = InputDictionary.Keyboard;
                    redCharacter.PlayerInput = InputDictionary.GamePadOne;
                    break;
                case Scene_MainMenu.InputOptions.GamePad:
                    whiteCharacter.PlayerInput = InputDictionary.GamePadOne;
                    redCharacter.PlayerInput = InputDictionary.GamePadTwo;
                    break;
            }

            whiteCharacter.velocity = Vector2.Zero;
            redCharacter.velocity = Vector2.Zero;
            whiteCharacter.Opponent = redCharacter;
            redCharacter.Opponent = whiteCharacter;
            state = State.CharacterSelection;
        }

        public virtual void Init() {
            characterSpritesheet = game.Content.Load<Texture2D>("Sprites/Main Character/CharacterSpritesheet");
            scrollingTextBar = game.Content.Load<Texture2D>("Character Select/Bar");
            scrollingText = game.Content.Load<Texture2D>("Character Select/scrollingText");
            smallPortraits = game.Content.Load<Texture2D>("Character Select/Little Portraits");
            karateLargePortrait = game.Content.Load<Texture2D>("Character Select/Karate Big Portrait");
            randomLargePortrait = game.Content.Load<Texture2D>("Character Select/Random Big Portrait");
            largePortraitLeft = game.Content.Load<Texture2D>("Character Select/Bar");
            largePortraitRight = game.Content.Load<Texture2D>("Character Select/Bar");
            cursorRed = game.Content.Load<Texture2D>("Character Select/Cursor Red");
            cursorBlue = game.Content.Load<Texture2D>("Character Select/Cursor Blue");
            cursorBoth = game.Content.Load<Texture2D>("Character Select/Cursor Both");
            state = State.BuildGameObjects;
            for (int i = 0; i < bgSpriteList.Length; i++) {
                bgSpriteList[i] = game.Content.Load<Texture2D>("Character Select/Bg Character Select/Bg Character Select " + (i + 1));
            }
            bg = bgSpriteList[0];
            bgAnimator = new BgAnimator(bgSpriteList, 0.05f);

            smallPortraitPosition = new Vector2(game.graphics.PreferredBackBufferWidth * 0.5f, game.graphics.PreferredBackBufferHeight * 0.83f);
            scrollingTextBar1pos = new Vector2(game.graphics.PreferredBackBufferWidth * 0.5f, game.graphics.PreferredBackBufferHeight * 0.055f);
            scrollingTextBar2pos = new Vector2(game.graphics.PreferredBackBufferWidth * 0.6f + scrollingText.Width, game.graphics.PreferredBackBufferHeight * 0.055f);
            characterList[0] = CharacterGrid.KarateGuy;
            characterList[1] = CharacterGrid.Random;
        }
    }
}