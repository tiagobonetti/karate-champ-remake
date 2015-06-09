using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Karate_Prototype_Attacking {
    public class CollisionBox {

        public BaseCharacter owner;
        public Rectangle rect;
        public float lifespan = 3f;

        public CollisionBox(BaseCharacter owner, Vector2 position, Vector2 size) {
            this.owner = owner;
            rect = new Rectangle((int)position.X, (int)position.Y, (int)size.X, (int)size.Y);
        }

        public bool OnCollision(out BaseCharacter characterHit) { // Change BaseCharacter to CollisionBox.

            foreach (BaseCharacter character in MainGame.characterList){
                if (rect.Intersects(character.bodyCollision.rect)) {
                    characterHit = character;
                    return true;
                }
            }
            characterHit = null;
            return false;
        }

        void DestroyOnTime(float time) {

        }
    }
}
