using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Xna.Framework.Input;
using KarateChamp.Character;

namespace KarateChamp.Input {
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
        public BaseCharacter.State GetMove(BaseInput.Modifier modifier, bool flipped) {
            KeyboardState state = Keyboard.GetState();
            var pressed = Keyboard.GetState().GetPressedKeys().ToList();
            var pressed_wasd = pressed.Intersect(wasd);
            var pressed_arrows = pressed.Intersect(arrows);

            Keys left = (pressed_wasd.Count() == 1) ? pressed_wasd.First() : Keys.None;
            Keys right = (pressed_arrows.Count() == 1) ? pressed_arrows.First() : Keys.None;

            return InputDictionary.GetMove(left.ToInput(flipped), right.ToInput(flipped), modifier);
        }
    }
}
