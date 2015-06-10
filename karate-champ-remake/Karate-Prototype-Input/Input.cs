using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;

namespace Karate_Prototype_Input {
    class Input {
        public enum Move {
            WalkRigth,           // LJ: Right          RJ: None
            WalkLeft,            // LJ: Left           RJ: None
            FrontKick,           // LJ: None           RJ: Right
            //ReversePunch,        // LJ: None           RJ: Right
            ForwardsJump,        // LJ: Up             RJ: Down
            BackwardsJump,       // LJ: Up             RJ: Up
            LowKick,             // LJ: None           RJ: Down
            RoundKick,           // LJ: None           RJ: Up 
            BackKick,            // LJ: None           RJ: Left 
            LungePunch,          // LJ: Left or Right  RJ: Up
            BackRoundKick,       // LJ: Left           RJ: Right 
            FootSweep,           // LJ: Down           RJ: Down or Right
            DuckingReversePunch, // LJ: Down           RJ: Up
            JumpingSideKick,     // LJ: Up             RJ: Left 
            JumpingBackKick,     // LJ: Up             RJ: Left 
            None
        }

        Move lastMove;
        KeyboardState lastState;
        Tuple<Keys, Keys> lastInputState;

        Dictionary<Tuple<Keys, Keys>, Move> moveDictionary;

        public Input() {
            moveDictionary = new Dictionary<Tuple<Keys, Keys>, Move>()
            {
                { new Tuple<Keys,Keys>(Keys.Right, Keys.None ), Move.WalkRigth},
                { new Tuple<Keys,Keys>(Keys.Left,  Keys.None ), Move.WalkLeft},
                { new Tuple<Keys,Keys>(Keys.None,  Keys.Right), Move.FrontKick},
                { new Tuple<Keys,Keys>(Keys.Up,    Keys.Down ), Move.ForwardsJump},
                { new Tuple<Keys,Keys>(Keys.Up,    Keys.Up   ), Move.BackwardsJump},
                { new Tuple<Keys,Keys>(Keys.None,  Keys.Down ), Move.LowKick},
                { new Tuple<Keys,Keys>(Keys.None,  Keys.Up   ), Move.RoundKick},
                { new Tuple<Keys,Keys>(Keys.None,  Keys.Left ), Move.BackKick},
                { new Tuple<Keys,Keys>(Keys.Left,  Keys.Up   ), Move.LungePunch},
                { new Tuple<Keys,Keys>(Keys.Right, Keys.Up   ), Move.LungePunch},
                { new Tuple<Keys,Keys>(Keys.Left,  Keys.Right), Move.BackRoundKick},
                { new Tuple<Keys,Keys>(Keys.Down,  Keys.Down ), Move.FootSweep},
                { new Tuple<Keys,Keys>(Keys.Down,  Keys.Right), Move.FootSweep},
                { new Tuple<Keys,Keys>(Keys.Down,  Keys.Up   ), Move.DuckingReversePunch},
                { new Tuple<Keys,Keys>(Keys.Up  ,  Keys.Left ), Move.JumpingSideKick},
                { new Tuple<Keys,Keys>(Keys.Up  ,  Keys.Left ), Move.JumpingBackKick},
                { new Tuple<Keys,Keys>(Keys.None,  Keys.None), Move.None}
            };




        }

        public void Update(GameTime gameTime) {

        }
    }
}
