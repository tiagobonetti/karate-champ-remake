using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Xna.Framework.Input;

namespace KarateChamp.Input {
    using Orientantion = GameObject.Orientation;
    public static class Extensions {
        // We assume Rigth to Left as the default character oriantation
        public static State ToInput(this Keys state, Orientantion orientation) {
            State input;
            switch (state) {
                case Keys.Up:
                case Keys.W:
                    input = State.Up;
                    break;
                case Keys.Left:
                case Keys.A:
                    input = (orientation == Orientantion.Left) ? State.Front : State.Back;
                    break;
                case Keys.Down:
                case Keys.S:
                    input = State.Down;
                    break;
                case Keys.Right:
                case Keys.D:
                    input = (orientation == Orientantion.Right) ? State.Front : State.Back;
                    break;
                case Keys.None:
                    input = State.None;
                    break;
                default:
                    System.Diagnostics.Debug.Assert(false, "This is not a valid JoyStick State");
                    input = State.None;
                    break;
            }
            return input;
        }
    }
}
