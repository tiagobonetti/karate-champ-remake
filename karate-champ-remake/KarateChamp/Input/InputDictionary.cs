using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Xna.Framework;

namespace KarateChamp {

    public class InputDictionary : Dictionary<Tuple<InputStick, InputStick>, CharacterState> {
        public void Add(InputStick left, InputStick right, CharacterState move) {
            Add(new Tuple<InputStick, InputStick>(left, right), move);
        }
        static InputDictionary dictionary;

        static InputDictionary() {
            InputDictionary.dictionary = new InputDictionary {
               {InputStick.None,  InputStick.Back,  CharacterState.BackKick           },
               {InputStick.None,  InputStick.Front, CharacterState.FrontKick          },
               {InputStick.None,  InputStick.Up,    CharacterState.RoundKick          },
               {InputStick.None,  InputStick.Down,  CharacterState.LowKick            },
                // {InputStick.None,  InputStick.Up,    CharacterState.Hadouken           }, // TEMPORARY
                // {InputStick.None,  InputStick.Down,  CharacterState.CheckCheckTchugen  }, // TEMPORARY
               {InputStick.Back,  InputStick.None,  CharacterState.Withdraw           },
               {InputStick.Back,  InputStick.Back,  CharacterState.BackKick           },
               {InputStick.Back,  InputStick.Front, CharacterState.BackRoundKick      },
               {InputStick.Back,  InputStick.Up,    CharacterState.UpperPunch         },
               {InputStick.Back,  InputStick.Down,  CharacterState.LowKick            },

               {InputStick.Front, InputStick.None,  CharacterState.Forward            },
               {InputStick.Front, InputStick.Back,  CharacterState.ChangeDirection    },
               {InputStick.Front, InputStick.Front, CharacterState.MiddleLungePunch   },
               {InputStick.Front, InputStick.Up,    CharacterState.UpperLungePunch    },
               {InputStick.Front, InputStick.Down,  CharacterState.LowKick            },

               {InputStick.Up,    InputStick.None,  CharacterState.Jump               },
               {InputStick.Up,    InputStick.Back,  CharacterState.JumpingBackKick    },
               {InputStick.Up,    InputStick.Front, CharacterState.JumpingSideKick    },
               {InputStick.Up,    InputStick.Up,    CharacterState.BackwardSomersault },
               {InputStick.Up,    InputStick.Down,  CharacterState.ForwardSomersault  },

               {InputStick.Down,  InputStick.None,  CharacterState.Squat              },
               {InputStick.Down,  InputStick.Back,  CharacterState.BackFootSweep      },
               {InputStick.Down,  InputStick.Front, CharacterState.FrontFootSweep     },
               {InputStick.Down,  InputStick.Up,    CharacterState.DuckingReversePunch},
               {InputStick.Down,  InputStick.Down,  CharacterState.FrontFootSweep     }
            };

        }
        public static CharacterState GetMove(InputStick left, InputStick rigth, Modifier modifier) {
            CharacterState move;
            InputDictionary.dictionary.TryGetValue(new Tuple<InputStick, InputStick>(left, rigth), out move);
            // apply modifier
            switch (modifier) {
                default:
                case Modifier.None:
                    break;
                case Modifier.IncomingUpperAttack:
                    if (move == CharacterState.Withdraw) {
                        move = CharacterState.UpperBlock;
                    }
                    break;
                case Modifier.IncomingMiddleAttack:
                    if (move == CharacterState.Withdraw) {
                        move = CharacterState.MiddleBlock;
                    }
                    break;
                case Modifier.CloseToOpponent:
                    if (move == CharacterState.FrontKick) {
                        move = CharacterState.MiddleReversePunch;
                    }
                    break;
            }
            return move;
        }
    }
}
