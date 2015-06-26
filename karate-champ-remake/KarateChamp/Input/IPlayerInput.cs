using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace KarateChamp.Input {

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
        Character.State GetMove(Modifier modifier, bool flipped);
        void DrawDebug(SpriteBatch sb);
    }
}
