using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace KarateChamp {
    class Animator {
        public int FrameIndex { get; private set; }
        public bool PlayedToFrame { get; private set; }

        public State state = State.Stop;
        public Animation currentAnimation;

        GameObject currentGameObject;
        GameTime gameTime;
        float elapsedTime = 9999999;
        int referenceFrame;
        int startFrame;

        public Animator() {
            startFrame = 0;
            FrameIndex = 0;
        }

        public enum State {
            Play,
            PlayTo,
            PlayAfter,
            PlayLoop,
            Stop,
            Hold,
            RollBack
        }

        public void EnterState(State newState) {

            if (newState != state) {
                state = newState;

                switch (state) {
                    case State.Play:
                        FrameIndex = startFrame;
                        elapsedTime = 9999999;
                        break;
                    case State.PlayTo:
                        FrameIndex = startFrame;
                        elapsedTime = 9999999;
                        break;
                    case State.PlayAfter:
                        FrameIndex = startFrame;
                        elapsedTime = 0;
                        break;
                    case State.PlayLoop:
                        FrameIndex = startFrame;
                        elapsedTime = 9999999;
                        break;
                    case State.Stop:
                        FrameIndex = startFrame;
                        elapsedTime = 9999999;
                        PlayedToFrame = false;
                        break;
                    case State.Hold:
                        FrameIndex = startFrame;
                        elapsedTime = 9999999;
                        break;
                    case State.RollBack:
                        elapsedTime = 9999999;
                        break;
                }
            }
        }

        void StateMachine() {
            switch (state) {
                case State.Play:
                    PlayAnimation();
                    break;
                case State.PlayTo:
                    PlayUntilHitFrame();
                    break;
                case State.PlayAfter:
                    PlayAfterHitFrame();
                    break;
                case State.PlayLoop:
                    PlayLoopAnimation();
                    break;
                case State.Stop:
                    break;
                case State.Hold:
                    HoldAnimation();
                    break;
                case State.RollBack:
                    RollBackAnimation();
                    break;
            }
            // System.Diagnostics.Debug.WriteLine("Animator State " + state);
        }

        public void Update() {
            StateMachine();
        }

        public void Play(Animation animation, GameObject gameObject, GameTime gameTime) {
            currentGameObject = gameObject;
            currentAnimation = animation;
            this.gameTime = gameTime;
            startFrame = animation.startIndex;
            EnterState(State.Play);
        }

        public void PlayTo(int frame, Animation animation, GameObject gameObject, GameTime gameTime) {
            currentGameObject = gameObject;
            currentAnimation = animation;
            this.gameTime = gameTime;
            referenceFrame = frame;
            startFrame = animation.startIndex;
            EnterState(State.PlayTo);
        }

        public void PlayAfter(int frame, Animation animation, GameObject gameObject, GameTime gameTime) {
            currentGameObject = gameObject;
            currentAnimation = animation;
            this.gameTime = gameTime;
            referenceFrame = frame;
            EnterState(State.PlayAfter);
        }

        public void PlayLoop(Animation animation, GameObject gameObject, GameTime gameTime) {
            currentGameObject = gameObject;
            currentAnimation = animation;
            this.gameTime = gameTime;
            startFrame = animation.startIndex;
            EnterState(State.PlayLoop);
        }

        public void Stop() {
            EnterState(State.Stop);
        }

        public void Hold() {
            EnterState(State.Hold);
        }

        public bool Stopped() {
            return (state == State.Stop);
        }

        public void RollBack() {
            EnterState(State.RollBack);
        }

        void PlayAnimation() {

            if (elapsedTime < currentAnimation.animationLength) {
                elapsedTime += (float)gameTime.ElapsedGameTime.TotalSeconds;
            }
            else {
                elapsedTime = 0;
                currentGameObject.uvRect = new Rectangle(currentAnimation.spriteRectPosition.X * FrameIndex, 
                                                         currentAnimation.spriteRectPosition.Y, 
                                                         currentGameObject.uvRect.Width, 
                                                         currentGameObject.uvRect.Height);
                FrameIndex++;
            }
            if (FrameIndex > currentAnimation.size - 1) {
                EnterState(State.Stop);
            }

            // System.Diagnostics.Debug.WriteLine("PlayAnimation Index " + FrameIndex);
        }

        void PlayLoopAnimation() {

            if (elapsedTime < currentAnimation.animationLength) {
                elapsedTime += (float)gameTime.ElapsedGameTime.TotalSeconds;
            }
            else {
                elapsedTime = 0;
                currentGameObject.uvRect = new Rectangle(currentAnimation.spriteRectPosition.X * FrameIndex,
                                                         currentAnimation.spriteRectPosition.Y,
                                                         currentGameObject.uvRect.Width,
                                                         currentGameObject.uvRect.Height);
                FrameIndex++;
                System.Diagnostics.Debug.WriteLine("PlayLoopAnimation Index " + FrameIndex);
            }
            if (FrameIndex > currentAnimation.size - 1) {
                FrameIndex = startFrame;
            }

            // System.Diagnostics.Debug.WriteLine("PlayLoopAnimation Index " + FrameIndex);
        }

        void HoldAnimation() {
            elapsedTime = 0;
        }

        void PlayUntilHitFrame() {

            if (elapsedTime < currentAnimation.animationLength) {
                elapsedTime += (float)gameTime.ElapsedGameTime.TotalSeconds;
            }
            else {
                elapsedTime = 0;
                currentGameObject.uvRect = new Rectangle(currentAnimation.spriteRectPosition.X * FrameIndex,
                                                         currentAnimation.spriteRectPosition.Y,
                                                         currentGameObject.uvRect.Width,
                                                         currentGameObject.uvRect.Height);
                FrameIndex++;
            }
            if (FrameIndex >= referenceFrame) {
                FrameIndex = referenceFrame;
                elapsedTime = 9999999;
                PlayedToFrame = true;
            }
            // System.Diagnostics.Debug.WriteLine("PlayUntilHitFrame Index " + FrameIndex);
        }

        void PlayAfterHitFrame() {

            if (FrameIndex <= referenceFrame) {
                FrameIndex = referenceFrame;
            }

            if (elapsedTime < currentAnimation.animationLength) {
                elapsedTime += (float)gameTime.ElapsedGameTime.TotalSeconds;
            }
            else {
                elapsedTime = 0;
                FrameIndex++;
                if (FrameIndex > currentAnimation.size - 1) {
                    EnterState(State.Stop);
                }
                else
                    currentGameObject.uvRect = new Rectangle(currentAnimation.spriteRectPosition.X * FrameIndex,
                                                             currentAnimation.spriteRectPosition.Y,
                                                             currentGameObject.uvRect.Width,
                                                             currentGameObject.uvRect.Height);
            }
   //         System.Diagnostics.Debug.WriteLine("PlayAfterHitFrame Index " + FrameIndex);
        }

        void RollBackAnimation() {

            if (elapsedTime < currentAnimation.animationLength) {
                elapsedTime += (float)gameTime.ElapsedGameTime.TotalSeconds;
            }
            else {
                elapsedTime = 0;
                FrameIndex--;
                if (FrameIndex >= 0)
                    currentGameObject.uvRect = new Rectangle(currentAnimation.spriteRectPosition.X * FrameIndex,
                                                             currentAnimation.spriteRectPosition.Y,
                                                             currentGameObject.uvRect.Width,
                                                             currentGameObject.uvRect.Height);
            }
            if (FrameIndex <= 0) {
                EnterState(State.Stop);
            }
    //        System.Diagnostics.Debug.WriteLine("Rollback Index" + FrameIndex);
        }
    }
}