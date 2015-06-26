using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using KarateChamp.Collision;

namespace KarateChamp.Character {
    class PlayerCharacter : BaseCharacter {
        public Input.IPlayerInput PlayerInput { get; set; }

        public PlayerCharacter(Texture2D[] spriteList, MainGame.Tag tag, Vector2 position, Orientation orientation) {
            this.PlayerInput = new Input.GamePadInput(PlayerIndex.One);
            this.spriteList = spriteList;
            this.sprite = spriteList[0];
            this.tag = tag;
            this.position = position;
            this.orientation = orientation;
            collision = new CollisionBox(this, position, new Vector2(sprite.Width - 15, sprite.Height + 25));

            DEBUG_Collision.bodyCollisionList.Add(collision);
            MainGame.gameObjectList.Add(this);
        }

        public void Update(GameTime gameTime) {

            Control(gameTime);
            ApplyGravity();
            BaseUpdate(gameTime);
        }

        public void Draw(SpriteBatch spriteBatch) {
            Vector2 origin = new Vector2(sprite.Width * 0.5f, sprite.Height * 0.5f);

            spriteBatch.Begin(SpriteSortMode.Deferred, BlendState.AlphaBlend, SamplerState.PointClamp, null, null, null, null);
            PlayerInput.DrawDebug(spriteBatch);
            spriteBatch.Draw(sprite, position, null, null, origin, 0f, Vector2.One * 1.5f, Color.White, FlipWithOrientation(), 0f);
            spriteBatch.End();
        }

        void Control(GameTime gameTime) {
            State move = PlayerInput.GetMove(Input.Modifier.None, false);
            if (IsGrounded()) {
                switch (move) {
                    case State.Forward:
                        velocity.X = speed_Walk;
                        break;
                    case State.Withdraw:
                        velocity.X = -speed_Walk;
                        break;
                    case State.ForwardSomersault:
                        JumpForward();
                        if (sprite == MainGame.white_JumpForward.Sprites[2]) {
                            velocity.X = speed_Walk;
                            position.Y -= 2f;
                            velocity.Y = -speed_Jump;
                        }
                        break;
                    case State.FrontKick:
                    case State.MiddleReversePunch:
                        Attack_PunchShort(gameTime);
                        break;
                    case State.RoundKick:
                        Attack_KickRound(gameTime);
                        break;
                    case State.Idle:
                    default:
                        velocity.X = 0f;
                        break;
                }
            }
            position += velocity * (float)gameTime.ElapsedGameTime.TotalSeconds;
        }
    }
}
