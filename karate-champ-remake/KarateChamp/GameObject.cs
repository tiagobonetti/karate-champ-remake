using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace KarateChamp {
    public class GameObject {

        public MainGame.Tag tag;
        public Orientation orientation;
        public CollisionBox collision;

        protected Vector2 position;
        protected Texture2D sprite;

        public enum Orientation {
            Left,
            Right
        }

        protected SpriteEffects FlipWithOrientation() {

            if (orientation == Orientation.Left)
                return SpriteEffects.FlipHorizontally;
            else
                return SpriteEffects.None;
        }
    }
}
