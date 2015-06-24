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
        Idle,
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
               {Input.Down,  Input.Back,  GameModifiers.None,                 Move.Squat              },
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

    public class GamePadInput {
        public Vector2 Position { get; set; }
        const float threshold = 0.75f;
        PlayerIndex player;

        public GamePadInput(PlayerIndex player = PlayerIndex.One) {
            this.Position = Vector2.Zero;
            this.player = player;
        }
        public Move GetMove(GameModifiers modifier, bool flipped) {
            GamePadState state = GamePad.GetState(PlayerIndex.One, GamePadDeadZone.IndependentAxes);
            Input left = GetStick(state.ThumbSticks.Left, flipped);
            Input right = GetStick(state.ThumbSticks.Right, flipped);
            return MoveDictionary.GetMove(left, right, modifier);
        }
        public Input GetStick(Vector2 ThumbStick, bool flipped) {
            if (ThumbStick.X > threshold) {
                return (flipped) ? Input.Back : Input.Front;
            }
            else if (ThumbStick.X < -threshold) {
                return (flipped) ? Input.Front : Input.Back;
            }
            else if (ThumbStick.Y > threshold) {
                return Input.Up;
            }
            else if (ThumbStick.Y < -threshold) {
                return Input.Down;
            }
            else {
                return Input.None;
            }
        }
        public void DrawDebug(SpriteBatch sb) {
            GamePadState state = GamePad.GetState(player, GamePadDeadZone.IndependentAxes);
            Vector2 pos = Position;
            Input left = GetStick(state.ThumbSticks.Left, false);
            Input right = GetStick(state.ThumbSticks.Right, false);


            Primitives.DrawText(sb, pos, "P " + player.ToString() + " : " + state.IsConnected.ToString());
            pos.Y += 30.0f;
            Primitives.DrawText(sb, pos, "Lx: " + state.ThumbSticks.Left.X.ToString());
            pos.Y += 25.0f;
            Primitives.DrawText(sb, pos, "Ly: " + state.ThumbSticks.Left.Y.ToString());
            pos.Y += 25.0f;
            Primitives.DrawText(sb, pos, "Rx: " + state.ThumbSticks.Right.X.ToString());
            pos.Y += 25.0f;
            Primitives.DrawText(sb, pos, "Ry: " + state.ThumbSticks.Right.Y.ToString());
            pos.Y += 30.0f;
            Primitives.DrawText(sb, pos, "L: " + left.ToString());
            pos.Y += 25.0f;
            Primitives.DrawText(sb, pos, "R: " + right.ToString());
            pos.Y += 30.0f;
            Primitives.DrawText(sb, pos, "Move: " + MoveDictionary.GetMove(left, right, GameModifiers.None).ToString());
        }
    }


    public class KeyboardInput {
        public Vector2 Position { get; set; }
        public KeyboardInput() {
            this.Position = Vector2.Zero;
        }
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
        public void DrawDebug(SpriteBatch sb) {
            Vector2 pos = Position;
            string msg;

            KeyboardState state = Keyboard.GetState();
            var pressed = Keyboard.GetState().GetPressedKeys().ToList();
            var pressed_wasd = pressed.Intersect(wasd);
            var pressed_arrows = pressed.Intersect(arrows);
            Input left  = ((pressed_wasd.Count() == 1) ? pressed_wasd.First() : Keys.None).ToInput(false);
            Input right = ((pressed_arrows.Count() == 1) ? pressed_arrows.First() : Keys.None).ToInput(false);

            Primitives.DrawText(sb, pos, "keyboard");
            pos.Y += 30.0f;
            msg = "WASD: ";
            foreach (Keys key in pressed_wasd) {
                msg += key.ToString() + " ";
            }
            Primitives.DrawText(sb, pos, msg);
            pos.Y += 25.0f;
            msg = "Arrows: ";
            foreach (Keys key in pressed_arrows) {
                msg += key.ToString() + " ";
            }
            Primitives.DrawText(sb, pos, msg);
            pos.Y += 30.0f;
            Primitives.DrawText(sb, pos, "L: " + left.ToString());
            pos.Y += 25.0f;
            Primitives.DrawText(sb, pos, "R: " + right.ToString());
            pos.Y += 30.0f;
            Primitives.DrawText(sb, pos, "Move: " + MoveDictionary.GetMove(left, right, GameModifiers.None).ToString());
        }
    }

    class BaseInput {

        KeyboardInput keyboard;
        GamePadInput gamepad1;
        GamePadInput gamepad2;
        Move move_k;
        Move move_p1;
        Move move_p2;

        public BaseInput() {
            keyboard = new KeyboardInput();
            keyboard.Position = new Vector2(1.0f, 250.0f);
            gamepad1 = new GamePadInput(PlayerIndex.One);
            gamepad1.Position = new Vector2(400.0f, 0.0f);
            gamepad2 = new GamePadInput(PlayerIndex.Two);
            gamepad2.Position = new Vector2(400.0f, 250.0f);
            move_k = Move.Idle;
            move_p1 = Move.Idle;
            move_p2 = Move.Idle;
        }

        public void LoadContent(ContentManager content) {
            Primitives.LoadContent(content);
        }

        public void Update(GameTime gameTime) {
            KeyboardState state = Keyboard.GetState();
            move_k = keyboard.GetMove(GameModifiers.None, false);
            move_p1 = gamepad1.GetMove(GameModifiers.None, false);
        }

        public void Draw(SpriteBatch sb) {
            Vector2 pos = new Vector2(1.0f, 50.0f);
            Primitives.DrawText(sb, pos, "Game Output");
            pos.Y += 50.0f;
            Primitives.DrawText(sb, pos, "Keyboard: " + move_k.ToString());
            pos.Y += 30.0f;
            Primitives.DrawText(sb, pos, "Gamepad1: " + move_p1.ToString());
            pos.Y += 30.0f;
            Primitives.DrawText(sb, pos, "Gamepad2: " + move_p2.ToString());

            keyboard.DrawDebug(sb);
            gamepad1.DrawDebug(sb);
            gamepad2.DrawDebug(sb);
        }

    }

    public static class Primitives {
        static SpriteFont arial20;
        public static void LoadContent(ContentManager content) {
            arial20 = content.Load<SpriteFont>("Arial20");
        }
        public static void DrawText(SpriteBatch sb, Vector2 pos, string text) {
            sb.DrawString(arial20, text, pos, Color.White, 0.0f, Vector2.Zero, 1.0f, SpriteEffects.None, 1.0f);
        }
    }
}
