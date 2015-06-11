using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace KarateChamp {
    class Animator {

  //      public int HitFrame { get; private set; }
        public int FrameIndex { get; private set; }
        public bool PlayedToFrame { get; private set; }

        public State state = State.Stop;
        
        GameObject currentGameObject;
        Animation currentAnimation;
        GameTime gameTime;
        float elapsedTime = 9999999;

        public Animator() {
            FrameIndex = 0;
        }

        public enum State{

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
                        FrameIndex = 0;
                        elapsedTime = 9999999;
                        break;
                    case State.PlayTo:
                        FrameIndex = 0;
                        elapsedTime = 9999999;
                        break;
                    case State.PlayAfter:
                        FrameIndex = 0;
                        elapsedTime = 0;
                        break;
                    case State.PlayLoop:
                        FrameIndex = 0;
                        elapsedTime = 9999999;
                        break;
                    case State.Stop:
                        FrameIndex = 0;
                        elapsedTime = 9999999;
                        PlayedToFrame = false;
                        break;
                    case State.Hold:
                        FrameIndex = 0;
                        elapsedTime = 9999999;
                        break;
                    case State.RollBack:
                        elapsedTime = 9999999;
                        break;
                }
            }
        }

        void StateMachine() {

         //   if (!initialized)
           //     throw new Exception("Animation not Initialized - Use Animator.Init()");
            
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
        }

        public void Update() {
            StateMachine();
        }
        /*
        public void Run(GameObject gameObject, Texture2D[] animation, float length, GameTime gameTime) {

            currentGameObject = gameObject;
            currentAnimation = animation;
            this.length = length;
            this.gameTime = gameTime;
            initialized = true;
            StateMachine();
        }
        */
        public void Play(Animation animation, GameObject gameObject, GameTime gameTime) {

            currentGameObject = gameObject;
            currentAnimation = animation;
            this.gameTime = gameTime;
            EnterState(State.Play);
        }

        public void PlayTo(Animation animation, GameObject gameObject, GameTime gameTime) {

            currentGameObject = gameObject;
            currentAnimation = animation;
            this.gameTime = gameTime;
            EnterState(State.PlayTo);
        }

        public void PlayAfter(Animation animation, GameObject gameObject, GameTime gameTime) {

            currentGameObject = gameObject;
            currentAnimation = animation;
            this.gameTime = gameTime;
            EnterState(State.PlayAfter);
        }

        public void PlayLoop(Animation animation, GameObject gameObject, GameTime gameTime) {

            currentGameObject = gameObject;
            currentAnimation = animation;
            this.gameTime = gameTime;
            EnterState(State.PlayLoop);
        }

        public void Stop() {
            EnterState(State.Stop);
        }

        public void Hold() {
            EnterState(State.Hold);
        }

        public bool Stopped() {

            if (state == State.Stop)
                return true;
            else
                return false;
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
                currentGameObject.sprite = currentAnimation.Sprites[FrameIndex];
                FrameIndex++;
            }
            if (FrameIndex >= currentAnimation.Sprites.Length - 1) {
                EnterState(State.Stop);
            }

            System.Diagnostics.Debug.WriteLine("PlayAnimation Index " + FrameIndex);
        }

        void PlayLoopAnimation() {
           
            if (elapsedTime < currentAnimation.animationLength) {
                elapsedTime += (float)gameTime.ElapsedGameTime.TotalSeconds;
            }
            else {
                elapsedTime = 0;
                currentGameObject.sprite = currentAnimation.Sprites[FrameIndex];
                FrameIndex++;
            }
            if (FrameIndex >= currentAnimation.Sprites.Length - 1){
                FrameIndex = 0;
            }

            System.Diagnostics.Debug.WriteLine("PlayLoopAnimation Index " + FrameIndex);
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
                currentGameObject.sprite = currentAnimation.Sprites[FrameIndex];
                FrameIndex++;
            }
            if (FrameIndex >= currentAnimation.HitFrame) {
                FrameIndex = currentAnimation.HitFrame;
                elapsedTime = 9999999;
                PlayedToFrame = true;
            }
            System.Diagnostics.Debug.WriteLine("PlayUntilHitFrame Index " + FrameIndex);
        }

        void PlayAfterHitFrame() {

            System.Diagnostics.Debug.WriteLine("PlayAfterHitFrame Index " + FrameIndex);

            if (FrameIndex <= currentAnimation.HitFrame) {
                FrameIndex = currentAnimation.HitFrame;
            }

            if (elapsedTime < currentAnimation.animationLength) {
                elapsedTime += (float)gameTime.ElapsedGameTime.TotalSeconds;
            }
            else {
                elapsedTime = 0;
                FrameIndex++;
                if (FrameIndex > currentAnimation.Sprites.Length - 1) {
                    EnterState(State.Stop);
                }
                else
                    currentGameObject.sprite = currentAnimation.Sprites[FrameIndex];
            }
        }

        void RollBackAnimation() {
            System.Diagnostics.Debug.WriteLine("Rollback Index" + FrameIndex);

            if (elapsedTime < currentAnimation.animationLength) {
                elapsedTime += (float)gameTime.ElapsedGameTime.TotalSeconds;
            }
            else {
                elapsedTime = 0;
                FrameIndex--;
                if (FrameIndex >= 0)
                    currentGameObject.sprite = currentAnimation.Sprites[FrameIndex];
            }
            if (FrameIndex <= 0) {
                EnterState(State.Stop);
            }
        }
    }
}
