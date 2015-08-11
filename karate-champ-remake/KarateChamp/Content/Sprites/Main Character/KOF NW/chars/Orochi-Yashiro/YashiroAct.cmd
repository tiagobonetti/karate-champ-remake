

;=====================================================================
;MUGEN CharData (01.04.14)
;"Yashiro 2K2"                                                ActJapan
;=====================================================================

;=====================================================================
; Definition of the Commands
;=====================================================================

;-| CPU Function |----------------------------------------------------
[Command]
name = "cpu01"
command = ~F,DF,D,DB,B,F,DF,D,DB,B,a+b+c+x+y+z
time = 1

;-| Super Motions |---------------------------------------------------
; ファイナルインパクト
[Command]
name = "FnlIpct_MAX"
command = ~D, DF, F, D, DF, F, x+y
time = 30

; ファイナルインパクト X
[Command]
name = "FnlIpct_x"
command = ~D, DF, F, D, DF, F, x
time = 28

; ファイナルインパクト Y
[Command]
name = "FnlIpct_y"
command = ~D, DF, F, D, DF, F, y
time = 28

;---------------------------------------------------------------------
; ハルマゲドン
[Command]
name = "Hrmgddn"
command = a, b, x, x+y+a
time = 35

[Command]
name = "Hrmgddn"
command = ~D, B, D, F, x+y
time = 35

[Command]
name = "HrmgddnB"
command = b, x, x+y+a
time = 20

;---------------------------------------------------------------------
[Command]
; あらぶるだいち MAX
name = "ArbrDaiChi_MAX"
command = ~D, DF, F, D, DF, F, a+b
time = 30

; あらぶるだいち A
[Command]
name = "ArbrDaiChi_a"
command = ~D, DF, F, D, DF, F, a
time = 28

; あらぶるだいち B
[Command]
name = "ArbrDaiChi_b"
command = ~D, DF, F, D, DF, F, b
time = 28

;---------------------------------------------------------------------
; 暗黒地獄極楽落とし MAX
[Command]
name = "AnkkNrkOtshi_MAX"
command = ~F, DF, D, DB, B, F, DF, D, DB, B, x+y
time = 28

[Command]
name = "AnkkNrkOtshi_MAX"
command = ~D, DB, B, D, DB, B, x+y
time = 28

; 暗黒地獄極楽落とし X
[Command]
name = "AnkkNrkOtshi_x"
command = ~F, DF, D, DB, B, F, DF, D, DB, B, x
time = 28

[Command]
name = "AnkkNrkOtshi_x"
command = ~D, DB, B, D, DB, B, x
time = 28

; 暗黒地獄極楽落とし Y
[Command]
name = "AnkkNrkOtshi_y"
command = ~D, DB, B, D, DB, B, y
time = 28

;---------------------------------------------------------------------
; オロチ覚醒 MAX
[Command]
name = "ModeChange_MAX"
command = ~B, DB, D, DF, F, B, DB, D, DF, F, a+b
time = 32
;---------------------------------------------------------------------
; オロチ→通常 MAX
[Command]
name = "ModeChangeR_MAX"
command = ~F, DF, D, DB, B, F, DF, D, DB, B, a+b
time = 32

; オロチ→通常 A
[Command]
name = "ModeChangeR_a"
command = ~F, DF, D, DB, B, F, DF, D, DB, B, a
time = 32

; オロチ→通常 B
[Command]
name = "ModeChangeR_b"
command = ~F, DF, D, DB, B, F, DF, D, DB, B, b
time = 32

;---------------------------------------------------------------------
; MAX2 「ERROR･･･」 code★★2002★★
[Command]
name = "ERROR_CODE2K2_MAX2"
command = ~D, DB, B, DB, D, DF, F, a+b
time = 30

;---------------------------------------------------------------------
; ミリオンバッシュストリーム MAX
[Command]
name = "MlnDichi_MAX"
command = ~D, DB, B, DB, D, DF, F, x
time = 30

; ミリオンバッシュストリーム X
[Command]
name = "MlnDichi_x"
command = ~D, DB, B, DB, D, DF, F, x
time = 30

; ミリオンバッシュストリーム Y
[Command]
name = "MlnDichi_y"
command = ~D, DB, B, DB, D, DF, F, y
time = 30

;-| Special Motions |-------------------------------------------------

;---------------------------------------------------------------------
; むせぶだいち X
[Command]
name = "MsbDichi_x"
command = ~F, DF, D, DB, B, F, x
time = 25

; むせぶだいち Y
[Command]
name = "MsbDichi_y"
command = ~F, DF, D, DB, B, F, y
time = 25

;---------------------------------------------------------------------
; ミサイルマイトバッシュ X
[Command]
name = "MslMtBsh_x"
command = ~F, DF, D, DB, B, x
time = 25

; ミサイルマイトバッシュ Y
[Command]
name = "MslMtBsh_y"
command = ~F, DF, D, DB, B, y
time = 25

;---------------------------------------------------------------------
; おどるだいち A
[Command]
name = "OdrDichi_a"
command = ~B, DB, D, DF, F, a
time = 25

; おどるだいち B
[Command]
name = "OdrDichi_b"
command = ~B, DB, D, DF, F, b
time = 25

;---------------------------------------------------------------------
; ジェットカウンター 98
[Command]
name = "JctCntr_98"
command = ~B, DB, D, DF, F, x+y
time = 28

; ジェットカウンター/にらぐだいち X
[Command]
name = "JctCntr_x"
command = ~B, DB, D, DF, F, x
time = 28

; ジェットカウンター/にらぐだいち Y
[Command]
name = "JctCntr_y"
command = ~B, DB, D, DF, F, y
time = 28

; ジェットカウンター・スティル X
[Command]
name = "JC_Stll_x"
command = ~D, DF, F, x
time = 20

; ジェットカウンター・スティル Y
[Command]
name = "JC_Stll_y"
command = ~D, DF, F, y
time = 20

;---------------------------------------------------------------------
; アッパーデュエル X
[Command]
name = "UpDhl_x"
command = ~F, D, DF, x
time = 25

;アッパーデュエル Y
[Command]
name = "UpDhl_y"
command = ~F, D, DF, y
time = 25

;---------------------------------------------------------------------
; スレッジジハンマー A
[Command]
name = "SgHnmr_a"
command = ~D, DB, B, a
time = 20

; スレッジジハンマー B
[Command]
name = "SgHnmr_b"
command = ~D, DB, B, b
time = 20

;---------------------------------------------------------------------
; くじくだいち X
[Command]
name = "KjkDaiChi_x"
command = ~D, DB, B, x
time = 20

; くじくだいち B
[Command]
name = "KjkDaiChi_y"
command = ~D, DB, B, y
time = 20

;---------------------------------------------------------------------
; 連打
[Command]
name ="Renda_x"
Command = ~x
time = 2

[Command]
name ="Renda_y"
Command = ~y
time = 2

;-| Double Tap |------------------------------------------------------
[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |------------------------------------------
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
name = "by"
command = c
time = 1

[Command]
name = "ay"
command = a+y
time = 1

[Command]
name = "xy"
command = x+y
time = 1

[Command]
name = "abcd"
command = c+z
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
name = "downfwd_y"
command = /DF,y
time = 1

;-----------------------------For KOF Seriese only
[Command]
name = "gc_fwd"
command = /DF, a+x
time = 1

;[Command]
;name = "gc_fwd"
;command = /DF, z
;time = 1

[Command]
name = "gc_fwd"
command = /F, a+x
time = 1

;[Command]
;name = "gc_fwd"
;command = /F, z
;time = 1

[Command]
name = "gc_back"
command = /DB, a+x
time = 1

;[Command]
;name = "gc_back"
;command = /DB, z
;time = 1

[Command]
name = "gc_back"
command = /B, a+x
time = 1

;[Command]
;name = "gc_back"
;command = /B, z
;time = 1

[Command]
name = "q_fwd"
command = a+x
time = 1

[Command]
name = "q_fwd"
command = z
time = 1

[Command]
name = "q_back"
command = /B, a+x
time = 1

[Command]
name = "q_back"
command = /B, z
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

;[Command]
;name = "recovery"
;command = z
;time = 1

;----------------------------- KOF Seriese only
;[Command]
;name = "gc_fwd"
;command = z
;time = 1

;[Command]
;name = "q_fwd"
;command = z
;time = 1

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

[Command]
name = "holdfwdOnly"
command = /F
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

;------------------------ Or
[Command]
name = "Selectfwd"
command = F
time = 1

[Command]
name = "Selectback"
command = B
time = 1

;=====================================================================
; State Entry for Commands
;=====================================================================

[Statedef -1]

[State -1]
type = ChangeState
triggerall = power < 3000
trigger1 = command = "hold_a" && command = "hold_b" && command = "hold_x" && statetype = S && ctrl
value = 8000
;=====================================================================
; CPU Function
;=====================================================================

; ＣＰＵ専用フラグ
[State -1,cpu01]
type = VarSet
triggerall = var(30)=0
trigger1 = Command = "cpu01"
persistent = 0
v = 30
value = 1

;=====================================================================
; Super Arts
;=====================================================================
; MAX2 「ERROR･･･」 code★★2002★★
[State -1,3400]
type = ChangeState
value = 3400
triggerall = Command = "ERROR_CODE2K2_MAX2" && Power >= 3000 && LIFE <= 500 ;&& var(36)!=2 && Var(32)!=0 && Life<=Var(7) -fVar(2)
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = MoveContact && (StateNo = 200 || StateNo = 210 || StateNo = 220 || StateNo = 230 || StateNo = 400 || StateNo = 420)
trigger3 = MoveContact && (StateNo = 430 || StateNo = 205 || StateNo = 215 || StateNo = 225 || StateNo = 235) && Var(32)!=0
trigger4 = (StateNo = 200 && AnimElemTime(2) >= 2)
trigger5 = (StateNo = 210 && AnimElemTime(4) >= 0 && AnimElemTime(5) <= 3)
trigger6 = (StateNo = 220 && AnimElemTime(3) >= 0 && AnimElemTime(6) < 0)
trigger7 = (StateNo = 230 && AnimElemTime(3) >= 0 && AnimElemTime(7) < 0)
trigger8 = MoveContact && (StateNo = 400 && AnimElemTime(3) >= 2 && AnimElemTime(5) <= 3)
trigger9 = MoveContact && (StateNo = 420 && AnimElemTime(6) >= 0 && AnimElemTime(7) < 0)
trigger10 = MoveContact && (StateNo = 700 && AnimElemTime(7) >= 0 && AnimElemTime(10) < 2)
trigger11 = MoveContact && ((StateNo = [710,715]) && AnimElemTime(5) >= 0 && AnimElemTime(10) < 2)
trigger12 = MoveContact && (StateNo = 1060 && AnimElemTime(7) >= 0 && AnimElemTime(8) < 0) && Power >= 3000-fVar(2)
trigger13 = MoveContact && (StateNo = 1800 && AnimElemTime(13) >= 0 && AnimElemTime(16) < 0) && Power >= 3000-fVar(2)
trigger14 = MoveContact && (StateNo = 1850 && AnimElemTime(28) >= 0 && AnimElemTime(31) < 0) && Power >= 3000-fVar(2)

;---------------------------------------------------------------------
; MAX2 ハルマゲドン
[State -1,3800]
type = ChangeState
value = 3800
triggerall = Command = "Hrmgddn" && Power >= 3000 && life <= 200  ;&& var(36)=2 && Var(32)!=0    ;-fVar(2) && Life<=Var(7) 
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = (StateNo = 200 && AnimElemTime(2) >= 2)
trigger3 = (StateNo = 205 && AnimElemTime(2) >= 2)
trigger4 = (StateNo = 220 && AnimElemTime(3) >= 0)
trigger5 = (StateNo = 225 && AnimElemTime(3) >= 0)
trigger6 = (StateNo = 230 && AnimElemTime(3) >= 0)
trigger7 = (StateNo = 235 && AnimElemTime(3) >= 0)
trigger8 = (StateNo = 400 && AnimElemTime(3) >= 2)
trigger9 = (StateNo = 420 && AnimElemTime(3) >= 0)
trigger10 = (StateNo = 430 && AnimElemTime(4) >= 0)
trigger11 = ((StateNo = [700,705]) && AnimElemTime(4) >= 0)
trigger12 = ((StateNo = [710,715]) && AnimElemTime(3) >= 0)

; MAX2 ハルマゲドン
[State -1,3800]
type = ChangeState
value = 3800
triggerall = Command = "HrmgddnB" && var(36)=2 && Var(32)!=0 && Life<=Var(7) && Power >= 2000-fVar(2)
trigger1 = (StateNo = 210 && AnimElemTime(2) >= 0)
trigger2 = (StateNo = 215 && AnimElemTime(2) >= 0)

;----------------------------------------------------------------------
; 暗黒地獄極楽落とし MAX
[State -1,3500]
type = ChangeState
value = 3500
triggerall = (Command = "AnkkNrkOtshi_MAX") && Power >= 2000    ;-fVar(2)  ;&& var(36)=2 && var(32)!=0
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100) && (var(30)=0 || (var(30)!=0 && (P2Statetype = S || P2Statetype = C) && P2BodyDist X = [0,20]))
;trigger2 = MoveContact && (StateNo = 200 || StateNo = 210 || StateNo = 220 || StateNo = 230 || StateNo = 400 || StateNo = 420)
;trigger3 = MoveContact && (StateNo = 430 || StateNo = 205 || StateNo = 215 || StateNo = 225 || StateNo = 235) && Var(32)!=0
;trigger4 = (StateNo = 200 && AnimElemTime(2) >= 2)
;trigger5 = (StateNo = 210 && AnimElemTime(4) >= 0 && AnimElemTime(5) <= 3)
;trigger6 = (StateNo = 220 && AnimElemTime(3) >= 0 && AnimElemTime(6) < 0)
;trigger7 = (StateNo = 230 && AnimElemTime(3) >= 0 && AnimElemTime(7) < 0)
;trigger8 = MoveContact && (StateNo = 400 && AnimElemTime(3) >= 2 && AnimElemTime(5) <= 3)
;trigger9 = MoveContact && (StateNo = 420 && AnimElemTime(6) >= 0 && AnimElemTime(7) < 0)
;trigger10 = MoveContact && (StateNo = 700 && AnimElemTime(7) >= 0 && AnimElemTime(10) < 2)
;trigger11 = MoveContact && ((StateNo = [710,715]) && AnimElemTime(5) >= 0 && AnimElemTime(10) < 2)
;trigger12 = MoveContact && (StateNo = 1060 && AnimElemTime(7) >= 0 && AnimElemTime(8) < 0) && Power >= 3000-fVar(2)
;trigger13 = MoveContact && (StateNo = 1800 && AnimElemTime(13) >= 0 && AnimElemTime(16) < 0) && Power >= 3000-fVar(2)
;trigger14 = MoveContact && (StateNo = 1850 && AnimElemTime(28) >= 0 && AnimElemTime(31) < 0) && Power >= 3000-fVar(2)

; 暗黒地獄極楽落とし
[State -1,3200]
type = ChangeState
value = 3200
triggerall = (Command = "AnkkNrkOtshi_x" || Command = "AnkkNrkOtshi_y") && var(36)=2 && Power >= 1000-fVar(2)
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100) && (var(30)=0 || (var(30)!=0 && (P2Statetype = S || P2Statetype = C) && P2BodyDist X = [0,20]))
trigger2 = MoveContact && (StateNo = 200 || StateNo = 210 || StateNo = 220 || StateNo = 230 || StateNo = 400 || StateNo = 420)
trigger3 = MoveContact && (StateNo = 430 || StateNo = 205 || StateNo = 215 || StateNo = 225 || StateNo = 235) && Var(32)!=0
trigger4 = (StateNo = 200 && AnimElemTime(2) >= 2)
trigger5 = (StateNo = 210 && AnimElemTime(4) >= 0 && AnimElemTime(5) <= 3)
trigger6 = (StateNo = 220 && AnimElemTime(3) >= 0 && AnimElemTime(6) < 0)
trigger7 = (StateNo = 230 && AnimElemTime(3) >= 0 && AnimElemTime(7) < 0)
trigger8 = MoveContact && (StateNo = 400 && AnimElemTime(3) >= 2 && AnimElemTime(5) <= 3)
trigger9 = MoveContact && (StateNo = 420 && AnimElemTime(6) >= 0 && AnimElemTime(7) < 0)
trigger10 = MoveContact && (StateNo = 700 && AnimElemTime(7) >= 0 && AnimElemTime(10) < 2)
trigger11 = MoveContact && ((StateNo = [710,715]) && AnimElemTime(5) >= 0 && AnimElemTime(10) < 2)
trigger12 = MoveContact && (StateNo = 1060 && AnimElemTime(7) >= 0 && AnimElemTime(8) < 0) && Power >= 2000-fVar(2)
trigger13 = MoveContact && (StateNo = 1800 && AnimElemTime(13) >= 0 && AnimElemTime(16) < 0) && Power >= 2000-fVar(2)
trigger14 = MoveContact && (StateNo = 1850 && AnimElemTime(28) >= 0 && AnimElemTime(31) < 0) && Power >= 2000-fVar(2)

;----------------------------------------------------------------------
; オロチ覚醒/戻る MAX
[State -1,952]
type = ChangeState
value = 952
triggerall = ((Command = "ModeChange_MAX" && var(36)!=2) || (Command = "ModeChangeR_MAX" && var(36)=2)) && var(32)!=0 && Power >= 2000-fVar(2)
triggerall = NumExplod(961)=0
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100) && (var(30)=0 || (var(30)!=0 && (P2Statetype = S || P2Statetype = C) && P2BodyDist X = [0,20]))
trigger2 = MoveContact && (StateNo = 200 || StateNo = 210 || StateNo = 220 || StateNo = 230 || StateNo = 400 || StateNo = 420)
trigger3 = MoveContact && (StateNo = 430 || StateNo = 205 || StateNo = 215 || StateNo = 225 || StateNo = 235) && Var(32)!=0
trigger4 = (StateNo = 200 && AnimElemTime(2) >= 2)
trigger5 = (StateNo = 210 && AnimElemTime(4) >= 0 && AnimElemTime(5) <= 3)
trigger6 = (StateNo = 220 && AnimElemTime(3) >= 0 && AnimElemTime(6) < 0)
trigger7 = (StateNo = 230 && AnimElemTime(3) >= 0 && AnimElemTime(7) < 0)
trigger8 = MoveContact && (StateNo = 400 && AnimElemTime(3) >= 2 && AnimElemTime(5) <= 3)
trigger9 = MoveContact && (StateNo = 420 && AnimElemTime(6) >= 0 && AnimElemTime(7) < 0)
trigger10 = MoveContact && (StateNo = 700 && AnimElemTime(7) >= 0 && AnimElemTime(10) < 2)
trigger11 = MoveContact && ((StateNo = [710,715]) && AnimElemTime(5) >= 0 && AnimElemTime(10) < 2)
trigger12 = MoveContact && (StateNo = 1060 && AnimElemTime(7) >= 0 && AnimElemTime(8) < 0) && Power >= 3000-fVar(2)
trigger13 = MoveContact && (StateNo = 1800 && AnimElemTime(13) >= 0 && AnimElemTime(16) < 0) && Power >= 3000-fVar(2)
trigger14 = MoveContact && (StateNo = 1850 && AnimElemTime(28) >= 0 && AnimElemTime(31) < 0) && Power >= 3000-fVar(2)

;----------------------------------------------------------------------
; あらぶるだいち MAX
[State -1,3500]
type = ChangeState
value = 3700
triggerall = (Command = "ArbrDaiChi_MAX") && Power >= 2000    ;&& var(36)=2 && var(32)!=0 -fVar(2)
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100) && (var(30)=0 || (var(30)!=0 && (P2Statetype = S || P2Statetype = C) && P2BodyDist X = [60,120]))
;trigger2 = MoveContact && (StateNo = 200 || StateNo = 210 || StateNo = 220 || StateNo = 230 || StateNo = 400 || StateNo = 420)
;trigger3 = MoveContact && (StateNo = 430 || StateNo = 205 || StateNo = 215 || StateNo = 225 || StateNo = 235) && Var(32)!=0
;trigger4 = (StateNo = 200 && AnimElemTime(2) >= 2)
;trigger5 = (StateNo = 210 && AnimElemTime(4) >= 0 && AnimElemTime(5) <= 3)
;trigger6 = (StateNo = 220 && AnimElemTime(3) >= 0 && AnimElemTime(6) < 0)
;trigger7 = (StateNo = 230 && AnimElemTime(3) >= 0 && AnimElemTime(7) < 0)
;trigger8 = MoveContact && (StateNo = 400 && AnimElemTime(3) >= 2 && AnimElemTime(5) <= 3)
;trigger9 = MoveContact && (StateNo = 420 && AnimElemTime(6) >= 0 && AnimElemTime(7) < 0)
;trigger10 = MoveContact && (StateNo = 700 && AnimElemTime(7) >= 0 && AnimElemTime(10) < 2)
;trigger11 = MoveContact && ((StateNo = [710,715]) && AnimElemTime(5) >= 0 && AnimElemTime(10) < 2)
;trigger12 = MoveContact && (StateNo = 1060 && AnimElemTime(7) >= 0 && AnimElemTime(8) < 0) && Power >= 3000-fVar(2)
;trigger13 = MoveContact && (StateNo = 1800 && AnimElemTime(13) >= 0 && AnimElemTime(16) < 0) && Power >= 3000-fVar(2)
;trigger14 = MoveContact && (StateNo = 1850 && AnimElemTime(28) >= 0 && AnimElemTime(31) < 0) && Power >= 3000-fVar(2)

; あらぶるだいち A
[State -1,3500]
type = ChangeState
value = 3600
triggerall = (Command = "ArbrDaiChi_a") && var(36)=2 && Power >= 1000-fVar(2)
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100) && (var(30)=0 || (var(30)!=0 && (P2Statetype = S || P2Statetype = C) && P2BodyDist X = [60,120]))
;trigger2 = MoveContact && (StateNo = 200 || StateNo = 210 || StateNo = 220 || StateNo = 230 || StateNo = 400 || StateNo = 420)
;trigger3 = MoveContact && (StateNo = 430 || StateNo = 205 || StateNo = 215 || StateNo = 225 || StateNo = 235) && Var(32)!=0
;trigger4 = (StateNo = 200 && AnimElemTime(2) >= 2)
;trigger5 = (StateNo = 210 && AnimElemTime(4) >= 0 && AnimElemTime(5) <= 3)
;trigger6 = (StateNo = 220 && AnimElemTime(3) >= 0 && AnimElemTime(6) < 0)
;trigger7 = (StateNo = 230 && AnimElemTime(3) >= 0 && AnimElemTime(7) < 0)
;trigger8 = MoveContact && (StateNo = 400 && AnimElemTime(3) >= 2 && AnimElemTime(5) <= 3)
;trigger9 = MoveContact && (StateNo = 420 && AnimElemTime(6) >= 0 && AnimElemTime(7) < 0)
;trigger10 = MoveContact && (StateNo = 700 && AnimElemTime(7) >= 0 && AnimElemTime(10) < 2)
;trigger11 = MoveContact && ((StateNo = [710,715]) && AnimElemTime(5) >= 0 && AnimElemTime(10) < 2)
;trigger12 = MoveContact && (StateNo = 1060 && AnimElemTime(7) >= 0 && AnimElemTime(8) < 0) && Power >= 2000-fVar(2)
;trigger13 = MoveContact && (StateNo = 1800 && AnimElemTime(13) >= 0 && AnimElemTime(16) < 0) && Power >= 2000-fVar(2)
;trigger14 = MoveContact && (StateNo = 1850 && AnimElemTime(28) >= 0 && AnimElemTime(31) < 0) && Power >= 2000-fVar(2)

; あらぶるだいち B
[State -1,3200]
type = ChangeState
value = 3605
triggerall = (Command = "ArbrDaiChi_b") && var(36)=2 && Power >= 1000-fVar(2)
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100) && (var(30)=0 || (var(30)!=0 && (P2Statetype = S || P2Statetype = C) && P2BodyDist X = [120,180]))
;trigger2 = MoveContact && (StateNo = 200 || StateNo = 210 || StateNo = 220 || StateNo = 230 || StateNo = 400 || StateNo = 420)
;trigger3 = MoveContact && (StateNo = 430 || StateNo = 205 || StateNo = 215 || StateNo = 225 || StateNo = 235) && Var(32)!=0
;trigger4 = (StateNo = 200 && AnimElemTime(2) >= 2)
;trigger5 = (StateNo = 210 && AnimElemTime(4) >= 0 && AnimElemTime(5) <= 3)
;trigger6 = (StateNo = 220 && AnimElemTime(3) >= 0 && AnimElemTime(6) < 0)
;trigger7 = (StateNo = 230 && AnimElemTime(3) >= 0 && AnimElemTime(7) < 0)
;trigger8 = MoveContact && (StateNo = 400 && AnimElemTime(3) >= 2 && AnimElemTime(5) <= 3)
;trigger9 = MoveContact && (StateNo = 420 && AnimElemTime(6) >= 0 && AnimElemTime(7) < 0)
;trigger10 = MoveContact && (StateNo = 700 && AnimElemTime(7) >= 0 && AnimElemTime(10) < 2)
;trigger11 = MoveContact && ((StateNo = [710,715]) && AnimElemTime(5) >= 0 && AnimElemTime(10) < 2)
;trigger12 = MoveContact && (StateNo = 1060 && AnimElemTime(7) >= 0 && AnimElemTime(8) < 0) && Power >= 2000-fVar(2)
;trigger13 = MoveContact && (StateNo = 1800 && AnimElemTime(13) >= 0 && AnimElemTime(16) < 0) && Power >= 2000-fVar(2)
;trigger14 = MoveContact && (StateNo = 1850 && AnimElemTime(28) >= 0 && AnimElemTime(31) < 0) && Power >= 2000-fVar(2)

;----------------------------------------------------------------------
;  ほえるだいち X
[State -1,3900]
type = ChangeState
value = 3900
triggerall = Command = "FnlIpct_x" && var(36)=2 && Power >= 1000-fVar(2)
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = MoveContact && (StateNo = 200 || StateNo = 210 || StateNo = 220 || StateNo = 230 || StateNo = 400 || StateNo = 420)
trigger3 = MoveContact && (StateNo = 430 || StateNo = 205 || StateNo = 215 || StateNo = 225 || StateNo = 235) && Var(32)!=0
trigger4 = (StateNo = 200 && AnimElemTime(2) >= 2)
trigger5 = (StateNo = 210 && AnimElemTime(4) >= 0 && AnimElemTime(5) <= 3)
trigger6 = (StateNo = 220 && AnimElemTime(3) >= 0 && AnimElemTime(6) < 0)
trigger7 = (StateNo = 230 && AnimElemTime(3) >= 0 && AnimElemTime(7) < 0)
trigger8 = MoveContact && (StateNo = 400 && AnimElemTime(3) >= 2 && AnimElemTime(5) <= 3)
trigger9 = MoveContact && (StateNo = 420 && AnimElemTime(6) >= 0 && AnimElemTime(7) < 0)
trigger10 = MoveContact && (StateNo = 700 && AnimElemTime(7) >= 0 && AnimElemTime(9) < 2)
trigger11 = MoveContact && ((StateNo = [710,715]) && AnimElemTime(5) >= 0 && AnimElemTime(9) < 2)
trigger12 = MoveContact && (StateNo = 1060 && AnimElemTime(7) >= 0 && AnimElemTime(8) < 0) && Power >= 2000-fVar(2)
trigger13 = MoveContact && (StateNo = 1800 && AnimElemTime(13) >= 0 && AnimElemTime(16) < 0) && Power >= 2000-fVar(2)
trigger14 = MoveContact && (StateNo = 1850 && AnimElemTime(28) >= 0 && AnimElemTime(31) < 0) && Power >= 2000-fVar(2)
trigger15 = (StateNo = 1410 && AnimElemTime(19) >= 0) && Power >= 2000-fVar(2)

;  ほえるだいち Y
[State -1,3900]
type = ChangeState
value = 3950
triggerall = Command = "FnlIpct_y" && var(36)=2 && Power >= 1000-fVar(2)
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = var(30)=0 && MoveContact && (StateNo = 200 || StateNo = 210 || StateNo = 220 || StateNo = 230 || StateNo = 400 || StateNo = 420)
trigger3 = var(30)=0 && MoveContact && (StateNo = 430 || StateNo = 205 || StateNo = 215 || StateNo = 225 || StateNo = 235) && Var(32)!=0
trigger4 = var(30)=0 && (StateNo = 200 && AnimElemTime(2) >= 2)
trigger5 = var(30)=0 && (StateNo = 210 && AnimElemTime(4) >= 0 && AnimElemTime(5) <= 3)
trigger6 = var(30)=0 && (StateNo = 220 && AnimElemTime(3) >= 0 && AnimElemTime(6) < 0)
trigger7 = var(30)=0 && (StateNo = 230 && AnimElemTime(3) >= 0 && AnimElemTime(7) < 0)
trigger8 = var(30)=0 && MoveContact && (StateNo = 400 && AnimElemTime(3) >= 2 && AnimElemTime(5) <= 3)
trigger9 = var(30)=0 && MoveContact && (StateNo = 420 && AnimElemTime(6) >= 0 && AnimElemTime(7) < 0)
trigger10 = var(30)=0 && MoveContact && (StateNo = 700 && AnimElemTime(7) >= 0 && AnimElemTime(9) < 2)
trigger11 = var(30)=0 && MoveContact && ((StateNo = [710,715]) && AnimElemTime(5) >= 0 && AnimElemTime(9) < 2)
trigger12 = var(30)=0 && MoveContact && (StateNo = 1060 && AnimElemTime(7) >= 0 && AnimElemTime(8) < 0) && Power >= 2000-fVar(2)
trigger13 = var(30)=0 && MoveContact && (StateNo = 1800 && AnimElemTime(13) >= 0 && AnimElemTime(16) < 0) && Power >= 2000-fVar(2)
trigger14 = var(30)=0 && MoveContact && (StateNo = 1850 && AnimElemTime(28) >= 0 && AnimElemTime(31) < 0) && Power >= 2000-fVar(2)
trigger15 = var(30)=0 && (StateNo = 1410 && AnimElemTime(19) >= 0) && Power >= 2000-fVar(2)

;----------------------------------------------------------------------
;  ファイナルインパクト MAX
[State -1,3000]
type = ChangeState
value = 3300
triggerall = Command = "FnlIpct_MAX" ;&& var(36)!=2 && Var(32)!=0 && Power >= 2000-fVar(2)
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = MoveContact && (StateNo = 200 || StateNo = 210 || StateNo = 220 || StateNo = 230 || StateNo = 400 || StateNo = 420)
trigger3 = MoveContact && (StateNo = 430 || StateNo = 205 || StateNo = 215 || StateNo = 225 || StateNo = 235) && Var(32)!=0
trigger4 = (StateNo = 200 && AnimElemTime(2) >= 2)
trigger5 = (StateNo = 210 && AnimElemTime(4) >= 0 && AnimElemTime(5) <= 3)
trigger6 = (StateNo = 220 && AnimElemTime(3) >= 0 && AnimElemTime(6) < 0)
trigger7 = (StateNo = 230 && AnimElemTime(3) >= 0 && AnimElemTime(7) < 0)
trigger8 = MoveContact && (StateNo = 400 && AnimElemTime(3) >= 2 && AnimElemTime(5) <= 3)
trigger9 = MoveContact && (StateNo = 420 && AnimElemTime(6) >= 0 && AnimElemTime(7) < 0)
trigger10 = MoveContact && (StateNo = 700 && AnimElemTime(7) >= 0 && AnimElemTime(9) < 2)
trigger11 = MoveContact && ((StateNo = [710,715]) && AnimElemTime(5) >= 0 && AnimElemTime(9) < 2)
trigger12 = MoveContact && (StateNo = 1060 && AnimElemTime(7) >= 0 && AnimElemTime(8) < 0) && Power >= 3000-fVar(2)
trigger13 = MoveContact && (StateNo = 1800 && AnimElemTime(13) >= 0 && AnimElemTime(16) < 0) && Power >= 3000-fVar(2)
trigger14 = MoveContact && (StateNo = 1850 && AnimElemTime(28) >= 0 && AnimElemTime(31) < 0) && Power >= 3000-fVar(2)

;  ファイナルインパクト X
[State -1,3000]
type = ChangeState
value = 3000
triggerall = Command = "FnlIpct_x" && var(36)!=2 && Power >= 1000-fVar(2)
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = MoveContact && (StateNo = 200 || StateNo = 210 || StateNo = 220 || StateNo = 230 || StateNo = 400 || StateNo = 420)
trigger3 = MoveContact && (StateNo = 430 || StateNo = 205 || StateNo = 215 || StateNo = 225 || StateNo = 235) && Var(32)!=0
trigger4 = (StateNo = 200 && AnimElemTime(2) >= 2)
trigger5 = (StateNo = 210 && AnimElemTime(4) >= 0 && AnimElemTime(5) <= 3)
trigger6 = (StateNo = 220 && AnimElemTime(3) >= 0 && AnimElemTime(6) < 0)
trigger7 = (StateNo = 230 && AnimElemTime(3) >= 0 && AnimElemTime(7) < 0)
trigger8 = MoveContact && (StateNo = 400 && AnimElemTime(3) >= 2 && AnimElemTime(5) <= 3)
trigger9 = MoveContact && (StateNo = 420 && AnimElemTime(6) >= 0 && AnimElemTime(7) < 0)
trigger10 = MoveContact && (StateNo = 700 && AnimElemTime(7) >= 0 && AnimElemTime(9) < 2)
trigger11 = MoveContact && ((StateNo = [710,715]) && AnimElemTime(5) >= 0 && AnimElemTime(9) < 2)
trigger12 = MoveContact && (StateNo = 1060 && AnimElemTime(7) >= 0 && AnimElemTime(8) < 0) && Power >= 2000-fVar(2)
trigger13 = MoveContact && (StateNo = 1800 && AnimElemTime(13) >= 0 && AnimElemTime(16) < 0) && Power >= 2000-fVar(2)
trigger14 = MoveContact && (StateNo = 1850 && AnimElemTime(28) >= 0 && AnimElemTime(31) < 0) && Power >= 2000-fVar(2)

;  ファイナルインパクト Y
[State -1,3000]
type = ChangeState
value = 3050
triggerall = Command = "FnlIpct_y" && var(36)!=2 && Power >= 1000-fVar(2)
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = MoveContact && (StateNo = 200 || StateNo = 210 || StateNo = 220 || StateNo = 230 || StateNo = 400 || StateNo = 420)
trigger3 = MoveContact && (StateNo = 430 || StateNo = 205 || StateNo = 215 || StateNo = 225 || StateNo = 235) && Var(32)!=0
trigger4 = (StateNo = 200 && AnimElemTime(2) >= 2)
trigger5 = (StateNo = 210 && AnimElemTime(4) >= 0 && AnimElemTime(5) <= 3)
trigger6 = (StateNo = 220 && AnimElemTime(3) >= 0 && AnimElemTime(6) < 0)
trigger7 = (StateNo = 230 && AnimElemTime(3) >= 0 && AnimElemTime(7) < 0)
trigger8 = MoveContact && (StateNo = 400 && AnimElemTime(3) >= 2 && AnimElemTime(5) <= 3)
trigger9 = MoveContact && (StateNo = 420 && AnimElemTime(6) >= 0 && AnimElemTime(7) < 0)
trigger10 = MoveContact && (StateNo = 700 && AnimElemTime(7) >= 0 && AnimElemTime(9) < 2)
trigger11 = MoveContact && ((StateNo = [710,715]) && AnimElemTime(5) >= 0 && AnimElemTime(9) < 2)
trigger12 = MoveContact && (StateNo = 1060 && AnimElemTime(7) >= 0 && AnimElemTime(8) < 0) && Power >= 2000-fVar(2)
trigger13 = MoveContact && (StateNo = 1800 && AnimElemTime(13) >= 0 && AnimElemTime(16) < 0) && Power >= 2000-fVar(2)
trigger14 = MoveContact && (StateNo = 1850 && AnimElemTime(28) >= 0 && AnimElemTime(31) < 0) && Power >= 2000-fVar(2)

;----------------------------------------------------------------------
; ミリオンバッシュストリーム MAX
[State -1,3150]
type = ChangeState
value = 3150
triggerall = Command = "MlnDichi_MAX" && var(36)=1  && var(32)!=0 && Power >= 2000-fVar(2)
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = MoveContact && (StateNo = 200 || StateNo = 210 || StateNo = 220 || StateNo = 230 || StateNo = 400 || StateNo = 420)
trigger3 = MoveContact && (StateNo = 430 || StateNo = 205 || StateNo = 215 || StateNo = 225 || StateNo = 235) && Var(32)!=0
trigger4 = (StateNo = 200 && AnimElemTime(2) >= 2)
trigger5 = (StateNo = 210 && AnimElemTime(4) >= 0 && AnimElemTime(5) <= 3)
trigger6 = (StateNo = 220 && AnimElemTime(3) >= 0 && AnimElemTime(6) < 0)
trigger7 = (StateNo = 230 && AnimElemTime(3) >= 0 && AnimElemTime(7) < 0)
trigger8 = MoveContact && (StateNo = 400 && AnimElemTime(3) >= 2 && AnimElemTime(5) <= 3)
trigger9 = MoveContact && (StateNo = 420 && AnimElemTime(6) >= 0 && AnimElemTime(7) < 0)
trigger10 = MoveContact && (StateNo = 700 && AnimElemTime(7) >= 0 && AnimElemTime(9) < 2)
trigger11 = MoveContact && ((StateNo = [710,715]) && AnimElemTime(5) >= 0 && AnimElemTime(9) < 2)
trigger12 = MoveContact && (StateNo = 1060 && AnimElemTime(7) >= 0 && AnimElemTime(8) < 0) && Power >= 3000-fVar(2)
trigger13 = MoveContact && (StateNo = 1800 && AnimElemTime(13) >= 0 && AnimElemTime(16) < 0) && Power >= 3000-fVar(2)
trigger14 = MoveContact && (StateNo = 1850 && AnimElemTime(28) >= 0 && AnimElemTime(31) < 0) && Power >= 3000-fVar(2)

; ミリオンバッシュストリーム X
[State -1,3100]
type = ChangeState
value = 3100
triggerall = Command = "MlnDichi_x" && var(36)=1 && Power >= 1000-fVar(2)
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = MoveContact && (StateNo = 200 || StateNo = 210 || StateNo = 220 || StateNo = 230 || StateNo = 400 || StateNo = 420)
trigger3 = MoveContact && (StateNo = 430 || StateNo = 205 || StateNo = 215 || StateNo = 225 || StateNo = 235) && Var(32)!=0
trigger4 = (StateNo = 200 && AnimElemTime(2) >= 2)
trigger5 = (StateNo = 210 && AnimElemTime(4) >= 0 && AnimElemTime(5) <= 3)
trigger6 = (StateNo = 220 && AnimElemTime(3) >= 0 && AnimElemTime(6) < 0)
trigger7 = (StateNo = 230 && AnimElemTime(3) >= 0 && AnimElemTime(7) < 0)
trigger8 = MoveContact && (StateNo = 400 && AnimElemTime(3) >= 2 && AnimElemTime(5) <= 3)
trigger9 = MoveContact && (StateNo = 420 && AnimElemTime(6) >= 0 && AnimElemTime(7) < 0)
trigger10 = MoveContact && (StateNo = 700 && AnimElemTime(7) >= 0 && AnimElemTime(9) < 2)
trigger11 = MoveContact && ((StateNo = [710,715]) && AnimElemTime(5) >= 0 && AnimElemTime(9) < 2)
trigger12 = MoveContact && (StateNo = 1060 && AnimElemTime(7) >= 0 && AnimElemTime(8) < 0) && Power >= 2000-fVar(2)
trigger13 = MoveContact && (StateNo = 1800 && AnimElemTime(13) >= 0 && AnimElemTime(16) < 0) && Power >= 2000-fVar(2)
trigger14 = MoveContact && (StateNo = 1850 && AnimElemTime(28) >= 0 && AnimElemTime(31) < 0) && Power >= 2000-fVar(2)

; ミリオンバッシュストリーム Y
[State -1,3100]
type = ChangeState
value = 3130
triggerall = Command = "MlnDichi_y" && var(36)=1 && Power >= 1000-fVar(2)
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = MoveContact && (StateNo = 200 || StateNo = 210 || StateNo = 220 || StateNo = 230 || StateNo = 400 || StateNo = 420)
trigger3 = MoveContact && (StateNo = 430 || StateNo = 205 || StateNo = 215 || StateNo = 225 || StateNo = 235) && Var(32)!=0
trigger4 = (StateNo = 200 && AnimElemTime(2) >= 2)
trigger5 = (StateNo = 210 && AnimElemTime(4) >= 0 && AnimElemTime(5) <= 3)
trigger6 = (StateNo = 220 && AnimElemTime(3) >= 0 && AnimElemTime(6) < 0)
trigger7 = (StateNo = 230 && AnimElemTime(3) >= 0 && AnimElemTime(7) < 0)
trigger8 = MoveContact && (StateNo = 400 && AnimElemTime(3) >= 2 && AnimElemTime(5) <= 3)
trigger9 = MoveContact && (StateNo = 420 && AnimElemTime(6) >= 0 && AnimElemTime(7) < 0)
trigger10 = MoveContact && (StateNo = 700 && AnimElemTime(7) >= 0 && AnimElemTime(9) < 2)
trigger11 = MoveContact && ((StateNo = [710,715]) && AnimElemTime(5) >= 0 && AnimElemTime(9) < 2)
trigger12 = MoveContact && (StateNo = 1060 && AnimElemTime(7) >= 0 && AnimElemTime(8) < 0) && Power >= 2000-fVar(2)
trigger13 = MoveContact && (StateNo = 1800 && AnimElemTime(13) >= 0 && AnimElemTime(16) < 0) && Power >= 2000-fVar(2)
trigger14 = MoveContact && (StateNo = 1850 && AnimElemTime(28) >= 0 && AnimElemTime(31) < 0) && Power >= 2000-fVar(2)

;=====================================================================
; Special Arts 
;=====================================================================
; むせぶだいち X/Y
[State -1]
type = ChangeState
value = 1500
triggerall = (Command = "MsbDichi_x" || Command = "MsbDichi_y") && var(36)=2
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = (StateNo = 200 && AnimElemTime(2) >= 2)
trigger3 = (StateNo = 210 && AnimElemTime(4) >= 0 && AnimElemTime(5) <= 3)
trigger4 = (StateNo = 220 && AnimElemTime(3) >= 0 && AnimElemTime(6) < 0)
trigger5 = (StateNo = 230 && AnimElemTime(3) >= 0 && AnimElemTime(7) < 0)
trigger6 = (MoveContact || Var(32)!=0) && (StateNo = 400 && AnimElemTime(3) >= 2 && AnimElemTime(5) <= 3)
trigger7 = (MoveContact || Var(32)!=0) && (StateNo = 420 && AnimElemTime(6) >= 0 && AnimElemTime(7) < 0)
trigger8 = (MoveContact || Var(32)!=0) && (StateNo = 410 && AnimElemTime(4) >= 2 && AnimElemTime(6) <= 3)
trigger9 = (MoveContact || Var(32)!=0) && (StateNo = 430 && AnimElemTime(4) >= 0 && AnimElemTime(9) < 0)
trigger10 = MoveContact && (StateNo = 700 && AnimElemTime(7) >= 0 && AnimElemTime(9) < 2)
trigger11 = MoveContact && ((StateNo = [710,715]) && AnimElemTime(5) >= 0 && AnimElemTime(9) < 2)
trigger12 = MoveContact && (StateNo = 1000 && AnimElemTime(10) >= 0 && AnimElemTime(13) < 2) && Var(32)!=0
trigger13 = MoveContact && (StateNo = 1050 && AnimElemTime(14) >= 0 && AnimElemTime(17) < 2) && Var(32)!=0
trigger14 = MoveContact && (StateNo = 1300 && AnimElemTime(5) >= 0) && Var(32)!=0
trigger15 = MoveContact && (StateNo = 1310 && AnimElemTime(3) < 4) && Var(32)!=0
trigger16 = MoveContact && (StateNo = 1350 && AnimElemTime(5) >= 0) && Var(32)!=0
trigger17 = MoveContact && (StateNo = 1360 && AnimElemTime(4) < 0) && Var(32)!=0
trigger18 = (StateNo = 205 && AnimElemTime(2) >= 2) && Var(32)!=0 || (StateNo = 225 && AnimElemTime(4) >= 1) && Var(32)!=0
trigger19 = (StateNo = 215 && AnimElemTime(3) >= 2) && Var(32)!=0 || (StateNo = 235 && AnimElemTime(7) >= 1) && Var(32)!=0
trigger20 = (StateNo = 600 && AnimElemTime(3) >= 2) && Var(30)=0

;-------------------------------------------------------------------------------
; にらぐだいち X/Y
[State -1]
type = ChangeState
value = 1400
triggerall = (Command = "JctCntr_x" || Command = "JctCntr_y") && var(36)=2
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = (StateNo = 200 && AnimElemTime(2) >= 2) && var(30)=0
trigger3 = (StateNo = 210 && AnimElemTime(4) >= 0 && AnimElemTime(5) <= 3) && var(30)=0
trigger4 = (StateNo = 220 && AnimElemTime(3) >= 0 && AnimElemTime(6) < 0) && var(30)=0
trigger5 = (StateNo = 230 && AnimElemTime(3) >= 0 && AnimElemTime(7) < 0) && var(30)=0
trigger6 = (MoveContact || Var(32)!=0) && (StateNo = 400 && AnimElemTime(3) >= 2 && AnimElemTime(5) <= 3) && var(30)=0
trigger7 = (MoveContact || Var(32)!=0) && (StateNo = 420 && AnimElemTime(6) >= 0 && AnimElemTime(7) < 0) && var(30)=0
trigger8 = (MoveContact || Var(32)!=0) && (StateNo = 410 && AnimElemTime(4) >= 2 && AnimElemTime(6) <= 3) && var(30)=0
trigger9 = (MoveContact || Var(32)!=0) && (StateNo = 430 && AnimElemTime(4) >= 0 && AnimElemTime(9) < 0) && var(30)=0
trigger10 = MoveContact && (StateNo = 700 && AnimElemTime(7) >= 0 && AnimElemTime(9) < 2) && var(30)=0
trigger11 = MoveContact && ((StateNo = [710,715]) && AnimElemTime(5) >= 0 && AnimElemTime(9) < 2) && var(30)=0
trigger12 = MoveContact && (StateNo = 1000 && AnimElemTime(10) >= 0 && AnimElemTime(13) < 2) && Var(32)!=0
trigger13 = MoveContact && (StateNo = 1050 && AnimElemTime(14) >= 0 && AnimElemTime(17) < 2) && Var(32)!=0
trigger14 = MoveContact && (StateNo = 1300 && AnimElemTime(5) >= 0) && Var(32)!=0
trigger15 = MoveContact && (StateNo = 1310 && AnimElemTime(3) < 4) && Var(32)!=0
trigger16 = MoveContact && (StateNo = 1350 && AnimElemTime(5) >= 0) && Var(32)!=0
trigger17 = MoveContact && (StateNo = 1360 && AnimElemTime(4) < 0) && Var(32)!=0
trigger18 = (StateNo = 205 && AnimElemTime(2) >= 2) && Var(32)!=0 || (StateNo = 225 && AnimElemTime(4) >= 1) && Var(32)!=0
trigger19 = (StateNo = 215 && AnimElemTime(3) >= 2) && Var(32)!=0 || (StateNo = 235 && AnimElemTime(7) >= 1) && Var(32)!=0
trigger20 = (StateNo = 600 && AnimElemTime(3) >= 2) && Var(30)=0

;-------------------------------------------------------------------------------
; おどるだいち A
[State -1]
type = ChangeState
value = 1700
triggerall = Command = "OdrDichi_a" && var(36)=2
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = (StateNo = 200 && AnimElemTime(2) >= 2) && var(30)=0
trigger3 = (StateNo = 210 && AnimElemTime(4) >= 0 && AnimElemTime(5) <= 3) && var(30)=0
trigger4 = (StateNo = 220 && AnimElemTime(3) >= 0 && AnimElemTime(6) < 0) && var(30)=0
trigger5 = (StateNo = 230 && AnimElemTime(3) >= 0 && AnimElemTime(7) < 0) && var(30)=0
trigger6 = (MoveContact || Var(32)!=0) && (StateNo = 400 && AnimElemTime(3) >= 2 && AnimElemTime(5) <= 3) && var(30)=0
trigger7 = (MoveContact || Var(32)!=0) && (StateNo = 420 && AnimElemTime(6) >= 0 && AnimElemTime(7) < 0) && var(30)=0
trigger8 = (MoveContact || Var(32)!=0) && (StateNo = 410 && AnimElemTime(4) >= 2 && AnimElemTime(6) <= 3) && var(30)=0
trigger9 = (MoveContact || Var(32)!=0) && (StateNo = 430 && AnimElemTime(4) >= 0 && AnimElemTime(9) < 0) && var(30)=0
trigger10 = MoveContact && (StateNo = 700 && AnimElemTime(7) >= 0 && AnimElemTime(9) < 2) && var(30)=0
trigger11 = MoveContact && ((StateNo = [710,715]) && AnimElemTime(5) >= 0 && AnimElemTime(9) < 2) && var(30)=0
trigger12 = MoveContact && (StateNo = 1000 && AnimElemTime(10) >= 0 && AnimElemTime(13) < 2) && Var(32)!=0
trigger13 = MoveContact && (StateNo = 1050 && AnimElemTime(14) >= 0 && AnimElemTime(17) < 2) && Var(32)!=0
trigger14 = MoveContact && (StateNo = 1300 && AnimElemTime(5) >= 0) && Var(32)!=0
trigger15 = MoveContact && (StateNo = 1310 && AnimElemTime(3) < 4) && Var(32)!=0
trigger16 = MoveContact && (StateNo = 1350 && AnimElemTime(5) >= 0) && Var(32)!=0
trigger17 = MoveContact && (StateNo = 1360 && AnimElemTime(4) < 0) && Var(32)!=0
trigger18 = (StateNo = 205 && AnimElemTime(2) >= 2) && Var(32)!=0 || (StateNo = 225 && AnimElemTime(4) >= 1) && Var(32)!=0
trigger19 = (StateNo = 215 && AnimElemTime(3) >= 2) && Var(32)!=0 || (StateNo = 235 && AnimElemTime(7) >= 1) && Var(32)!=0
trigger20 = (StateNo = 600 && AnimElemTime(3) >= 2) && Var(30)=0

; おどるだいち B
[State -1]
type = ChangeState
value = 1750
triggerall = Command = "OdrDichi_b" && var(36)=2
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = (StateNo = 200 && AnimElemTime(2) >= 2) && var(30)=0
trigger3 = (StateNo = 210 && AnimElemTime(4) >= 0 && AnimElemTime(5) <= 3) && var(30)=0
trigger4 = (StateNo = 220 && AnimElemTime(3) >= 0 && AnimElemTime(6) < 0) && var(30)=0
trigger5 = (StateNo = 230 && AnimElemTime(3) >= 0 && AnimElemTime(7) < 0) && var(30)=0
trigger6 = (MoveContact || Var(32)!=0) && (StateNo = 400 && AnimElemTime(3) >= 2 && AnimElemTime(5) <= 3) && var(30)=0
trigger7 = (MoveContact || Var(32)!=0) && (StateNo = 420 && AnimElemTime(6) >= 0 && AnimElemTime(7) < 0) && var(30)=0
trigger8 = (MoveContact || Var(32)!=0) && (StateNo = 410 && AnimElemTime(4) >= 2 && AnimElemTime(6) <= 3) && var(30)=0
trigger9 = (MoveContact || Var(32)!=0) && (StateNo = 430 && AnimElemTime(4) >= 0 && AnimElemTime(9) < 0) && var(30)=0
trigger10 = MoveContact && (StateNo = 700 && AnimElemTime(7) >= 0 && AnimElemTime(9) < 2) && var(30)=0
trigger11 = MoveContact && ((StateNo = [710,715]) && AnimElemTime(5) >= 0 && AnimElemTime(9) < 2) && var(30)=0
trigger12 = MoveContact && (StateNo = 1000 && AnimElemTime(10) >= 0 && AnimElemTime(13) < 2) && Var(32)!=0
trigger13 = MoveContact && (StateNo = 1050 && AnimElemTime(14) >= 0 && AnimElemTime(17) < 2) && Var(32)!=0
trigger14 = MoveContact && (StateNo = 1300 && AnimElemTime(5) >= 0) && Var(32)!=0
trigger15 = MoveContact && (StateNo = 1310 && AnimElemTime(3) < 4) && Var(32)!=0
trigger16 = MoveContact && (StateNo = 1350 && AnimElemTime(5) >= 0) && Var(32)!=0
trigger17 = MoveContact && (StateNo = 1360 && AnimElemTime(4) < 0) && Var(32)!=0
trigger18 = (StateNo = 205 && AnimElemTime(2) >= 2) && Var(32)!=0 || (StateNo = 225 && AnimElemTime(4) >= 1) && Var(32)!=0
trigger19 = (StateNo = 215 && AnimElemTime(3) >= 2) && Var(32)!=0 || (StateNo = 235 && AnimElemTime(7) >= 1) && Var(32)!=0
trigger20 = (StateNo = 600 && AnimElemTime(3) >= 2) && Var(30)=0

;-------------------------------------------------------------------------------
; ジェットカウンター 98
[State -1]
type = ChangeState
value = 1100
triggerall = Command = "JctCntr_98" && var(36)!=2
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = (StateNo = 200 && AnimElemTime(2) >= 2)
trigger3 = (StateNo = 210 && AnimElemTime(4) >= 0 && AnimElemTime(5) <= 3)
trigger4 = (StateNo = 220 && AnimElemTime(3) >= 0 && AnimElemTime(6) < 0)
trigger5 = (StateNo = 230 && AnimElemTime(3) >= 0 && AnimElemTime(7) < 0)
trigger6 = (MoveContact || Var(32)!=0) && (StateNo = 400 && AnimElemTime(3) >= 2 && AnimElemTime(5) <= 3)
trigger7 = (MoveContact || Var(32)!=0) && (StateNo = 420 && AnimElemTime(6) >= 0 && AnimElemTime(7) < 0)
trigger8 = (MoveContact || Var(32)!=0) && (StateNo = 410 && AnimElemTime(4) >= 2 && AnimElemTime(6) <= 3)
trigger9 = (MoveContact || Var(32)!=0) && (StateNo = 430 && AnimElemTime(4) >= 0 && AnimElemTime(9) < 0)
trigger10 = MoveContact && (StateNo = 700 && AnimElemTime(7) >= 0 && AnimElemTime(9) < 2)
trigger11 = MoveContact && ((StateNo = [710,715]) && AnimElemTime(5) >= 0 && AnimElemTime(9) < 2)
trigger12 = MoveContact && (StateNo = 1000 && AnimElemTime(10) >= 0 && AnimElemTime(13) < 2) && Var(32)!=0
trigger13 = MoveContact && (StateNo = 1050 && AnimElemTime(14) >= 0 && AnimElemTime(17) < 2) && Var(32)!=0
trigger14 = MoveContact && (StateNo = 1300 && AnimElemTime(5) >= 0) && Var(32)!=0
trigger15 = MoveContact && (StateNo = 1310 && AnimElemTime(3) < 4) && Var(32)!=0
trigger16 = MoveContact && (StateNo = 1350 && AnimElemTime(5) >= 0) && Var(32)!=0
trigger17 = MoveContact && (StateNo = 1360 && AnimElemTime(4) < 0) && Var(32)!=0
trigger18 = (StateNo = 205 && AnimElemTime(2) >= 2) && Var(32)!=0 || (StateNo = 225 && AnimElemTime(4) >= 1) && Var(32)!=0
trigger19 = (StateNo = 215 && AnimElemTime(3) >= 2) && Var(32)!=0 || (StateNo = 235 && AnimElemTime(7) >= 1) && Var(32)!=0
trigger20 = (StateNo = 600 && AnimElemTime(3) >= 2) && (Var(30)=0 || Var(30)!=0 && Var(48)!=0)

; ジェットカウンター X
[State -1]
type = ChangeState
value = 1000
triggerall = Command = "JctCntr_x" && var(36)!=2
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = (StateNo = 200 && AnimElemTime(2) >= 2)
trigger3 = (StateNo = 210 && AnimElemTime(4) >= 0 && AnimElemTime(5) <= 3)
trigger4 = (StateNo = 220 && AnimElemTime(3) >= 0 && AnimElemTime(6) < 0)
trigger5 = (StateNo = 230 && AnimElemTime(3) >= 0 && AnimElemTime(7) < 0)
trigger6 = (MoveContact || Var(32)!=0) && (StateNo = 400 && AnimElemTime(3) >= 2 && AnimElemTime(5) <= 3)
trigger7 = (MoveContact || Var(32)!=0) && (StateNo = 420 && AnimElemTime(6) >= 0 && AnimElemTime(7) < 0)
trigger8 = (MoveContact || Var(32)!=0) && (StateNo = 410 && AnimElemTime(4) >= 2 && AnimElemTime(6) <= 3)
trigger9 = (MoveContact || Var(32)!=0) && (StateNo = 430 && AnimElemTime(4) >= 0 && AnimElemTime(9) < 0)
trigger10 = MoveContact && (StateNo = 700 && AnimElemTime(7) >= 0 && AnimElemTime(9) < 2)
trigger11 = MoveContact && ((StateNo = [710,715]) && AnimElemTime(5) >= 0 && AnimElemTime(9) < 2)
trigger12 = MoveContact && (StateNo = 1050 && AnimElemTime(14) >= 0 && AnimElemTime(17) < 2) && Var(32)!=0
trigger13 = MoveContact && (StateNo = 1300 && AnimElemTime(5) >= 0) && Var(32)!=0
trigger14 = MoveContact && (StateNo = 1310 && AnimElemTime(3) < 4) && Var(32)!=0
trigger15 = MoveContact && (StateNo = 1350 && AnimElemTime(5) >= 0) && Var(32)!=0
trigger16 = MoveContact && (StateNo = 1360 && AnimElemTime(4) < 0) && Var(32)!=0
trigger17 = MoveContact && (StateNo = 1100 && AnimElemTime(10) >= 0 && AnimElemTime(13) < 2) && Var(32)!=0 && !Command = "JctCntr_98"
trigger18 = (StateNo = 205 && AnimElemTime(2) >= 2) && Var(32)!=0 || (StateNo = 225 && AnimElemTime(4) >= 1) && Var(32)!=0
trigger19 = (StateNo = 215 && AnimElemTime(3) >= 2) && Var(32)!=0 || (StateNo = 235 && AnimElemTime(7) >= 1) && Var(32)!=0
trigger20 = (StateNo = 600 && AnimElemTime(3) >= 2) && (Var(30)=0 || Var(30)!=0 && Var(48)!=0)

; ジェットカウンター Y
[State -1]
type = ChangeState
value = 1050
triggerall = Command = "JctCntr_y" && var(36)!=2
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = (StateNo = 200 && AnimElemTime(2) >= 2)
trigger3 = (StateNo = 210 && AnimElemTime(4) >= 0 && AnimElemTime(5) <= 3)
trigger4 = (StateNo = 220 && AnimElemTime(3) >= 0 && AnimElemTime(6) < 0)
trigger5 = (StateNo = 230 && AnimElemTime(3) >= 0 && AnimElemTime(7) < 0)
trigger6 = (MoveContact || Var(32)!=0) && (StateNo = 400 && AnimElemTime(3) >= 2 && AnimElemTime(5) <= 3)
trigger7 = (MoveContact || Var(32)!=0) && (StateNo = 420 && AnimElemTime(6) >= 0 && AnimElemTime(7) < 0)
trigger8 = (MoveContact || Var(32)!=0) && (StateNo = 410 && AnimElemTime(4) >= 2 && AnimElemTime(6) <= 3)
trigger9 = (MoveContact || Var(32)!=0) && (StateNo = 430 && AnimElemTime(4) >= 0 && AnimElemTime(9) < 0)
trigger10 = MoveContact && (StateNo = 700 && AnimElemTime(7) >= 0 && AnimElemTime(9) < 2)
trigger11 = MoveContact && ((StateNo = [710,715]) && AnimElemTime(5) >= 0 && AnimElemTime(9) < 2)
trigger12 = MoveContact && (StateNo = 1000 && AnimElemTime(10) >= 0 && AnimElemTime(13) < 2) && Var(32)!=0
trigger13 = MoveContact && (StateNo = 1300 && AnimElemTime(5) >= 0) && Var(32)!=0
trigger14 = MoveContact && (StateNo = 1310 && AnimElemTime(3) < 4) && Var(32)!=0
trigger15 = MoveContact && (StateNo = 1350 && AnimElemTime(5) >= 0) && Var(32)!=0
trigger16 = MoveContact && (StateNo = 1360 && AnimElemTime(4) < 0) && Var(32)!=0
trigger17 = MoveContact && (StateNo = 1100 && AnimElemTime(10) >= 0 && AnimElemTime(13) < 2) && Var(32)!=0
trigger18 = (StateNo = 205 && AnimElemTime(2) >= 2) && Var(32)!=0 || (StateNo = 225 && AnimElemTime(4) >= 1) && Var(32)!=0
trigger19 = (StateNo = 215 && AnimElemTime(3) >= 2) && Var(32)!=0 || (StateNo = 235 && AnimElemTime(7) >= 1) && Var(32)!=0
trigger20 = (StateNo = 600 && AnimElemTime(3) >= 2) && (Var(30)=0 || Var(30)!=0 && Var(48)!=0)

;----------------------------------
; ジェットカウンター・スティル X
[State -1]
type = ChangeState
value = 1010
triggerall = Command = "JC_Stll_x" && var(36)!=2
trigger1 = MoveContact && (StateNo = 1000 && AnimElemTime(10) >= 0 && AnimElemTime(11) < 0)
trigger2 = MoveContact && (StateNo = 1100 && AnimElemTime(10) >= 0 && AnimElemTime(11) < 0)

; ジェットカウンター・スティル Y
[State -1]
type = ChangeState
value = 1060
triggerall = Command = "JC_Stll_y" && var(36)!=2
trigger1 = MoveContact && (StateNo = 1050 && AnimElemTime(14) >= 0 && AnimElemTime(15) < 0)

; ジェットカウンター98・スティル Y
[State -1]
type = ChangeState
value = 1110
triggerall = Command = "JC_Stll_y" && var(36)!=2
trigger1 = MoveContact && (StateNo = 1100 && AnimElemTime(10) >= 0 && AnimElemTime(11) < 0)

;----------------------------------
; アッパーデュエル X
[State -1]
type = ChangeState
value = 1300
triggerall = Command = "UpDhl_x" && var(36)!=2 && (var(30)=0 || var(30)!=0 && P2BodyDist X = [-20,90])
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100) && Pos Y = 0
trigger2 = (StateNo = 200 && AnimElemTime(2) >= 2)
trigger3 = (StateNo = 210 && AnimElemTime(4) >= 0 && AnimElemTime(5) <= 3)
trigger4 = (StateNo = 220 && AnimElemTime(3) >= 0 && AnimElemTime(6) < 0)
trigger5 = (StateNo = 230 && AnimElemTime(3) >= 0 && AnimElemTime(7) < 0)
trigger6 = (MoveContact || Var(32)!=0) && (StateNo = 400 && AnimElemTime(3) >= 2 && AnimElemTime(5) <= 3)
trigger7 = (MoveContact || Var(32)!=0) && (StateNo = 420 && AnimElemTime(6) >= 0 && AnimElemTime(7) < 0)
trigger8 = (MoveContact || Var(32)!=0) && (StateNo = 410 && AnimElemTime(4) >= 2 && AnimElemTime(6) <= 3)
trigger9 = (MoveContact || Var(32)!=0) && (StateNo = 430 && AnimElemTime(4) >= 0 && AnimElemTime(9) < 0)
trigger10 = MoveContact && (StateNo = 700 && AnimElemTime(7) >= 0 && AnimElemTime(9) < 2)
trigger11 = MoveContact && ((StateNo = [710,715]) && AnimElemTime(5) >= 0 && AnimElemTime(9) < 2)
trigger12 = MoveContact && (StateNo = 1000 && AnimElemTime(10) >= 0 && AnimElemTime(13) < 2) && Var(32)!=0 && !Command = "holdfwdOnly"
trigger13 = MoveContact && (StateNo = 1050 && AnimElemTime(14) >= 0 && AnimElemTime(17) < 2) && Var(32)!=0 && !Command = "holdfwdOnly"
trigger14 = MoveContact && (StateNo = 1100 && AnimElemTime(10) >= 0 && AnimElemTime(13) < 2) && Var(32)!=0 && !Command = "holdfwdOnly"
trigger15 = (StateNo = 205 && AnimElemTime(2) >= 2) && Var(32)!=0 || (StateNo = 225 && AnimElemTime(4) >= 1) && Var(32)!=0
trigger16 = (StateNo = 215 && AnimElemTime(3) >= 2) && Var(32)!=0 || (StateNo = 235 && AnimElemTime(7) >= 1) && Var(32)!=0
trigger17 = (StateNo = 600 && AnimElemTime(3) >= 2) && (Var(30)=0 || Var(30)!=0 && Var(48)!=0)

; アッパーデュエル Y
[State -1]
type = ChangeState
value = 1350
triggerall = Command = "UpDhl_y" && var(36)!=2 && (var(30)=0 || var(30)!=0 && P2BodyDist X = [-20,90])
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100) && Pos Y = 0
trigger2 = (StateNo = 200 && AnimElemTime(2) >= 2)
trigger3 = (StateNo = 210 && AnimElemTime(4) >= 0 && AnimElemTime(5) <= 3)
trigger4 = (StateNo = 220 && AnimElemTime(3) >= 0 && AnimElemTime(6) < 0)
trigger5 = (StateNo = 230 && AnimElemTime(3) >= 0 && AnimElemTime(7) < 0)
trigger6 = (MoveContact || Var(32)!=0) && (StateNo = 400 && AnimElemTime(3) >= 2 && AnimElemTime(5) <= 3)
trigger7 = (MoveContact || Var(32)!=0) && (StateNo = 420 && AnimElemTime(6) >= 0 && AnimElemTime(7) < 0)
trigger8 = (MoveContact || Var(32)!=0) && (StateNo = 410 && AnimElemTime(4) >= 2 && AnimElemTime(6) <= 3)
trigger9 = (MoveContact || Var(32)!=0) && (StateNo = 430 && AnimElemTime(4) >= 0 && AnimElemTime(9) < 0)
trigger10 = MoveContact && (StateNo = 700 && AnimElemTime(7) >= 0 && AnimElemTime(9) < 2)
trigger11 = MoveContact && ((StateNo = [710,715]) && AnimElemTime(5) >= 0 && AnimElemTime(9) < 2)
trigger12 = MoveContact && (StateNo = 1000 && AnimElemTime(10) >= 0 && AnimElemTime(13) < 2) && Var(32)!=0 && !Command = "holdfwdOnly"
trigger13 = MoveContact && (StateNo = 1050 && AnimElemTime(14) >= 0 && AnimElemTime(17) < 2) && Var(32)!=0 && !Command = "holdfwdOnly"
trigger14 = MoveContact && (StateNo = 1100 && AnimElemTime(10) >= 0 && AnimElemTime(13) < 2) && Var(32)!=0 && !Command = "holdfwdOnly"
trigger15 = (StateNo = 205 && AnimElemTime(2) >= 2) && Var(32)!=0 || (StateNo = 225 && AnimElemTime(4) >= 1) && Var(32)!=0
trigger16 = (StateNo = 215 && AnimElemTime(3) >= 2) && Var(32)!=0 || (StateNo = 235 && AnimElemTime(7) >= 1) && Var(32)!=0
trigger17 = (StateNo = 600 && AnimElemTime(3) >= 2) && (Var(30)=0 || Var(30)!=0 && Var(48)!=0)

;----------------------------------
; スレッジジハンマー A
[State -1]
type = ChangeState
value = 1200
triggerall = Command = "SgHnmr_a" && var(30)=0 && var(36)!=2
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = (StateNo = 200 && AnimElemTime(2) >= 2) || (StateNo = 210 && AnimElemTime(4) >= 0 && AnimElemTime(5) <= 3)
trigger3 = (StateNo = 220 && AnimElemTime(3) >= 0 && AnimElemTime(6) < 0) || (StateNo = 230 && AnimElemTime(3) >= 0 && AnimElemTime(7) < 0)
trigger4 = (MoveContact || Var(32)!=0) && (StateNo = 400 && AnimElemTime(3) >= 2 && AnimElemTime(5) <= 3)
trigger5 = (MoveContact || Var(32)!=0) && (StateNo = 420 && AnimElemTime(6) >= 0 && AnimElemTime(7) < 0)
trigger6 = (MoveContact || Var(32)!=0) && (StateNo = 410 && AnimElemTime(4) >= 2 && AnimElemTime(6) <= 3)
trigger7 = (MoveContact || Var(32)!=0) && (StateNo = 430 && AnimElemTime(4) >= 0 && AnimElemTime(9) < 0)
trigger8 = (StateNo = 205 && AnimElemTime(2) >= 2) && Var(32)!=0 || (StateNo = 225 && AnimElemTime(4) >= 1) && Var(32)!=0
trigger9 = (StateNo = 215 && AnimElemTime(3) >= 2) && Var(32)!=0 || (StateNo = 235 && AnimElemTime(7) >= 1) && Var(32)!=0
trigger10 = MoveContact && (StateNo = 700 && AnimElemTime(7) >= 0 && AnimElemTime(9) < 2)
trigger11 = MoveContact && ((StateNo = [710,715]) && AnimElemTime(5) >= 0 && AnimElemTime(9) < 2)
trigger12 = MoveContact && (StateNo = 1000 && AnimElemTime(10) >= 0 && AnimElemTime(13) < 2) && Var(32)!=0
trigger13 = MoveContact && (StateNo = 1050 && AnimElemTime(14) >= 0 && AnimElemTime(17) < 2) && Var(32)!=0
trigger14 = MoveContact && (StateNo = 1300 && AnimElemTime(5) >= 0) && Var(32)!=0
trigger15 = MoveContact && (StateNo = 1310 && AnimElemTime(3) < 4) && Var(32)!=0
trigger16 = MoveContact && (StateNo = 1350 && AnimElemTime(5) >= 0) && Var(32)!=0
trigger17 = MoveContact && (StateNo = 1360 && AnimElemTime(4) < 0) && Var(32)!=0
trigger18 = MoveContact && (StateNo = 1100 && AnimElemTime(10) >= 0 && AnimElemTime(13) < 2) && Var(32)!=0
trigger19 = MoveContact && (StateNo = 1010 && AnimElemTime(5) >= 0 && AnimElemTime(7) < 2) && Var(32)!=0
trigger20 = MoveContact && (StateNo = 1060 && AnimElemTime(7) >= 0 && AnimElemTime(9) < 2) && Var(32)!=0
trigger21 = MoveContact && (StateNo = 1110 && AnimElemTime(5) >= 0 && AnimElemTime(8) < 2) && Var(32)!=0
trigger22 = MoveContact && (StateNo = 1800 && AnimElemTime(13) >= 0 && AnimElemTime(15) < 2) && Var(32)!=0
trigger23 = MoveContact && (StateNo = 1850 && AnimElemTime(14) >= 0 && AnimElemTime(30) < 2) && Var(32)!=0
trigger24 = (StateNo = 600 && AnimElemTime(3) >= 2) && (Var(30)=0 || Var(30)!=0 && Var(48)!=0)

; スレッジジハンマー B
[State -1]
type = ChangeState
value = 1250
triggerall = Command = "SgHnmr_b" && var(30)=0 && var(36)!=2
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = (StateNo = 200 && AnimElemTime(2) >= 2) || (StateNo = 210 && AnimElemTime(4) >= 0 && AnimElemTime(5) <= 3)
trigger3 = (StateNo = 220 && AnimElemTime(3) >= 0 && AnimElemTime(6) < 0) || (StateNo = 230 && AnimElemTime(3) >= 0 && AnimElemTime(7) < 0)
trigger4 = (MoveContact || Var(32)!=0) && (StateNo = 400 && AnimElemTime(3) >= 2 && AnimElemTime(5) <= 3)
trigger5 = (MoveContact || Var(32)!=0) && (StateNo = 420 && AnimElemTime(6) >= 0 && AnimElemTime(7) < 0)
trigger6 = (MoveContact || Var(32)!=0) && (StateNo = 410 && AnimElemTime(4) >= 2 && AnimElemTime(6) <= 3)
trigger7 = (MoveContact || Var(32)!=0) && (StateNo = 430 && AnimElemTime(4) >= 0 && AnimElemTime(9) < 0)
trigger8 = (StateNo = 205 && AnimElemTime(2) >= 2) && Var(32)!=0 || (StateNo = 225 && AnimElemTime(4) >= 1) && Var(32)!=0
trigger9 = (StateNo = 215 && AnimElemTime(3) >= 2) && Var(32)!=0 || (StateNo = 235 && AnimElemTime(7) >= 1) && Var(32)!=0
trigger10 = MoveContact && (StateNo = 700 && AnimElemTime(7) >= 0 && AnimElemTime(9) < 2)
trigger11 = MoveContact && ((StateNo = [710,715]) && AnimElemTime(5) >= 0 && AnimElemTime(9) < 2)
trigger12 = MoveContact && (StateNo = 1000 && AnimElemTime(10) >= 0 && AnimElemTime(13) < 2) && Var(32)!=0
trigger13 = MoveContact && (StateNo = 1050 && AnimElemTime(14) >= 0 && AnimElemTime(17) < 2) && Var(32)!=0
trigger14 = MoveContact && (StateNo = 1300 && AnimElemTime(5) >= 0) && Var(32)!=0
trigger15 = MoveContact && (StateNo = 1310 && AnimElemTime(3) < 4) && Var(32)!=0
trigger16 = MoveContact && (StateNo = 1350 && AnimElemTime(5) >= 0) && Var(32)!=0
trigger17 = MoveContact && (StateNo = 1360 && AnimElemTime(4) < 0) && Var(32)!=0
trigger18 = MoveContact && (StateNo = 1100 && AnimElemTime(10) >= 0 && AnimElemTime(13) < 2) && Var(32)!=0
trigger19 = MoveContact && (StateNo = 1010 && AnimElemTime(5) >= 0 && AnimElemTime(7) < 2) && Var(32)!=0
trigger20 = MoveContact && (StateNo = 1060 && AnimElemTime(7) >= 0 && AnimElemTime(9) < 2) && Var(32)!=0
trigger21 = MoveContact && (StateNo = 1110 && AnimElemTime(5) >= 0 && AnimElemTime(8) < 2) && Var(32)!=0
trigger22 = MoveContact && (StateNo = 1800 && AnimElemTime(13) >= 0 && AnimElemTime(15) < 2) && Var(32)!=0
trigger23 = MoveContact && (StateNo = 1850 && AnimElemTime(14) >= 0 && AnimElemTime(30) < 2) && Var(32)!=0
trigger24 = (StateNo = 600 && AnimElemTime(3) >= 2) && (Var(30)=0 || Var(30)!=0 && Var(48)!=0)

;-------------------------------------------------------------------------------
; くじくだいち X
[State -1]
type = ChangeState
value = 1600
triggerall = Command = "KjkDaiChi_x" && var(36)=2
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = (StateNo = 200 && AnimElemTime(2) >= 2)
trigger3 = (StateNo = 210 && AnimElemTime(4) >= 0 && AnimElemTime(5) <= 3)
trigger4 = (StateNo = 220 && AnimElemTime(3) >= 0 && AnimElemTime(6) < 0)
trigger5 = (StateNo = 230 && AnimElemTime(3) >= 0 && AnimElemTime(7) < 0)
trigger6 = (MoveContact || Var(32)!=0) && (StateNo = 400 && AnimElemTime(3) >= 2 && AnimElemTime(5) <= 3)
trigger7 = (MoveContact || Var(32)!=0) && (StateNo = 420 && AnimElemTime(6) >= 0 && AnimElemTime(7) < 0)
trigger8 = (MoveContact || Var(32)!=0) && (StateNo = 410 && AnimElemTime(4) >= 2 && AnimElemTime(6) <= 3)
trigger9 = (MoveContact || Var(32)!=0) && (StateNo = 430 && AnimElemTime(4) >= 0 && AnimElemTime(9) < 0)
trigger10 = MoveContact && (StateNo = 700 && AnimElemTime(7) >= 0 && AnimElemTime(9) < 2)
trigger11 = MoveContact && ((StateNo = [710,715]) && AnimElemTime(5) >= 0 && AnimElemTime(9) < 2)
trigger12 = MoveContact && (StateNo = 1000 && AnimElemTime(10) >= 0 && AnimElemTime(13) < 2) && Var(32)!=0
trigger13 = MoveContact && (StateNo = 1050 && AnimElemTime(14) >= 0 && AnimElemTime(17) < 2) && Var(32)!=0
trigger14 = MoveContact && (StateNo = 1300 && AnimElemTime(5) >= 0) && Var(32)!=0
trigger15 = MoveContact && (StateNo = 1310 && AnimElemTime(3) < 4) && Var(32)!=0
trigger16 = MoveContact && (StateNo = 1350 && AnimElemTime(5) >= 0) && Var(32)!=0
trigger17 = MoveContact && (StateNo = 1360 && AnimElemTime(4) < 0) && Var(32)!=0
trigger18 = (StateNo = 205 && AnimElemTime(2) >= 2) && Var(32)!=0 || (StateNo = 225 && AnimElemTime(4) >= 1) && Var(32)!=0
trigger19 = (StateNo = 215 && AnimElemTime(3) >= 2) && Var(32)!=0 || (StateNo = 235 && AnimElemTime(7) >= 1) && Var(32)!=0
trigger20 = (StateNo = 600 && AnimElemTime(3) >= 2) && Var(30)=0

; くじくだいち Y
[State -1]
type = ChangeState
value = 1650
triggerall = Command = "KjkDaiChi_y" && var(36)=2
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = (StateNo = 200 && AnimElemTime(2) >= 2)
trigger3 = (StateNo = 210 && AnimElemTime(4) >= 0 && AnimElemTime(5) <= 3)
trigger4 = (StateNo = 220 && AnimElemTime(3) >= 0 && AnimElemTime(6) < 0)
trigger5 = (StateNo = 230 && AnimElemTime(3) >= 0 && AnimElemTime(7) < 0)
trigger6 = (MoveContact || Var(32)!=0) && (StateNo = 400 && AnimElemTime(3) >= 2 && AnimElemTime(5) <= 3)
trigger7 = (MoveContact || Var(32)!=0) && (StateNo = 420 && AnimElemTime(6) >= 0 && AnimElemTime(7) < 0)
trigger8 = (MoveContact || Var(32)!=0) && (StateNo = 410 && AnimElemTime(4) >= 2 && AnimElemTime(6) <= 3)
trigger9 = (MoveContact || Var(32)!=0) && (StateNo = 430 && AnimElemTime(4) >= 0 && AnimElemTime(9) < 0)
trigger10 = MoveContact && (StateNo = 700 && AnimElemTime(7) >= 0 && AnimElemTime(9) < 2)
trigger11 = MoveContact && ((StateNo = [710,715]) && AnimElemTime(5) >= 0 && AnimElemTime(9) < 2)
trigger12 = MoveContact && (StateNo = 1000 && AnimElemTime(10) >= 0 && AnimElemTime(13) < 2) && Var(32)!=0
trigger13 = MoveContact && (StateNo = 1050 && AnimElemTime(14) >= 0 && AnimElemTime(17) < 2) && Var(32)!=0
trigger14 = MoveContact && (StateNo = 1300 && AnimElemTime(5) >= 0) && Var(32)!=0
trigger15 = MoveContact && (StateNo = 1310 && AnimElemTime(3) < 4) && Var(32)!=0
trigger16 = MoveContact && (StateNo = 1350 && AnimElemTime(5) >= 0) && Var(32)!=0
trigger17 = MoveContact && (StateNo = 1360 && AnimElemTime(4) < 0) && Var(32)!=0
trigger18 = (StateNo = 205 && AnimElemTime(2) >= 2) && Var(32)!=0 || (StateNo = 225 && AnimElemTime(4) >= 1) && Var(32)!=0
trigger19 = (StateNo = 215 && AnimElemTime(3) >= 2) && Var(32)!=0 || (StateNo = 235 && AnimElemTime(7) >= 1) && Var(32)!=0
trigger20 = (StateNo = 600 && AnimElemTime(3) >= 2) && Var(30)=0

;----------------------------------
; ミサイルマイトバッシュ A
[State -1]
type = ChangeState
value = 1800
triggerall = Command = "MslMtBsh_x" && Var(36)=1
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = (StateNo = 200 && AnimElemTime(2) >= 2)
trigger3 = (StateNo = 210 && AnimElemTime(4) >= 0 && AnimElemTime(5) <= 3)
trigger4 = (StateNo = 220 && AnimElemTime(3) >= 0 && AnimElemTime(6) < 0)
trigger5 = (StateNo = 230 && AnimElemTime(3) >= 0 && AnimElemTime(7) < 0)
trigger6 = (MoveContact || Var(32)!=0) && (StateNo = 400 && AnimElemTime(3) >= 2 && AnimElemTime(5) <= 3)
trigger7 = (MoveContact || Var(32)!=0) && (StateNo = 420 && AnimElemTime(6) >= 0 && AnimElemTime(7) < 0)
trigger8 = (MoveContact || Var(32)!=0) && (StateNo = 410 && AnimElemTime(4) >= 2 && AnimElemTime(6) <= 3)
trigger9 = (MoveContact || Var(32)!=0) && (StateNo = 430 && AnimElemTime(4) >= 0 && AnimElemTime(9) < 0)
trigger10 = MoveContact && (StateNo = 700 && AnimElemTime(7) >= 0 && AnimElemTime(9) < 2)
trigger11 = MoveContact && ((StateNo = [710,715]) && AnimElemTime(5) >= 0 && AnimElemTime(9) < 2)
trigger12 = MoveContact && (StateNo = 1000 && AnimElemTime(10) >= 0 && AnimElemTime(13) < 2) && Var(32)!=0
trigger13 = MoveContact && (StateNo = 1050 && AnimElemTime(14) >= 0 && AnimElemTime(17) < 2) && Var(32)!=0
trigger14 = MoveContact && (StateNo = 1300 && AnimElemTime(5) >= 0) && Var(32)!=0
trigger15 = MoveContact && (StateNo = 1310 && AnimElemTime(3) < 4) && Var(32)!=0
trigger16 = MoveContact && (StateNo = 1350 && AnimElemTime(5) >= 0) && Var(32)!=0
trigger17 = MoveContact && (StateNo = 1360 && AnimElemTime(4) < 0) && Var(32)!=0
trigger18 = MoveContact && (StateNo = 1100 && AnimElemTime(10) >= 0 && AnimElemTime(13) < 2) && Var(32)!=0
trigger19 = (StateNo = 205 && AnimElemTime(2) >= 2) && Var(32)!=0 || (StateNo = 225 && AnimElemTime(4) >= 1) && Var(32)!=0
trigger20 = (StateNo = 215 && AnimElemTime(3) >= 2) && Var(32)!=0 || (StateNo = 235 && AnimElemTime(7) >= 1) && Var(32)!=0
trigger21 = (StateNo = 600 && AnimElemTime(3) >= 2) && (Var(30)=0 || Var(30)!=0 && Var(48)!=0)

; ミサイルマイトバッシュ B
[State -1]
type = ChangeState
value = 1850
triggerall = Command = "MslMtBsh_y" && Var(36)=1
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = (StateNo = 200 && AnimElemTime(2) >= 2)
trigger3 = (StateNo = 210 && AnimElemTime(4) >= 0 && AnimElemTime(5) <= 3)
trigger4 = (StateNo = 220 && AnimElemTime(3) >= 0 && AnimElemTime(6) < 0)
trigger5 = (StateNo = 230 && AnimElemTime(3) >= 0 && AnimElemTime(7) < 0)
trigger6 = (MoveContact || Var(32)!=0) && (StateNo = 400 && AnimElemTime(3) >= 2 && AnimElemTime(5) <= 3)
trigger7 = (MoveContact || Var(32)!=0) && (StateNo = 420 && AnimElemTime(6) >= 0 && AnimElemTime(7) < 0)
trigger8 = (MoveContact || Var(32)!=0) && (StateNo = 410 && AnimElemTime(4) >= 2 && AnimElemTime(6) <= 3)
trigger9 = (MoveContact || Var(32)!=0) && (StateNo = 430 && AnimElemTime(4) >= 0 && AnimElemTime(9) < 0)
trigger10 = MoveContact && (StateNo = 700 && AnimElemTime(7) >= 0 && AnimElemTime(9) < 2)
trigger11 = MoveContact && ((StateNo = [710,715]) && AnimElemTime(5) >= 0 && AnimElemTime(9) < 2)
trigger12 = MoveContact && (StateNo = 1000 && AnimElemTime(10) >= 0 && AnimElemTime(13) < 2) && Var(32)!=0
trigger13 = MoveContact && (StateNo = 1050 && AnimElemTime(14) >= 0 && AnimElemTime(17) < 2) && Var(32)!=0
trigger14 = MoveContact && (StateNo = 1300 && AnimElemTime(5) >= 0) && Var(32)!=0
trigger15 = MoveContact && (StateNo = 1310 && AnimElemTime(3) < 4) && Var(32)!=0
trigger16 = MoveContact && (StateNo = 1350 && AnimElemTime(5) >= 0) && Var(32)!=0
trigger17 = MoveContact && (StateNo = 1360 && AnimElemTime(4) < 0) && Var(32)!=0
trigger18 = MoveContact && (StateNo = 1100 && AnimElemTime(10) >= 0 && AnimElemTime(13) < 2) && Var(32)!=0
trigger19 = (StateNo = 205 && AnimElemTime(2) >= 2) && Var(32)!=0 || (StateNo = 225 && AnimElemTime(4) >= 1) && Var(32)!=0
trigger20 = (StateNo = 215 && AnimElemTime(3) >= 2) && Var(32)!=0 || (StateNo = 235 && AnimElemTime(7) >= 1) && Var(32)!=0
trigger21 = (StateNo = 600 && AnimElemTime(3) >= 2) && (Var(30)=0 || Var(30)!=0 && Var(48)!=0)

;----------------------------------
;クイック ＭＡＸモード 発動

[State -1]
type = ChangeState
value = 965
triggerall = Command = "ay"
triggerall = NumHelper(8888)=0
triggerall = Var(32)=0 && Power >= 1000
triggerall = StateType != A
trigger1 = MoveContact && StateNo = [200,430]
trigger2 = MoveContact && StateNo = 600
trigger3 = MoveContact && StateNo = [700,799]

;-----------------------------------
;通常 ＭＡＸモード 発動
[State -1]
type = ChangeState
value = 960
triggerall = Command = "ay"
triggerall = NumHelper(8888)=0
triggerall = Var(32)=0 && Power >= 1000
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)


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
; レバーブロー（Ｐ通常投げ）
[State -1]
type = ChangeState
value = 800
triggerall = StateNo != 100 && StateType = S && Ctrl = 1
triggerall = P2MoveType != H && !P2StateType = A
trigger1 = Command = "fwd_y" && P2BodyDist X < 10
trigger2 = Command = "back_y" && P2BodyDist X < 12

;---------------------------------------------------------------------
; ハチェットスルー（Ｋ通常投げ）
[State -1]
type = ChangeState
value = 850
triggerall = StateNo != 100 && StateType = S && Ctrl = 1
triggerall = P2MoveType != H && !P2StateType = A
trigger1 = Command = "fwd_b" && P2BodyDist X < 10
trigger2 = Command = "back_b" && P2BodyDist X < 12

;---------------------------------------------------------------------
; Special Attacks , Moves and so on.
;---------------------------------------------------------------------
;---------------------------------------------------------------------
; 地上ふっとばし攻撃
[State -1]
type = ChangeState
value = 600
triggerall = Command = "by"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100) & Var(30)=0
trigger2 = StateType = S && (Ctrl = 1 || StateNo = 100) & Var(30)!=0

;---------------------------------------------------------------------
; 空中ふっとばし攻撃
[State -1]
type = ChangeState
value = 610
triggerall = Command = "by"
triggerall = StateType = A
trigger1 =  Ctrl = 1
trigger2 = MoveContact && StateNo = 500 && Var(32)=2
trigger3 = MoveContact && StateNo = 510 && Var(32)=2
trigger4 = MoveContact && StateNo = 520 && Var(32)=2
trigger5 = MoveContact && StateNo = 530 && Var(32)=2

;---------------------------------------------------------------------
; ガードキャンセル緊急回避動作（前・後）
[State -1]
type = ChangeState
value = 4000
triggerall = Command = "gc_fwd" && Power >= 1000
trigger1 = Var(4) = 1 && StateType != A
trigger1 = StateNo = 150 || StateNo = 152
trigger2 = MoveContact && StateType != A && StateNo=[200,430] 
trigger3 = MoveContact && StateType != A && StateNo=[600,699] 
trigger4 = MoveContact && StateType != A && StateNo=[700,799] 

;---------------------------------------------------------------------
; 緊急回避動作（前）
[State -1]
type = ChangeState
value = 4050
triggerall = Command = "q_fwd" && !Command = "holdback"
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)

;---------------------------------------------------------------------
; 緊急回避動作（後）
[State -1]
type = ChangeState
value = 4150
triggerall = Command = "q_back" && !Command = "holdfwd"
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)

;---------------------------------------------------------------------
; ガードキャンセル吹っ飛ばし攻撃
[State -1]
type = ChangeState
value = 4500
triggerall = Command = "by" || Command = "c"
triggerall = Var(4) = 1 && Power >= 1000 && StateType != A
trigger1 = StateNo = 150 || StateNo = 152

;=====================================================================
; Dir + Button
;=====================================================================
; リグレットバッシュ キャンセル時
[State -1]
type = ChangeState
value = 700
triggerall = Command = "x" && Command = "holdfwd" && Command != "holddown" && Command != "JctCntr_x"
trigger1 = MoveContact && (StateNo = 200 && AnimElemTime(2) >= 1)
trigger2 = MoveContact && (StateNo = 210 && AnimElemTime(4) >= 0)
trigger3 = MoveContact && (StateNo = 220 && AnimElemTime(3) >= 1 && AnimElemTime(5) < 0)
trigger4 = MoveContact && (StateNo = 230 && AnimElemTime(3) >= 1 && AnimElemTime(6) < 0)
trigger5 = MoveContact && (StateNo = 420 && AnimElemTime(3) >= 1 && AnimElemTime(6) < 0)
trigger6 = (StateNo = 430 && AnimElemTime(2) >= 0 && AnimElemTime(7) < 0)

; リグレットバッシュ
[State -1]
type =  ChangeState
value = 705
triggerall = Command = "x" && Command = "holdfwd" && Command != "holddown" && Command != "JctCntr_x"
trigger1 = StateType = S && Ctrl = 1
trigger2 = StateNo = 100
trigger3 = MoveContact && (StateNo = 220 && AnimElemTime(5) >= 0 && AnimElemTime(6) < 0)
trigger4 = MoveContact && (StateNo = 230 && AnimElemTime(6) >= 0 && AnimElemTime(7) < 0)
trigger5 = MoveContact && (StateNo = 400 && AnimElemTime(3) >= 2 && AnimElemTime(5) < 0)
trigger6 = MoveContact && (StateNo = 410 && AnimElemTime(4) >= 2 && AnimElemTime(6) < 0) && Var(32)!=0
trigger7 = MoveContact && (StateNo = 420 && AnimElemTime(6) >= 0 && AnimElemTime(7) < 0)

; ステップサイドキック
[State -1]
type = ChangeState
value = 710
triggerall = Command = "a" && Command = "holdfwd" && Command != "holddown"
trigger1 = MoveContact && (StateNo = 200 && AnimElemTime(2) >= 3)
trigger2 = MoveContact && (StateNo = 210 && AnimElemTime(4) >= 0)
trigger3 = MoveContact && (StateNo = 220 && AnimElemTime(3) >= 1 && AnimElemTime(6) < 0)
trigger4 = MoveContact && (StateNo = 230 && AnimElemTime(3) >= 1 && AnimElemTime(7) < 0)
trigger5 = MoveContact && (StateNo = 400 && AnimElemTime(3) >= 1 && AnimElemTime(5) < 0)
trigger6 = MoveContact && (StateNo = 410 && AnimElemTime(4) >= 1 && AnimElemTime(6) < 0) && Var(32)!=0
trigger7 = MoveContact && (StateNo = 420 && AnimElemTime(3) >= 1 && AnimElemTime(7) < 0)
trigger8 = (StateNo = 430 && AnimElemTime(2) >= 0 && AnimElemTime(7) < 0)

; ステップサイドキック
[State -1]
type = ChangeState
value = 710
triggerall = Command = "a" && Command = "holdfwd" && Command != "holddown"
trigger1 = StateType = S && Ctrl = 1
trigger2 = StateNo = 100
trigger3 = MoveContact && (StateNo = 220 && AnimElemTime(5) >= 0 && AnimElemTime(6) < 0)
trigger4 = MoveContact && (StateNo = 230 && AnimElemTime(6) >= 0 && AnimElemTime(7) < 0)
trigger5 = MoveContact && (StateNo = 400 && AnimElemTime(3) >= 2 && AnimElemTime(5) < 0)
trigger6 = MoveContact && (StateNo = 410 && AnimElemTime(4) >= 2 && AnimElemTime(6) < 0) && Var(32)!=0
trigger7 = MoveContact && (StateNo = 420 && AnimElemTime(6) >= 0 && AnimElemTime(7) < 0)

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
triggerall = P2BodyDist X = [0,17]
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)
trigger2 = (StateNo = 200 && AnimElemTime(2) >= 1 && AnimElemTime(3) <= 4)
trigger3 = (StateNo = 210 && AnimElemTime(4) >= 0 && AnimElemTime(5) <= 3)
trigger4 = (StateNo = 400 && AnimElemTime(3) >= 2 && AnimElemTime(5) < 4)
trigger5 = (StateNo = 410 && AnimElemTime(4) >= 2 && AnimElemTime(6) < 0)

; 弱パンチ
[State -1]
type = ChangeState
value = 205
triggerall = Command = "x" && !Command = "holddown"
triggerall = P2BodyDist X != [0,17]
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)

;---------------------------------------------------------------------
; 弱キック
[State -1]
type = ChangeState
value = 210
triggerall = Command = "a" && !Command = "holddown"
triggerall = P2BodyDist X = [0,18]
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)
trigger2 = (StateNo = 200 && AnimElemTime(2) >= 2 && AnimElemTime(3) <= 4)
trigger3 = (StateNo = 210 && AnimElemTime(4) >= 0 && AnimElemTime(5) <= 3)
trigger4 = (StateNo = 400 && AnimElemTime(3) >= 2 && AnimElemTime(5) < 4)
trigger5 = (StateNo = 410 && AnimElemTime(6) >= 0 && AnimElemTime(7) < 0)

; 弱キック
[State -1]
type = ChangeState
value = 215
triggerall = Command = "a" && !Command = "holddown"
triggerall = P2BodyDist X != [0,18]
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)

;---------------------------------------------------------------------
; 強パンチ
[State -1]
type = ChangeState
value = 220
triggerall = Command = "y" && !Command = "holddown"
triggerall = P2BodyDist X = [0,32]
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)

;---------------------------------------------------------------------
; 強パンチ
[State -1]
type = ChangeState
value = 225
triggerall = Command = "y" && !Command = "holddown"
triggerall = P2BodyDist X != [0,32]
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)

;---------------------------------------------------------------------
; 強キック
[State -1]
type = ChangeState
value = 230
triggerall = Command = "b" && !Command = "holddown"
triggerall = P2BodyDist X = [0,25]
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)

;---------------------------------------------------------------------
; 強キック
[State -1]
type = ChangeState
value = 235
triggerall = Command = "b" && !Command = "holddown"
triggerall = P2BodyDist X != [0,25]
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)

;---------------------------------------------------------------------
; しゃがみ弱パンチ
[State -1]
type = ChangeState
value = 400
triggerall = Command = "x" && Command = "holddown"
trigger1 = StateType = C && Ctrl = 1
trigger2 = StateNo = 100
trigger3 = (StateNo = 200 && AnimElemTime(2) >= 2 && AnimElemTime(3) <= 3)
trigger4 = (StateNo = 210 && AnimElemTime(4) >= 0 && AnimElemTime(5) <= 3)
trigger5 = (StateNo = 400 && AnimElemTime(3) >= 2 && AnimElemTime(5) < 4)
trigger6 = (StateNo = 410 && AnimElemTime(6) >= 0 && AnimElemTime(7) < 0)

;---------------------------------------------------------------------
; しゃがみ弱キック
[State -1]
type = ChangeState
value = 410
triggerall = Command = "a" && Command = "holddown"
trigger1 = StateType = C && Ctrl = 1
trigger2 = StateNo = 100
trigger3 = (StateNo = 200 && AnimElemTime(2) >= 2 && AnimElemTime(3) <= 3)
trigger4 = (StateNo = 210 && AnimElemTime(4) >= 0 && AnimElemTime(5) <= 3)
trigger5 = (StateNo = 400 && AnimElemTime(3) >= 2 && AnimElemTime(5) < 4)
trigger6 = (StateNo = 410 && AnimElemTime(6) >= 0 && AnimElemTime(7) < 0)

;---------------------------------------------------------------------
; しゃがみ強パンチ
[State -1]
type = ChangeState
value = 420
triggerall = Command = "y" && Command = "holddown" && (var(30)=0 || var(30)!=0 && P2BodyDist X = [-20,90])
trigger1 = StateType = C && Ctrl = 1
trigger2 = StateNo = 100

;---------------------------------------------------------------------
; しゃがみ強キック
[State -1]
type = ChangeState
value = 430
triggerall = Command = "b" && Command = "holddown"
trigger1 = StateType = C && Ctrl = 1
trigger2 = StateNo = 100

;---------------------------------------------------------------------
; ジャンプ弱パンチ
[State -1]
type = ChangeState
value = IfElse(Var(25) = 0 && Vel X = 0,500,500)
triggerall = Command = "x" && StateType = A
trigger1 = StateNo != 105 && Ctrl = 1
trigger2 = MoveContact && StateNo = 510 && Var(32)=2

;---------------------------------------------------------------------
; ジャンプ強パンチ
[State -1]
type = ChangeState
value = IfElse(Var(25) = 0 && Vel X = 0,520,520)
triggerall = Command = "y" && StateType = A
trigger1 = StateNo != 105 && Ctrl = 1
trigger2 = MoveContact && StateNo = 500 && Var(32)=2
trigger3 = MoveContact && StateNo = 510 && Var(32)=2

;---------------------------------------------------------------------
; ジャンプ弱キック
[State -1]
type = ChangeState
value = IfElse(Var(25) = 0 && Vel X = 0,510,510)
triggerall = Command = "a" && StateType = A
trigger1 = StateNo != 105 && Ctrl = 1
trigger2 = MoveContact && StateNo = 500 && Var(32)=2

;---------------------------------------------------------------------
; ジャンプ強キック
[State -1]
type = ChangeState
value = IfElse(Var(25) = 0 && Vel X = 0,530,530)
triggerall = Command = "b" && StateType = A
trigger1 = StateNo != 105 && Ctrl = 1
trigger2 = MoveContact && StateNo = 500 && Var(32)=2
trigger3 = MoveContact && StateNo = 510 && Var(32)=2

;---------------------------------------------------------------------
; 
[State -1, 5050] ;Recover near ground
type = ChangeState
triggerall = Stateno = 5050
triggerall = Vel Y > 0 && Pos Y >= -20
triggerall = alive && CanRecover
trigger1 = Var(30)!=0 && Random < 100
value = 5200 ;HITFALL_RECOVER

[State -1, 5050]; Recover in mid air
type = ChangeState
triggerall = Stateno = 5050
triggerall = Vel Y > -1
triggerall = alive && CanRecover
trigger1 = Var(30)!=0 && Random < 100
value = 5210 ;HITFALL_AIRRECOVER

