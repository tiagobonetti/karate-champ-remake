using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace KarateChamp {
    public class Scene_FightTurbo : Scene {
        public IPlayerInput WhiteInput { get; set; }
        public IPlayerInput RedInput { get; set; }
        public int roundNumber = 0;
        BaseCharacter roundWinner;
        Scoreboard scoreboard;
        float maxScore = 4;
        DEBUG_Collision debugCollision = new DEBUG_Collision();
        Timer timer = new Timer();
        State state;
        bool drawKO;

        PlayerCharacter whiteCharacter;
        PlayerCharacter redCharacter;
        Vector2 whiteStartingPosition;
        Vector2 redStartingPosition;

        Texture2D spritesheet;
        Texture2D bg;
        Texture2D fightText;
        Texture2D koText;
        Texture2D whiteWins;
        Texture2D redWins;
        Texture2D[] bgSpriteList = new Texture2D[8];
        float koSize = 6f;
        float fightSize = 6f;
        BgAnimator bgAnimator;

        public Scene_FightTurbo(MainGame game) {
            this.game = game;
            Init();
        }

        public Scene_FightTurbo(MainGame game, int roundNumber, Scoreboard scoreBoard) {
            this.game = game;
            this.roundNumber = roundNumber;
            this.scoreboard = scoreBoard;
            System.Diagnostics.Debug.WriteLine("-------------Round " + roundNumber + " Score " + scoreboard.Score[0]);
            Init();
        }

        enum State {
            BuildGameObjects,
            PreFight,
            JudgeStart,
            Play,
            KO,
            Winner,
            RoundOver,
        }

        public void Update(GameTime gameTime) {
            switch (state) {
                case State.BuildGameObjects:
                    BuildGameObjects();
                    whiteCharacter.Update(gameTime);
                    redCharacter.Update(gameTime);
                    break;
                case State.PreFight:
                    PreFight(gameTime);
                    whiteCharacter.canControl = false;
                    redCharacter.canControl = false;
                    whiteCharacter.Update(gameTime);
                    redCharacter.Update(gameTime);
                    break;
                case State.JudgeStart:
                    ShowFightText(gameTime);
                    whiteCharacter.canControl = false;
                    redCharacter.canControl = false;
                    whiteCharacter.Update(gameTime);
                    redCharacter.Update(gameTime);
                    break;
                case State.Play:
                    whiteCharacter.canControl = true;
                    redCharacter.canControl = true;
                    whiteCharacter.Update(gameTime);
                    redCharacter.Update(gameTime);
                    break;
                case State.KO:
                    whiteCharacter.canControl = false;
                    redCharacter.canControl = false;
                    WaitKO(gameTime);
                    break;
                case State.Winner:
                    whiteCharacter.canControl = false;
                    redCharacter.canControl = false;
                    whiteCharacter.Update(gameTime);
                    redCharacter.Update(gameTime);
                    WaitWinner(gameTime);
                    break;
                case State.RoundOver:
                    whiteCharacter.canControl = false;
                    redCharacter.canControl = false;
                    whiteCharacter.Update(gameTime);
                    redCharacter.Update(gameTime);
                    EndRound(gameTime);
                    break;
            }
            debugCollision.Update(gameTime);
            Debug.Update();
            bgAnimator.PlayLoopAnimation(out bg, gameTime);
        }

        public void Draw() {
            game.graphics.GraphicsDevice.Clear(Color.Black);
            switch (state) {
                case State.BuildGameObjects:
                    DrawBackground();
                    break;
                case State.PreFight:
                    DrawBackground();
                    redCharacter.Draw(game.spriteBatch);
                    whiteCharacter.Draw(game.spriteBatch);
                    break;
                case State.JudgeStart:
                    DrawBackground();
                    redCharacter.Draw(game.spriteBatch);
                    whiteCharacter.Draw(game.spriteBatch);
                    DrawFightText();
                    break;
                case State.Play:
                    DrawBackground();
                    redCharacter.Draw(game.spriteBatch);
                    whiteCharacter.Draw(game.spriteBatch);
                    break;
                case State.KO:
                    DrawBackground();
                    scoreboard.Draw(game.spriteBatch);
                    redCharacter.Draw(game.spriteBatch);
                    whiteCharacter.Draw(game.spriteBatch);
                    DrawKOText();
                    break;
                case State.Winner:
                    DrawBackground();
                    DrawWinner();
                    scoreboard.Draw(game.spriteBatch);
                    redCharacter.Draw(game.spriteBatch);
                    whiteCharacter.Draw(game.spriteBatch);
                    break;
                case State.RoundOver:
                    DrawBackground();
                    DrawWinner();
                    redCharacter.Draw(game.spriteBatch);
                    whiteCharacter.Draw(game.spriteBatch);
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
                roundWinner = whiteCharacter;
            }
            else {
                roundWinner = redCharacter;
            }
            state = State.KO;
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

        void WaitKO(GameTime gameTime) {
            drawKO = true;
            bool timerEnded;
            timer.TimerCounter(gameTime, 3.5f, out timerEnded);
            if (timer.GetTimeDecreasing() > 3.48f) {
                whiteCharacter.Update(gameTime);
                redCharacter.Update(gameTime);
            }
            if (timer.GetTimeDecreasing() < 1.5f) {
                drawKO = false;
                whiteCharacter.Update(gameTime);
                redCharacter.Update(gameTime);
            }
            if (timerEnded) {
                state = State.Winner;
            }
        }

        void WaitWinner(GameTime gameTime) {
            bool timerEnded;
            timer.TimerCounter(gameTime, 2f, out timerEnded);
            if (timerEnded) {
                state = State.RoundOver;
            }
        }

        bool GameEnded() {
            for (int i = 0; i < scoreboard.Score.Length; i++)
                if (scoreboard.Score[i] >= maxScore)
                    return true;
            return false;
        }

        void Restart() {
            game.sceneControl.fightTurbo = new Scene_FightTurbo(game, roundNumber + 1, scoreboard);
            game.sceneControl.EnterScene(SceneType.FightTurbo, SceneTransition.Type.FadeIn, 1.2f);
            InputManager.ClearInputs();
        }

        void DrawBackground() {
            Vector2 bgPos = new Vector2(game.graphics.PreferredBackBufferWidth * 0.5f, game.graphics.PreferredBackBufferHeight * 0.5f);
            game.spriteBatch.Begin(SpriteSortMode.Deferred, BlendState.AlphaBlend, SamplerState.PointClamp, null, null, null, null);
            game.spriteBatch.Draw(bg, bgPos, null, null, new Vector2(bg.Width * 0.5f, bg.Height * 0.5f), 0f, Vector2.One * 2f, Color.White, SpriteEffects.None, 0f);
            game.spriteBatch.End();
        }

        void DrawFightText() {
            fightSize = MathHelper.Lerp(fightSize, 1.1f, 0.75f);
            Vector2 position = new Vector2(game.graphics.PreferredBackBufferWidth * 0.5f, game.graphics.PreferredBackBufferHeight * 0.65f);
            game.spriteBatch.Begin(SpriteSortMode.Deferred, BlendState.AlphaBlend, SamplerState.PointClamp, null, null, null, null);
            game.spriteBatch.Draw(fightText, position, null, null, new Vector2(fightText.Width * 0.5f, fightText.Height * 0.5f), 0f, Vector2.One * fightSize, Color.White, SpriteEffects.None, 0f);
            game.spriteBatch.End();
        }

        void DrawKOText() {
            if (drawKO) {
                koSize = MathHelper.Lerp(koSize, 0.6f, 0.75f);
                Vector2 position = new Vector2(game.graphics.PreferredBackBufferWidth * 0.5f, game.graphics.PreferredBackBufferHeight * 0.65f);
                game.spriteBatch.Begin(SpriteSortMode.Deferred, BlendState.AlphaBlend, SamplerState.PointClamp, null, null, null, null);
                game.spriteBatch.Draw(koText, position, null, null, new Vector2(koText.Width * 0.5f, koText.Height * 0.5f), 0f, Vector2.One * koSize, Color.White, SpriteEffects.None, 0f);
                game.spriteBatch.End();
            }
        }

        void DrawWinner() {
            Vector2 position;
            Texture2D winner;
            game.spriteBatch.Begin(SpriteSortMode.Deferred, BlendState.AlphaBlend, SamplerState.PointClamp, null, null, null, null);
            if (roundWinner == whiteCharacter) {
                winner = whiteWins;
            }
            else {
                winner = redWins;
            }
            position = new Vector2(game.graphics.PreferredBackBufferWidth * 0.5f, game.graphics.PreferredBackBufferHeight * 0.65f);
            game.spriteBatch.Draw(winner, position, null, null, new Vector2(winner.Width * 0.5f, winner.Height * 0.5f), 0f, Vector2.One * 0.8f, Color.White, SpriteEffects.None, 0f);
            game.spriteBatch.End();
        }

        void BuildGameObjects() {
            if (scoreboard == null) {
                scoreboard = new Scoreboard(game);
            }
            floor = 650f;

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
            spritesheet = game.Content.Load<Texture2D>("Sprites/Main Character/CharacterSpritesheet");
            bg = game.Content.Load<Texture2D>("Sprites/Background/Market1");
            fightText = game.Content.Load<Texture2D>("GUI/Fight");
            whiteWins = game.Content.Load<Texture2D>("GUI/WhiteWins");
            redWins = game.Content.Load<Texture2D>("GUI/RedWins");
            koText = game.Content.Load<Texture2D>("GUI/KO");
            state = State.BuildGameObjects;
            for (int i = 0; i < bgSpriteList.Length; i++) {
                bgSpriteList[i] = game.Content.Load<Texture2D>("Sprites/Background/Market" + (i + 1));
            }
            bgAnimator = new BgAnimator(bgSpriteList, 0.15f);
        }
    }
}
