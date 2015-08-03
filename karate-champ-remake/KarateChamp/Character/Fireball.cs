using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace KarateChamp {
    public class Fireball : GameObject {

        public const float speed = 250f;
        public Vector2 velocity;
        public Location HitLocation { get; private set; }
        public CharacterState characterState { get; private set; }
        BaseCharacter Owner { get; set; }
        Animator animator = new Animator();
        Animation alive;
        Animation dead;
        State state;

        public enum State {
            Start,
            Alive,
            Dead
        }

        public Fireball(Texture2D spriteSheet, MainGame.Tag tag, Vector2 position, Orientation orientation, string name, MainGame game, BaseCharacter owner)
            : base(spriteSheet, tag, position, orientation, name, game) {

            this.Owner = owner;
            state = State.Start;
            uvRect = new Rectangle(0, 0, 140, 53);
            HitLocation = Location.Middle;
            characterState = CharacterState.Hadouken;
            velocity = Vector2.Zero;
            alive = new Animation(new Point(uvRect.Width, uvRect.Height * 0), 7, 9, 0.1f);
            dead = new Animation(new Point(uvRect.Width, uvRect.Height * 0), 9, 12, 0.1f);
            uvRect.Location = new Point(uvRect.Width * 7, uvRect.Height * 0);
            collision = new CollisionBox(this, Vector2.One, Vector2.One);
        }

        public void EnterState(State newState, GameTime gameTime) {
            if (newState != state) {
                state = newState;
                switch (state) {
                    default:
                    case State.Alive:
                        animator.PlayLoop(alive, this, gameTime);
                        break;
                    case State.Dead:
                        animator.Play(dead, this, gameTime);
                        velocity = Vector2.Zero;
                        break;
                }
            }
        }

        void StateMachine(GameTime gameTime) {
            switch (state) {
                default:
                case State.Alive:
                    Movement(gameTime);
                    Kill(gameTime);
                    CheckIfHit(gameTime);
                    break;
                case State.Dead:
                    Kill(gameTime);
                    velocity = Vector2.Zero;
                    break;

            }
        }

        public void Update(GameTime gameTime) {
            if (state == State.Start)
                EnterState(State.Alive, gameTime);

            StateMachine(gameTime);
            animator.Update();
        }

        public void Draw(SpriteBatch spriteBatch) {
            Vector2 origin = new Vector2(uvRect.Width * 0.5f, uvRect.Height * 0.5f);
            spriteBatch.Begin(SpriteSortMode.Deferred, BlendState.AlphaBlend, SamplerState.PointClamp, null, null, null, null);
            spriteBatch.Draw(spriteSheet, position, null, uvRect, Vector2.One, 0f, BaseCharacter.ScaleAdjust(Vector2.One), Color.White, FlipWithOrientation(), 0f);
            spriteBatch.End();
        }

        public void Kill(GameTime gameTime) {
            if (state == State.Dead && animator.state == Animator.State.Stop) {
                Owner.fireballKillList.Add(this);
            }
            if ((position.X < -(uvRect.Width * 0.5f + 200f) || position.X > game.graphics.PreferredBackBufferWidth)) {
                EnterState(State.Dead, gameTime);
            }
        }

        protected void Movement(GameTime gameTime) {
            if (orientation == GameObject.Orientation.Right) {
                velocity.X = 1f;
            }
            else {
                velocity.X = -1f;
            }
            position += (velocity * speed) * (float)gameTime.ElapsedGameTime.TotalSeconds;
        }

        void CheckIfHit(GameTime gameTime) {
            GameObject objectHit;
            int i = uvRect.X / uvRect.Width;
            int j = uvRect.Y / uvRect.Height;

            if (Owner.orientation == GameObject.Orientation.Left) {
                collision.rect = game.SuperMovesAttackLeft[i, j];
                collision.rect.X = (int)position.X + game.SuperMovesAttackLeft[i, j].X;
                collision.rect.Y = (int)position.Y + game.SuperMovesAttackLeft[i, j].Y;
            }
            else {
                collision.rect = game.SuperMovesAttackRight[i, j];
                collision.rect.X = (int)position.X + game.SuperMovesAttackRight[i, j].X;
                collision.rect.Y = (int)position.Y + game.SuperMovesAttackRight[i, j].Y;
            }

            if (collision.OnCollision(out objectHit)) {
                if (objectHit == Owner.Opponent) {
                    EnterState(State.Dead, gameTime);
                    Hit(Owner.Opponent, gameTime);
                }
                else if (objectHit.tag == MainGame.Tag.Fireball) {
                    //    Hit(Owner.Opponent, gameTime);
                    EnterState(State.Dead, gameTime);
                }
            }
            DEBUG_Collision.p1AttackCollisionRight = collision;
        }

        void Hit(BaseCharacter character, GameTime gameTime) {
            character.TakeHit(HitLocation, Owner, characterState, gameTime);
            System.Diagnostics.Debug.WriteLine("Hit! " + Owner.Opponent + " with " + characterState);
        }
    }
}
