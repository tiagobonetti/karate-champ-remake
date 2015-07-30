using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace KarateChamp {
    class HitboxCalculator {

        Vector2 hitbox_size;
        Vector2 hitbox_offset_right;
        Vector2 hitbox_offset_left;
     //   Color[] tst;

        public Rectangle CalcHitbox(Texture2D spritesheet, Rectangle charRect) {
            Point rectSize = new Point(charRect.Width, charRect.Height);
            Rectangle uvRect = new Rectangle(charRect.Width, charRect.Y, rectSize.X, rectSize.Y);

            Point rectStartPosition = Point.Zero;
            Point rectEndPosition = Point.Zero;
            /*
            if (tst == null) {
                tst = new Color[1680 * 1113];
                spritesheet.GetData<Color>(tst);
            }
            
            int d = 0;
            for (int i = 0; i < tst.Length; i++) {
                if (tst[i] == Color.Blue) {
                    if (rectStartPosition == Point.Zero) {
                        rectStartPosition = new Point(i % rectSize.X, ((int)Math.Ceiling((double)i / (double)rectSize.X)) - 1);
                        d = i;
                    }
                    rectEndPosition = new Point(i % rectSize.X, ((int)Math.Ceiling((double)i / (double)rectSize.X)) - 1);
                }
            }*/


            Color[] colorData = new Color[rectSize.X * rectSize.Y];
            spritesheet.GetData<Color>(0, charRect, colorData, 0, rectSize.X * rectSize.Y);
            int d = 0;
            for (int i = 0; i < colorData.Length; i++) {
                if (colorData[i] == Color.Blue) {
                    if (rectStartPosition == Point.Zero) {
                        rectStartPosition = new Point(i % rectSize.X, ((int)Math.Ceiling((double)i / (double)rectSize.X)) - 1);
                        d = i;
                    }
                    rectEndPosition = new Point(i % rectSize.X, ((int)Math.Ceiling((double)i / (double)rectSize.X)) - 1);
                }
            }
            hitbox_size = new Vector2(rectEndPosition.X - rectStartPosition.X, rectEndPosition.Y - rectStartPosition.Y);
            hitbox_offset_right = BaseCharacter.ScaleAdjust(new Vector2(rectStartPosition.X, rectStartPosition.Y));
            hitbox_offset_left = BaseCharacter.ScaleAdjust(new Vector2((charRect.Width - 2) - rectStartPosition.X - hitbox_size.X, rectStartPosition.Y));
            hitbox_size = BaseCharacter.ScaleAdjust(hitbox_size);
            rectStartPosition.X = (int)BaseCharacter.ScaleAdjust(rectStartPosition.X);
            rectStartPosition.Y = (int)BaseCharacter.ScaleAdjust(rectStartPosition.Y);
            return new Rectangle(rectStartPosition.X, rectStartPosition.Y, (int)hitbox_size.X, (int)hitbox_size.Y);
            //return new Rectangle(uvRect.X + (int)hitbox_offset_left.X, uvRect.Y + (int)hitbox_offset_left.Y, (int)hitbox_size.X, (int)hitbox_size.Y);
            //CollisionBox collisionLeft = new CollisionBox(Owner, Owner.position + hitbox_offset_left, hitbox_size);
            //   return new Rectangle(1,1,1,1);
        }
    }
}
