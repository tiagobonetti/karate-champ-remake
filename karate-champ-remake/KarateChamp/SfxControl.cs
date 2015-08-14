using Microsoft.Xna.Framework.Audio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace KarateChamp {
    public class SfxControl {

        public SoundEffect sfxTakeHitHigh;
        public SoundEffect sfxTakeHitLow;
        public SoundEffect sfxHadouken;
        public SoundEffect sfxTatsumaki;
        public SoundEffect sfxGuard;
        public SoundEffect sfxPunchHigh;
        public SoundEffect sfxPunchMid;
        public SoundEffect sfxPunchLow;
        public SoundEffect sfxKickHigh;
        public SoundEffect sfxKickMid;
        public SoundEffect sfxKickLow;
        public SoundEffect sfxVoice1;
        public SoundEffect sfxVoice2;
        public SoundEffect sfxVoice3;
        public SoundEffect sfxVoice4;
        public SoundEffect sfxVoice5;
        public SoundEffect sfxVoice6;

        public SoundEffect sfxClassicBegin;
        public SoundEffect sfxClassicFall;
        public SoundEffect sfxClassicFullPoint;
        public SoundEffect sfxClassicHit;
        public SoundEffect sfxClassicVoice1;
        public SoundEffect sfxClassicVoice2;
        public SoundEffect sfxClassicStop;
        public SoundEffect sfxClassicJudge;

        SoundEffect bgmCharacterSelect;
        public SoundEffectInstance bgmCharSelect;
        public SoundEffectInstance bgmLondonMarch;

        MainGame game;

        public SfxControl(MainGame game) {
            this.game = game;
            SoundEffect.MasterVolume = 1f;

            sfxTakeHitHigh = game.Content.Load<SoundEffect>("Audio/Sfx/Last Hit");
            sfxGuard = game.Content.Load<SoundEffect>("Audio/Sfx/Guard");
            sfxHadouken = game.Content.Load<SoundEffect>("Audio/Sfx/hadouken");
            sfxPunchHigh = game.Content.Load<SoundEffect>("Audio/Sfx/Punch High");
            sfxPunchMid = game.Content.Load<SoundEffect>("Audio/Sfx/Punch Mid");
            sfxPunchLow = game.Content.Load<SoundEffect>("Audio/Sfx/Punch Low");
            sfxKickHigh = game.Content.Load<SoundEffect>("Audio/Sfx/Kick High");
            sfxKickMid = game.Content.Load<SoundEffect>("Audio/Sfx/Kick Mid");
            sfxKickLow = game.Content.Load<SoundEffect>("Audio/Sfx/Kick Low");
            sfxTatsumaki = game.Content.Load<SoundEffect>("Audio/Sfx/Tatsumaki");
            sfxVoice1 = game.Content.Load<SoundEffect>("Audio/Sfx/Voice1");
            sfxVoice2 = game.Content.Load<SoundEffect>("Audio/Sfx/Voice2");
            sfxVoice3 = game.Content.Load<SoundEffect>("Audio/Sfx/Voice3");
            sfxVoice4 = game.Content.Load<SoundEffect>("Audio/Sfx/Voice4");
            sfxVoice5 = game.Content.Load<SoundEffect>("Audio/Sfx/Voice5");
            sfxVoice6 = game.Content.Load<SoundEffect>("Audio/Sfx/Voice6");

            sfxClassicBegin = game.Content.Load<SoundEffect>("Audio/Sfx/Classic/Begin");
            sfxClassicFall = game.Content.Load<SoundEffect>("Audio/Sfx/Classic/Fall");
            sfxClassicFullPoint = game.Content.Load<SoundEffect>("Audio/Sfx/Classic/Full Point");
            sfxClassicHit = game.Content.Load<SoundEffect>("Audio/Sfx/Classic/Hit");
            sfxClassicVoice1 = game.Content.Load<SoundEffect>("Audio/Sfx/Classic/VoiceClassic1");
            sfxClassicVoice2 = game.Content.Load<SoundEffect>("Audio/Sfx/Classic/VoiceClassic2");
            sfxClassicStop = game.Content.Load<SoundEffect>("Audio/Sfx/Classic/Stop");
            sfxClassicJudge = game.Content.Load<SoundEffect>("Audio/Sfx/Classic/Judge");

            bgmCharacterSelect = game.Content.Load<SoundEffect>("Audio/Bgm/Character_Select");
            bgmCharSelect = bgmCharacterSelect.CreateInstance();
        }

        public void PlaySfx(CharacterState state) {
            if (game.sceneControl.currentScene == SceneType.FightTurbo ||
                game.sceneControl.currentScene == SceneType.CharacterSelect) {
                PlayTurboSfx(state);
            }
            else {
                PlayClassicSfx(state);
            }
        }

        public void PlayHitSfx(){
            if (game.sceneControl.currentScene == SceneType.FightTurbo) {
                sfxTakeHitHigh.Play();
            }
            else {
                sfxClassicHit.Play();
            }
        }

        void PlayTurboSfx(CharacterState state) {
            switch (state) {
                default:
                case CharacterState.DuckingReversePunch:
                case CharacterState.MiddleReversePunch:
                    sfxPunchLow.Play();
                    break;
                case CharacterState.UpperLungePunch:
                case CharacterState.UpperPunch:
                case CharacterState.MiddleLungePunch:
                    sfxPunchHigh.Play();
                    break;

                case CharacterState.LowKick:
                case CharacterState.FrontFootSweep:
                case CharacterState.BackFootSweep:
                case CharacterState.FrontKick:
                case CharacterState.BackKick:
                case CharacterState.RoundKick:
                    sfxKickMid.Play();
                    break;

                case CharacterState.Idle:
                case CharacterState.ChangeDirection:
                case CharacterState.Forward:
                case CharacterState.Withdraw:
                case CharacterState.Squat:
                case CharacterState.Fall:
                    break;

                case CharacterState.Jump:
                case CharacterState.ForwardSomersault:
                case CharacterState.BackwardSomersault:
                    Random rd = new Random();
                    int val = rd.Next(2);
                    System.Diagnostics.Debug.WriteLine("rd " + val);
                    if (val == 1) {
                        sfxVoice2.Play();
                    }
                    else {
                        sfxVoice3.Play();
                    }
                    break;

                case CharacterState.JumpingBackKick:
                case CharacterState.BackRoundKick:
                    sfxVoice1.Play();
                    sfxKickHigh.Play(0.7f, 0f, 0f);
                    break;

                case CharacterState.JumpingSideKick:
                    sfxVoice1.Play();
                    sfxKickHigh.Play(0.7f, 0f, 0f);
                    break;

                case CharacterState.Hadouken:
                    sfxHadouken.Play();
                    break;

                case CharacterState.Tatsumaki:
                    sfxKickHigh.Play();
                    break;

                case CharacterState.UpperBlock:
                case CharacterState.MiddleBlock:
                    sfxGuard.Play();
                    break;
            }
        }

        void PlayClassicSfx(CharacterState state) {
            switch (state) {
                default:
                case CharacterState.DuckingReversePunch:
                case CharacterState.MiddleReversePunch:
                case CharacterState.UpperLungePunch:
                case CharacterState.UpperPunch:
                case CharacterState.MiddleLungePunch:
                case CharacterState.LowKick:
                case CharacterState.FrontFootSweep:
                case CharacterState.BackFootSweep:
                case CharacterState.FrontKick:
                case CharacterState.BackKick:
                case CharacterState.RoundKick:
                case CharacterState.JumpingSideKick:
                case CharacterState.JumpingBackKick:
                case CharacterState.BackRoundKick:
                    Random rd = new Random();
                    int val = rd.Next(2);
                    System.Diagnostics.Debug.WriteLine("rd " + val);
                    if (val == 1) {
                        sfxClassicVoice1.Play();
                    }
                    else {
                        sfxClassicVoice2.Play();
                    }
                    break;

                case CharacterState.Fall:
                    sfxClassicFall.Play();
                    break;

                case CharacterState.Idle:
                case CharacterState.ChangeDirection:
                case CharacterState.Forward:
                case CharacterState.Withdraw:
                case CharacterState.Squat:
                case CharacterState.ForwardSomersault:
                case CharacterState.BackwardSomersault:
                case CharacterState.UpperBlock:
                case CharacterState.MiddleBlock:
                case CharacterState.Jump:
                    break;
            }
        }
    }
}
