using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace KarateChamp {

    public class InputDictionary : Dictionary<Tuple<InputState, InputState, Modifier>, CharacterState> {
        public void Add(InputState left, InputState rigth, Modifier modifier, CharacterState move) {
            Add(new Tuple<InputState, InputState, Modifier>(left, rigth, modifier), move);
        }
        static InputDictionary dictionary;
        static InputDictionary() {
            InputDictionary.dictionary = new InputDictionary {
               {InputState.Front, InputState.None,  Modifier.None,                 CharacterState.Forward            },
               {InputState.Front, InputState.Up,    Modifier.None,                 CharacterState.UpperLungePunch    },
               {InputState.Front, InputState.Front, Modifier.None,                 CharacterState.MiddleLungePunch   },
               {InputState.Front, InputState.Back,  Modifier.None,                 CharacterState.ChangeDirection    },
               {InputState.Back,  InputState.None,  Modifier.None,                 CharacterState.Withdraw           },
               {InputState.Back,  InputState.None,  Modifier.IncomingUpperAttack,  CharacterState.UpperBlock         },
               {InputState.Back,  InputState.None,  Modifier.IncomingMiddleAttack, CharacterState.MiddleBlock        },
               {InputState.Back,  InputState.Up,    Modifier.None,                 CharacterState.UpperPunch         },
               {InputState.Back,  InputState.Front, Modifier.None,                 CharacterState.BackRoundKick      },
               {InputState.Up,    InputState.None,  Modifier.None,                 CharacterState.Jump               },
               {InputState.Up,    InputState.Down,  Modifier.None,                 CharacterState.ForwardSomersault  },
               {InputState.Up,    InputState.Up,    Modifier.None,                 CharacterState.BackwardSomersault },
               {InputState.Up,    InputState.Front, Modifier.None,                 CharacterState.JumpingSideKick    },
               {InputState.Up,    InputState.Back,  Modifier.None,                 CharacterState.JumpingBackKick    },
               {InputState.Down,  InputState.None,  Modifier.None,                 CharacterState.Squat              },
               {InputState.Down,  InputState.Down,  Modifier.None,                 CharacterState.FrontFootSweep     },
               {InputState.Down,  InputState.Front, Modifier.None,                 CharacterState.FrontFootSweep     },
               {InputState.Down,  InputState.Up,    Modifier.None,                 CharacterState.DuckingReversePunch},
               {InputState.None,  InputState.Front, Modifier.None,                 CharacterState.FrontKick          },
               {InputState.None,  InputState.Front, Modifier.CloseToOpponent,      CharacterState.MiddleReversePunch },
               {InputState.None,  InputState.Down,  Modifier.None,                 CharacterState.LowKick            },
               {InputState.None,  InputState.Up,    Modifier.None,                 CharacterState.RoundKick          },
               {InputState.None,  InputState.Back,  Modifier.None,                 CharacterState.BackKick           } 
           };
        }
        public static CharacterState GetMove(InputState left, InputState rigth, Modifier modifier) {
            CharacterState move;
            InputDictionary.dictionary.TryGetValue(new Tuple<InputState, InputState, Modifier>(left, rigth, modifier), out move);
            return move;
        }
    }
}
