using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace KarateChamp {
    class Animator {

        public bool Finished { get; private set; }
        public State state = State.Stop;
        bool initialized;
        GameObject currentGameObject;
        Texture2D[] currentAnimation;
        float length = 0.125f;
        GameTime gameTime;
        float elapsedTime = 9999999;
        int i = 0;
        int hitFrame;

        public enum State{
            Play,
            Stop,
            Hold,
            Rollback
        }

        void StateMachine() {

            if (!initialized)
                throw new Exception("Animation not Initialized - Use Animator.Init()");
            
            switch (state) {
                case State.Play:
                    PlayAnimation();
                    break;
                case State.Stop:
                    Stop();
                    break;
                case State.Hold:
                    HoldAnimation();
                    break;
                case State.Rollback:
                    RollBackAnimation();
                    break;
            }
    //        System.Diagnostics.Debug.WriteLine(state + " " + currentAnimation[i].Name);
        }

        /*
        public void Animate(GameObject gameObject, float length, GameTime gameTime) {

            this.length = length;

            if (currentAnimation != gameObject.spriteList) {
                currentAnimation = gameObject.spriteList;
                play = true;
            }

            if (play) {
                if (elapsedTime < length) {
                    elapsedTime += (float)gameTime.ElapsedGameTime.TotalSeconds;
                }
                else {
                    elapsedTime = 0;
                    gameObject.sprite = gameObject.spriteList[i];
                    i++;
                }
                if (i >= gameObject.spriteList.Length - 1)
                    play = false;
            }
        }*/

        public void Run(GameObject gameObject, Texture2D[] animation, float length, GameTime gameTime, int hitFrame) {

            currentGameObject = gameObject;
            currentAnimation = animation;
            this.length = length;
            this.gameTime = gameTime;
            this.hitFrame = hitFrame;
            initialized = true;
            StateMachine();
        }

        public void Play() {
            state = State.Play;
        }

        public void Stop() {

        }

        public void Hold() {
            state = State.Hold;
        }

        public void RollBack() {
            state = State.Rollback;
        }

        void PlayAnimation() {
           
            if (elapsedTime < length) {
                elapsedTime += (float)gameTime.ElapsedGameTime.TotalSeconds;
            }
            else {
                elapsedTime = 0;
                currentGameObject.sprite = currentAnimation[i];
                i++;
            }
            if (i >= hitFrame){
                i = hitFrame;
                elapsedTime = 9999999;
            }
            System.Diagnostics.Debug.WriteLine("Play Index" + i);
        }
        /*
        void PlayAnimation() {
           
            if (elapsedTime < length) {
                elapsedTime += (float)gameTime.ElapsedGameTime.TotalSeconds;
            }
            else {
                elapsedTime = 0;
                currentGameObject.sprite = currentAnimation[i];
                i++;
            }
            if (i >= currentAnimation.Length - 1){
                Finished = true;
                i = 0;
                elapsedTime = 9999999;
                state = State.Stop;
            }
            else
                Finished = false;
            System.Diagnostics.Debug.WriteLine("Play Index" + i);
        }*/

        void HoldAnimation() {
            elapsedTime = 0;
            //    gameObject.sprite = currentAnimation[i];
        }

        void RollBackAnimation() {
            System.Diagnostics.Debug.WriteLine("Rollback Index" + i);

            if (elapsedTime < length) {
                elapsedTime += (float)gameTime.ElapsedGameTime.TotalSeconds;
            }
            else {
                elapsedTime = 0;
                i--;
                if (i >= 0)
                    currentGameObject.sprite = currentAnimation[i];
            }
            if (i <= 0) {
                Finished = true;
                i = 0;
                elapsedTime = 9999999;
                state = State.Stop;
            }
            else
                Finished = false;
        }
    }
}
