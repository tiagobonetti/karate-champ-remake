using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace KarateChamp {
    public class CollisionBox {

        public GameObject owner;
        public Rectangle rect;
        public float lifespan;

        public CollisionBox(GameObject owner, Vector2 position, Vector2 size) {
            this.owner = owner;
            rect = new Rectangle((int)position.X, (int)position.Y, (int)size.X, (int)size.Y);
        }

        public bool OnCollision(out GameObject objHit) {

            foreach (GameObject obj in MainGame.gameObjectList) {
                if (rect.Intersects(obj.collision.rect)) {
                    objHit = obj;
                    return true;
                }
            }
            objHit = null;
            return false;
        }

        void DestroyOnTime(float time) {

        }
    }
}
