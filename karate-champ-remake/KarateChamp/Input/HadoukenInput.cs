using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace KarateChamp {

    public class HadoukenInput {

        enum State {
            None,
            Down,
            Front,
            FrontAttack
        }

        State state = State.None;

        public bool Inputed() {
            return (state == State.FrontAttack);
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
                    if (leftStick == InputStick.Front) {
                        state = State.Front;
                    }
                    else if (leftStick != InputStick.Down) {
                        state = State.None;
                    }
                    break;
                case State.Front:
                    if (leftStick == InputStick.Front && rightStick == InputStick.Front) {
                        state = State.FrontAttack;
                    }
                    else if (leftStick != InputStick.Front) {
                        state = State.None;
                    }
                    break;
                case State.FrontAttack:
                    if (leftStick == InputStick.Front && rightStick == InputStick.Front) {
                        state = State.FrontAttack;
                    }
                    else {
                        state = State.None;
                    }
                    break;
            }
        }
    }
}
