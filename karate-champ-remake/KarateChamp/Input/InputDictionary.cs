using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Xna.Framework;

namespace KarateChamp {

    public class InputDictionary : Dictionary<Tuple<InputState, InputState>, CharacterState> {
        public void Add(InputState left, InputState right, CharacterState move) {
            Add(new Tuple<InputState, InputState>(left, right), move);
        }
        static InputDictionary dictionary;
        static public IPlayerInput Keyboard { get; private set; }
        static public IPlayerInput GamePadOne { get; private set; }
        static public IPlayerInput GamePadTwo { get; private set; }

        static InputDictionary() {
            InputDictionary.dictionary = new InputDictionary {
               {InputState.None,  InputState.Back,  CharacterState.BackKick           },
               {InputState.None,  InputState.Front, CharacterState.FrontKick          },
             {InputState.None,  InputState.Up,    CharacterState.RoundKick          },
             {InputState.None,  InputState.Down,  CharacterState.LowKick            },
    //           {InputState.None,  InputState.Up,    CharacterState.Hadouken           }, // TEMPORARY
      //         {InputState.None,  InputState.Down,  CharacterState.CheckCheckTchugen  }, // TEMPORARY

               {InputState.Back,  InputState.None,  CharacterState.Withdraw           },
               {InputState.Back,  InputState.Back,  CharacterState.BackKick           },
               {InputState.Back,  InputState.Front, CharacterState.BackRoundKick      },
               {InputState.Back,  InputState.Up,    CharacterState.UpperPunch         },
               {InputState.Back,  InputState.Down,  CharacterState.LowKick            },

               {InputState.Front, InputState.None,  CharacterState.Forward            },
               {InputState.Front, InputState.Back,  CharacterState.ChangeDirection    },
               {InputState.Front, InputState.Front, CharacterState.MiddleLungePunch   },
               {InputState.Front, InputState.Up,    CharacterState.UpperLungePunch    },
               {InputState.Front, InputState.Down,  CharacterState.LowKick            },

               {InputState.Up,    InputState.None,  CharacterState.Jump               },
               {InputState.Up,    InputState.Back,  CharacterState.JumpingBackKick    },
               {InputState.Up,    InputState.Front, CharacterState.JumpingSideKick    },
               {InputState.Up,    InputState.Up,    CharacterState.BackwardSomersault },
               {InputState.Up,    InputState.Down,  CharacterState.ForwardSomersault  },

               {InputState.Down,  InputState.None,  CharacterState.Squat              },
               {InputState.Down,  InputState.Back,  CharacterState.BackFootSweep      },
               {InputState.Down,  InputState.Front, CharacterState.FrontFootSweep     },
               {InputState.Down,  InputState.Up,    CharacterState.DuckingReversePunch},
               {InputState.Down,  InputState.Down,  CharacterState.FrontFootSweep     }
            };
            Keyboard = new KeyboardInput();
            GamePadOne = new GamePadInput(PlayerIndex.One);
            GamePadTwo = new GamePadInput(PlayerIndex.Two);

        }
        public static CharacterState GetMove(InputState left, InputState rigth, Modifier modifier) {
            CharacterState move;
            InputDictionary.dictionary.TryGetValue(new Tuple<InputState, InputState>(left, rigth), out move);
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
