using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Karate_Prototype_Movement {
    static class DEBUG_Collision {

        public static Rectangle rectDraw;

        public static void Draw(SpriteBatch spriteBatch) {

            if (rectDraw != null) {
                Rectangle p1Rect = rectDraw;
                Texture2D p1RectTexture = new Texture2D(spriteBatch.GraphicsDevice, p1Rect.Width, p1Rect.Height);

                Color[] p1Data = new Color[p1RectTexture.Width * p1RectTexture.Height];
                for (int i = 0; i < p1Data.Length; ++i) {
                    p1Data[i] = new Color(255, 0, 0, 1);
                }
                p1RectTexture.SetData(p1Data);

                spriteBatch.Begin(SpriteSortMode.Deferred, BlendState.AlphaBlend, SamplerState.PointClamp, null, null, null, null);
                spriteBatch.Draw(p1RectTexture, new Vector2(p1Rect.X, p1Rect.Y), Color.White);
                spriteBatch.End();
            }
        }
    }
}
