using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;

namespace KarateChamp {
    public static class Debug {
        static SpriteFont arial20;
        public static void LoadContent(ContentManager content) {
            arial20 = content.Load<SpriteFont>("Arial20");
        }
        public static void DrawText(SpriteBatch sb, Vector2 pos, string text) {
            sb.DrawString(arial20, text, pos, Color.White, 0.0f, Vector2.Zero, 1.0f, SpriteEffects.None, 1.0f);
        }
    }
}
