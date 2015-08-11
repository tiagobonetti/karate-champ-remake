;=====================================================================
;  CMD File For "angel"                                      Made By H"
;                                       Ver. 1.41           
;=====================================================================

;=====================================================================
; Definition of the Commands
;=====================================================================
;
;-| CPU Function |----------------------------------------------------

;-| Super Motions |---------------------------------------------------

[Command]
name = "Loyalty Test for the Liberalists2"
command = ~B, F, D, DF, x+y
time = 20

[Command]
name = "Loyalty Test for the Liberalists"
command = ~B, F, D, DF, x
time = 20

[Command]
name = "Loyalty Test for the Liberalists"
command = ~B, F, D, DF, y
time = 20

[Command]
name = "BLUE MONDAY PARADE or Winds Fairground"
command = ~B, F, D, DF, a+b
time = 20

[Command]
name = "The Unidentified Victim Consciousness"
command = ~B, F, D, DF, a
time = 20

[Command]
name = "The Unidentified Victim Consciousness"
command = ~B, F, D, DF, b
time = 20

;-| Special Motions |-------------------------------------------------
[Command]
name = "Red Sky of Japonesia"
command = ~F, DF, D, DB, B, a
time = 20

[Command]
name = "Red Sky of Japonesia"
command = ~F, DF, D, DB, B, b
time = 20

[Command]
name = "Beyond the Flames"
command = ~B, DB, D, DF, F, a
time = 20

[Command]
name = "Beyond the Flames"
command = ~B, DB, D, DF, F, b
time = 20

[Command]
name = "Beyond the Flames_a"
command = ~B, DB, D, DF, F, a
time = 20

[Command]
name = "Beyond the Flames_b"
command = ~B, DB, D, DF, F, b
time = 20

[Command]
name = "Ride Your Cycle"
command = ~B, DB, D, DF, F, a
time = 20

[Command]
name = "Ride Your Cycle"
command = ~B, DB, D, DF, F, b
time = 20

[Command]
name = "Mad Murderer Roulette"
command = ~B, D, DB, a

[Command]
name = "Mad Murderer Roulette"
command = ~B, D, DB, b

[Command]
name = "Repun Kamui_x" 
command = ~D, DB, B, x

[Command]
name = "Repun Kamui_y"
command = ~D, DB, B, y

[Command]
name = "A Full Moon Evening_2k1"
command = ~D, DB, B, x

[Command]
name = "A Full Moon Evening_2k1"
command = ~D, DB, B, y

[Command]
name = "Cosmic Futen Swing"
command = ~D, DF, F, x

[Command]
name = "Lost Homeland"
command = ~D, DF, F, y

[Command]
name = "Crown under the Sky"
command = ~F, F, x
time = 15

[Command]
name = "A Full Moon Evening_2k2"
command = ~F, F, y
time = 15

[Command]
name = "State of Heathess"
command = ~F, F, a
time = 15

[Command]
name = "State of Heathess"
command = ~F, F, b
time = 15

[Command]
name = "Senseless Fist"
command = ~B, F, a
time = 15

[Command]
name = "Senseless Fist"
command = ~B, F, b
time = 15

[Command]
name = "Omagatoki_F"
command = /F,y+a+b
time = 1

[Command]
name = "Omagatoki_B"
command = /B,y+a+b
time = 1

[Command]
name = "Formalist's Blue"
command = /DF, a
time = 1

[Command]
name = "Citizen Of The World"
command = /DF, b
time = 1

;-| Double Tap |------------------------------------------------------
[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10

[Command]
name = "longjump"
command = D, $U
time = 18

;-| 2/3 Button Combination |------------------------------------------
[Command]
name = "abcd"
command = x+y+a+b
time = 1

[Command]
name = "abcd"
command = c+z
time = 1

[Command]
name = "yab"
command = y+a+b
time = 1

[Command]
name = "xya"
command = x+y+a
time = 1

[Command]
name = "recovery";Required (do not remove)
command = a+x
time = 1

[Command]
name = "ab"
command = a+b
time = 1

[Command]
name = "ax"
command = a+x
time = 1

[Command]
name = "bx"
command = b+x
time = 1

[Command]
name = "by"
command = b+y
time = 1

[Command]
name = "ay"
command = a+y
time = 1

[Command]
name = "xy"
command = x+y
time = 1

;------------------- KOF Seriese only
[Command]
name = "gc_fwd"
command = a+x
time = 1

[Command]
name = "q_fwd"
command = a+x
time = 1


;-| Dir + Button |----------------------------------------------------
[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_c"
command = /F,c
time = 1

[Command]
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "fwd_z"
command = /F,z
time = 1

[Command]
name = "back_a"
command = /B,a
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_c"
command = /B,c
time = 1

[Command]
name = "back_x"
command = /B,x
time = 1

[Command]
name = "back_y"
command = /B,y
time = 1

[Command]
name = "back_z"
command = /B,z
time = 1

[Command]
name = "down_b"
command = /D,b
time = 1

[Command]
name = "downfwd_y"
command = /DF,y
time = 1

[Command]
name = "downfwd_y"
command = /DF,y
time = 1

;-----------------------------For KOF Seriese only
[Command]
name = "gc_fwd"
command = /DF, a+x
time = 1

[Command]
name = "gc_fwd"
command = /F, a+x
time = 1

[Command]
name = "gc_back"
command = /DB, a+x
time = 1

[Command]
name = "gc_back"
command = /B, a+x
time = 1

[Command]
name = "q_fwd"
command = /F, a+x
time = 1

[Command]
name = "q_back"
command = /B, a+x
time = 1

;-----------------------------AN-CHAIN CIRCLE MOVES
[Command]
name = "Bye-Bye Ryuguu"
command = /U,x
time = 1

[Command]
name = "Bye-Bye Ryuguu"
command = /U,y
time = 1

[Command]
name = "With a Lamp for the Pathway"
command = /F,a
time = 1

[Command]
name = "With a Lamp for the Pathway"
command = /F,b
time = 1

[Command]
name = "A Train to see Cherry Blossoms"
command = /D,x
time = 1

[Command]
name = "A Train to see Cherry Blossoms"
command = /D,y
time = 1

[Command]
name = "Shelter from the Storm"
command = /U,a
time = 1

[Command]
name = "Shelter from the Storm"
command = /U,b
time = 1

[Command]
name = "Buggy and Coffin"
command = /F,x
time = 1

[Command]
name = "Buggy and Coffin"
command = /F,y
time = 1

[Command]
name = "Impotent Symptom"
command = /D,a
time = 1

[Command]
name = "Impotent Symptom"
command = /D,b
time = 1

;-| Single Button |---------------------------------------------------
[Command]
name = "x"
command = x
time = 1

[Command]
name = "a"
command = a
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "s"
command = s
time = 1

;----------------------------- for add004
[Command]
name = "call-st"
command = s
time = 1

;----------------------------- KOF Seriese only
[Command]
name = "gc_fwd"
command = z
time = 1

[Command]
name = "q_fwd"
command = z
time = 1

;----------------------------- レバガチャ
[Command]
name = "random"
command = x
time = 1

[Command]
name = "random"
command = y
time = 1

[Command]
name = "random"
command = z
time = 1

[Command]
name = "random"
command = a
time = 1

[Command]
name = "random"
command = b
time = 1

[Command]
name = "random"
command = c
time = 1

[Command]
name = "random"
command = F
time = 1

[Command]
name = "random"
command = DF
time = 1

[Command]
name = "random"
command = D
time = 1

[Command]
name = "random"
command = DB
time = 1

[Command]
name = "random"
command = B
time = 1

[Command]
name = "random"
command = UB
time = 1

[Command]
name = "random"
command = U
time = 1

[Command]
name = "random"
command = UF
time = 1

;-| Hold Button |-----------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_s"
command = /s
time = 1

;-| Hold Dir |--------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup";Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

;------------------------ For KOF Series Only
[Command]
name = "holdupfwd"
command = /UF
time = 1

[Command]
name = "holdupback"
command = /UB
time = 1

;=====================================================================
; State Entry for Commands
;=====================================================================

[Statedef -1]

;=====================================================================
; キャンセル設定
;=====================================================================
;------------------------ キャンセル設定リセット
[State -1]
type = varset
trigger1 = var(40)
var(40) = 0
;------------------------ ダッシュキャンセル
[State -1]
type = varset
triggerall = RoundState = 2
trigger1 = !var(40)
trigger1 = StateNo = 100 || StateNo = 110 || (StateNo = 4100 && AnimElem = 3,> 0)
var(40) = 1
;------------------------ 特殊技キャンセル
[State -1]
type = varset
triggerall = RoundState = 2
triggerall = !var(40)
triggerall = MoveContact
trigger1  = StateNo = 200 || StateNo = 220 || StateNo = 250
trigger2  = StateNo = 400 || StateNo = 410 || StateNo = 440
trigger3  = StateNo = 600 || StateNo = 610 || StateNo = 640
var(40) = 2
;------------------------ 必殺技・超必殺技キャンセル
[State -1]
type = varset
triggerall = RoundState = 2
triggerall = !var(40)
triggerall  = MoveContact
trigger1  = StateNo = 500 || StateNo = 710 || (StateNo = 700 && AnimElem = 8,> 0)
var(40) = 3
;------------------------ どこでもキャンセル
[State -1]
type = varset
triggerall = var(30)
triggerall = RoundState = 2
triggerall = !var(40)
triggerall = var(47) && fvar(0) > 0
trigger1  = !MoveContact && MoveType = A && (StateNo = 200 || StateNo = 220 || StateNo = 250)
trigger2  = !MoveContact && MoveType = A && (StateNo = 400 || StateNo = 410 || StateNo = 440)
trigger3  = MoveType = A && (StateNo = 210 || StateNo = 230 || StateNo = 240 || StateNo = 430)
trigger4  = MoveHit && StateNo = 700 && AnimElem = 7,< 0
trigger5  = MoveHit && StateNo = [1050,1199]
trigger6  = MoveHit && StateNo = [1210,1239]
var(40) = 4

;------------------------ スーパーキャンセル
[State -1]
type = Null;varset
triggerall = RoundState = 2
trigger1 = !var(40)
var(40) = -1

;=====================================================================
; CPU Function
;=====================================================================

;=====================================================================
; Super Arts
;=====================================================================

;---------------------------------------------------------------------
; サヴァイヴァーズバンケット
[State -1]
type = VarSet
var(15) = 1
triggerall = Command = "yab"
triggerall = StateNo = 3410 
trigger1 = var(30)=0 && Power >= 1000
trigger2 = var(30)=1 && (100*life/const(data.life))<=25
trigger3 = var(30)=2 && (100*life/const(data.life))<=50 && var(30)=2 && !var(49)

[State -1]
type = VarSet
var(15) = 0
trigger1 = StateNo != 3410 

;---------------------------------------------------------------------
; ウインズ　フェアグラウンド or ブルーマンデーパレード
[State -1,BLUE MONDAY PARADE or Winds Fairground]
type = ChangeState
value = 3400
triggerall = var(48) != 1
triggerall = (Command = "The Unidentified Victim Consciousness" && var(30) = 2) || (Command = "BLUE MONDAY PARADE or Winds Fairground" && var(30) != 2)
trigger1 = Power >= 2000 && var(30)=0 && var(47)=0
trigger2 = Power >= 1000 && var(30)=1 && fvar(0) > 0
trigger3 = (Power >= 1000 ||  fvar(0) > 0) && var(30)=2
triggerall = !StateType = A && (Ctrl || (var(40)=[1,3]))

;---------------------------------------------------------------------
; ザ　アナイデンティファイド　ビクテム　コンシャスネス
[State -1,The Unidentified Victim Consciousness]
type = ChangeState
value = 3200
triggerall = Command = "The Unidentified Victim Consciousness" && var(48) != 2
trigger1 = Power >= 1000 && var(30)=0 && var(47)=0
trigger2 = (Power >= 1000 || fvar(0) > 0) && (var(30)=[1,2])
triggerall = !StateType = A && (Ctrl || (var(40)=[1,3]))

;------------------------ ロイヤリティー　テスト　フォー　ザ　リベラリスツ（MAX版）
[State -1,Loyalty Test for the Liberalists]
type = VarSet
fvar(3) = 3100
triggerall = !fvar(3) && var(47) != 1 && command = "Loyalty Test for the Liberalists2"
triggerall = (Power >= 2000 && var(30)=0 && var(47)=0) || (Power >= 1000 && fvar(0) > 0 && (var(30)=1))
trigger1 = (stateno = 1100 || stateno = 1130) && (var(48) != 1 || (var(48) = 1 && var(11) = 6))
trigger2 = (stateno = [1111,1112]) || stateno = 1120 || stateno = 1140 || stateno = 1152 || stateno = 1300 || (stateno = [1310,1311]) 
ignorehitpause = 1

;------------------------ ロイヤリティー　テスト　フォー　ザ　リベラリスツ（ノーマル版）
[State -1,Loyalty Test for the Liberalists]
type = VarSet
fvar(3) = 3000
triggerall = !fvar(3) && command = "Loyalty Test for the Liberalists"
triggerall = (Power >= 1000 && var(30)=0 && var(47)=0) || ((Power >= 1000 || fvar(0) > 0) && (var(30)=[1,2]))
trigger1 = (stateno = 1100 || stateno = 1130) && (var(48) != 1 || (var(48) = 1 && var(11) = 6))
trigger2 = (stateno = [1111,1112]) || stateno = 1120 || stateno = 1140 || stateno = 1152 || stateno = 1300 || (stateno = [1310,1311]) 
ignorehitpause = 1

;=====================================================================
; Special Arts 
;=====================================================================
;---------------------------------------------------------------------
; レッドスカイ　オブ　ヤポネシア
[State -1,Red Sky of Japonesia]
type = ChangeState
value = 1000
triggerall= Command = "Red Sky of Japonesia"
trigger1 = !StateType = A && (Ctrl || (var(40)=[1,3]))

;---------------------------------------------------------------------
; ビヨンド　ザ　フレイムス 弱
[State -1,Beyond the Flames]
type = ChangeState
value = 1060
triggerall= Command = "Beyond the Flames_a"
trigger1 = !StateType = A && (Ctrl || (var(40)=[1,3]))

;------------------------ 追加
[State -1,Beyond the Flames]
type = ChangeState
value = ifelse(fvar(3) = 0,1061,1062)
trigger1 = StateNo = 1060 && AnimElem = 4, >= 0 && P2BodyDist X <= 10
ignorehitpause = 1

;---------------------------------------------------------------------
; ビヨンド　ザ　フレイムス 強
[State -1,Beyond the Flames]
type = ChangeState
value = 1070
triggerall= Command = "Beyond the Flames_b"
trigger1 = !StateType = A && (Ctrl || (var(40)=[1,3]))

;------------------------ 追加
[State -1,Beyond the Flames]
type = ChangeState
value = 1061
trigger1 = StateNo = 1070 && AnimElem = 4, >= 0 && P2BodyDist X <= 10
ignorehitpause = 1

;---------------------------------------------------------------------
; マッドマーダールーレット
[State -1,Mad Murderer Roulette]
type = ChangeState
value = 1010
triggerall= Command = "Mad Murderer Roulette" && !StateType = A
trigger1 = Ctrl || (var(40)=[1,3])
trigger2 = var(40) = 4

;=====================================================================
; アンチェイン始動技
;=====================================================================

;---------------------------------------------------------------------
; レプンカムイ　弱
[State -1,Repun Kamui]
type = ChangeState
value = 1020
triggerall= Command = "Repun Kamui_x" && !StateType = A
trigger1 = Ctrl || (var(40)=[1,3])
trigger2 = var(40) = 4 && !var(16)

;---------------------------------------------------------------------
; レプンカムイ　強
[State -1,Repun Kamui]
type = ChangeState
value = 1030
triggerall= Command = "Repun Kamui_y" && !StateType = A
trigger1 = Ctrl || (var(40)=[1,3])
trigger2 = var(40) = 4 && !var(16)

;---------------------------------------------------------------------
; フォーマリスツ　ブルー
[State -1,Citizen Of The World]
type = ChangeState
value = 1050
triggerall= (Command = "Formalist's Blue") || (Command = "Citizen Of The World" && var(48) = 1)
trigger1 = !StateType = A && (Ctrl || (var(40)=[1,3]))

;---------------------------------------------------------------------
; シチズン　オブ　ザ　ワールド
[State -1,Citizen Of The World]
type = ChangeState
value = 1051
triggerall= Command = "Citizen Of The World"
triggerall= var(48) != 1
trigger1 = !StateType = A && (Ctrl || (var(40)=[1,3]))

;---------------------------------------------------------------------
; センスレスフィスツ
[State -1,Senseless Fist]
type = ChangeState
value = 1080
triggerall= Command = "Senseless Fist"
triggerall= var(48) != 1
trigger1 = !StateType = A && (Ctrl || (var(40)=[1,3]))

;=====================================================================
; アンチェインフィニッシュ技
;=====================================================================
;------------------------ ライド　ユア　サイクル
[State -1,Ride Your Cycle]
type = VarSet
fvar(3) = 1000
triggerall = var(48) != 2 && !fvar(3) && command = "Ride Your Cycle"
trigger1 = (stateno = 1100 || stateno = 1130) && (var(48) != 1 || (var(48) = 1 && var(11) = 6))
trigger2 = (stateno = [1111,1112]) || stateno = 1120 || stateno = 1140 || stateno = 1152 || stateno = 1300 || (stateno = [1310,1311]) 
ignorehitpause = 1
;------------------------ レッドスカイ　オブ　ヤポネシア
[State -1,Red Sky of Japonesia]
type = VarSet
fvar(3) = 1200
triggerall = var(48) != 2 && !fvar(3) && command = "Red Sky of Japonesia"
trigger1 = (stateno = 1100 || stateno = 1130) && (var(48) != 1 || (var(48) = 1 && var(11) = 6))
trigger2 = (stateno = [1111,1112]) || stateno = 1120 || stateno = 1140 || stateno = 1152 || stateno = 1300 || (stateno = [1310,1311]) 
ignorehitpause = 1
;------------------------ ア　ガーデントゥプレイ　ウィズ　ゴースツ
[State -1,Mad Murderer Roulette]
type = VarSet
fvar(3) = 1240
triggerall = var(48) != 2 && !fvar(3) && command = "Mad Murderer Roulette"
trigger1 = (stateno = 1100 || stateno = 1130) && (var(48) != 1 || (var(48) = 1 && var(11) = 6))
trigger2 = (stateno = [1111,1112]) || stateno = 1120 || stateno = 1140 || stateno = 1152 || stateno = 1300 || (stateno = [1310,1311]) 
ignorehitpause = 1
;------------------------ クラウン　アンダー　ザ　スカイ_2k1
[State -1,Crown under the Sky]
type = VarSet
fvar(3) = 1210
triggerall = !fvar(3) && var(48)=1 && (command = "Crown under the Sky" || command = "A Full Moon Evening_2k2")
trigger1 = (stateno = 1100 || stateno = 1130) && (var(48) != 1 || (var(48) = 1 && var(11) = 6))
trigger2 = (stateno = [1111,1112]) || stateno = 1120 || stateno = 1140 || stateno = 1152 || stateno = 1300 || (stateno = [1310,1311]) 
ignorehitpause = 1
;------------------------ クラウン　アンダー　ザ　スカイ_2k2
[State -1,Crown under the Sky]
type = VarSet
fvar(3) = 1210
triggerall = !fvar(3) && var(48)!=1 && command = "Crown under the Sky"
trigger1 = (stateno = 1100 || stateno = 1130) && (var(48) != 1 || (var(48) = 1 && var(11) = 6))
trigger2 = (stateno = [1111,1112]) || stateno = 1120 || stateno = 1140 || stateno = 1152 || stateno = 1300 || (stateno = [1310,1311]) 
ignorehitpause = 1
;------------------------ ア　フルムーン　イブニング_2k1
[State -1,A Full Moon Evening]
type = VarSet
fvar(3) = 1220
triggerall = !fvar(3) && var(48)=1 && command = "A Full Moon Evening_2k1"
trigger1 = (stateno = 1100 || stateno = 1130) && (var(48) != 1 || (var(48) = 1 && var(11) = 6))
trigger2 = (stateno = [1111,1112]) || stateno = 1120 || stateno = 1140 || stateno = 1152 || stateno = 1300 || (stateno = [1310,1311]) 
ignorehitpause = 1
;------------------------ ア　フルムーン　イブニング_2k2
[State -1,A Full Moon Evening]
type = VarSet
fvar(3) = 1220
triggerall = !fvar(3) && var(48)!=1 && command = "A Full Moon Evening_2k2"
trigger1 = (stateno = 1100 || stateno = 1130) && (var(48) != 1 || (var(48) = 1 && var(11) = 6))
trigger2 = (stateno = [1111,1112]) || stateno = 1120 || stateno = 1140 || stateno = 1152 || stateno = 1300 || (stateno = [1310,1311]) 
ignorehitpause = 1
;------------------------ ステート　オブ　ヒートヘルズ
[State -1,State of Heathess]
type = VarSet
fvar(3) = 1230
triggerall = !fvar(3) && command = "State of Heathess"
trigger1 = (stateno = 1100 || stateno = 1130) && (var(48) != 1 || (var(48) = 1 && var(11) = 6))
trigger2 = (stateno = [1111,1112]) || stateno = 1120 || stateno = 1140 || stateno = 1152 || stateno = 1300 || (stateno = [1310,1311]) 
ignorehitpause = 1
;------------------------ コズミック フーテン ストライク
[State -1,Cosmic Futen Swing]
type = VarSet
fvar(3) = 1260
triggerall = var(48) != 1 && !fvar(3) && command = "Cosmic Futen Swing"
trigger1 = (stateno = 1100 || stateno = 1130) && (var(48) != 1 || (var(48) = 1 && var(11) = 6))
trigger2 = (stateno = [1111,1112]) || stateno = 1120 || stateno = 1140 || stateno = 1152 || stateno = 1300 || (stateno = [1310,1311]) 
ignorehitpause = 1
;------------------------ ロスト ホームランド
[State -1,Lost Homeland]
type = VarSet
fvar(3) = 1250
triggerall = var(48) != 1 && !fvar(3) && command = "Lost Homeland"
trigger1 = (stateno = 1100 || stateno = 1130) && (var(48) != 1 || (var(48) = 1 && var(11) = 6))
trigger2 = (stateno = [1111,1112]) || stateno = 1120 || stateno = 1140 || stateno = 1152 || stateno = 1300 || (stateno = [1310,1311]) 
ignorehitpause = 1
;------------------------ ビヨンド　ザ　フレイムス
[State -1,Beyond the Flames]
type = VarSet
fvar(3) = 1270
triggerall = var(48) != 1 && !fvar(3) && command =  "Beyond the Flames"
trigger1 = (stateno = 1100 || stateno = 1130) && (var(48) != 1 || (var(48) = 1 && var(11) = 6))
trigger2 = (stateno = [1111,1112]) || stateno = 1120 || stateno = 1140 || stateno = 1152 || stateno = 1300 || (stateno = [1310,1311]) 
ignorehitpause = 1
;------------------------ アンチェインフィニッシュ技
[State -1]
type = ChangeState 
value = floor(fvar(3))
triggerall = fvar(3) = [1000,3999]
trigger1 = stateno = 1100 && AnimElem = 9, >= 0
trigger2 = stateno = 1112 || stateno = 1311
trigger3 = (stateno = 1120 || stateno = 1130 || stateno = 1152) && AnimElem = 6, >= 0
trigger4 = stateno = 1140 && AnimElem = 11, >= 0
trigger5 = stateno = 1300 && AnimTime = 0

;=====================================================================
; アンチェインサークル技
;=====================================================================

;-------------------------------------------------------------------------------
; バイバイ　リュウグゥ
[State -1,Bye-Bye Ryuguu]
type = ChangeState 
value = 1100
triggerall = fvar(3) = 1
trigger1 = (stateno = 1020 || stateno = 1030) && AnimElem = 4, >= 0
trigger2 = stateno = 1062 && AnimTime = 0
trigger3 = stateno = 1070 && AnimElem = 4, >= 0
trigger4 = stateno = 1050 && var(48) != 1 && ((movecontact && AnimElem = 12, > 0) || (!movecontact && AnimTime = 0))
trigger5 = stateno = 1051 && ((movecontact && AnimElem = 12, >= 0) || (!movecontact && AnimTime = 0))
trigger6 = stateno = 1052 && ((movecontact && AnimElem = 10, >= 0) || (!movecontact && AnimTime = 0))
trigger7 = stateno = 1080 && AnimElem = 7, > 0
trigger8 = stateno = 1112 && Time = 1
trigger9 = stateno = 1152 && AnimElem = 6, >= 0

;------------------------ 先行入力用
[State -1,Bye-Bye Ryuguu]
type = VarSet
fvar(3) = 1
triggerall = fvar(3) = 0 && Time > 0 && command = "Bye-Bye Ryuguu"
trigger1 = (stateno = 1020 || stateno = 1030) && AnimElem = 2, >= 0
trigger2 = (stateno = 1060 || stateno = 1070) && AnimElem = 4, >= 0
trigger3 = stateno = 1050 && var(48) != 1
trigger4 = stateno = 1051 || stateno = 1052
trigger5 = stateno = 1080 && AnimElem = 7, > 0
trigger6 = stateno = 1111 && var(12) != 1 && var(11) < 6
trigger7 = stateno = 1152 && var(12) != 2 && var(11) < 6
ignorehitpause = 1

;-------------------------------------------------------------------------------
; ウィズ　ア　ランプ　フォー　ザ　バスウェイ
[State -1,With a Lamp for the Pathway]
type = ChangeState 
value = 1110
triggerall = fvar(3) = 2
trigger1 = (stateno = 1020 || stateno = 1030) && AnimElem = 4, >= 0
trigger2 = stateno = 1062 && AnimTime = 0
trigger3 = stateno = 1070 && AnimElem = 4, >= 0
trigger4 = stateno = 1050 && var(48) != 1 && ((movecontact && AnimElem = 12, > 0) || (!movecontact && AnimTime = 0))
trigger5 = stateno = 1051 && ((movecontact && AnimElem = 12, >= 0) || (!movecontact && AnimTime = 0))
trigger6 = stateno = 1052 && ((movecontact && AnimElem = 10, >= 0) || (!movecontact && AnimTime = 0))
trigger7 = stateno = 1080 && AnimElem = 7, > 0
trigger8 = stateno = 1100 && AnimElem = 9, >= 0
trigger9 = stateno = 1120 && AnimElem = 6, >= 0

;------------------------ 先行入力用
[State -1,With a Lamp for the Pathway]
type = VarSet
fvar(3) = 2
triggerall = fvar(3) = 0 && Time > 0 && command = "With a Lamp for the Pathway"
trigger1 = (stateno = 1020 || stateno = 1030) && AnimElem = 2, >= 0
trigger2 = (stateno = 1060 || stateno = 1070) && AnimElem = 4, >= 0
trigger3 = stateno = 1050 && var(48) != 1
trigger4 = stateno = 1051 || stateno = 1052
trigger5 = stateno = 1080 && AnimElem = 7, > 0
trigger6 = stateno = 1100 && var(12) != 2 && var(11) < 6
trigger7 = stateno = 1120 && var(12) != 1 && var(11) < 6
ignorehitpause = 1

;-------------------------------------------------------------------------------
; ア　トレイン　トゥ　シーチェリーブロッサム
[State -1,A Train to see Cherry Blossoms]
type = ChangeState 
value = 1120
triggerall = fvar(3) = 3
trigger1 = (stateno = 1020 || stateno = 1030) && AnimElem = 4, >= 0
trigger2 = stateno = 1062 && AnimTime = 0
trigger3 = stateno = 1070 && AnimElem = 4, >= 0
trigger4 = stateno = 1050 && var(48) != 1 && ((movecontact && AnimElem = 12, > 0) || (!movecontact && AnimTime = 0))
trigger5 = stateno = 1051 && ((movecontact && AnimElem = 12, >= 0) || (!movecontact && AnimTime = 0))
trigger6 = stateno = 1052 && ((movecontact && AnimElem = 10, >= 0) || (!movecontact && AnimTime = 0))
trigger7 = stateno = 1080 && AnimElem = 7, > 0
trigger8 = stateno = 1112 && Time = 1
trigger9 = stateno = 1130 && AnimElem = 6, >= 0

;------------------------ 先行入力用
[State -1,A Train to see Cherry Blossoms]
type = VarSet
fvar(3) = 3
triggerall = fvar(3) = 0 && Time > 0 && command = "A Train to see Cherry Blossoms"
trigger1 = (stateno = 1020 || stateno = 1030) && AnimElem = 2, >= 0
trigger2 = (stateno = 1060 || stateno = 1070) && AnimElem = 4, >= 0
trigger3 = stateno = 1050 && var(48) != 1
trigger4 = stateno = 1051 || stateno = 1052
trigger5 = stateno = 1080 && AnimElem = 7, > 0
trigger6 = stateno = 1111 && var(12) != 2 && var(11) < 6
trigger7 = stateno = 1130 && var(12) != 1 && var(11) < 6
ignorehitpause = 1

;-------------------------------------------------------------------------------
; シェルターフロム　ザ　ストーム
[State -1,Shelter from the Storm]
type = ChangeState 
value = 1130
triggerall = fvar(3) = 4
trigger1 = (stateno = 1020 || stateno = 1030) && AnimElem = 4, >= 0
trigger2 = stateno = 1062 && AnimTime = 0
trigger3 = stateno = 1070 && AnimElem = 4, >= 0
trigger4 = stateno = 1050 && var(48) != 1 && ((movecontact && AnimElem = 12, > 0) || (!movecontact && AnimTime = 0))
trigger5 = stateno = 1051 && ((movecontact && AnimElem = 12, >= 0) || (!movecontact && AnimTime = 0))
trigger6 = stateno = 1052 && ((movecontact && AnimElem = 10, >= 0) || (!movecontact && AnimTime = 0))
trigger7 = stateno = 1080 && AnimElem = 7, > 0
trigger8 = stateno = 1120 && AnimElem = 6, >= 0
trigger9 = stateno = 1140 && AnimElem = 11, >= 0

;------------------------ 先行入力用
[State -1,Shelter from the Storm]
type = VarSet
fvar(3) = 4
triggerall = fvar(3) = 0 && Time > 0 && command = "Shelter from the Storm"
trigger1 = (stateno = 1020 || stateno = 1030) && AnimElem = 2, >= 0
trigger2 = (stateno = 1060 || stateno = 1070) && AnimElem = 4, >= 0
trigger3 = stateno = 1050 && var(48) != 1
trigger4 = stateno = 1051 || stateno = 1052
trigger5 = stateno = 1080 && AnimElem = 7, > 0
trigger6 = stateno = 1120 && var(12) != 2 && var(11) < 6
trigger7 = stateno = 1140 && var(12) != 1 && var(11) < 6
ignorehitpause = 1

;-------------------------------------------------------------------------------
; バギー　アンド　コフィン
[State -1,Buggy and Coffin]
type = ChangeState 
value = 1140
triggerall = fvar(3) = 5
trigger1 = (stateno = 1020 || stateno = 1030) && AnimElem = 4, >= 0
trigger2 = stateno = 1062 && AnimTime = 0
trigger3 = stateno = 1070 && AnimElem = 4, >= 0
trigger4 = stateno = 1050 && var(48) != 1 && ((movecontact && AnimElem = 12, > 0) || (!movecontact && AnimTime = 0))
trigger5 = stateno = 1051 && ((movecontact && AnimElem = 12, >= 0) || (!movecontact && AnimTime = 0))
trigger6 = stateno = 1052 && ((movecontact && AnimElem = 10, >= 0) || (!movecontact && AnimTime = 0))
trigger7 = stateno = 1080 && AnimElem = 7, > 0
trigger8 = stateno = 1130 && AnimElem = 6, >= 0
trigger9 = stateno = 1152 && AnimElem = 6, >= 0

;------------------------ 先行入力用
[State -1,Buggy and Coffin]
type = VarSet
fvar(3) = 5
triggerall = fvar(3) = 0 && Time > 0 && command = "Buggy and Coffin"
trigger1 = (stateno = 1020 || stateno = 1030) && AnimElem = 2, >= 0
trigger2 = (stateno = 1060 || stateno = 1070) && AnimElem = 4, >= 0
trigger3 = stateno = 1050 && var(48) != 1
trigger4 = stateno = 1051 || stateno = 1052
trigger5 = stateno = 1080 && AnimElem = 7, > 0
trigger6 = stateno = 1130 && var(12) != 2 && var(11) < 6
trigger7 = stateno = 1152 && var(12) != 1 && var(11) < 6
ignorehitpause = 1

;-------------------------------------------------------------------------------
; インポテント　シンプトム
[State -1,Impotent Symptom]
type = ChangeState 
value = 1150
triggerall = fvar(3) = 6
trigger1 = (stateno = 1020 || stateno = 1030) && AnimElem = 4, >= 0
trigger2 = stateno = 1062 && AnimTime = 0
trigger3 = stateno = 1070 && AnimElem = 4, >= 0
trigger4 = stateno = 1050 && var(48) != 1 && ((movecontact && AnimElem = 12, > 0) || (!movecontact && AnimTime = 0))
trigger5 = stateno = 1051 && ((movecontact && AnimElem = 12, >= 0) || (!movecontact && AnimTime = 0))
trigger6 = stateno = 1052 && ((movecontact && AnimElem = 10, >= 0) || (!movecontact && AnimTime = 0))
trigger7 = stateno = 1080 && AnimElem = 7, > 0
trigger8 = stateno = 1100 && AnimElem = 9, >= 0
trigger9 = stateno = 1140 && AnimElem = 11, >= 0

;------------------------ 先行入力用
[State -1,Impotent Symptom]
type = VarSet
fvar(3) = 6
triggerall = fvar(3) = 0 && Time > 0 && command = "Impotent Symptom"
trigger1 = (stateno = 1020 || stateno = 1030) && AnimElem = 2, >= 0
trigger2 = (stateno = 1060 || stateno = 1070) && AnimElem = 4, >= 0
trigger3 = stateno = 1050 && var(48) != 1
trigger4 = stateno = 1051 || stateno = 1052
trigger5 = stateno = 1080 && AnimElem = 7, > 0
trigger6 = stateno = 1100 && var(12) != 1 && var(11) < 6
trigger7 = stateno = 1140 && var(12) != 2 && var(11) < 6
ignorehitpause = 1

;=====================================================================
; アンチェイン特殊技
;=====================================================================

;-------------------------------------------------------------------------------
; オーマガトキ
[State -1,Omagatoki]
type = ChangeState 
value = IfElse(fvar(3) = 30,1310,IfElse(fvar(3) = 31,1320,1300))
triggerall = fvar(3) = 30 || fvar(3) = 31 || fvar(3) = 32
trigger1 = stateno = 1100 && AnimElem = 9, >= 0
trigger2 = (stateno = 1112 || stateno = 1311) && Time = 1
trigger3 = (stateno = 1120 || stateno = 1130 || stateno = 1152) && AnimElem = 6, >= 0
trigger4 = stateno = 1140 && AnimElem = 11, >= 0

;------------------------ 先行入力用
[State -1,Omagatoki]
type = VarSet
fvar(3) = IfElse(command="Omagatoki_F",30,IfElse(command="Omagatoki_B",31,32))
triggerall = var(48) != 1 && fvar(3) = 0 && Time > 0 && (command="Omagatoki_F" || command="Omagatoki_B" || command="yab")
trigger1 = (stateno = 1100 || stateno = 1130) && (var(48) != 1 || (var(48) = 1 && var(11) = 6))
trigger2 = stateno = 1111 || stateno = 1120 || stateno = 1140 || stateno = 1152
ignorehitpause = 1

;=====================================================================
; Basic Animation
;=====================================================================

;---------------------------------------------------------------------
;RunFwd
[State -1]
type = ChangeState
value = 100
trigger1 = Command = "FF" && StateType = S && Ctrl = 1 && StateNo != 100

;---------------------------------------------------------------------
;RunBack
[State -1]
type = ChangeState
value = 105
trigger1 = Command = "BB" && StateType = S && Ctrl = 1

;=====================================================================
; 2/3 Buttons
;=====================================================================
;
;=====================================================================
; Basic Throws
;=====================================================================

;---------------------------------------------------------------------
; ゴーゴーフーテンガール（Ｐ通常投げ）
[State -1]
type = ChangeState
value = 800
triggerall = StateType = S && Ctrl
trigger1 = var(30) = 2 && Command = "recovery"
trigger2 = var(30) != 2 && P2MoveType != H && !P2StateType = A
trigger2 = (Command = "fwd_y" && P2BodyDist X < 8) || (Command = "back_y" && P2BodyDist X < 20)

;---------------------------------------------------------------------
; スターリットフィールド（Ｋ通常投げ）
[State -1]
type = ChangeState
value = 850
triggerall = StateType = S && Ctrl
trigger1 = var(30) = 2 && Command = "by"
trigger2 = var(30) != 2 && P2MoveType != H && !P2StateType = A
trigger2 = (Command = "fwd_b" && P2BodyDist X < 8) || (Command = "back_b" && P2BodyDist X < 20)

;---------------------------------------------------------------------
; Special Attacks , Moves and so on.
;---------------------------------------------------------------------

;---------------------------------------------------------------------------
; パワーMAXモード発動
[State -1]
type = ChangeState
value = 4200
triggerall = command = "ay"
triggerall = power >= 1000 && var(47) = 0 && var(30) = 1
trigger1 = ctrl && statetype != A
trigger2 = var(40)=1

;------------------------ クイックMAX発動
[State -1]
type = ChangeState
value = 4210
triggerall = command = "ay"
triggerall = power >= 2000 && var(47) = 0 && var(30) = 1
trigger1 = statetype != A
trigger1 = MoveContact && StateNo = [200,799]

;---------------------------------------------------------------------
; 地上ふっとばし攻撃
[State -1]
type = ChangeState
value = 500
triggerall = Command = "by" && var(30) != 2
trigger1 = StateType != A && (Ctrl || var(40)=1)

;---------------------------------------------------------------------
; 空中ふっとばし攻撃
[State -1]
type = ChangeState
value = 510
triggerall = Command = "by" && var(30) != 2
trigger1 = StateType = A && Ctrl = 1

;---------------------------------------------------------------------
; ガードキャンセル緊急回避動作（前・後）
[State -1]
type = ChangeState
value = 4000
triggerall = Command = "gc_fwd" && Power >= 1000
triggerall = StateType != A
trigger1 = (StateNo = 150 || StateNo = 152)
trigger2 = var(30) = 1 && MoveContact && StateNo = [200,799]

;---------------------------------------------------------------------
; 緊急回避動作（前）
[State -1]
type = ChangeState
value = 4000
triggerall = Command = "recovery" && !Command = "holdback" && var(30) != 2
trigger1 = StateType = S && (Ctrl || var(40)=1)

;---------------------------------------------------------------------
; 緊急回避動作（後）
[State -1]
type = ChangeState
value = 4010
triggerall = Command = "q_back" && !Command = "holdfwd" && var(30) != 2
trigger1 = StateType = S && (Ctrl || var(40)=1)

;---------------------------------------------------------------------
; ガードキャンセル吹っ飛ばし攻撃
[State -1]
type = ChangeState
value = 4500
triggerall = Command = "by"
triggerall = (Power >= 1000 || (var(30) = 2 && fvar(0) > 0)) && StateType != A
trigger1 = (StateNo = 150 || StateNo = 152)

;=====================================================================
; Dir + Button
;=====================================================================
;---------------------------------------------------------------------
; センスレス チャター（→＋A）
[State -1]
type = ChangeState
value = IfElse(MoveContact=1,710,700)
triggerall= Command = "fwd_a" && !Command = "holddown"
trigger1= !StateType = A && (Ctrl || (var(40)=[1,2]))

;---------------------------------------------------------------------
; アット ザ ウェイストランド（空中で↓＋B）
[State -1]
type = ChangeState
value = 720
triggerall = Command = "down_b" && StateType = A
trigger1 = StateNo = 105 || Ctrl = 1
trigger2  = MoveContact && (StateNo = 600 && AnimElem = 4,> 0)
trigger3  = MoveContact && (StateNo = 610 && AnimElem = 5,> 0)
trigger4  = MoveContact && (StateNo = 640 && AnimElem = 4,> 0)

;=====================================================================
; Taunts
;=====================================================================

;---------------------------------------------------------------------
; 挑発
[State -1]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = StateType = S && Ctrl = 1

;=====================================================================
; Basic Arts
;=====================================================================

;---------------------------------------------------------------------
; 弱パンチ
[State -1]
type = ChangeState
value = 200
triggerall = Command = "x" && !Command = "holddown"
trigger1 = StateType = S && (Ctrl || var(40)=1)
trigger2 = StateNo = 200 && AnimElem = 4,>0
trigger3 = StateNo = 230 && AnimElem = 4,>0
trigger4 = StateNo = 400 && AnimElem = 4,>0
trigger5 = StateNo = 430 && AnimElem = 5,>0

;---------------------------------------------------------------------
; 弱キック
[State -1]
type = ChangeState
value = 230
triggerall = Command = "a" && !Command = "holddown"
trigger1 = StateType = S && (Ctrl || var(40)=1)
trigger2 = StateNo = 200 && AnimElem = 4,>0
trigger3 = StateNo = 230 && AnimElem = 4,>0
trigger4 = StateNo = 400 && AnimElem = 4,>0
trigger5 = StateNo = 430 && AnimElem = 5,>0

;---------------------------------------------------------------------
; 強パンチ
[State -1]
type = ChangeState
value = IfElse(P2BodyDist X <= 25,220,210)
triggerall = Command = "y" && !Command = "holddown"
trigger1 = StateType = S && (Ctrl || var(40)=1)

;---------------------------------------------------------------------
; 強キック
[State -1]
type = ChangeState
value = IfElse(P2BodyDist X <= 20,250,240)
triggerall = Command = "b" && !Command = "holddown"
trigger1 = StateType = S && (Ctrl || var(40)=1)

;---------------------------------------------------------------------
; しゃがみ弱パンチ
[State -1]
type = ChangeState
value = 400
triggerall = Command = "x" && Command = "holddown"
trigger1 =  (StateType = C && Ctrl) || var(40)=1
trigger2 = StateNo = 200 && AnimElem = 4,>0
trigger3 = StateNo = 230 && AnimElem = 4,>0
trigger4 = StateNo = 400 && AnimElem = 4,>0
trigger5 = StateNo = 430 && AnimElem = 5,>0

;---------------------------------------------------------------------
; しゃがみ強パンチ
[State -1]
type = ChangeState
value = 410
triggerall = Command = "y" && Command = "holddown"
trigger1 =  (StateType = C && Ctrl) || var(40)=1

;---------------------------------------------------------------------
; しゃがみ弱キック
[State -1]
type = ChangeState
value = 430
triggerall = Command = "a" && Command = "holddown"
trigger1 =  (StateType = C && Ctrl) || var(40)=1
trigger2 = StateNo = 200 && AnimElem = 4,>0
trigger3 = StateNo = 230 && AnimElem = 4,>0
trigger4 = StateNo = 400 && AnimElem = 4,>0
trigger5 = StateNo = 430 && AnimElem = 5,>0

;---------------------------------------------------------------------
; しゃがみ強キック
[State -1]
type = ChangeState
value = 440
triggerall = Command = "b" && Command = "holddown"
trigger1 =  (StateType = C && Ctrl) || var(40)=1

;---------------------------------------------------------------------
; ジャンプ弱パンチ
[State -1]
type = ChangeState
value = 600
triggerall = Command = "x" && StateType = A && Ctrl = 1
trigger1 = StateNo != 105

;---------------------------------------------------------------------
; ジャンプ強パンチ
[State -1]
type = ChangeState
value = 610
triggerall = Command = "y" && StateType = A && Ctrl = 1
trigger1 = StateNo != 105

;---------------------------------------------------------------------
; ジャンプ弱キック
[State -1]
type = ChangeState
value = 630
triggerall = Command = "a" && StateType = A && Ctrl = 1
trigger1 = StateNo != 105

;---------------------------------------------------------------------
; ジャンプ強キック
[State -1]
type = ChangeState
value = 640
triggerall = Command = "b" && StateType = A && Ctrl = 1
trigger1 = StateNo != 105
