﻿using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using Microsoft.Xna.Framework.Media;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace KarateChamp {
    public class Scene_Fight : Scene {

        public IPlayerInput WhiteInput { get; set; }
        public IPlayerInput RedInput { get; set; }
        public int roundNumber = 0;
        public float roundTime = 30f;
        BaseCharacter roundWinner;
        Scoreboard scoreboard;
        int maxScore = 4;
        bool koPlayed;
        bool fightPlayed;
        bool fullPointPlayed;
        bool canControl = true;
        DEBUG_Collision debugCollision = new DEBUG_Collision();
        Timer timer = new Timer();
        Timer clockTimer = new Timer();
        SpriteFont arial20;
        State state;

        PlayerCharacter whiteCharacter;
        PlayerCharacter redCharacter;
        Vector2 whiteStartingPosition;
        Vector2 redStartingPosition;

        Texture2D spritesheet;
        Texture2D bg;
        Texture2D fightText;
        Texture2D whiteText;
        Texture2D redText;
        Texture2D koText;
        Texture2D stopText;

        public Scene_Fight(MainGame game) {
            this.game = game;
            Init();
        }

        public Scene_Fight(MainGame game, int roundNumber, Scoreboard scoreBoard) {
            this.game = game;
            this.roundNumber = roundNumber;
            this.scoreboard = scoreBoard;
            Init();
        }

        enum State {
            BuildGameObjects,
            PreFight,
            JudgeStart,
            Play,
            KO,
            ClockEnded,
            Winner,
            RoundOver,
            GameOver
        }

        public void Update(GameTime gameTime) {
            ExitButton();
            switch (state) {
                case State.BuildGameObjects:
                    BuildGameObjects();
                    break;
                case State.PreFight:
                    PreFight(gameTime);
                    whiteCharacter.canControl = false;
                    redCharacter.canControl = false;
                    break;
                case State.JudgeStart:
                    ShowFightText(gameTime);
                    if (fightPlayed == false) {
                        game.sfxControl.sfxClassicBegin.Play();
                        fightPlayed = true;
                    }
                    whiteCharacter.canControl = false;
                    redCharacter.canControl = false;
                    break;
                case State.Play:
                    ClockDecrease(gameTime);
                    whiteCharacter.canControl = true;
                    redCharacter.canControl = true;
                    break;
                case State.KO:
                    if (koPlayed == false) {
                        game.sfxControl.sfxClassicStop.Play();
                        koPlayed = true;
                    }
                    whiteCharacter.canControl = false;
                    redCharacter.canControl = false;
                    WaitKo(gameTime);
                    break;
                case State.ClockEnded:
                    if (koPlayed == false) {
                        game.sfxControl.sfxClassicStop.Play();
                        koPlayed = true;
                    }
                    whiteCharacter.canControl = false;
                    redCharacter.canControl = false;
                    WaitDecision(gameTime);
                    break;
                case State.Winner:
                    if (fullPointPlayed == false) {
                        game.sfxControl.sfxClassicFullPoint.Play();
                        fullPointPlayed = true;
                    }
                    whiteCharacter.canControl = false;
                    redCharacter.canControl = false;
                    WaitWinner(gameTime);
                    break;
                case State.RoundOver:
                    whiteCharacter.canControl = false;
                    redCharacter.canControl = false;
                    EndRound(gameTime);
                    break;
                case State.GameOver:
                    whiteCharacter.canControl = false;
                    redCharacter.canControl = false;
                    EndGame(gameTime);
                    break;
            }
            debugCollision.Update(gameTime);
            Debug.Update();
            whiteCharacter.Update(gameTime);
            redCharacter.Update(gameTime);
        }

        public void Draw() {
            game.graphics.GraphicsDevice.Clear(Color.Black);
            switch (state) {
                case State.BuildGameObjects:
                    DrawBackground();
                    break;
                case State.PreFight:
                    DrawBackground();
                    DrawClock();
                    scoreboard.Draw(game.spriteBatch);
                    redCharacter.Draw(game.spriteBatch);
                    whiteCharacter.Draw(game.spriteBatch);
                    break;
                case State.JudgeStart:
                    DrawBackground();
                    DrawClock();
                    scoreboard.Draw(game.spriteBatch);
                    redCharacter.Draw(game.spriteBatch);
                    whiteCharacter.Draw(game.spriteBatch);
                    DrawFightText();
                    break;
                case State.Play:
                    DrawBackground();
                    DrawClock();
                    scoreboard.Draw(game.spriteBatch);
                    redCharacter.Draw(game.spriteBatch);
                    whiteCharacter.Draw(game.spriteBatch);
                    break;
                case State.KO:
                    DrawBackground();
                    DrawClock();
                    DrawStop();
                    scoreboard.Draw(game.spriteBatch);
                    redCharacter.Draw(game.spriteBatch);
                    whiteCharacter.Draw(game.spriteBatch);
                    break;
                case State.ClockEnded:
                    DrawBackground();
                    DrawClock();
                    DrawStop();
                    scoreboard.Draw(game.spriteBatch);
                    redCharacter.Draw(game.spriteBatch);
                    whiteCharacter.Draw(game.spriteBatch);
                    break;
                case State.Winner:
                    DrawBackground();
                    DrawClock();
                    DrawWinner();
                    scoreboard.Draw(game.spriteBatch);
                    redCharacter.Draw(game.spriteBatch);
                    whiteCharacter.Draw(game.spriteBatch);
                    break;
                case State.RoundOver:
                    DrawBackground();
                    DrawClock();
                    DrawWinner();
                    scoreboard.Draw(game.spriteBatch);
                    redCharacter.Draw(game.spriteBatch);
                    whiteCharacter.Draw(game.spriteBatch);
                    break;
                case State.GameOver:
                    DrawBackground();
                    DrawClock();
                    DrawWinner();
                    scoreboard.Draw(game.spriteBatch);
                    redCharacter.Draw(game.spriteBatch);
                    whiteCharacter.Draw(game.spriteBatch);
                    break;
            }
            debugCollision.Draw(game.spriteBatch);
        }

        void ExitButton() {
            if (canControl) {
                if (GamePad.GetState(PlayerIndex.One).IsButtonDown(Buttons.Start) ||
                    GamePad.GetState(PlayerIndex.Two).IsButtonDown(Buttons.Start) ||
                    Keyboard.GetState().IsKeyDown(Keys.Escape)) {

                    game.sceneControl.mainMenu = new Scene_MainMenu(game);
                    game.sceneControl.EnterScene(SceneType.MainMenu, SceneTransition.Type.FadeOutIn, 1.5f);
                    canControl = false;
                }
            }
        }

        void PreFight(GameTime gameTime) {
            bool timerEnded;
            timer.TimerCounter(gameTime, 1.5f, out timerEnded);
            if (timerEnded)
                state = State.JudgeStart;
        }

        void ShowFightText(GameTime gameTime) {
            bool timerEnded;
            timer.TimerCounter(gameTime, 0.7f, out timerEnded);
            if (timerEnded) {
                state = State.Play;
            }
        }

        public void ScoreThisRound(GameTime gameTime, string name, CharacterState attackState) {
            scoreboard.AddScore(name, 1, attackState);
            if (name == "p1") {
                roundWinner = whiteCharacter;
            }
            else {
                roundWinner = redCharacter;
            }
            state = State.KO;
        }

        void WaitKo(GameTime gameTime) {
            bool timerEnded;
            timer.TimerCounter(gameTime, 2f, out timerEnded);
            if (timerEnded) {
                state = State.Winner;
            }
        }

        void WaitWinner(GameTime gameTime) {
            bool timerEnded;
            timer.TimerCounter(gameTime, 2f, out timerEnded);
            if (timerEnded) {
                if (GameEnded()) {
                    state = State.GameOver;
                }
                else {
                    state = State.RoundOver;
                }
            }
        }

        void EndRound(GameTime gameTime) {
            bool timerEnded;
            timer.TimerCounter(gameTime, 1f, out timerEnded);
            if (timerEnded) {
                Restart();
            }
        }

        void EndGame(GameTime gameTime) {
            bool timerEnded;
            timer.TimerCounter(gameTime, 2f, out timerEnded);
            roundWinner.OverrideState(CharacterState.Winner, 0);
            if (timerEnded) {
                game.sceneControl.mainMenu = new Scene_MainMenu(game);
                game.sceneControl.EnterScene(SceneType.MainMenu, SceneTransition.Type.FadeOutIn, 1.5f);
            }
        }

        void ClockDecrease(GameTime gameTime) {
            bool timerEnded;
            clockTimer.TimerCounter(gameTime, roundTime, out timerEnded);
            if (timerEnded) {
                state = State.ClockEnded;
            }
        }

        void WaitDecision(GameTime gameTime) {
             bool timerEnded;
            timer.TimerCounter(gameTime, 2.5f, out timerEnded);
            if (timerEnded) {
                DecideWinner(gameTime);
                state = State.Winner;
            }
        }

        void DecideWinner(GameTime gameTime) {
            Random rd = new Random();
            int val = rd.Next(1, 3);
            if (val == 1) {
                ScoreThisRound(gameTime, "p1", CharacterState.Idle);
            }
            else {
                ScoreThisRound(gameTime, "p2", CharacterState.Idle);
            }
        }


        bool GameEnded() {
            for (int i = 0; i < scoreboard.Score.Length; i++)
                if (scoreboard.Score[i] >= maxScore)
                    return true;
            return false;
        }

        void Restart() {
            game.sceneControl.fight = new Scene_Fight(game, roundNumber + 1, scoreboard);
            game.sceneControl.EnterScene(SceneType.Fight, SceneTransition.Type.FadeIn, 1.2f);
            InputManager.ClearInputs();
        }

        void DrawBackground() {
            Vector2 bgPos = new Vector2(game.graphics.PreferredBackBufferWidth * 0.5f, game.graphics.PreferredBackBufferHeight * 0.5f);
            game.spriteBatch.Begin(SpriteSortMode.Deferred, BlendState.AlphaBlend, SamplerState.PointClamp, null, null, null, null);
            game.spriteBatch.Draw(bg, bgPos, null, null, new Vector2(bg.Width * 0.5f, bg.Height * 0.5f), 0f, Vector2.One * 0.75f, Color.White, SpriteEffects.None, 0f);
            game.spriteBatch.End();
        }

        void DrawClock() {
            Vector2 pos = new Vector2(game.graphics.PreferredBackBufferWidth * 0.94f, game.graphics.PreferredBackBufferHeight * 0.235f);
            Vector2 size = arial20.MeasureString(clockTimer.GetTimeDecreasing().ToString("N0"));
            Vector2 origin = size * 0.5f;
            game.spriteBatch.Begin(SpriteSortMode.Deferred, BlendState.AlphaBlend, SamplerState.PointClamp, null, null, null, null);
            game.spriteBatch.DrawString(arial20, clockTimer.GetTimeDecreasing().ToString("N0"), pos, Color.Red, 0.0f, origin, 1.0f, SpriteEffects.None, 1.0f);
            game.spriteBatch.End();
        }

        void DrawFightText() {
            Vector2 position = new Vector2(game.graphics.PreferredBackBufferWidth * 0.6f, game.graphics.PreferredBackBufferHeight * 0.2f);
            game.spriteBatch.Begin(SpriteSortMode.Deferred, BlendState.AlphaBlend, SamplerState.PointClamp, null, null, null, null);
            game.spriteBatch.Draw(fightText, position, null, null, new Vector2(fightText.Width * 0.5f, fightText.Height * 0.5f), 0f, Vector2.One, Color.White, SpriteEffects.None, 0f);
            game.spriteBatch.End();
        }

        void DrawKOText() {
            Vector2 position;
            game.spriteBatch.Begin(SpriteSortMode.Deferred, BlendState.AlphaBlend, SamplerState.PointClamp, null, null, null, null);
            if (koText == whiteText) {
                position = new Vector2(game.graphics.PreferredBackBufferWidth * 0.23f, game.graphics.PreferredBackBufferHeight * 0.2f);
            }
            else {
                position = new Vector2(game.graphics.PreferredBackBufferWidth * 0.77f, game.graphics.PreferredBackBufferHeight * 0.2f);
            }
            game.spriteBatch.Draw(koText, position, null, null, new Vector2(koText.Width * 0.5f, koText.Height * 0.5f), 0f, Vector2.One, Color.White, SpriteEffects.None, 0f);
            game.spriteBatch.End();
        }

        void DrawWinner() {
            Vector2 position;
            Texture2D winner;
            game.spriteBatch.Begin(SpriteSortMode.Deferred, BlendState.AlphaBlend, SamplerState.PointClamp, null, null, null, null);
            if (roundWinner == whiteCharacter) {
                position = new Vector2(game.graphics.PreferredBackBufferWidth * 0.4f, game.graphics.PreferredBackBufferHeight * 0.2f);
                winner = whiteText;
            }
            else {
                position = new Vector2(game.graphics.PreferredBackBufferWidth * 0.6f, game.graphics.PreferredBackBufferHeight * 0.2f);
                winner = redText;
            }
            game.spriteBatch.Draw(winner, position, null, null, new Vector2(winner.Width * 0.5f, winner.Height * 0.5f), 0f, Vector2.One, Color.White, SpriteEffects.None, 0f);
            game.spriteBatch.End();
        }

        void DrawStop() {
            Vector2 position = new Vector2(game.graphics.PreferredBackBufferWidth * 0.6f, game.graphics.PreferredBackBufferHeight * 0.2f);
            game.spriteBatch.Begin(SpriteSortMode.Deferred, BlendState.AlphaBlend, SamplerState.PointClamp, null, null, null, null);
            game.spriteBatch.Draw(stopText, position, null, null, new Vector2(stopText.Width * 0.5f, stopText.Height * 0.5f), 0f, Vector2.One, Color.White, SpriteEffects.None, 0f);
            game.spriteBatch.End();
        }

        void BuildGameObjects() {
            floor = 450f;
            if (scoreboard == null) {
                scoreboard = new Scoreboard(game);
            }

            whiteStartingPosition = new Vector2(game.graphics.PreferredBackBufferWidth / 2 - 280, floor - 53);
            redStartingPosition = new Vector2(game.graphics.PreferredBackBufferWidth / 2 - 70, floor - 53);

            whiteCharacter = new PlayerCharacter(spritesheet, MainGame.Tag.PlayerOne, whiteStartingPosition, BaseCharacter.Orientation.Right, "p1", game);
            redCharacter = new PlayerCharacter(spritesheet, MainGame.Tag.PlayerOne, redStartingPosition, BaseCharacter.Orientation.Left, "p2", game);

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
           
            whiteCharacter.velocity = Vector2.Zero;
            redCharacter.velocity = Vector2.Zero;

            whiteCharacter.PlayerInput.DebugPosition = new Vector2(0.0f, 0.0f);
            redCharacter.PlayerInput.DebugPosition = new Vector2(game.graphics.PreferredBackBufferWidth / 2.0f, 0.0f);

            whiteCharacter.Opponent = redCharacter;
            redCharacter.Opponent = whiteCharacter;
            state = State.PreFight;
        }

        public virtual void Init() {
            MediaPlayer.Stop();
            spritesheet = game.Content.Load<Texture2D>("Sprites/Main Character/CharacterSpritesheet");
            bg = game.Content.Load<Texture2D>("Sprites/Background/Bg");
            fightText = game.Content.Load<Texture2D>("GUI/BEGIN");
            whiteText = game.Content.Load<Texture2D>("GUI/WHITE");
            redText = game.Content.Load<Texture2D>("GUI/RED");
            koText = game.Content.Load<Texture2D>("GUI/KO");
            stopText = game.Content.Load<Texture2D>("GUI/STOP");
            arial20 = game.Content.Load<SpriteFont>("Arial20");
            state = State.BuildGameObjects;
        }
    }
}
