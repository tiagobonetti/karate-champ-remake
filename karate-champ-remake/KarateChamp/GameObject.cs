using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace KarateChamp {
    public class GameObject {

        public Texture2D spriteSheet;
        public Rectangle uvRect;
        public MainGame.Tag tag;
        public string name;
        public Orientation orientation;
        public CollisionBox collision;
        public Vector2 collisionOffset;
        public Vector2 position;
        public MainGame game;

        public GameObject(Texture2D spriteSheet, MainGame.Tag tag, Vector2 position, Orientation orientation, string name, MainGame game) {
            this.game = game;
            this.name = name;
            this.spriteSheet = spriteSheet;
            this.tag = tag;
            this.position = position;
            this.orientation = orientation;
            game.sceneControl.GetScene().gameObjectList.Add(this);
        }

        public enum Orientation {
            Left,
            Right
        }

        public void Flip() {
            if (orientation == Orientation.Left)
                orientation = Orientation.Right;
            else
                orientation = Orientation.Left;
        }

        protected SpriteEffects FlipWithOrientation() {

            if (orientation == Orientation.Left)
                return SpriteEffects.FlipHorizontally;
            else
                return SpriteEffects.None;
        }

        protected void StayInsideScreen() {
            position.X = MathHelper.Clamp(position.X, -(uvRect.Width * 0.5f + 20f), (game.graphics.PreferredBackBufferWidth - 255f));
        }

        protected void UpdateCollisionPosition() {
            int i = uvRect.X / uvRect.Width;
            int j = uvRect.Y / uvRect.Height;
            Rectangle[,] collisionArray;
            if (spriteSheet.Name == "Sprites/Main Character/CharacterSpritesheet") {
                if (orientation == Orientation.Right) {
                    collisionArray = game.bodyCollisionRight;
                }
                else {
                    collisionArray = game.bodyCollisionLeft;
                }
            }
            else if (spriteSheet.Name == "Sprites/Main Character/SuperMoves") {
                if (orientation == Orientation.Right) {
                    collisionArray = game.SuperMovesBodyCollisionRight;
                }
                else {
                    collisionArray = game.SuperMovesBodyCollisionLeft;
                }
            }
            else {
                throw new Exception("Specify a new collision array here.");
            }
            collision.rect = collisionArray[i, j];
            collision.rect.X = (int)position.X + collisionArray[i, j].X;
            collision.rect.Y = (int)position.Y + collisionArray[i, j].Y;
            /*
            if (orientation == Orientation.Right) {
                collision.rect = game.bodyCollisionRight[i, j];
                collision.rect.X = (int)position.X + game.bodyCollisionRight[i, j].X;
                collision.rect.Y = (int)position.Y + game.bodyCollisionRight[i, j].Y;
            }
            else {
                collision.rect = game.bodyCollisionLeft[i, j];
                collision.rect.X = (int)position.X + game.bodyCollisionLeft[i, j].X;
                collision.rect.Y = (int)position.Y + game.bodyCollisionLeft[i, j].Y;
            }*/
        }
    }
}
