using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace KarateChamp {
    public class TatsumakiInput {
        enum State {
            None,
            Down,
            DownBack,
            Back,
            BackAttack
        }

        State state = State.None;

        public bool Inputed() {
            return (state == State.BackAttack);
        }

        public void Update(InputStick leftStick, InputStick rightStick) {
            switch (state) {
                default:
                case State.None:
                    if (leftStick == InputStick.Down) {
                        state = State.Down;
                    }
                    break;
                case State.Down:
                    if (leftStick == InputStick.Back) {
                        state = State.Back;
                    }
                    else if (leftStick != InputStick.Down) {
                        state = State.None;
                    }
                    break;
                case State.Back:
                    if (leftStick == InputStick.Back && rightStick == InputStick.Back) {
                        state = State.BackAttack;
                    }
                    else if (leftStick != InputStick.Back) {
                        state = State.None;
                    }
                    break;
                case State.BackAttack:
                    if (leftStick == InputStick.Back && rightStick == InputStick.Back) {
                        state = State.BackAttack;
                    }
                    else {
                        state = State.None;
                    }
                    break;
            }
        }
    }
}
