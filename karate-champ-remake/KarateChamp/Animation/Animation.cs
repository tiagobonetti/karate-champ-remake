using Microsoft.Xna.Framework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace KarateChamp {
    public class Animation {

        public float animationLength { get; private set; }
        public Point spriteRectPosition;
        public int startIndex;
        public int size;

        public Animation(Point spriteRectPosition, int startIndex, int size, float length) {

            this.spriteRectPosition = spriteRectPosition;
            this.size = size;
            animationLength = length;
        }
    }
}
