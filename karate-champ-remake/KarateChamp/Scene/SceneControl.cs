using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.Graphics;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace KarateChamp {
    class SceneControl {

        Scene currentScene;
        Scene_Fight fight;
        Scene_MainMenu mainMenu;

        public SceneControl(ContentManager content) {
            fight = new Scene_Fight(content);
            mainMenu = new Scene_MainMenu(content);
            currentScene = Scene.Fight;
        }

        enum Scene {
            MainMenu,
            Fight,
            Options
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
        }

        public void Draw(SpriteBatch spriteBatch, ContentManager content, GraphicsDeviceManager graphics) {
            switch (currentScene) {
                default:
                case Scene.MainMenu:
                    mainMenu.Draw(spriteBatch, content, graphics);
                    break;
                case Scene.Fight:
                    fight.Draw(spriteBatch, content, graphics);
                    break;
                case Scene.Options:
                    break;
            }
        }
    }
}
