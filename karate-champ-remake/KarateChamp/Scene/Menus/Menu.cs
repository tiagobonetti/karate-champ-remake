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
            if (InputManager.GetStart()) {
                entries[Selected].Update(gameTime);
            }
            switch (InputManager.GetDirection()) {
                case Direction.Up:
                    Selected -= 1;
                    if (Selected < 0) {
                        Selected += entries.Count;
                    }
                    break;
                case Direction.Down:
                    Selected += 1;
                    if (Selected == entries.Count) {
                        Selected = 0;
                    }
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
