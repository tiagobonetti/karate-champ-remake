using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Input;
using Microsoft.Xna.Framework.Graphics;

namespace KarateChamp {

    using Orientation = GameObject.Orientation;

    public class KeyboardInput : IPlayerInput {
        public Vector2 DebugPosition { get; set; }
        public KeyboardInput() {
            this.DebugPosition = Vector2.Zero;
        }

        static List<Keys> wasd = new List<Keys>() {
            Keys.W,
            Keys.A,
            Keys.S,
            Keys.D
        };
        static List<Keys> arrows = new List<Keys>() {
            Keys.Up,
            Keys.Left,
            Keys.Down,
            Keys.Right
        };
        static List<Keys> menu_list = new List<Keys>() {
            Keys.W,
            Keys.S,
            Keys.Up,
            Keys.Down,
            Keys.Enter,
            Keys.Escape
        };


        Keys left = Keys.None;
        Keys right = Keys.None;
        Orientation lastOrientation = Orientation.Right;
        Direction direction = Direction.None;
        bool start = false;
        bool cancel = false;

        HadoukenInput hadouken = new HadoukenInput();
        TatsumakiInput tatsumaki = new TatsumakiInput();

        public void ManagerUpdate(GameTime gameTime) {
            KeyboardState state = Keyboard.GetState();
            var pressed = state.GetPressedKeys().ToList();
            var pressed_wasd = pressed.Intersect(wasd);
            var pressed_arrows = pressed.Intersect(arrows);

            left = (pressed_wasd.Count() > 0) ? pressed_wasd.First() : Keys.None;
            right = (pressed_arrows.Count() > 0) ? pressed_arrows.First() : Keys.None;

            bool W = state.IsKeyDown(Keys.W);
            bool A = state.IsKeyDown(Keys.A);
            bool S = state.IsKeyDown(Keys.S);
            bool D = state.IsKeyDown(Keys.D);

            if (W && !S) { direction = Direction.Up; }
            else if (S && !W) { direction = Direction.Down; }
            else if (A && !D) { direction = Direction.Left; }
            else if (D && !A) { direction = Direction.Right; }
            else { direction = Direction.None; }

            start = state.IsKeyDown(Keys.Enter);
            cancel = state.IsKeyDown(Keys.Escape);

        }


        public bool GetStart() {
            return start;
        }

        public bool GetCancel() {
            return cancel;
        }

        public Direction GetDirection() {
            return direction;
        }

        CharacterState lastMove = CharacterState.Idle;
        public CharacterState GetMove() {
            return lastMove;
        }

        Timer singleStickTimer = new Timer();
        bool delayed = false;

        public void PlayerUpdate(GameTime gameTime, Modifier modifier, Orientation orientation) {
            InputStick leftStick = left.ToInputStick(orientation);
            InputStick rightStick = right.ToInputStick(orientation);
 
            hadouken.Update(leftStick, rightStick);
            if (hadouken.Inputed()) {
                lastMove = CharacterState.Hadouken;
                return;
            }

            tatsumaki.Update(leftStick, rightStick);
            if (tatsumaki.Inputed()) {
                lastMove = CharacterState.Tatsumaki;
                return;
            }


            if ((lastMove == CharacterState.Idle) && !delayed &&
                (( leftStick != InputStick.None && rightStick == InputStick.None) || 
                ( rightStick != InputStick.None && leftStick == InputStick.None)))
            {
                if (!delayed) {
                    singleStickTimer.TimerCounter(gameTime, InputManager.InputDelay, out delayed);
                } else {
                    lastMove = InputDictionary.GetMove(leftStick, rightStick, modifier);
                }
            } else {
                delayed = false;
                lastMove = InputDictionary.GetMove(leftStick, rightStick, modifier);
            }
        }


        public void DrawDebug(SpriteBatch sb, Orientation orientation) {
            KeyboardState state = Keyboard.GetState();
            var pressed = Keyboard.GetState().GetPressedKeys().ToList();
            var pressed_wasd = pressed.Intersect(wasd);
            var pressed_arrows = pressed.Intersect(arrows);

            InputStick left = ((pressed_wasd.Count() == 1) ? pressed_wasd.First() : Keys.None).ToInputStick(orientation);
            InputStick right = ((pressed_arrows.Count() == 1) ? pressed_arrows.First() : Keys.None).ToInputStick(orientation);

            string msg = "Keyboard";
            msg += "\nWASD: ";
            foreach (Keys key in pressed_wasd) { msg += key.ToString() + " "; }
            msg += "\nArrows: ";
            foreach (Keys key in pressed_arrows) { msg += key.ToString() + " "; }
            msg += "\nL: " + left.ToString();
            msg += "\nR: " + right.ToString();
            msg += "\nMove: " + lastMove.ToString();
            msg += "\nDirection: " + direction;
            msg += "\nStart: " + start;
            msg += "\nCancel: " + cancel;
            Debug.DrawText(sb, DebugPosition, msg);
        }
    }
}
