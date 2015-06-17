using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Input;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Karate_Prototype_Collision {
    class Attack {

        public int HitFrame { get; private set; }
        public CollisionBox Collision { get; private set; }
        public Animation Animation { get; private set; }
        public GameObject owner { get; private set; }
        public bool finished { get; private set; }

        Animatorator animator = new Animatorator();

        public Attack(CollisionBox collision, Animation animation, int hitFrame) {

            HitFrame = hitFrame;
            Collision = collision;
            Animation = animation;
        }

        public void Execute(Keys key, GameTime gameTime){

            if (Keyboard.GetState().IsKeyDown(key))
                animator.PlayTo(HitFrame, Animation, Collision.owner, gameTime);
            else if (animator.Stopped())
                finished = true;
            else if (animator.PlayedToFrame)
                animator.PlayAfter(HitFrame, Animation, Collision.owner, gameTime);
            else
                animator.RollBack();

            animator.Update();
        }
    }
}