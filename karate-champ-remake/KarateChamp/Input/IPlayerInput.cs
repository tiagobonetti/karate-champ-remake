using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace KarateChamp.Input {

    using Orientation = GameObject.Orientation;
    using Move = Character.State;

    public enum State {
        None,
        Up,
        Down,
        Back,
        Front,
    }

    public enum Modifier {
        None,
        IncomingUpperAttack,
        IncomingMiddleAttack,
        CloseToOpponent
    }

    public interface IPlayerInput {
        Vector2 Position { get; set; }
        Move GetMove(Modifier modifier, Orientation orientation);
        void DrawDebug(SpriteBatch sb, Orientation orientation);
    }
}
