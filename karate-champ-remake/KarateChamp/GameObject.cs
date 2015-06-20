using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using KarateChamp.Collision;

namespace KarateChamp {
    public class GameObject {

        public Texture2D sprite;
        public Texture2D[] spriteList;
        public MainGame.Tag tag;
        public Orientation orientation;
        public CollisionBox collision;

        protected Vector2 position;

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

        protected void UpdateCollisionPosition() {

            if (orientation == Orientation.Right) {
                collision.rect.X = (int)position.X - 17;
                collision.rect.Y = (int)position.Y - 36;
            }
            else {
                collision.rect.X = (int)position.X;
                collision.rect.Y = (int)position.Y - 36;
            }
        }
    }
}
