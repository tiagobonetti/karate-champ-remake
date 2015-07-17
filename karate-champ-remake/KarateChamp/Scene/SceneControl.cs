using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.Graphics;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace KarateChamp {
    public enum SceneType {
        MainMenu,
        Fight,
        FBI,
        Options,
        Transition,
        None
    }

    public class SceneControl {

        public SceneType currentScene { get; private set; }
        public Scene_Fight fight { get; set; }
        public Scene_MainMenu mainMenu { get; set; }
        public Scene_FBI fbi { get; set; }
        public SceneTransition transition { get; set; }

        public bool transitioning;
        SceneType previousScene;
        MainGame game;

        public SceneControl(MainGame game) {
            this.game = game;
            mainMenu = new Scene_MainMenu(game);
            fight = new Scene_Fight(game);
            fbi = new Scene_FBI(game);
            currentScene = SceneType.None;
        }

        public void EnterScene(SceneType scene, SceneTransition.Type transitionType, float length) {
            transitioning = true;
            transition = new SceneTransition(game);
            transition.StartFade(transitionType, scene, length);
        }

        public void EnterScene(SceneType scene) {
            previousScene = currentScene;
            currentScene = scene;
            switch (currentScene) {
                default:
                    break;
                case SceneType.MainMenu:
                    break;
                case SceneType.Fight:
                    break;
                case SceneType.FBI:
                    break;
                case SceneType.Options:
                    break;
            }
        }

        public void Update(GameTime gameTime) {

            switch (currentScene) {
                default:
                    break;
                case SceneType.MainMenu:
                    mainMenu.Update(gameTime);
                    break;
                case SceneType.Fight:
                    fight.Update(gameTime);
                    break;
                case SceneType.FBI:
                    fbi.Update(gameTime);
                    break;
                case SceneType.Options:
                    break;
            }
            if (transitioning)
                transition.Update(gameTime);
        }

        public void Draw(SpriteBatch spriteBatch, ContentManager content, GraphicsDeviceManager graphics) {

            switch (currentScene) {
                default:
                    break;
                case SceneType.MainMenu:
                    mainMenu.Draw();
                    break;
                case SceneType.Fight:
                    fight.Draw();
                    break;
                case SceneType.FBI:
                    fbi.Draw();
                    break;
                case SceneType.Options:
                    break;
            }
            if (transitioning)
                transition.Draw();
        }

        public Scene GetScene() {
            switch (currentScene) {
                default: return null;
                case SceneType.MainMenu: return (Scene)mainMenu;
                case SceneType.Fight: return (Scene)fight;
                case SceneType.FBI: return (Scene)fbi;
                case SceneType.Options: return null;
            }
        }
    }
}
