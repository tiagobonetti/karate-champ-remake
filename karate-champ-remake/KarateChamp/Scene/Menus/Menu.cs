using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.Graphics;

namespace KarateChamp {

    public delegate string MenuEntryAction();
    public class Menu {
        // Menu Input Handling
        static List<IPlayerInput> inputs = new List<IPlayerInput>() { InputDictionary.Keyboard,
                                                                      InputDictionary.GamePadOne,
                                                                      InputDictionary.GamePadTwo };
        static MenuInput last_input = MenuInput.None;
        static MenuInput GetMenuInput() {


            MenuInput inputed = MenuInput.None;
            foreach (IPlayerInput input in inputs) {
                inputed = input.GetMenuInput();
                if (inputed != MenuInput.None) {
                    break;
                }
            }

            if (last_input == MenuInput.None) {
                last_input = inputed;
                return inputed;
            }

            last_input = inputed;
            return MenuInput.None;

        }

        public Vector2 Position { get; set; }
        float spacing = 5.0f;
        float end = 0.0f;

        //List handling
        List<MenuEntry> entries = new List<MenuEntry>();
        public int Selected { get; set; }

        public Menu Add(string name, MenuEntryAction action) {
            entries.Add(new MenuEntry(this, entries.Count, name, new Vector2(0.0f, end), action));
            //Set next item offset
            end += spacing + font.MeasureString(name).Y;
            return this;
        }

        public void Update(GameTime gameTime) {
            MenuInput input = GetMenuInput();
            switch (input) {
                case MenuInput.Up:
                    Selected -= 1;
                    if (Selected < 0) {
                        Selected += entries.Count;
                    }
                    break;
                case MenuInput.Down:
                    Selected += 1;
                    if (Selected == entries.Count) {
                        Selected = 0;
                    }
                    break;
                case MenuInput.Ok:
                    entries[Selected].Update(gameTime);
                    break;
                case MenuInput.Cancel:
                    // ?
                    break;
                default:
                    break;
            }
        }

        public SpriteFont font { get; set; }
        public void Draw(SpriteBatch sprite_batch) {
            foreach (MenuEntry entry in entries) {
                entry.Draw(sprite_batch);
            }
        }
    }
}
