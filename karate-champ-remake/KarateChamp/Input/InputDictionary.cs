using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace KarateChamp.Input {

    using Move = Character.State;

    public class InputDictionary : Dictionary<Tuple<State, State, Modifier>, Character.State> {
        public void Add(State left, State rigth, Modifier modifier, Character.State move) {
            Add(new Tuple<State, State, Modifier>(left, rigth, modifier), move);
        }
        static InputDictionary dictionary;
        static InputDictionary() {
            InputDictionary.dictionary = new InputDictionary {
               {State.Front, State.None,  Modifier.None,                 Move.Forward            },
               {State.Front, State.Up,    Modifier.None,                 Move.UpperLungePunch    },
               {State.Front, State.Front, Modifier.None,                 Move.MiddleLungePunch   },
               {State.Front, State.Back,  Modifier.None,                 Move.ChangeDirection    },
               {State.Back,  State.None,  Modifier.None,                 Move.Withdraw           },
               {State.Back,  State.None,  Modifier.IncomingUpperAttack,  Move.UpperBlock         },
               {State.Back,  State.None,  Modifier.IncomingMiddleAttack, Move.MiddleBlock        },
               {State.Back,  State.Up,    Modifier.None,                 Move.UpperPunch         },
               {State.Back,  State.Front, Modifier.None,                 Move.BackRoundKick      },
               {State.Up,    State.None,  Modifier.None,                 Move.Jump               },
               {State.Up,    State.Down,  Modifier.None,                 Move.ForwardSomersault  },
               {State.Up,    State.Up,    Modifier.None,                 Move.BackwardSomersault },
               {State.Up,    State.Front, Modifier.None,                 Move.JumpingSideKick    },
               {State.Up,    State.Back,  Modifier.None,                 Move.JumpingBackKick    },
               {State.Down,  State.None,  Modifier.None,                 Move.Squat              },
               {State.Down,  State.Down,  Modifier.None,                 Move.FrontFootSweep     },
               {State.Down,  State.Front, Modifier.None,                 Move.FrontFootSweep     },
               {State.Down,  State.Up,    Modifier.None,                 Move.DuckingReversePunch},
               {State.None,  State.Front, Modifier.None,                 Move.FrontKick          },
               {State.None,  State.Front, Modifier.CloseToOpponent,      Move.MiddleReversePunch },
               {State.None,  State.Down,  Modifier.None,                 Move.LowKick            },
               {State.None,  State.Up,    Modifier.None,                 Move.RoundKick          },
               {State.None,  State.Back,  Modifier.None,                 Move.BackKick           } 
           };
        }
        public static Character.State GetMove(State left, State rigth, Modifier modifier) {
            Character.State move;
            InputDictionary.dictionary.TryGetValue(new Tuple<State, State, Modifier>(left, rigth, modifier), out move);
            return move;
        }
    }
}
