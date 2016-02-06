using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Audio;
using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using Microsoft.Xna.Framework.Media;
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
        bool fightPlayed;
        bool koPlayed;
        bool canControl = true;

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
        Texture2D youWin;
        Texture2D[] bgSpriteList = new Texture2D[8];
        float koSize = 6f;
        float fightSize = 6f;
        float youWinSize = 0f;
        BgAnimator bgAnimator;

        SoundEffect sfxFight;
        SoundEffect sfxKO;
        Song song;
        string stageName;
        Vector2 stagePosition;
        float stageScale;

        public Scene_FightTurbo(MainGame game) {
            this.game = game;
            Init();
        }

        public Scene_FightTurbo(MainGame game, int roundNumber, string stageName, Scoreboard scoreBoard) {
            this.game = game;
            this.roundNumber = roundNumber;
            this.scoreboard = scoreBoard;
            this.stageName = stageName;
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
            GameOver
        }

        public void Update(GameTime gameTime) {
            ExitButton();
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
                    if (fightPlayed == false) {
                        sfxFight.Play();
                        fightPlayed = true;
                    }
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
                    if (koPlayed == false) {
                        sfxKO.Play();
                        koPlayed = true;
                    }
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
                case State.GameOver:
                    whiteCharacter.canControl = false;
                    redCharacter.canControl = false;
                    whiteCharacter.Update(gameTime);
                    redCharacter.Update(gameTime);
                    EndGame(gameTime);
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
                case State.KO:
                    DrawBackground();
                    scoreboard.Draw(game.spriteBatch);
                    redCharacter.Draw(game.spriteBatch);
                    whiteCharacter.Draw(game.spriteBatch);
                    DrawKOText();
                    break;
                case State.Winner:
                    DrawBackground();
                    scoreboard.Draw(game.spriteBatch);
                    scoreboard.Draw(game.spriteBatch);
                    redCharacter.Draw(game.spriteBatch);
                    whiteCharacter.Draw(game.spriteBatch);
                    DrawWinner();
                    break;
                case State.RoundOver:
                    DrawBackground();
                    scoreboard.Draw(game.spriteBatch);
                    redCharacter.Draw(game.spriteBatch);
                    whiteCharacter.Draw(game.spriteBatch);
                    DrawWinner();
                    break;
                case State.GameOver:
                    DrawBackground();
                    scoreboard.Draw(game.spriteBatch);
                    redCharacter.Draw(game.spriteBatch);
                    whiteCharacter.Draw(game.spriteBatch);
                    DrawYouWin();
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
            timer.TimerCounter(gameTime, 2f, out timerEnded);
            if (timerEnded) {
                Restart();
            }
        }

        void EndGame(GameTime gameTime) {
            bool timerEnded;
            timer.TimerCounter(gameTime, 3f, out timerEnded);
            roundWinner.OverrideState(CharacterState.Winner, 0);
            if (timerEnded) {
                game.sceneControl.charSelect = new Scene_CharacterSelect(game);
                game.sceneControl.EnterScene(SceneType.CharacterSelect, SceneTransition.Type.FadeOutIn, 1.5f);
            }
        }

        bool GameEnded() {
            for (int i = 0; i < scoreboard.Score.Length; i++)
                if (scoreboard.Score[i] >= maxScore)
                    return true;
            return false;
        }

        void Restart() {
            game.sceneControl.fightTurbo = new Scene_FightTurbo(game, roundNumber + 1, this.stageName, scoreboard);
            game.sceneControl.EnterScene(SceneType.FightTurbo, SceneTransition.Type.FadeIn, 1.2f);
            InputManager.ClearInputs();
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

        void DrawYouWin() {
            youWinSize = MathHelper.Lerp(youWinSize, 0.8f, 0.35f);
            Vector2 position = new Vector2(game.graphics.PreferredBackBufferWidth * 0.5f, game.graphics.PreferredBackBufferHeight * 0.65f);
            game.spriteBatch.Begin(SpriteSortMode.Deferred, BlendState.AlphaBlend, SamplerState.PointClamp, null, null, null, null);
            game.spriteBatch.Draw(youWin, position, null, null, new Vector2(youWin.Width * 0.5f, youWin.Height * 0.5f), 0f, Vector2.One * youWinSize, Color.White, SpriteEffects.None, 0f);
            game.spriteBatch.End();
        }
        /*
        void DrawBackground() {
            Vector2 bgPos = new Vector2(game.graphics.PreferredBackBufferWidth * 0.5f, game.graphics.PreferredBackBufferHeight * 0.5f);
            game.spriteBatch.Begin(SpriteSortMode.Deferred, BlendState.AlphaBlend, SamplerState.PointClamp, null, null, null, null);
            game.spriteBatch.Draw(bg, bgPos, null, null, new Vector2(bg.Width * 0.5f, bg.Height * 0.5f), 0f, Vector2.One * 2f, Color.White, SpriteEffects.None, 0f);
            game.spriteBatch.End();
        }*/

        void DrawBackground() {
            game.spriteBatch.Begin(SpriteSortMode.Deferred, BlendState.AlphaBlend, SamplerState.PointClamp, null, null, null, null);
            game.spriteBatch.Draw(bg, stagePosition, null, null, new Vector2(bg.Width * 0.5f, bg.Height * 0.5f), 0f, Vector2.One * stageScale, Color.White, SpriteEffects.None, 0f);
            game.spriteBatch.End();
        }

        void BuildGameObjects() {
            game.sfxControl.bgmCharSelect.Stop();
            if (scoreboard == null) {
                scoreboard = new Scoreboard(game);
            }

            whiteStartingPosition = new Vector2(game.graphics.PreferredBackBufferWidth / 2 - 280, floor - 53);
            redStartingPosition = new Vector2(game.graphics.PreferredBackBufferWidth / 2 - 70, floor - 53);

            whiteCharacter = new PlayerCharacter(spritesheet, MainGame.Tag.PlayerOne, whiteStartingPosition, BaseCharacter.Orientation.Right, "p1", game);
            redCharacter = new PlayerCharacter(spritesheet, MainGame.Tag.PlayerOne, redStartingPosition, BaseCharacter.Orientation.Left, "p2", game);
            whiteCharacter.turboMode = true;
            redCharacter.turboMode = true;
            whiteCharacter.animationSpeed = BaseCharacter.animationSpeedTurbo;
            redCharacter.animationSpeed = BaseCharacter.animationSpeedTurbo;

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
            if (roundNumber == 0) {
                game.PlayBgm(song);
                System.Diagnostics.Debug.WriteLine(song.Name);
            }
            state = State.PreFight;
        }

        public virtual void Init() {
            sfxFight = game.Content.Load<SoundEffect>("Audio/Sfx/Fight");
            sfxKO = game.Content.Load<SoundEffect>("Audio/Sfx/KO");
            
            spritesheet = game.Content.Load<Texture2D>("Sprites/Main Character/CharacterSpritesheet");
            bg = game.Content.Load<Texture2D>("Sprites/Background/Market1");
            fightText = game.Content.Load<Texture2D>("GUI/Fight");
            whiteWins = game.Content.Load<Texture2D>("GUI/WhiteWins");
            redWins = game.Content.Load<Texture2D>("GUI/RedWins");
            youWin = game.Content.Load<Texture2D>("GUI/You Win 2");
            koText = game.Content.Load<Texture2D>("GUI/KO");
            state = State.BuildGameObjects;

            if (stageName == null) {
                LoadStage(RandomizeStage());
            }
            else {
                LoadStage(stageName);
            }
            for (int i = 0; i < bgSpriteList.Length; i++) {
                System.Diagnostics.Debug.WriteLine("Sprites/Background/" + stageName + "" + (i + 1));
                bgSpriteList[i] = game.Content.Load<Texture2D>("Sprites/Background/" + stageName + "" + (i + 1));
            }
            bgAnimator = new BgAnimator(bgSpriteList, 0.15f);
        }

        string RandomizeStage() {
            Random rd = new Random();
            int val = rd.Next(4);
            val = game.lastStageIndex;
            game.lastStageIndex += 1;
            if (game.lastStageIndex > 2) {
                game.lastStageIndex = 1;
            }
            if (val == 1) {
                return "Alley";
            }
            else if (val == 2) {
                return "bridge";
            }
            else {
                return "Market";
            }
        }

        void LoadStage(string name) {
            switch (name) {
                default:
                case "Market":
                stagePosition = new Vector2(game.graphics.PreferredBackBufferWidth * 0.5f, game.graphics.PreferredBackBufferHeight * 0.5f);
                stageScale = 2f;
                floor = 650f;
                song = game.Content.Load<Song>("Audio/Bgm/16.-london-march-arranged-");
                    break;
                case "bridge":
                stagePosition = new Vector2(game.graphics.PreferredBackBufferWidth * 0.5f, game.graphics.PreferredBackBufferHeight * 0.5f);
                stageScale = 2f;
                floor = 585f;
                song = game.Content.Load<Song>("Audio/Bgm/09.-kyokugen-shugyou-yamagomori-");
                    break;
                case "Alley":
                stagePosition = new Vector2(game.graphics.PreferredBackBufferWidth * 0.5f, game.graphics.PreferredBackBufferHeight * 0.5f);
                stageScale = 1f;
                floor = 610f;
                song = game.Content.Load<Song>("Audio/Bgm/08.-tame-a-bad-boy");
                    break;
            }
            stageName = name;
        }
    }
}
