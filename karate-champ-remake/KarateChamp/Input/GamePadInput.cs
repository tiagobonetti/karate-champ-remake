using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;

namespace KarateChamp {

    using Orientation = GameObject.Orientation;

    class GamePadInput : IPlayerInput {
        public Vector2 Position { get; set; }
        const float threshold = 0.75f;
        PlayerIndex player;

        public GamePadInput(PlayerIndex player = PlayerIndex.One) {
            this.Position = Vector2.Zero;
            this.player = player;
        }
        public CharacterState GetMove(Modifier modifier, Orientation flipped) {
            GamePadState state = GamePad.GetState(PlayerIndex.One, GamePadDeadZone.IndependentAxes);
            InputState left = GetStick(state.ThumbSticks.Left, flipped);
            InputState right = GetStick(state.ThumbSticks.Right, flipped);
            return InputDictionary.GetMove(left, right, modifier);
        }
        public InputState GetStick(Vector2 ThumbStick, Orientation flipped) {
            if (ThumbStick.X > threshold) {
                return (flipped == Orientation.Right) ? InputState.Back : InputState.Front;
            }
            else if (ThumbStick.X < -threshold) {
                return (flipped == Orientation.Left) ? InputState.Back : InputState.Front;
            }
            else if (ThumbStick.Y > threshold) {
                return InputState.Up;
            }
            else if (ThumbStick.Y < -threshold) {
                return InputState.Down;
            }
            else {
                return InputState.None;
            }
        }
        public void DrawDebug(SpriteBatch sb, Orientation orientation) {
            GamePadState state = GamePad.GetState(player, GamePadDeadZone.IndependentAxes);
            Vector2 pos = Position;
            InputState left = GetStick(state.ThumbSticks.Left, orientation);
            InputState right = GetStick(state.ThumbSticks.Right, orientation);

            Debug.DrawText(sb, pos, "P " + player.ToString() + " : " + state.IsConnected.ToString());
            pos.Y += 30.0f;
            Debug.DrawText(sb, pos, "Lx: " + state.ThumbSticks.Left.X.ToString());
            pos.Y += 25.0f;
            Debug.DrawText(sb, pos, "Ly: " + state.ThumbSticks.Left.Y.ToString());
            pos.Y += 25.0f;
            Debug.DrawText(sb, pos, "Rx: " + state.ThumbSticks.Right.X.ToString());
            pos.Y += 25.0f;
            Debug.DrawText(sb, pos, "Ry: " + state.ThumbSticks.Right.Y.ToString());
            pos.Y += 30.0f;
            Debug.DrawText(sb, pos, "L: " + left.ToString());
            pos.Y += 25.0f;
            Debug.DrawText(sb, pos, "R: " + right.ToString());
            pos.Y += 30.0f;
            Debug.DrawText(sb, pos, "Move: " + InputDictionary.GetMove(left, right, Modifier.None).ToString());
        }
    }
}
