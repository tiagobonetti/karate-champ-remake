using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.Graphics;

namespace KarateChamp {
    class MenuToggle {
        public Menu Owner { get; set; }
        public string Name { get; set; }
        public Vector2 Position { get; set; }
        public bool Selected { get; set; }

        List<string> Options {get; set;}

        public void Update(GameTime gametime) {
        }

        public void Draw(SpriteBatch sprite_batch) {
            SpriteFont font = Owner.font;
            Vector2 origin = font.MeasureString(Name) / 2;
            sprite_batch.DrawString(font,
                                    Name,
                                    Owner.Position + this.Position,
                                    Selected ? Color.Red : Color.White,
                                    0.0f,
                                    origin,
                                    1.0f,
                                    SpriteEffects.None,
                                    1.0f);
        }
    }
}
