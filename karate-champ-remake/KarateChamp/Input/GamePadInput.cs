using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;

namespace KarateChamp.Input {
    class GamePadInput : IPlayerInput {
        public Vector2 Position { get; set; }
        const float threshold = 0.75f;
        PlayerIndex player;

        public GamePadInput(PlayerIndex player = PlayerIndex.One) {
            this.Position = Vector2.Zero;
            this.player = player;
        }
        public Character.State GetMove(Modifier modifier, bool flipped) {
            GamePadState state = GamePad.GetState(PlayerIndex.One, GamePadDeadZone.IndependentAxes);
            State left = GetStick(state.ThumbSticks.Left, flipped);
            State right = GetStick(state.ThumbSticks.Right, flipped);
            return InputDictionary.GetMove(left, right, modifier);
        }
        public State GetStick(Vector2 ThumbStick, bool flipped) {
            if (ThumbStick.X > threshold) {
                return (flipped) ? State.Back : State.Front;
            }
            else if (ThumbStick.X < -threshold) {
                return (flipped) ? State.Front : State.Back;
            }
            else if (ThumbStick.Y > threshold) {
                return State.Up;
            }
            else if (ThumbStick.Y < -threshold) {
                return State.Down;
            }
            else {
                return State.None;
            }
        }
        public void DrawDebug(SpriteBatch sb) {
            GamePadState state = GamePad.GetState(player, GamePadDeadZone.IndependentAxes);
            Vector2 pos = Position;
            State left = GetStick(state.ThumbSticks.Left, false);
            State right = GetStick(state.ThumbSticks.Right, false);

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
