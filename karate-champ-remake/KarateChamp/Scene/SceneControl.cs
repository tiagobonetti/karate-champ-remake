using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.Graphics;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace KarateChamp {
    public enum Scene {
        MainMenu,
        Fight,
        Options,
        Transition
    }

    public class SceneControl {

        public Scene currentScene { get; private set; }
        public bool transitioning;
        Scene previousScene;
        MainGame game;

        Scene_Fight fight;
        Scene_MainMenu mainMenu;
        Scene_Transition transition;

        public SceneControl(MainGame game) {
            this.game = game;
            fight = new Scene_Fight(game);
            mainMenu = new Scene_MainMenu(game);
            transition = new Scene_Transition(game);
            EnterScene(Scene.MainMenu);
        }

        public void EnterScene(Scene scene, Scene_Transition.Type transitionType, float length) {
            
            if (transitionType != Scene_Transition.Type.None) {
                transitioning = true;
                transition.StartFade(transitionType, scene, length);
            }
            else {
                previousScene = currentScene;
                currentScene = scene;
            }
        }

        public void EnterScene(Scene scene) {
            previousScene = currentScene;
            currentScene = scene;
            switch (currentScene) {
                default:
                case Scene.MainMenu:
                    break;
                case Scene.Fight:
                    break;
                case Scene.Options:
                    break;
            }
        }

        public void Update(GameTime gameTime) {

            switch (currentScene) {
                default:
                case Scene.MainMenu:
                    mainMenu.Update(gameTime);
                    break;
                case Scene.Fight:
                    fight.Update(gameTime);
                    break;
                case Scene.Options:
                    break;
            }
            if (transitioning)
                transition.Update(gameTime);
        }

        public void Draw(SpriteBatch spriteBatch, ContentManager content, GraphicsDeviceManager graphics) {

            switch (currentScene) {
                default:
                case Scene.MainMenu:
                    mainMenu.Draw();
                    break;
                case Scene.Fight:
                    fight.Draw();
                    break;
                case Scene.Options:
                    break;
            }
            if (transitioning)
                transition.Draw();
        }
    }
}
