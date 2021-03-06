﻿using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Audio;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using Microsoft.Xna.Framework.Media;
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
        GamePadState gpadState = GamePad.GetState(PlayerIndex.Two);
        

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
        Texture2D grid;
        Texture2D cursorRed;
        Texture2D cursorBlue;
        Texture2D cursorBoth;
        Texture2D cursorRedSelected;
        Texture2D cursorBlueSelected;
        Texture2D cursorBothSelected;
        Texture2D blue;
        Texture2D red;
        Texture2D bg;
        Texture2D[] bgSpriteList = new Texture2D[24];

        SoundEffect sfxCursorMoving;
        SoundEffect sfxCursorSelection;
        SoundEffect sfxCursorCancel;
        SoundEffect sfxFightYourRival;

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
                    break;
                case State.End:
                    whiteCharacter.canControl = false;
                    redCharacter.canControl = false;
                    whiteCharacter.Update(gameTime);
                    redCharacter.Update(gameTime);
                    MoveScrollingText(gameTime);
                    bgAnimator.PlayLoopAnimation(out bg, gameTime);
                    if (changeScreen == false) {
                        changeScreen = true;
                        game.sceneControl.fightTurbo = new Scene_FightTurbo(game);
                        game.sceneControl.EnterScene(SceneType.FightTurbo, SceneTransition.Type.FadeOutIn, 1f);
                    }
                    break;
            }
        }

        public void Draw() {
            game.graphics.GraphicsDevice.Clear(Color.Black);
            DrawBackground();
            DrawDebug();
            switch (state) {
                case State.BuildGameObjects:
                    break;
                case State.CharacterSelection:
                    DrawGrid();
                    DrawSmallPortraits();
                    DrawLargePortraits();
                    DrawScrollingText();
                    DrawCursors();
                    break;
                case State.End:
                    DrawGrid();
                    DrawSmallPortraits();
                    DrawLargePortraits();
                    DrawScrollingText();
                    DrawCursors();
                    break;
            }
        }

        void DrawDebug() {
            if (whiteCharacter != null && redCharacter != null) {
                game.spriteBatch.Begin(SpriteSortMode.Deferred, BlendState.AlphaBlend, SamplerState.PointClamp, null, null, null, null);
                whiteCharacter.PlayerInput.DrawDebug(game.spriteBatch, GameObject.Orientation.Right);
                redCharacter.PlayerInput.DrawDebug(game.spriteBatch, GameObject.Orientation.Right);
                string msg = state.ToString();
                Debug.DrawText(game.spriteBatch, new Vector2(0.0f, 600.0f), msg);
                game.spriteBatch.End();
            }
        }

        Direction lastDirectionP1 = Direction.None;
        bool lastStartP1 = false;
        bool lastCancelP1 = false;

        Direction lastDirectionP2 = Direction.None;
        bool lastStartP2 = false;
        bool lastCancelP2 = false;

        void Control() {

            //p1
            if (p1Selection == CharacterGrid.None) {
                Direction direction1 = whiteCharacter.PlayerInput.GetDirection();
                if (direction1 == Direction.Right && lastDirectionP1 == Direction.None) {
                    int newPos = MathHelper.Clamp(blueCursor + 1, 0, 1);
                    if (newPos != blueCursor) {
                        sfxCursorMoving.Play();
                        blueCursor = newPos;
                    }
                }
                else if (direction1 == Direction.Left && lastDirectionP1 == Direction.None) {
                    int newPos = MathHelper.Clamp(blueCursor - 1, 0, 1);
                    if (newPos != blueCursor) {
                        blueCursor = newPos;
                        sfxCursorMoving.Play();
                    }
                }
                lastDirectionP1 = direction1;
            }

            bool startP1 = whiteCharacter.PlayerInput.GetStart();
            if (startP1 && !lastStartP1) {
                if (p1Selection == CharacterGrid.None) {
                    p1Selection = characterList[blueCursor];
                    whiteCharacter.OverrideState(CharacterState.BackRoundKick, 5);
                    sfxCursorSelection.Play();
                }
            };
            lastStartP1 = startP1;

            bool cancelP1 = whiteCharacter.PlayerInput.GetCancel();
            if (cancelP1 && !lastCancelP1 && p1Selection != CharacterGrid.None) {
                p1Selection = CharacterGrid.None;
                whiteCharacter.OverrideState(CharacterState.Idle, 0);
                sfxCursorCancel.Play();
            };
            lastCancelP1 = cancelP1;

            //p2
            if (p2Selection == CharacterGrid.None) {
                Direction direction1 = redCharacter.PlayerInput.GetDirection();
                if (direction1 == Direction.Right && lastDirectionP2 == Direction.None) {
                    int newPos = MathHelper.Clamp(redCursor + 1, 0, 1);
                    if (newPos != redCursor) {
                        redCursor = newPos;
                        sfxCursorMoving.Play();
                    }
                }
                else if (direction1 == Direction.Left && lastDirectionP2 == Direction.None) {
                    int newPos = MathHelper.Clamp(redCursor - 1, 0, 1);
                    if (newPos != redCursor) {
                        redCursor = newPos;
                        sfxCursorMoving.Play();
                    }
                }
                lastDirectionP2 = direction1;
            }

            bool startP2 = redCharacter.PlayerInput.GetStart();
            if (startP2 && !lastStartP2) {
                if (p2Selection == CharacterGrid.None) {
                    p2Selection = characterList[redCursor];
                    redCharacter.OverrideState(CharacterState.BackRoundKick, 5);
                    sfxCursorSelection.Play();
                }
            };
            lastStartP2 = startP2;

            bool cancelP2 = redCharacter.PlayerInput.GetCancel();
            if (cancelP2 && !lastCancelP2 && p2Selection != CharacterGrid.None) {
                p2Selection = CharacterGrid.None;
                redCharacter.OverrideState(CharacterState.Idle, 0);
                sfxCursorCancel.Play();
            };
            lastCancelP2 = cancelP2;


            if (p1Selection == CharacterGrid.Random) {
                p1Selection = CharacterGrid.KarateGuy;
                characterList[redCursor] = CharacterGrid.KarateGuy;
                blueCursor = 0;
            }
            if (p2Selection == CharacterGrid.Random) {
                p2Selection = CharacterGrid.KarateGuy;
                redCursor = 0;
            }

            if (p1Selection != CharacterGrid.None && p2Selection != CharacterGrid.None) {
                state = State.End;
            }

            previousButtonState = Keyboard.GetState();
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

        void DrawGrid() {
            Vector2 position = new Vector2(game.graphics.PreferredBackBufferWidth * 0.499f, game.graphics.PreferredBackBufferHeight * 0.8737f);
            game.spriteBatch.Begin(SpriteSortMode.Deferred, BlendState.AlphaBlend, SamplerState.PointClamp, null, null, null, null);
            game.spriteBatch.Draw(grid, position, null, null, new Vector2(grid.Width * 0.5f, grid.Height * 0.5f), 0f, Vector2.One, Color.White, SpriteEffects.None, 0f);
            game.spriteBatch.End();
        }

        void DrawCursors() {
            blue = cursorBlue;
            red = cursorRed;

            if (redCursor == blueCursor) {
                if (p1Selection != CharacterGrid.None && p2Selection != CharacterGrid.None) {
                    blue = cursorBothSelected;
                    red = cursorBothSelected;
                }
                else if (p1Selection == CharacterGrid.None && p2Selection == CharacterGrid.None) {
                    blue = cursorBoth;
                    red = cursorBoth;
                }
                else {
                    if (p1Selection != CharacterGrid.None) {
                        blue = cursorBlueSelected;
                    }
                    if (p2Selection != CharacterGrid.None) {
                        red = cursorBlueSelected;
                    }
                }
            }
            else {
                if (p1Selection != CharacterGrid.None) {
                    blue = cursorBlueSelected;
                }
                else {
                    blue = cursorBlue;
                }
                if (p2Selection != CharacterGrid.None) {
                    red = cursorRedSelected;
                }
                else {
                    red = cursorRed;
                }
            }
            CursorPosition();

            game.spriteBatch.Begin(SpriteSortMode.Deferred, BlendState.AlphaBlend, SamplerState.PointClamp, null, null, null, null);
            game.spriteBatch.Draw(blue, bluePositon, null, null, new Vector2(blue.Width * 0.5f, blue.Height * 0.5f), 0f, Vector2.One, Color.White, SpriteEffects.None, 0f);
            game.spriteBatch.Draw(red, redPositon, null, null, new Vector2(red.Width * 0.5f, red.Height * 0.5f), 0f, Vector2.One, Color.White, SpriteEffects.None, 0f);
            game.spriteBatch.End();
        }

        void CursorPosition() {
            float offset = 3f;
            float offsetBlue;
            float offsetRed;
            if (blue == cursorBlueSelected) {
                if (blueCursor == 0) {
                    offsetBlue = offset;
                }
                else {
                    offsetBlue = -offset;
                }

            }
            else if (blue == cursorBothSelected) {
                if (blueCursor == 0) {
                    offsetBlue = offset;
                }
                else {
                    offsetBlue = -offset;
                }
            }
            else {
                offsetBlue = 0;
            }
            if (red == cursorRedSelected) {
                if (redCursor == 0) {
                    offsetRed = offset;
                }
                else {
                    offsetRed = -offset;
                }

            }
            else if (red == cursorBothSelected) {
                if (redCursor == 0) {
                    offsetRed = offset;
                }
                else {
                    offsetRed = -offset;
                }
            }
            else {
                offsetRed = 0;
            }

            bluePositon = new Vector2((smallPortraitPosition.X - smallPortraits.Width * 0.25f) + blueCursor * smallPortraits.Width * 0.5f + offsetBlue, smallPortraitPosition.Y - 2f);
            redPositon = new Vector2((smallPortraitPosition.X - smallPortraits.Width * 0.25f) + redCursor * smallPortraits.Width * 0.5f + offsetRed, smallPortraitPosition.Y - 2f);
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

            sfxFightYourRival.Play();

            Vector2 whiteStartingPosition = new Vector2(game.graphics.PreferredBackBufferWidth / 2 - 340, floor - 53);
            Vector2 redStartingPosition = new Vector2(game.graphics.PreferredBackBufferWidth / 2 - 0, floor - 53);

            whiteCharacter = new PlayerCharacter(characterSpritesheet, MainGame.Tag.PlayerOne, whiteStartingPosition, BaseCharacter.Orientation.Right, "p1", game);
            redCharacter = new PlayerCharacter(characterSpritesheet, MainGame.Tag.PlayerOne, redStartingPosition, BaseCharacter.Orientation.Left, "p2", game);

            switch (game.sceneControl.mainMenu.InputOption) {
                default:
                case Scene_MainMenu.InputOptions.Keyboard:
                    whiteCharacter.PlayerInput = InputManager.Keyboard;
                    redCharacter.PlayerInput = InputManager.GamePadOne;
                    break;
                case Scene_MainMenu.InputOptions.GamePad:
                    whiteCharacter.PlayerInput = InputManager.GamePadOne;
                    redCharacter.PlayerInput = InputManager.GamePadTwo;
                    break;
            }

            redCharacter.PlayerInput.DebugPosition = new Vector2(game.graphics.PreferredBackBufferWidth / 2.0f, 0.0f);
            whiteCharacter.velocity = Vector2.Zero;
            redCharacter.velocity = Vector2.Zero;
            whiteCharacter.Opponent = redCharacter;
            redCharacter.Opponent = whiteCharacter;
            game.sfxControl.bgmCharSelect.Volume = 0.4f;
            game.sfxControl.bgmCharSelect.Play();
            MediaPlayer.Stop();
            state = State.CharacterSelection;
        }

        public virtual void Init() {
            sfxCursorMoving = game.Content.Load<SoundEffect>("Audio/Sfx/Cursor Movement");
            sfxCursorSelection = game.Content.Load<SoundEffect>("Audio/Sfx/Cursor Selection");
            sfxCursorCancel = game.Content.Load<SoundEffect>("Audio/Sfx/Cursor Cancel");
            sfxFightYourRival = game.Content.Load<SoundEffect>("Audio/Sfx/Figh Your Rival");

            characterSpritesheet = game.Content.Load<Texture2D>("Sprites/Main Character/CharacterSpritesheet");
            scrollingTextBar = game.Content.Load<Texture2D>("Character Select/Bar");
            scrollingText = game.Content.Load<Texture2D>("Character Select/scrollingText");
            smallPortraits = game.Content.Load<Texture2D>("Character Select/Little Portraits");
            karateLargePortrait = game.Content.Load<Texture2D>("Character Select/Karate Big Portrait");
            randomLargePortrait = game.Content.Load<Texture2D>("Character Select/Random Big Portrait");
            largePortraitLeft = game.Content.Load<Texture2D>("Character Select/Bar");
            largePortraitRight = game.Content.Load<Texture2D>("Character Select/Bar");
            grid = game.Content.Load<Texture2D>("Character Select/Grid");
            cursorRed = game.Content.Load<Texture2D>("Character Select/Cursor Red");
            cursorBlue = game.Content.Load<Texture2D>("Character Select/Cursor Blue");
            cursorBoth = game.Content.Load<Texture2D>("Character Select/Cursor Both");
            cursorRedSelected = game.Content.Load<Texture2D>("Character Select/Cursor Red Selected");
            cursorBlueSelected = game.Content.Load<Texture2D>("Character Select/Cursor Blue Selected");
            cursorBothSelected = game.Content.Load<Texture2D>("Character Select/Cursor Both Selected");

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