using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace KarateChamp {
    public class Scoreboard {
        public int[] Score { get; private set; }
        public MainGame game;
        Texture2D grayScore;
        Texture2D yellowScore;
        Texture2D[] currenttextures = new Texture2D[3];
        int[] showScore = new int[4];

        public Scoreboard(MainGame game) {
            this.game = game;
            Score = new int[2];
            Score[0] = 0;
            Score[1] = 0;
            grayScore = game.Content.Load<Texture2D>("GUI/Score Slot");
            yellowScore = game.Content.Load<Texture2D>("GUI/Score Point");
        }

        public void AddScore(string name, int score, CharacterState attackState) {
            if (name == "p1")
                this.Score[0] += score;
            else
                this.Score[1] += score;
            System.Diagnostics.Debug.WriteLine("Score!");
        }

        public void Draw(SpriteBatch sb) {
            Vector2[] p1ScorePosition = new Vector2[3];
            p1ScorePosition[0] = new Vector2(game.graphics.PreferredBackBufferWidth * (0.075f), game.graphics.PreferredBackBufferHeight * (0.083f + 0.030f));
            p1ScorePosition[1] = new Vector2(game.graphics.PreferredBackBufferWidth * (0.075f), game.graphics.PreferredBackBufferHeight * 0.083f);
            p1ScorePosition[2] = new Vector2(game.graphics.PreferredBackBufferWidth * (0.075f - 0.033f), game.graphics.PreferredBackBufferHeight * 0.082f);
            Vector2[] p2ScorePosition = new Vector2[3];
            p2ScorePosition[0] = new Vector2(game.graphics.PreferredBackBufferWidth * (0.075f + 0.135f), game.graphics.PreferredBackBufferHeight * (0.083f + 0.030f));
            p2ScorePosition[1] = new Vector2(game.graphics.PreferredBackBufferWidth * (0.075f + 0.135f), game.graphics.PreferredBackBufferHeight * 0.083f);
            p2ScorePosition[2] = new Vector2(game.graphics.PreferredBackBufferWidth * (0.075f + 0.033f + 0.135f), game.graphics.PreferredBackBufferHeight * 0.082f);

            sb.Begin(SpriteSortMode.Deferred, BlendState.AlphaBlend, SamplerState.PointClamp, null, null, null, null);
            //p1
            currenttextures = GetTexture(Score[0]);
            for (int i = 0; i < currenttextures.Length; i++) {
                sb.Draw(currenttextures[i], p1ScorePosition[i], null, null, new Vector2(currenttextures[i].Width * 0.5f, currenttextures[i].Height * 0.5f), 0f, Vector2.One, Color.White, SpriteEffects.None, 0f);
            }
            //p2
            currenttextures = GetTexture(Score[1]);
            for (int i = 0; i < currenttextures.Length; i++) {
                sb.Draw(currenttextures[i], p2ScorePosition[i], null, null, new Vector2(currenttextures[i].Width * 0.5f, currenttextures[i].Height * 0.5f), 0f, Vector2.One, Color.White, SpriteEffects.None, 0f);
            }
            sb.End();
        }

        Texture2D[] GetTexture(int totalScore) {
            Texture2D[] textures = new Texture2D[3];
            switch (totalScore) {
                case 0:
                    textures[0] = grayScore;
                    textures[1] = grayScore;
                    textures[2] = grayScore;
                    break;
                case 1:
                    textures[0] = yellowScore;
                    textures[1] = grayScore;
                    textures[2] = grayScore;
                    break;
                case 2:
                    textures[0] = grayScore;
                    textures[1] = yellowScore;
                    textures[2] = grayScore;
                    break;
                case 3:
                    textures[0] = yellowScore;
                    textures[1] = yellowScore;
                    textures[2] = grayScore;
                    break;
                case 4:
                    textures[0] = grayScore;
                    textures[1] = yellowScore;
                    textures[2] = yellowScore;
                    break;
                default:
                    break;
            }
            return textures;
        }
    }
}
