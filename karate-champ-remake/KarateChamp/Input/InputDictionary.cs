using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace KarateChamp.Input {
    public class InputDictionary : Dictionary<Tuple<State, State, Modifier>, Character.State> {
        public void Add(State left, State rigth, Modifier modifier, Character.State move) {
            Add(new Tuple<State, State, Modifier>(left, rigth, modifier), move);
        }
        static InputDictionary dictionary;
        static InputDictionary() {
            InputDictionary.dictionary = new InputDictionary {
               {State.Front, State.None,  Modifier.None,                 Character.State.Forward            },
               {State.Front, State.Up,    Modifier.None,                 Character.State.UpperLungePunch    },
               {State.Front, State.Front, Modifier.None,                 Character.State.MiddleLungePunch   },
               {State.Front, State.Back,  Modifier.None,                 Character.State.ChangeDirection    },
               {State.Back,  State.None,  Modifier.None,                 Character.State.Withdraw           },
               {State.Back,  State.None,  Modifier.IncomingUpperAttack,  Character.State.UpperBlock         },
               {State.Back,  State.None,  Modifier.IncomingMiddleAttack, Character.State.MiddleBlock        },
               {State.Back,  State.Up,    Modifier.None,                 Character.State.UpperPunch         },
               {State.Back,  State.Front, Modifier.None,                 Character.State.BackRoundKick      },
               {State.Up,    State.None,  Modifier.None,                 Character.State.Jump               },
               {State.Up,    State.Down,  Modifier.None,                 Character.State.ForwardSomersault  },
               {State.Up,    State.Up,    Modifier.None,                 Character.State.BackwardSomersault },
               {State.Up,    State.Front, Modifier.None,                 Character.State.JumpingSideKick    },
               {State.Up,    State.Back,  Modifier.None,                 Character.State.JumpingBackKick    },
               {State.Down,  State.None,  Modifier.None,                 Character.State.Squat              },
               {State.Down,  State.Down,  Modifier.None,                 Character.State.FrontFootSweep     },
               {State.Down,  State.Front, Modifier.None,                 Character.State.FrontFootSweep     },
               {State.Down,  State.Up,    Modifier.None,                 Character.State.DuckingReversePunch},
               {State.None,  State.Front, Modifier.None,                 Character.State.FrontKick          },
               {State.None,  State.Front, Modifier.CloseToOpponent,      Character.State.MiddleReversePunch },
               {State.None,  State.Down,  Modifier.None,                 Character.State.LowKick            },
               {State.None,  State.Up,    Modifier.None,                 Character.State.RoundKick          },
               {State.None,  State.Back,  Modifier.None,                 Character.State.BackKick           } 
           };
        }
        public static Character.State GetMove(State left, State rigth, Modifier modifier) {
            Character.State move;
            InputDictionary.dictionary.TryGetValue(new Tuple<State, State, Modifier>(left, rigth, modifier), out move);
            return move;
        }
    }
}
