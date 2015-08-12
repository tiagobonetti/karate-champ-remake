using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;

namespace KarateChamp {
    static public class InputManager {
        static public float InputDelay  { get { return 0.05f; } }
        static public IPlayerInput Keyboard { get; private set; }
        static public IPlayerInput GamePadOne { get; private set; }
        static public IPlayerInput GamePadTwo { get; private set; }
        static List<IPlayerInput> inputs;

        static InputManager() {
            Keyboard = new KeyboardInput();
            GamePadOne = new GamePadInput(PlayerIndex.One);
            GamePadTwo = new GamePadInput(PlayerIndex.Two);
            inputs = new List<IPlayerInput>() { Keyboard, GamePadOne, GamePadTwo };
        }

        public static void ClearInputs() {
            foreach (IPlayerInput input in inputs) {
                input.Reset();
            }
        }

        static Direction lastDirection = Direction.None;
        static bool lastStart = false;
        static bool lastCancel = false;

        public static void Update(GameTime gameTime) {
            foreach (IPlayerInput input in inputs) {
                input.ManagerUpdate(gameTime);
            }
        }

        public static Direction GetDirection() {
            Direction anyDirection = Direction.None;
            foreach (IPlayerInput input in inputs) {
                anyDirection = input.GetDirection();
                if (anyDirection != Direction.None) {
                    break;
                }
            }
            bool triggered = ((anyDirection != Direction.None) && (lastDirection == Direction.None));
            lastDirection = anyDirection;
            return (triggered) ? anyDirection : Direction.None;
        }

        public static bool GetStart() {
            bool anyStart = false;
            foreach (IPlayerInput input in inputs) {
                anyStart = input.GetStart();
                if (anyStart) { break; }
            }

            bool triggered = (anyStart && !lastStart);
            lastStart = anyStart;
            return triggered;
        }

        public static bool GetCancel() {
            bool anyCancel = false;
            foreach (IPlayerInput input in inputs) {
                anyCancel = input.GetCancel();
                if (anyCancel) { break; }
            }
            bool triggered = (anyCancel && !lastCancel);
            lastCancel = anyCancel;
            return triggered;
        }
    }
}
