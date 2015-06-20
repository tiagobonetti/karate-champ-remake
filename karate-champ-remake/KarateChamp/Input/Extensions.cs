using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Xna.Framework.Input;

namespace KarateChamp.Input {
    public static class Extensions {
        // We assume Rigth to Left as the default character oriantation
        public static BaseInput.State ToInput(this Keys state, bool flipped) {
            BaseInput.State input;
            switch (state) {
                case Keys.Up:
                case Keys.W:
                    input = BaseInput.State.Up;
                    break;
                case Keys.Left:
                case Keys.A:
                    input = (flipped) ? BaseInput.State.Front : BaseInput.State.Back;
                    break;
                case Keys.Down:
                case Keys.S:
                    input = BaseInput.State.Down;
                    break;
                case Keys.Right:
                case Keys.D:
                    input = (flipped) ? BaseInput.State.Back : BaseInput.State.Front;
                    break;
                case Keys.None:
                    input = BaseInput.State.None;
                    break;
                default:
                    System.Diagnostics.Debug.Assert(false, "This is not a valid JoyStick State");
                    input = BaseInput.State.None;
                    break;
            }
            return input;
        }
    }
}
