using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;

namespace KarateChamp {

    public enum Location {
        Upper,
        Middle,
        Lower
    }

    class Attack {
        public Animator animator = new Animator();
        public CharacterState State { get; private set; }

        public CollisionBox CollisionLeft { get; private set; }
        public CollisionBox CollisionRight { get; private set; }
        public Animation Animation { get; private set; }
        public BaseCharacter Owner { get; private set; }
        public bool Locked { get; private set; }
        public Location HitLocation { get; private set; }

        int lockFrame;
        int HitFrame;
        bool hitChecked = false;

        bool onHold = false;
        bool holdable = true;

        Vector2 hitbox_size;
        Vector2 hitbox_offset_right;
        Vector2 hitbox_offset_left;

        public Attack(CharacterState state, Animation animation, int hitFrame, Location hitLocation, BaseCharacter owner) {
            State = state;
            HitFrame = hitFrame;
            Owner = owner;
            Animation = animation;
            HitLocation = hitLocation;

            if (state == CharacterState.JumpingSideKick) {
                lockFrame = 2;
                holdable = false;
            }
            else {
                lockFrame = hitFrame;
            }
            Texture2D colisionSheet = Owner.game.Content.Load<Texture2D>("KarateChampCollision");
            CalcHibox(colisionSheet, hitFrame);
        }

        public CollisionBox GetCollision() {
            if (Owner.orientation == GameObject.Orientation.Left)
                return CollisionLeft;
            else
                return CollisionRight;
        }

        public void Start(GameTime gameTime) {
            animator.Play(Animation, Owner, gameTime);
            UpdateCollision();
            hitChecked = false;
        }

        public void Execute(CharacterState input, GameTime gameTime) {
            switch (animator.state) {
                //Animation is running normally
                case Animator.State.Play:
                    // FrameIndex counting and hit/lock are insane double test it
                    if (animator.FrameIndex <= lockFrame) {
                        //Animation is unlocked whe must be sure player still inputting the attack
                        if (input != State) {
                            // Player is rolling back the attack
                            animator.RollBack();
                        }
                    }
                    else {
                        // Animation is now locked and will run to the end
                       Locked = true;
                    }
                    // If we are on the hit frame for the first time aplly hit detection
                    if (!hitChecked && animator.FrameIndex > HitFrame) {
                        CheckIfHit(gameTime);
                        hitChecked = true;
                        // When the attack hit animation is put on hold if holdable
                        onHold = holdable;
                        DEBUG_Collision.p1AttackCollisionLeft = CollisionLeft;
                        DEBUG_Collision.p1AttackCollisionRight = CollisionRight;
                    }

                    // If player is on hold player must change the input to let the attack go
                    if (onHold) {
                        if (input == State) {
                            // This is a workaround that will hold this frame
                            animator.elapsedTime = 0.0f;
                        }
                        else {
                            onHold = false;
                        }
                    }
                    break;
                case Animator.State.RollBack:
                    // Player is rolling back the attack but he may change the input yet again
                    if (input == State) {
                        // Player is reverting to attacking again
                        // This is a workaround for reverting to play state
                        animator.state = Animator.State.Play;
                        animator.elapsedTime = 0.0f;
                    }
                    break;
                case Animator.State.Stop:
                    // Animation has ended maybe rolling all the way or back
                    // Before the attack is unlocked player must be on the ground
                    if (Owner.IsGrounded()) {
                        Locked = false;
                    }
                    break;
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
            if (character.TakeHit(HitLocation, gameTime)) {
                Owner.game.sceneControl.fight.ScoreThisRound(gameTime, Owner.name, State);
                System.Diagnostics.Debug.WriteLine("Hit! " + Owner.Opponent);
            }
        }

        public void CalcHibox(Texture2D sprite, int hitFrame) {
            // Now thats a workaround
            if (State == CharacterState.JumpingSideKick) {
                hitbox_size = Owner.ScaleAdjust(new Vector2(7.0f, 5.0f));
                hitbox_offset_right = Owner.ScaleAdjust(new Vector2(105.0f, 5f));
                hitbox_offset_left = Owner.ScaleAdjust(new Vector2(-0.35f * Owner.uvRect.Width, 5f));
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
                hitbox_offset_right = Owner.ScaleAdjust(new Vector2(rectStartPosition.X, rectStartPosition.Y));
                hitbox_offset_left = Owner.ScaleAdjust(new Vector2(82 - rectStartPosition.X - hitbox_size.X, rectStartPosition.Y));
                hitbox_size = Owner.ScaleAdjust(hitbox_size);
            }
        }

        void UpdateCollision() {
            CollisionLeft = new CollisionBox(Owner, Owner.position + hitbox_offset_left, hitbox_size);
            CollisionRight = new CollisionBox(Owner, Owner.position + hitbox_offset_right, hitbox_size);
        }
    }
}