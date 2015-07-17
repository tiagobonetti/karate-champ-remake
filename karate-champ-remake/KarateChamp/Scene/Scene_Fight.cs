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

        public const float floor = 430;
        public int roundNumber = 0;
        public Texture2D colSprite;
        Scoreboard scoreboard = new Scoreboard();
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
        Texture2D koText;

        public Scene_Fight(MainGame game) {
            this.game = game;
            Init();
        }

        public Scene_Fight(MainGame game, int roundNumber, Scoreboard scoreBoard) {
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
                    whiteCharacter.canControl = true;
                    redCharacter.canControl = true;
                    EndRound(gameTime);
                    break;
            }
            debugCollision.Update(gameTime);
            Debug.Update();
            whiteCharacter.Update(gameTime);
            redCharacter.Update(gameTime);
        }

        public void Draw() {
            switch (state) {
                case State.BuildGameObjects:
                    DrawBackground();
                    break;
                case State.PreFight:
                    DrawBackground();
                    whiteCharacter.Draw(game.spriteBatch);
                    redCharacter.Draw(game.spriteBatch);
                    break;
                case State.JudgeStart:
                    DrawBackground();
                    whiteCharacter.Draw(game.spriteBatch);
                    redCharacter.Draw(game.spriteBatch);
                    DrawFightText();
                    break;
                case State.Play:
                    DrawBackground();
                    whiteCharacter.Draw(game.spriteBatch);
                    redCharacter.Draw(game.spriteBatch);
                    break;
                case State.EndRound:
                    DrawBackground();
                    whiteCharacter.Draw(game.spriteBatch);
                    redCharacter.Draw(game.spriteBatch);
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
            System.Diagnostics.Debug.WriteLine("-------------------Round " + roundNumber + " Score " + scoreboard.Score[0]);
            scoreboard.AddScore(name, 1, attackState);
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
                if(scoreboard.Score[i] >= 2)
                    return true;
            return false;
        }

        void Restart() {
            game.sceneControl.fight = new Scene_Fight(game, roundNumber + 1, scoreboard);
            game.sceneControl.EnterScene(SceneType.Fight);
        }

        void DrawBackground() {
            Vector2 bgPos = new Vector2(game.graphics.PreferredBackBufferWidth * 0.5f, game.graphics.PreferredBackBufferHeight * 0.5f);
            game.spriteBatch.Begin(SpriteSortMode.Deferred, BlendState.AlphaBlend, SamplerState.PointClamp, null, null, null, null);
            game.spriteBatch.Draw(bg, bgPos, null, null, new Vector2(bg.Width * 0.5f, bg.Height * 0.5f), 0f, Vector2.One * 0.75f, Color.White, SpriteEffects.None, 0f);
            game.spriteBatch.End();
        }

        void DrawFightText() {
            Vector2 position = new Vector2(game.graphics.PreferredBackBufferWidth * 0.5f, game.graphics.PreferredBackBufferHeight * 0.5f - 70f);
            game.spriteBatch.Begin(SpriteSortMode.Deferred, BlendState.AlphaBlend, SamplerState.PointClamp, null, null, null, null);
            game.spriteBatch.Draw(fightText, position, null, null, new Vector2(fightText.Width * 0.5f, fightText.Height * 0.5f), 0f, Vector2.One, Color.White, SpriteEffects.None, 0f);
            game.spriteBatch.End();
        }

        void DrawKOText() {
            Vector2 position = new Vector2(game.graphics.PreferredBackBufferWidth * 0.5f, game.graphics.PreferredBackBufferHeight * 0.5f - 70f);
            game.spriteBatch.Begin(SpriteSortMode.Deferred, BlendState.AlphaBlend, SamplerState.PointClamp, null, null, null, null);
            game.spriteBatch.Draw(koText, position, null, null, new Vector2(koText.Width * 0.5f, koText.Height * 0.5f), 0f, Vector2.One * 0.5f, Color.White, SpriteEffects.None, 0f);
            game.spriteBatch.End();
        }

        void BuildGameObjects() {
            whiteStartingPosition = new Vector2(game.graphics.PreferredBackBufferWidth / 2 - 210, floor - 53);
            redStartingPosition = new Vector2(game.graphics.PreferredBackBufferWidth / 2 + 10, floor - 53);

            whiteCharacter = new PlayerCharacter(spritesheet, MainGame.Tag.PlayerOne, whiteStartingPosition, BaseCharacter.Orientation.Right, "p1", game);
            whiteCharacter.PlayerInput = new KeyboardInput();

            redCharacter = new PlayerCharacter(spritesheet, MainGame.Tag.PlayerOne, redStartingPosition, BaseCharacter.Orientation.Left, "p2", game);
            redCharacter.PlayerInput = new GamePadInput(PlayerIndex.One);
            redCharacter.PlayerInput.Position = new Vector2(600.0f, 0.0f);

            whiteCharacter.Opponent = redCharacter;
            redCharacter.Opponent = whiteCharacter;
            state = State.PreFight;
        }

        public virtual void Init() {
            colSprite = game.Content.Load<Texture2D>("KarateChampCollision");
            spritesheet = game.Content.Load<Texture2D>("KarateChampAligned");
            bg = game.Content.Load<Texture2D>("Sprites/Background/Bg");
            fightText = game.Content.Load<Texture2D>("GUI/Fight");
            koText = game.Content.Load<Texture2D>("GUI/KO");
            state = State.BuildGameObjects;
        }
    }
}
