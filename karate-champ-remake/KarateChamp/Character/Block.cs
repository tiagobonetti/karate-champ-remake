using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;

namespace KarateChamp {
    class Block {
        public Animator animator = new Animator();
        public CharacterState State { get; private set; }

        public Animation Animation { get; private set; }
        public BaseCharacter Owner { get; private set; }
        public bool Locked { get; private set; }
        public Location HitLocation { get; private set; }
        
        int BlockFrame;
        bool onHold = false;

        public Block(CharacterState state, Animation animation, int blockFrame, Location hitLocation, BaseCharacter owner) {
            State = state;
            BlockFrame = blockFrame;
            Owner = owner;
            Animation = animation;
            HitLocation = hitLocation;
        }

        public void Start(GameTime gameTime) {
            animator.Play(Animation, Owner, gameTime);
        }

        public void Execute(CharacterState input, GameTime gameTime) {
            switch (animator.state) {
                case Animator.State.Play:
                    if (animator.FrameIndex > BlockFrame) {
                        Locked = true;
                        if (input == State) {
                            animator.elapsedTime = 0.0f;
                        }
                    }
                    break;
                case Animator.State.Stop:
                    if (input != State) {
                        Locked = false;
                    }
                    break;
            }
            animator.Update();
        }
    }
}
