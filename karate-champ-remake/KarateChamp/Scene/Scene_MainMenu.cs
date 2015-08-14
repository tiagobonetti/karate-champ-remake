using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using Microsoft.Xna.Framework.Media;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace KarateChamp {
    public class Scene_MainMenu : Scene {
        public Texture2D coverImage;
        Menu main_menu;
        bool canControl = true;

        public Scene_MainMenu(MainGame game) {
            this.game = game;
            Init();
        }

        string StartGame() {
            game.sceneControl.fight = new Scene_Fight(game);
            game.sceneControl.EnterScene(SceneType.Fight, SceneTransition.Type.FadeOutIn, 0.5f);
            canControl = false;
            return "";
        }

        string StartTurbo() {
            game.sceneControl.charSelect = new Scene_CharacterSelect(game);
            game.sceneControl.EnterScene(SceneType.CharacterSelect, SceneTransition.Type.FadeOutIn, 0.5f);
            canControl = false;
            return "";
        }

        public InputOptions InputOption { get; private set; }
        public enum InputOptions {
            Keyboard,
            GamePad
        }
        string OptionString(InputOptions option) {
            switch (option) {
                default:
                case InputOptions.Keyboard:
                    return "Controller: Keyboard vs GamePad One";
                case InputOptions.GamePad:
                    return "Controller: Gamepad One vs GamePad Two";
            }
        }
        string Option() {
            switch (InputOption) {
                default:
                case InputOptions.Keyboard:
                    InputOption = InputOptions.GamePad;
                    break;
                case InputOptions.GamePad:
                    InputOption = InputOptions.Keyboard;
                    break;
            }
            return OptionString(InputOption);
        }

        string GameExit() {
            game.Exit();
            return "";
        }

        void Init() {
            MediaPlayer.Stop();
            coverImage = game.Content.Load<Texture2D>("GUI/Title");
            main_menu = new Menu();

            main_menu.font = game.Content.Load<SpriteFont>("Arial20");
            main_menu.Position = new Vector2(game.graphics.PreferredBackBufferWidth * 0.5f, game.graphics.PreferredBackBufferHeight * 0.5f + 150f);

            main_menu.Add("Start Classic", StartGame);
            main_menu.Add("Start Turbo", StartTurbo);
            main_menu.Add(OptionString(InputOption), Option);
            main_menu.Add("Credits", null);
            main_menu.Add("Exit", GameExit);
        }

        public void Update(GameTime gameTime) {
            if (canControl)
                main_menu.Update(gameTime);
        }

        public void Draw() {
            game.GraphicsDevice.Clear(Color.Black);
            DrawBackground();
            DrawMenu();
        }

        void DrawBackground() {

            Vector2 bgPos = new Vector2(game.graphics.PreferredBackBufferWidth * 0.5f + 15f, game.graphics.PreferredBackBufferHeight * 0.5f - 100f);
            game.spriteBatch.Begin(SpriteSortMode.Deferred, BlendState.AlphaBlend, SamplerState.PointClamp, null, null, null, null);
            game.spriteBatch.Draw(coverImage, bgPos, null, null, new Vector2(coverImage.Width * 0.5f, coverImage.Height * 0.5f), 0f, Vector2.One * 0.6f, Color.White, SpriteEffects.None, 0f);
            Vector2 next_option = new Vector2(0.0f, 2.2f);
            game.spriteBatch.End();
        }

        void DrawMenu() {
            game.spriteBatch.Begin(SpriteSortMode.Deferred, BlendState.AlphaBlend, SamplerState.PointClamp, null, null, null, null);
            main_menu.Draw(game.spriteBatch);
            game.spriteBatch.End();
        }
    }
}