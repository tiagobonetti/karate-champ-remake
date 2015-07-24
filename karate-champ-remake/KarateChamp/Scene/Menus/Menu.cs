using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.Graphics;

namespace KarateChamp {
    public class Menu {
        // Menu Input Handling
        static List<IPlayerInput> inputs = new List<IPlayerInput>() { new KeyboardInput(),
                                                                      new GamePadInput(PlayerIndex.One),
                                                                      new GamePadInput(PlayerIndex.Two) };
        static MenuInput GetMenuInput() {
            MenuInput inputed = MenuInput.None;
            foreach (IPlayerInput input in inputs) {
                inputed = input.GetMenuInput();
                if (inputed != MenuInput.None) {
                    break;
                }
            }
            return inputed;
        }

        public Vector2 Position { get; set; }
        float spacing = 5.0f;
        float end = 0.0f;

        //List handling
        List<IMenuEntry> entries = new List<IMenuEntry>();
        int selected = 0;
        
        public Menu Add(string name) {
            IMenuEntry entry  = (IMenuEntry)new MenuAction();
            entry.Owner = this;
            entry.Name = name;
            entry.Position = new Vector2(0.0f, end);
            entries.Add(entry);

            //Set next item offset
            end += spacing + font.MeasureString(name).Y;
            return this;
        }

        void Update(GameTime gameTime) {
            MenuInput input = GetMenuInput();
            entries[selected].Update(gameTime);
        }



        public SpriteFont font { get; set; }
        public void Draw(SpriteBatch sprite_batch) {
            foreach (IMenuEntry entry in entries) {
                entry.Draw(sprite_batch);
            }
        }
    }
}
