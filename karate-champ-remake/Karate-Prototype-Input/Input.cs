using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;

namespace Karate_Prototype_Input {
    public enum Move {
        None,
        Forward,             // LJ: Front  RJ: None
        UpperLungePunch,     // LJ: Front  RJ: Up
        MiddleLungePunch,    // LJ: Front  RJ: Rigth
        ChangeDirection,     // LJ: Front  RJ: Left
        Withdraw,            // LJ: Back   RJ: None
        UpperBlock,          // LJ: Back   RJ: None   Mod: Incoming Upper Attack
        MiddleBlock,         // LJ: Back   RJ: None   Mod: Incoming Middle Attack
        UpperPunch,          // LJ: Back   RJ: Up    
        BackRoundKick,       // LJ: Back   RJ: Right 
        Jump,                // LJ: Up     RJ: None
        ForwardsJump,        // LJ: Up     RJ: Down
        BackwardsJump,       // LJ: Up     RJ: Up
        JumpingSideKick,     // LJ: Up     RJ: Right 
        JumpingBackKick,     // LJ: Up     RJ: Left 
        Squat,               // LJ: Down   RJ: None
        FrontFootSweep,      // LJ: Down   RJ: Down or Right
        DuckingReversePunch, // LJ: Down   RJ: Up
        FrontKick,           // LJ: None   RJ: Right
        ReversePunch,        // LJ: None   RJ: Right  Mod: Close to Opponent
        LowKick,             // LJ: None   RJ: Down
        RoundKick,           // LJ: None   RJ: Up 
        BackKick             // LJ: None   RJ: Left 
    }
    public enum Input {
        Up,
        Down,
        Back,
        Front,
        None
    }
    public enum GameModifiers {
        IncomingUpperAttack,
        IncomingMiddleAttack,
        CloseToOpponent,
        None
    }
    class MoveDictionary : Dictionary<Tuple<Input, Input, GameModifiers>, Move> {
        public void Add(Input left, Input rigth, GameModifiers modifier, Move move) {
            Add(new Tuple<Input, Input, GameModifiers>(left, rigth, modifier), move);
        }
        static MoveDictionary dictionary;
        static MoveDictionary() {
            MoveDictionary.dictionary = new MoveDictionary {
               {Input.Front, Input.None,  GameModifiers.None,                 Move.Forward            },
               {Input.Front, Input.Up,    GameModifiers.None,                 Move.UpperLungePunch    },
               {Input.Front, Input.Front, GameModifiers.None,                 Move.MiddleLungePunch   },
               {Input.Front, Input.Back,  GameModifiers.None,                 Move.ChangeDirection    },
               {Input.Back,  Input.None,  GameModifiers.None,                 Move.Withdraw           },
               {Input.Back,  Input.None,  GameModifiers.IncomingUpperAttack,  Move.UpperBlock         },
               {Input.Back,  Input.None,  GameModifiers.IncomingMiddleAttack, Move.MiddleBlock        },
               {Input.Back,  Input.Up,    GameModifiers.None,                 Move.UpperPunch         },
               {Input.Back,  Input.Front, GameModifiers.None,                 Move.BackRoundKick      },
               {Input.Up,    Input.None,  GameModifiers.None,                 Move.Jump               },
               {Input.Up,    Input.Down,  GameModifiers.None,                 Move.ForwardsJump       },
               {Input.Up,    Input.Up,    GameModifiers.None,                 Move.BackwardsJump      },
               {Input.Up,    Input.Front, GameModifiers.None,                 Move.JumpingSideKick    },
               {Input.Up,    Input.Back,  GameModifiers.None,                 Move.JumpingBackKick    },
               {Input.Down,  Input.None,  GameModifiers.None,                 Move.Squat              },
               {Input.Down,  Input.Down,  GameModifiers.None,                 Move.FrontFootSweep     },
               {Input.Down,  Input.Front, GameModifiers.None,                 Move.FrontFootSweep     },
               {Input.Down,  Input.Up,    GameModifiers.None,                 Move.DuckingReversePunch},
               {Input.None,  Input.Front, GameModifiers.None,                 Move.FrontKick          },
               {Input.None,  Input.Front, GameModifiers.CloseToOpponent,      Move.ReversePunch       },
               {Input.None,  Input.Down,  GameModifiers.None,                 Move.LowKick            },
               {Input.None,  Input.Up,    GameModifiers.None,                 Move.RoundKick          },
               {Input.None,  Input.Back,  GameModifiers.None,                 Move.BackKick           } 
           };
        }
        public static Move GetMove(Input left, Input rigth, GameModifiers modifier) {
            Move move;
            MoveDictionary.dictionary.TryGetValue(new Tuple<Input, Input, GameModifiers>(left, rigth, modifier),
                                                  out move);
            return move;
        }
    }

    public static class Extensions {
        // We assume Rigth to Left as the default character oriantation
        public static Input ToInput(this Keys state, bool flipped) {
            Input input;
            switch (state) {
                case Keys.Up:
                case Keys.W:
                    input = Input.Up;
                    break;
                case Keys.Left:
                case Keys.A:
                    input = (flipped) ? Input.Front : Input.Back;
                    break;
                case Keys.Down:
                case Keys.S:
                    input = Input.Down;
                    break;
                case Keys.Right:
                case Keys.D:
                    input = (flipped) ? Input.Back : Input.Front;
                    break;
                case Keys.None:
                    input = Input.None;
                    break;
                default:
                    System.Diagnostics.Debug.Assert(false, "This is not a valid JoyStick State");
                    input = Input.None;
                    break;
            }
            return input;
        }
    }
    public class KeyboardInput {
        static List<Keys> wasd = new List<Keys>() {
            Keys.W,
            Keys.A,
            Keys.S,
            Keys.D
        };
        static List<Keys> arrows = new List<Keys>() {
            Keys.Up,
            Keys.Left,
            Keys.Down,
            Keys.Right
        };
        public Move GetMove(GameModifiers modifier, bool flipped) {
            KeyboardState state = Keyboard.GetState();
            var pressed = Keyboard.GetState().GetPressedKeys().ToList();
            var pressed_wasd = pressed.Intersect(wasd);
            var pressed_arrows = pressed.Intersect(arrows);

            Keys left = (pressed_wasd.Count() == 1) ? pressed_wasd.First() : Keys.None;
            Keys right = (pressed_arrows.Count() == 1) ? pressed_arrows.First() : Keys.None;

            return MoveDictionary.GetMove(left.ToInput(flipped), right.ToInput(flipped), modifier);
        }
    }

    class BaseInput {
        SpriteFont arial20;
        KeyboardInput input;
        Move move;

        public BaseInput() {
            input = new KeyboardInput();
            move = Move.None;
        }

        public void LoadContent(ContentManager content) {
            arial20 = content.Load<SpriteFont>("Arial20");
        }

        public void Update(GameTime gameTime) {
            KeyboardState state = Keyboard.GetState();
            move = input.GetMove(GameModifiers.None, false);
        }

        public void Draw(SpriteBatch sb) {
            DrawText(sb, new Vector2(100.0f, 100.0f), move.ToString());
        }

        public void DrawText(SpriteBatch sb, Vector2 pos, string text) {
            sb.DrawString(arial20, text, pos, Color.White, 0.0f, Vector2.Zero, 1.0f, SpriteEffects.None, 1.0f);
        }

    }
}
