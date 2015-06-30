using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace KarateChamp {

    using Orientation = GameObject.Orientation;

    public enum InputState {
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
        CharacterState GetMove(Modifier modifier, Orientation orientation);
        void DrawDebug(SpriteBatch sb, Orientation orientation);
    }
}
