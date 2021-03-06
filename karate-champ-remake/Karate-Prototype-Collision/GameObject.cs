﻿using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Karate_Prototype_Collision {
    public class GameObject {

        public Texture2D spriteSheet;
        public Rectangle uvRect;
        public MainGame.Tag tag;
        public Orientation orientation;
        public CollisionBox collision;
        public Vector2 collisionOffset;
        public Vector2 position;

        public GameObject() {
            MainGame.gameObjectList.Add(this);
        }

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
                collision.rect.X = (int)(position.X + collisionOffset.X);
                collision.rect.Y = (int)position.Y;
            }
            else {
                collision.rect.X = (int)(position.X + collisionOffset.X);
                collision.rect.Y = (int)position.Y;
            }
        }
    }
}
