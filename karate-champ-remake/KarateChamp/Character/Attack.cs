using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;

namespace KarateChamp {
    class Attack {

        public Animator animator = new Animator();
        public CharacterState State { get; private set; }
        public int HitFrame { get; private set; }
        public CollisionBox CollisionLeft { get; private set; }
        public CollisionBox CollisionRight { get; private set; }
        public Animation Animation { get; private set; }
        public BaseCharacter Owner { get; private set; }
        public bool finished { get; private set; }
        bool hitChecked = false;

        Vector2 hitbox_size;
        Vector2 hitbox_offset_right;
        Vector2 hitbox_offset_left;

        public Attack(CharacterState state, Animation animation, int hitFrame, BaseCharacter owner) {
            State = state;
            HitFrame = hitFrame;
            Owner = owner;
            Animation = animation;

            // Refactored collision calc
            CalcHibox(MainGame.colSprite, hitFrame);
            UpdateCollision();
        }

        public CollisionBox GetCollision() {
            if (Owner.orientation == GameObject.Orientation.Left)
                return CollisionLeft;
            else
                return CollisionRight;
        }

        public void Execute(CharacterState input, GameTime gameTime) {
            // Now thats a workaround
            if (State == CharacterState.JumpingSideKick) {
                if (State == input && !animator.PlayedToFrame) {
                    animator.PlayTo(3, Animation, Owner, gameTime);
                }
                else if (animator.Stopped() && Owner.IsGrounded()) {
                    finished = true;
                }
                else if (!animator.Stopped() && animator.PlayedToFrame) {
                    animator.PlayAfter(3, Animation, Owner, gameTime);
                }
                else
                    animator.RollBack();
            }
            // This is the normal execute
            else {
                if (State == input) {
                    animator.PlayTo(HitFrame, Animation, Owner, gameTime);
                }
                else if (animator.Stopped()) {
                    finished = true;
                }
                else if (animator.PlayedToFrame) {
                    animator.PlayAfter(HitFrame, Animation, Owner, gameTime);
                }
                else {
                    animator.RollBack();
                }
            }

            if (animator.PlayedToFrame && !hitChecked) {
                hitChecked = true;
                CheckIfHit(gameTime);
                DEBUG_Collision.p1AttackCollisionLeft = CollisionLeft;
                DEBUG_Collision.p1AttackCollisionRight = CollisionRight;
            }
            animator.Update();
        }

        void CheckIfHit(GameTime gameTime) {
            GameObject objectHit;
            if (Owner.orientation == GameObject.Orientation.Left) {
                if (CollisionLeft.OnCollision(out objectHit)) {
                    if (objectHit == Owner.Opponent)
                        Hit(Owner.Opponent, gameTime);
                }
            }
            else {
                if (CollisionRight.OnCollision(out objectHit)) {
                    if (objectHit == Owner.Opponent)
                        Hit(Owner.Opponent, gameTime);
                }
            }
        }

        void Hit(BaseCharacter character, GameTime gameTime) {
            character.TakeHit(State, gameTime);
            System.Diagnostics.Debug.WriteLine("Hit! " + Owner.Opponent);
        }

        public void CalcHibox(Texture2D sprite, int hitFrame) {
            // Now thats a workaround
            if (State == CharacterState.JumpingSideKick) {
                hitbox_size = new Vector2(10.0f, 5.0f);
                hitbox_offset_right = new Vector2(112.0f, 0.0f);
                hitbox_offset_left = new Vector2(-0.5f * Owner.uvRect.Width, 0.0f);
            }
            // This is the normal hitbox calc
            else {
                Point rectSize = new Point(Owner.uvRect.Width, Owner.uvRect.Height);
                Rectangle uvRect = new Rectangle(83 * hitFrame, Animation.spriteRectPosition.Y, rectSize.X, rectSize.Y);

                Point rectStartPosition = Point.Zero;
                Point rectEndPosition = Point.Zero;
                Color[] colorData = new Color[rectSize.X * rectSize.Y];
                sprite.GetData<Color>(0, uvRect, colorData, 0, rectSize.X * rectSize.Y);
                int d = 0;
                for (int i = 0; i < colorData.Length; i++) {
                    if (colorData[i] == Color.Red) {
                        if (rectStartPosition == Point.Zero) {
                            rectStartPosition = new Point(i % rectSize.X, ((int)Math.Ceiling((double)i / (double)rectSize.X)) - 1);
                            d = i;
                        }
                        rectEndPosition = new Point(i % rectSize.X, ((int)Math.Ceiling((double)i / (double)rectSize.X)) - 1);
                    }
                }
                hitbox_size = new Vector2(rectEndPosition.X - rectStartPosition.X, rectEndPosition.Y - rectStartPosition.Y);
                hitbox_offset_right = new Vector2(rectStartPosition.X, rectStartPosition.Y);
                hitbox_offset_left = new Vector2(83 - rectStartPosition.X - hitbox_size.X, rectStartPosition.Y);
            }
        }

        void UpdateCollision() {
            CollisionLeft = new CollisionBox(Owner, Owner.position + hitbox_offset_left, hitbox_size);
            CollisionRight = new CollisionBox(Owner, Owner.position + hitbox_offset_right, hitbox_size);
        }
    }
}