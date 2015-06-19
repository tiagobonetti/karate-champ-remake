using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace KarateChamp.Input {
    public class BaseInput {
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
    }
}
