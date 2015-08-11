using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Xna.Framework.Input;

namespace KarateChamp {
    using Orientantion = GameObject.Orientation;
    public static class Extensions {
        // We assume Rigth to Left as the default character oriantation
        public static InputStick ToInputStick(this Keys state, Orientantion orientation) {
            InputStick input;
            switch (state) {
                case Keys.Up:
                case Keys.W:
                    input = InputStick.Up;
                    break;
                case Keys.Left:
                case Keys.A:
                    input = (orientation == Orientantion.Left) ? InputStick.Front : InputStick.Back;
                    break;
                case Keys.Down:
                case Keys.S:
                    input = InputStick.Down;
                    break;
                case Keys.Right:
                case Keys.D:
                    input = (orientation == Orientantion.Right) ? InputStick.Front : InputStick.Back;
                    break;
                case Keys.None:
                    input = InputStick.None;
                    break;
                default:
                    System.Diagnostics.Debug.Assert(false, "This is not a valid JoyStick State");
                    input = InputStick.None;
                    break;
            }
            return input;
        }
    }
}
