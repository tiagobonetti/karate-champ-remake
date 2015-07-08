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
        bool executeMoving = false;
        bool hitChecked = false;

        public Attack(CharacterState state, Animation animation, int hitFrame, BaseCharacter owner) {
            State = state;
            HitFrame = hitFrame;
            Owner = owner;
            Point rectSize = new Point(owner.uvRect.Width, owner.uvRect.Height);
            CollisionLeft = CalcCollision(MainGame.colSprite, new Rectangle(83 * hitFrame, animation.spriteRectPosition.Y, rectSize.X, rectSize.Y), Owner, false);
            CollisionRight = CalcCollision(MainGame.colSprite, new Rectangle(83 * hitFrame, animation.spriteRectPosition.Y, rectSize.X, rectSize.Y), Owner, true);
            Animation = animation;
        }

        public Attack(CharacterState state, Animation animation, int hitFrame, Rectangle collisionPosition, BaseCharacter owner) {
            State = state;
            HitFrame = hitFrame;
            Owner = owner;
            Point rectSize = new Point(owner.uvRect.Width, owner.uvRect.Height);
            CollisionLeft = CalcCollision(MainGame.colSprite, new Rectangle(83 * hitFrame, animation.spriteRectPosition.Y, rectSize.X, rectSize.Y), Owner, false);
            CollisionRight = CalcCollision(MainGame.colSprite, new Rectangle(83 * hitFrame, animation.spriteRectPosition.Y, rectSize.X, rectSize.Y), Owner, true);
            CollisionLeft.rect = collisionPosition;
            CollisionRight.rect = collisionPosition;
            Animation = animation;
        }

        public CollisionBox GetCollision() {
            if (Owner.orientation == GameObject.Orientation.Left)
                return CollisionLeft;
            else
                return CollisionRight;
        }

        public void Execute(CharacterState input, GameTime gameTime) {
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

            if (animator.PlayedToFrame && !hitChecked) {
                hitChecked = true;
                CheckIfHit(gameTime);
                DEBUG_Collision.p1AttackCollisionLeft = CollisionLeft;
                DEBUG_Collision.p1AttackCollisionRight = CollisionRight;
            }
            animator.Update();
        }

        public void ExecuteMoving(CharacterState input, GameTime gameTime, Vector2 velocityChange, BaseCharacter baseChar) {

      //      CollisionLeft.rect.Location = new Point(CollisionLeft.rect.X - (int)velocityChange.X - Owner.uvRect.Width / 2, CollisionLeft.rect.Y - 55);
       //     CollisionRight.rect = collisionPosition;

            if (State == input) {
                executeMoving = true;
            }

            if (executeMoving) {
                if (baseChar.IsGrounded())
                    baseChar.velocity = velocityChange;
                
                if (!animator.PlayedToFrame)
                    animator.PlayTo(HitFrame, Animation, Owner, gameTime);
                else
                    animator.PlayAfter(HitFrame - 1, Animation, Owner, gameTime);
            }

            if (animator.PlayedToFrame && baseChar.IsGrounded()) {
                finished = true;
                executeMoving = false;
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

        public CollisionBox CalcCollision(Texture2D sprite, Rectangle uvRect, GameObject owner, bool facingRight) {
            Point rectStartPosition = Point.Zero;
            Point rectEndPosition = Point.Zero;
            Color[] colorData = new Color[uvRect.Size.X * uvRect.Size.Y];
            sprite.GetData<Color>(0, uvRect, colorData, 0, uvRect.Size.X * uvRect.Size.Y);
            int d = 0;
            for (int i = 0; i < colorData.Length; i++) {
                if (colorData[i] == Color.Red) {
                    if (rectStartPosition == Point.Zero) {
                        rectStartPosition = new Point(i % uvRect.Size.X, ((int)Math.Ceiling((double)i / (double)uvRect.Size.X)) - 1);
                        d = i;
                    }
                    rectEndPosition = new Point(i % uvRect.Size.X, ((int)Math.Ceiling((double)i / (double)uvRect.Size.X)) - 1);
                }
            }

            Vector2 size = new Vector2(rectEndPosition.X - rectStartPosition.X, rectEndPosition.Y - rectStartPosition.Y);
            Vector2 pos;
            if (facingRight) {
                pos = owner.position + new Vector2(rectStartPosition.X, rectStartPosition.Y);
            }
            else {
                pos = owner.position + new Vector2(83 - rectStartPosition.X - size.X, rectStartPosition.Y);
            }
            return new CollisionBox(owner, pos, size);
        }
    }
}