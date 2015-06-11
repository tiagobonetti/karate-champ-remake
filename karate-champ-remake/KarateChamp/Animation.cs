using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace KarateChamp {
    public class Animation {

        public Texture2D[] Sprites { get; private set; }
        public float animationLength { get; private set; }
        public int HitFrame { get; private set; }
        public Rectangle CollisionRect { get; private set; }

        public Animation(Texture2D[] sprites, float length) {

            Sprites = sprites;
            animationLength = length;
        }

        public Animation(Texture2D[] sprites, float length, int hitFrame, Rectangle collisionRect) {

            Sprites = sprites;
            animationLength = length;
            HitFrame = hitFrame;
            CollisionRect = collisionRect;
        }
    }
}
