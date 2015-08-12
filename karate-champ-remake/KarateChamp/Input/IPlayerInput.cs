using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace KarateChamp {

    using Orientation = GameObject.Orientation;

    public enum InputStick {
        None,
        Up,
        Down,
        Back,
        Front,
    }

    public enum Direction {
        None,
        Up,
        Down,
        Right,
        Left,
    }

    public enum Modifier {
        None,
        IncomingUpperAttack,
        IncomingMiddleAttack,
        CloseToOpponent
    }

    public interface IPlayerInput {
        Vector2 DebugPosition { get; set; }
        void Reset();
        CharacterState GetMove();
        Direction GetDirection();
        bool GetStart();
        bool GetCancel();

        void PlayerUpdate(GameTime gameTime, Modifier modifier, Orientation orientation);
        void ManagerUpdate(GameTime gameTime);

        void DrawDebug(SpriteBatch sb, Orientation orientation);
    }
}
