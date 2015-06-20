using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using KarateChamp.Character;


namespace KarateChamp.Input {
    public class InputDictionary : Dictionary<Tuple<BaseInput.State, BaseInput.State, BaseInput.Modifier>, BaseCharacter.State> {
        public void Add(BaseInput.State left, BaseInput.State rigth, BaseInput.Modifier modifier, BaseCharacter.State move) {
            Add(new Tuple<BaseInput.State, BaseInput.State, BaseInput.Modifier>(left, rigth, modifier), move);
        }
        static InputDictionary dictionary;
        static InputDictionary() {
            InputDictionary.dictionary = new InputDictionary {
               {BaseInput.State.Front, BaseInput.State.None,  BaseInput.Modifier.None,                 BaseCharacter.State.Forward            },
               {BaseInput.State.Front, BaseInput.State.Up,    BaseInput.Modifier.None,                 BaseCharacter.State.UpperLungePunch    },
               {BaseInput.State.Front, BaseInput.State.Front, BaseInput.Modifier.None,                 BaseCharacter.State.MiddleLungePunch   },
               {BaseInput.State.Front, BaseInput.State.Back,  BaseInput.Modifier.None,                 BaseCharacter.State.ChangeDirection    },
               {BaseInput.State.Back,  BaseInput.State.None,  BaseInput.Modifier.None,                 BaseCharacter.State.Withdraw           },
               {BaseInput.State.Back,  BaseInput.State.None,  BaseInput.Modifier.IncomingUpperAttack,  BaseCharacter.State.UpperBlock         },
               {BaseInput.State.Back,  BaseInput.State.None,  BaseInput.Modifier.IncomingMiddleAttack, BaseCharacter.State.MiddleBlock        },
               {BaseInput.State.Back,  BaseInput.State.Up,    BaseInput.Modifier.None,                 BaseCharacter.State.UpperPunch         },
               {BaseInput.State.Back,  BaseInput.State.Front, BaseInput.Modifier.None,                 BaseCharacter.State.BackRoundKick      },
               {BaseInput.State.Up,    BaseInput.State.None,  BaseInput.Modifier.None,                 BaseCharacter.State.Jump               },
               {BaseInput.State.Up,    BaseInput.State.Down,  BaseInput.Modifier.None,                 BaseCharacter.State.ForwardSomersault  },
               {BaseInput.State.Up,    BaseInput.State.Up,    BaseInput.Modifier.None,                 BaseCharacter.State.BackwardSomersault },
               {BaseInput.State.Up,    BaseInput.State.Front, BaseInput.Modifier.None,                 BaseCharacter.State.JumpingSideKick    },
               {BaseInput.State.Up,    BaseInput.State.Back,  BaseInput.Modifier.None,                 BaseCharacter.State.JumpingBackKick    },
               {BaseInput.State.Down,  BaseInput.State.None,  BaseInput.Modifier.None,                 BaseCharacter.State.Squat              },
               {BaseInput.State.Down,  BaseInput.State.Down,  BaseInput.Modifier.None,                 BaseCharacter.State.FrontFootSweep     },
               {BaseInput.State.Down,  BaseInput.State.Front, BaseInput.Modifier.None,                 BaseCharacter.State.FrontFootSweep     },
               {BaseInput.State.Down,  BaseInput.State.Up,    BaseInput.Modifier.None,                 BaseCharacter.State.DuckingReversePunch},
               {BaseInput.State.None,  BaseInput.State.Front, BaseInput.Modifier.None,                 BaseCharacter.State.FrontKick          },
               {BaseInput.State.None,  BaseInput.State.Front, BaseInput.Modifier.CloseToOpponent,      BaseCharacter.State.MiddleReversePunch },
               {BaseInput.State.None,  BaseInput.State.Down,  BaseInput.Modifier.None,                 BaseCharacter.State.LowKick            },
               {BaseInput.State.None,  BaseInput.State.Up,    BaseInput.Modifier.None,                 BaseCharacter.State.RoundKick          },
               {BaseInput.State.None,  BaseInput.State.Back,  BaseInput.Modifier.None,                 BaseCharacter.State.BackKick           } 
           };
        }
        public static BaseCharacter.State GetMove(BaseInput.State left, BaseInput.State rigth, BaseInput.Modifier modifier) {
            BaseCharacter.State move;
            InputDictionary.dictionary.TryGetValue(new Tuple<BaseInput.State, BaseInput.State, BaseInput.Modifier>(left, rigth, modifier), out move);
            return move;
        }
    }
}
