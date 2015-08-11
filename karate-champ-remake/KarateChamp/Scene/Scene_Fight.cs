using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace KarateChamp {
    public class Scene_Fight : Scene {

        public IPlayerInput WhiteInput { get; set; }
        public IPlayerInput RedInput { get; set; }
        public int roundNumber = 0;
        Scoreboard scoreboard;
        int maxScore = 4;
        DEBUG_Collision debugCollision = new DEBUG_Collision();
        Timer timer = new Timer();
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

        public Scene_Fight(MainGame game) {
            this.game = game;
            Init();
        }

        public Scene_Fight(MainGame game, int roundNumber, Scoreboard scoreBoard) {
            this.game = game;
            this.roundNumber = roundNumber;
            this.scoreboard = scoreBoard;
            System.Diagnostics.Debug.WriteLine("-------------Round " + roundNumber + " Score p1: " + scoreboard.Score[0] + " p2: " + scoreboard.Score[1]);
            Init();
        }

        enum State {
            BuildGameObjects,
            PreFight,
            JudgeStart,
            Play,
            EndRound,
        }

        public void Update(GameTime gameTime) {
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
                    whiteCharacter.canControl = false;
                    redCharacter.canControl = false;
                    break;
                case State.Play:
                    whiteCharacter.canControl = true;
                    redCharacter.canControl = true;
                    break;
                case State.EndRound:
                    whiteCharacter.canControl = false;
                    redCharacter.canControl = false;
                    EndRound(gameTime);
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
                    scoreboard.Draw(game.spriteBatch);
                    redCharacter.Draw(game.spriteBatch);
                    whiteCharacter.Draw(game.spriteBatch);
                    break;
                case State.JudgeStart:
                    DrawBackground();
                    scoreboard.Draw(game.spriteBatch);
                    redCharacter.Draw(game.spriteBatch);
                    whiteCharacter.Draw(game.spriteBatch);
                    DrawFightText();
                    break;
                case State.Play:
                    DrawBackground();
                    scoreboard.Draw(game.spriteBatch);
                    redCharacter.Draw(game.spriteBatch);
                    whiteCharacter.Draw(game.spriteBatch);
                    break;
                case State.EndRound:
                    DrawBackground();
                    scoreboard.Draw(game.spriteBatch);
                    redCharacter.Draw(game.spriteBatch);
                    whiteCharacter.Draw(game.spriteBatch);
                    DrawKOText();
                    break;
            }
            debugCollision.Draw(game.spriteBatch);
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
                koText = whiteText;
            }
            else {
                koText = redText;
            }
            state = State.EndRound;
        }

        void EndRound(GameTime gameTime) {
            bool timerEnded;
            timer.TimerCounter(gameTime, 2f, out timerEnded);
            if (timerEnded) {
                if (GameEnded()) {
                    game.sceneControl.fight = new Scene_Fight(game);
                    game.sceneControl.EnterScene(SceneType.MainMenu);
                }
                else
                    Restart();
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
        }

        void DrawBackground() {
            Vector2 bgPos = new Vector2(game.graphics.PreferredBackBufferWidth * 0.5f, game.graphics.PreferredBackBufferHeight * 0.5f);
            game.spriteBatch.Begin(SpriteSortMode.Deferred, BlendState.AlphaBlend, SamplerState.PointClamp, null, null, null, null);
            game.spriteBatch.Draw(bg, bgPos, null, null, new Vector2(bg.Width * 0.5f, bg.Height * 0.5f), 0f, Vector2.One * 0.75f, Color.White, SpriteEffects.None, 0f);
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
                position = new Vector2(game.graphics.PreferredBackBufferWidth * 0.4f, game.graphics.PreferredBackBufferHeight * 0.2f);
            }
            else {
                position = new Vector2(game.graphics.PreferredBackBufferWidth * 0.6f, game.graphics.PreferredBackBufferHeight * 0.2f);
            }
            game.spriteBatch.Draw(koText, position, null, null, new Vector2(koText.Width * 0.5f, koText.Height * 0.5f), 0f, Vector2.One, Color.White, SpriteEffects.None, 0f);
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

            whiteCharacter.PlayerInput.DebugPosition = new Vector2(0.0f, 0.0f);
            redCharacter.PlayerInput.DebugPosition = new Vector2(game.graphics.PreferredBackBufferWidth / 2.0f, 0.0f);

            whiteCharacter.Opponent = redCharacter;
            redCharacter.Opponent = whiteCharacter;
            state = State.PreFight;
        }

        public virtual void Init() {
            spritesheet = game.Content.Load<Texture2D>("Sprites/Main Character/CharacterSpritesheet");
            bg = game.Content.Load<Texture2D>("Sprites/Background/Bg");
            fightText = game.Content.Load<Texture2D>("GUI/BEGIN");
            whiteText = game.Content.Load<Texture2D>("GUI/WHITE");
            redText = game.Content.Load<Texture2D>("GUI/RED");
            koText = game.Content.Load<Texture2D>("GUI/KO");
            state = State.BuildGameObjects;
        }
    }
}
