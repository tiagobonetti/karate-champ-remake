using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace KarateChamp {
    class Animator {

        bool play = true;
        float elapsedTime = 0;
        float length = 0.125f;
        int i = -1;

        public void Animate (GameObject gameObject, Texture2D[] spriteList, float length, GameTime gameTime) {

            if (play) {
                this.length = length;

                if (elapsedTime < length) {
                    elapsedTime += (float)gameTime.ElapsedGameTime.TotalSeconds;
                }
                else {
                    i++;
                    if (i >= spriteList.Length)
                        i = 0;
                    elapsedTime = 0;
                    gameObject.sprite = spriteList[i];
                }
            }
        }
    }
}
