using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace KarateChamp {
    class Animator {

        float elapsedTime = 0;
        float interval = 0.125f;
        int i = 0;

        public Animator(float length) {
            interval = length;
        }

        Texture2D Animate (GameObject gameObject, Texture2D[] spriteList, GameTime gameTime) {

            if (elapsedTime < interval) {
                elapsedTime += (float)gameTime.ElapsedGameTime.TotalSeconds;
            }
            else {
                i++;
                if (i >= spriteList.Length)
                    i = 1;
                elapsedTime = 0;
                return spriteList[i];
            }
            return null;
        }
    }
}
