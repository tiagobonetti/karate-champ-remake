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
        WalkRigth,           // LJ: Right          RJ: None
        WalkLeft,            // LJ: Left           RJ: None
        FrontKick,           // LJ: None           RJ: Right
        //ReversePunch,      // LJ: None           RJ: Right
        ForwardsJump,        // LJ: Up             RJ: Down
        BackwardsJump,       // LJ: Up             RJ: Up
        LowKick,             // LJ: None           RJ: Down
        RoundKick,           // LJ: None           RJ: Up 
        BackKick,            // LJ: None           RJ: Left 
        LungePunch,          // LJ: Left or Right  RJ: Up
        BackRoundKick,       // LJ: Left           RJ: Right 
        FootSweep,           // LJ: Down           RJ: Down or Right
        DuckingReversePunch, // LJ: Down           RJ: Up
        JumpingSideKick,     // LJ: Up             RJ: Right 
        JumpingBackKick,     // LJ: Up             RJ: Left 
        None
    }

    class Input {
        SpriteFont arial20;
        Move lastMove;
        KeyboardState lastState;
        Tuple<Keys, Keys> lastInputState;
        Dictionary<Tuple<Keys, Keys>, Move> moveDictionary;

        public Input() {
            lastMove = Move.None;
            lastState = Keyboard.GetState();
            lastInputState = new Tuple<Keys, Keys>(Keys.None, Keys.None);
            moveDictionary = new Dictionary<Tuple<Keys, Keys>, Move>()
            {
                { new Tuple<Keys,Keys>(Keys.D,    Keys.None ), Move.WalkRigth          },
                { new Tuple<Keys,Keys>(Keys.A,    Keys.None ), Move.WalkLeft           },
                { new Tuple<Keys,Keys>(Keys.None, Keys.Right), Move.FrontKick          },
                { new Tuple<Keys,Keys>(Keys.W,    Keys.Down ), Move.ForwardsJump       },
                { new Tuple<Keys,Keys>(Keys.W,    Keys.Up   ), Move.BackwardsJump      },
                { new Tuple<Keys,Keys>(Keys.None, Keys.Down ), Move.LowKick            },
                { new Tuple<Keys,Keys>(Keys.None, Keys.Up   ), Move.RoundKick          },
                { new Tuple<Keys,Keys>(Keys.None, Keys.Left ), Move.BackKick           },
                { new Tuple<Keys,Keys>(Keys.A,    Keys.Up   ), Move.LungePunch         },
                { new Tuple<Keys,Keys>(Keys.D,    Keys.Up   ), Move.LungePunch         },
                { new Tuple<Keys,Keys>(Keys.A,    Keys.Right), Move.BackRoundKick      },
                { new Tuple<Keys,Keys>(Keys.S,    Keys.Down ), Move.FootSweep          },
                { new Tuple<Keys,Keys>(Keys.S,    Keys.Right), Move.FootSweep          },
                { new Tuple<Keys,Keys>(Keys.S,    Keys.Up   ), Move.DuckingReversePunch},
                { new Tuple<Keys,Keys>(Keys.W,    Keys.Right), Move.JumpingSideKick    },
                { new Tuple<Keys,Keys>(Keys.W,    Keys.Left ), Move.JumpingBackKick    },
                { new Tuple<Keys,Keys>(Keys.None, Keys.None ), Move.None               }
            };
        }

        public void LoadContent(ContentManager content) {
            arial20 = content.Load<SpriteFont>("Arial20");
        }

        public void Update(GameTime gameTime) {
            KeyboardState state = Keyboard.GetState();
            List<Keys> wasd = new List<Keys>();
            List<Keys> arrows = new List<Keys>();
            Keys leftJoystick = lastInputState.Item1;
            Keys rightJoystick = lastInputState.Item2;

            if (state.IsKeyDown(Keys.W)) { wasd.Add(Keys.W); }
            if (state.IsKeyDown(Keys.A)) { wasd.Add(Keys.A); }
            if (state.IsKeyDown(Keys.S)) { wasd.Add(Keys.S); }
            if (state.IsKeyDown(Keys.D)) { wasd.Add(Keys.D); }
            if (wasd.Count == 1) { leftJoystick = wasd[0]; }
            else if (wasd.Count == 0) { leftJoystick = Keys.None; }

            if (state.IsKeyDown(Keys.Up)) { arrows.Add(Keys.Up); }
            if (state.IsKeyDown(Keys.Left)) { arrows.Add(Keys.Left); }
            if (state.IsKeyDown(Keys.Down)) { arrows.Add(Keys.Down); }
            if (state.IsKeyDown(Keys.Right)) { arrows.Add(Keys.Right); }
            if (arrows.Count == 1) { rightJoystick = arrows[0]; }
            else if (arrows.Count == 0) { rightJoystick = Keys.None; }

            Tuple<Keys, Keys> inputState = new Tuple<Keys, Keys>(leftJoystick, rightJoystick);
            if (moveDictionary.ContainsKey(inputState)) {
                lastMove = moveDictionary[inputState];
                lastInputState = inputState;
            }
            else {
                lastMove = Move.None;
            }
        }

        public void Draw(SpriteBatch sb) {
            DrawText(sb, new Vector2(100.0f, 100.0f), lastMove.ToString());
        }

        public void DrawText(SpriteBatch sb, Vector2 pos, string text) {
            sb.DrawString(arial20, text, pos, Color.White, 0.0f, Vector2.Zero, 1.0f, SpriteEffects.None, 1.0f);
        }

    }
}
