using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.Graphics;

namespace KarateChamp {
    public interface IMenuEntry {
        Menu Owner { get; set; }
        string Name { get; set; }
        Vector2 Position { get; set; }
        bool Selected { get; set; }
        void Update(GameTime gametime);
        void Draw(SpriteBatch sprite_batch);
    }
}
