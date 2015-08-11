using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace KarateChamp {
    class BgAnimator {
        public int FrameIndex { get; private set; }
        public Texture2D[] spriteList;
        public State state = State.Stop;
        public float elapsedTime = 9999999;
        public float animationLength;

        public BgAnimator(Texture2D[] spriteList, float animationLength) {
            FrameIndex = 0;
            this.spriteList = spriteList;
            this.animationLength = animationLength;
        }

        public enum State {
            PlayLoop,
            Stop,
        }

        public void EnterState(State newState) {

            if (newState != state) {
                state = newState;

                switch (state) {
                    case State.PlayLoop:
                        FrameIndex = 0;
                        elapsedTime = 9999999;
                        break;
                    case State.Stop:
                        elapsedTime = 9999999;
                        break;
                }
            }
        }

        void StateMachine() {
            switch (state) {
                case State.PlayLoop:
                    break;
                case State.Stop:
                    break;
            }
        }

        public void Update() {
            StateMachine();
        }

        public void Stop() {
            EnterState(State.Stop);
        }

        public void PlayLoopAnimation(out Texture2D sprite, GameTime gameTime) {

            if (elapsedTime < animationLength) {
                elapsedTime += (float)gameTime.ElapsedGameTime.TotalSeconds;
            }
            else {
                elapsedTime = 0;
                FrameIndex++;
            }
            if (FrameIndex >= spriteList.Length) {
                FrameIndex = 0;
            }
            sprite = spriteList[FrameIndex];
        }
    }
}