using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Xna.Framework.Input;

namespace KarateChamp {
    using Orientantion = GameObject.Orientation;
    public static class Extensions {
        // We assume Rigth to Left as the default character oriantation
        public static InputState ToInput(this Keys state, Orientantion orientation) {
            InputState input;
            switch (state) {
                case Keys.Up:
                case Keys.W:
                    input = InputState.Up;
                    break;
                case Keys.Left:
                case Keys.A:
                    input = (orientation == Orientantion.Left) ? InputState.Front : InputState.Back;
                    break;
                case Keys.Down:
                case Keys.S:
                    input = InputState.Down;
                    break;
                case Keys.Right:
                case Keys.D:
                    input = (orientation == Orientantion.Right) ? InputState.Front : InputState.Back;
                    break;
                case Keys.None:
                    input = InputState.None;
                    break;
                default:
                    System.Diagnostics.Debug.Assert(false, "This is not a valid JoyStick State");
                    input = InputState.None;
                    break;
            }
            return input;
        }
    }
}
