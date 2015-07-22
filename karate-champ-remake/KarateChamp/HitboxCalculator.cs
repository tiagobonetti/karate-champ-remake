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

        public Rectangle CalcHitbox(Texture2D spritesheet, Rectangle uvRect) {
            Point rectSize = new Point(uvRect.Width, uvRect.Height);
            // Rectangle uvRect = new Rectangle(Owner.uvRect.Width * hitFrame, Owner.uvRect.Y, rectSize.X, rectSize.Y);

            Point rectStartPosition = Point.Zero;
            Point rectEndPosition = Point.Zero;
            Color[] colorData = new Color[rectSize.X * rectSize.Y];
            spritesheet.GetData<Color>(0, uvRect, colorData, 0, rectSize.X * rectSize.Y);
            int d = 0;
            for (int i = 0; i < colorData.Length; i++) {
                if (colorData[i] == Color.Red) {
                    if (rectStartPosition == Point.Zero) {
                        rectStartPosition = new Point(i % rectSize.X, ((int)Math.Ceiling((double)i / (double)rectSize.X)) - 1);
                        d = i;
                    }
                    rectEndPosition = new Point(i % rectSize.X, ((int)Math.Ceiling((double)i / (double)rectSize.X)) - 1);
                }
            }
            hitbox_size = new Vector2(rectEndPosition.X - rectStartPosition.X, rectEndPosition.Y - rectStartPosition.Y);
            hitbox_offset_right = BaseCharacter.ScaleAdjust(new Vector2(rectStartPosition.X, rectStartPosition.Y));
            hitbox_offset_left = BaseCharacter.ScaleAdjust(new Vector2((uvRect.Width - 2) - rectStartPosition.X - hitbox_size.X, rectStartPosition.Y));
            hitbox_size = BaseCharacter.ScaleAdjust(hitbox_size);

            //CollisionBox collisionLeft = new CollisionBox(Owner, Owner.position + hitbox_offset_left, hitbox_size);
            return new Rectangle(uvRect.X + (int)hitbox_offset_left.X, uvRect.Y + (int)hitbox_offset_left.Y, (int)hitbox_size.X, (int)hitbox_size.Y);
         //   return new Rectangle(1,1,1,1);
        }
    }
}
