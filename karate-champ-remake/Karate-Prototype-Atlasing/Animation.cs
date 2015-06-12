using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace KarateChamp {
    public class Animation {

        public float animationLength { get; private set; }
        public int HitFrame { get; private set; }
        public Rectangle CollisionRect { get; private set; }

        public Point rectPosition;
        public int size;
        public Animation(Point rectPosition, int size, float length, int hitFrame) {

            this.rectPosition = rectPosition;
            this.size = size;
            animationLength = length;
            HitFrame = hitFrame;
        }
    }
}
