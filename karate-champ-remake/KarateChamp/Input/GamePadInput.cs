using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;

namespace KarateChamp {

    using Orientation = GameObject.Orientation;

    class GamePadInput : IPlayerInput {
        public Vector2 DebugPosition { get; set; }
        const float threshold = 0.75f;
        PlayerIndex player;
        GamePadState state;

        public GamePadInput(PlayerIndex player = PlayerIndex.One) {
            this.DebugPosition = Vector2.Zero;
            this.player = player;
            state = GamePad.GetState(player, GamePadDeadZone.IndependentAxes);
                    Reset();
        }

        public void Reset() {
            hadouken = new HadoukenInput();
            tatsumaki = new TatsumakiInput();
            direction = Direction.None;
            start = false;
            cancel = false;
            lastMove = CharacterState.Idle;
            singleStickTimer = new Timer();
            delayed = false;
        }

        Direction direction;
        bool start;
        bool cancel;
        HadoukenInput hadouken;
        TatsumakiInput tatsumaki;

        public void ManagerUpdate(GameTime gameTime) {
            state = GamePad.GetState(player, GamePadDeadZone.IndependentAxes);

            float Y = state.ThumbSticks.Left.Y;
            float X = state.ThumbSticks.Left.X;
            GamePadDPad dPad = state.DPad;

            if (Y > threshold || dPad.Up == ButtonState.Pressed) { direction = Direction.Up; }
            else if (Y < -threshold || dPad.Down == ButtonState.Pressed) { direction = Direction.Down; }
            else if (X < -threshold || dPad.Left == ButtonState.Pressed) { direction = Direction.Left; }
            else if (X > threshold || dPad.Right == ButtonState.Pressed) { direction = Direction.Right; }
            else { direction = Direction.None; }

            start = (state.Buttons.A == ButtonState.Pressed);
            cancel = (state.Buttons.B == ButtonState.Pressed);
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

        CharacterState lastMove;
        Timer singleStickTimer;
        bool delayed;

        public void PlayerUpdate(GameTime gameTime, Modifier modifier, Orientation orientation) {
            InputStick leftStick = GetStick(state.ThumbSticks.Left, orientation);
            InputStick rightStick = GetStick(state.ThumbSticks.Right, orientation);

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
                ((leftStick != InputStick.None && rightStick == InputStick.None) ||
                (rightStick != InputStick.None && leftStick == InputStick.None))) {
                if (!delayed) {
                    singleStickTimer.TimerCounter(gameTime, InputManager.InputDelay, out delayed);
                }
                else {
                    lastMove = InputDictionary.GetMove(leftStick, rightStick, modifier);
                }
            }
            else {
                delayed = false;
                lastMove = InputDictionary.GetMove(leftStick, rightStick, modifier);
            }
        }
        public CharacterState GetMove() {
            return lastMove;
        }

        public InputStick GetStick(Vector2 ThumbStick, Orientation flipped) {
            if (ThumbStick.X > threshold) {
                return (flipped == Orientation.Right) ? InputStick.Front : InputStick.Back;
            }
            else if (ThumbStick.X < -threshold) {
                return (flipped == Orientation.Left) ? InputStick.Front : InputStick.Back;
            }
            else if (ThumbStick.Y > threshold) {
                return InputStick.Up;
            }
            else if (ThumbStick.Y < -threshold) {
                return InputStick.Down;
            }
            else {
                return InputStick.None;
            }
        }
        public void DrawDebug(SpriteBatch sb, Orientation orientation) {
            GamePadState state = GamePad.GetState(player, GamePadDeadZone.IndependentAxes);
            InputStick left = GetStick(state.ThumbSticks.Left, orientation);
            InputStick right = GetStick(state.ThumbSticks.Right, orientation);

            string msg = "Gamepad " + player.ToString() + " : " + state.IsConnected.ToString();
            msg += "\nLx: " + state.ThumbSticks.Left.X.ToString("N2");
            msg += "\nLy: " + state.ThumbSticks.Left.Y.ToString("N2");
            msg += "\nRx: " + state.ThumbSticks.Right.X.ToString("N2");
            msg += "\nRy: " + state.ThumbSticks.Right.Y.ToString("N2");
            msg += "\nMove: " + lastMove.ToString();
            msg += "\nDirection: " + direction;
            msg += "\nStart: " + start;
            msg += "\nCancel: " + cancel;
            Debug.DrawText(sb, DebugPosition, msg);
        }
    }
}
