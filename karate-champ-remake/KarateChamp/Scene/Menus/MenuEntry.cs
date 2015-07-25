using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.Graphics;

namespace KarateChamp {
    public class MenuEntry {
        public Menu Owner { get; set; }
        public string Name { get; set; }
        public Vector2 Position { get; set; }
        public int Index { get; set; }

        //Action
        MenuEntryAction Action { get; set; }
        public MenuEntry(Menu owner, int index, string name, Vector2 position, MenuEntryAction action = null) {
            Owner = owner;
            Index = index;
            Name = name;
            Position = position;
            Action = action;
        }

        public void Update(GameTime gametime) {
            if (Action != null) {
                string ret = Action();
                if (ret.Count() > 0) {
                    Name = ret;
                }
            }
        }

        public void Draw(SpriteBatch sprite_batch) {
            SpriteFont font = Owner.font;
            Vector2 origin = font.MeasureString(Name) / 2;
            sprite_batch.DrawString(font,
                                    Name,
                                    Owner.Position + this.Position,
                                    Owner.Selected == Index ? Color.Red : Color.White,
                                    0.0f,
                                    origin,
                                    1.0f,
                                    SpriteEffects.None,
                                    1.0f);
        }
    }
}
