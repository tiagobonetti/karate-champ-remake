;=====================================================================
;MUGEN CharData (01.04.14)
;"kensou 2K1"                                                 ActJapan
;=====================================================================

;=====================================================================
; Definition of the Commands
;=====================================================================

;-| CPU Function |----------------------------------------------------
[Command]
name = "cpu01"
command = ~F,DF,D,DB,B,F,DF,D,DB,B,a+b+c
time = 0

;-| Super Motions |---------------------------------------------------
;---------------------------------------------------------------------
; 潜在能力発動
[Command]
name = "ModeChange"
command = c+z
time = 1

; 超球玉
[Command]
name = "ChoKyuDama"
command = ~B, DB, D, DF, F, c+z
time = 25

;---------------------------------------------------------------------
; 仙氣発動
[Command]
name = "SenkiHatu_xy"
command = ~D, DF, F, D, DF, F, x+y
time = 25

;---------------------------------------------------------------------
; 神龍穿弓乱舞腿
[Command]
name = "SinRyuSenKyu_a"
command = ~D, DF, F, D, DF, F, a
time = 25

[Command]
name = "SinRyuSenKyu_b"
command = ~D, DF, F, D, DF, F, b
time = 25

;---------------------------------------------------------------------
; 神龍凄煌裂脚
[Command]
name = "SinRyuSeiOu_a"
command = ~D, DF, F, DF, D, DB, B, a
time = 25

;---------------------------------------------------------------------
; 神龍天舞脚
[Command]
name = "SinRyuTenBu_b"
command = ~D, DF, F, DF, D, DB, B, b
time = 25

;---------------------------------------------------------------------
; 神龍連爪撃
[Command]
name = "SinRyuRenSoGeki_xy"
command = ~D, DB, B, D, DB, B, x+y
time = 25

[Command]
name = "SinRyuRenSoGeki_x"
command = ~D, DB, B, D, DB, B, x
time = 25

[Command]
name = "SinRyuRenSoGeki_y"
command = ~D, DB, B, D, DB, B, y
time = 25

;-| Special Motions |-------------------------------------------------
;水着
[Command]
name = "S9_1"
command = ~F, D, DF, x
time = 20

[Command]
name = "S9_1"
command = ~F, D, DF, y
time = 20

;騎士
[Command]
name = "S9_2"
command = ~F, DF, D, DB, B, a
time = 25

[Command]
name = "S9_2"
command = ~F, DF, D, DB, B, b
time = 25

;制服
[Command]
name = "S9_3"
command = ~D, DF, F, x
time = 20

[Command]
name = "S9_3"
command = ~D, DF, F, y
time = 20

;-| Special Motions |-------------------------------------------------
;---------------------------------------------------------------------
; 箭疾歩
[Command]
name = "SenSiPo_x"
command = ~B, D, DB, x
time = 20

[Command]
name = "SenSiPo_y"
command = ~B, D, DB, y
time = 20

;---------------------------------------------------------------------
; 龍顎砕
[Command]
name = "RyuGakuSai_a"
command = ~B, D, DB, a
time = 20

[Command]
name = "RyuGakuSai_b"
command = ~B, D, DB, b
time = 20

;---------------------------------------------------------------------
;龍連牙・地龍
[Command]
name = "RyuRenGa_x"
command = ~B, DB, D, DF, F, x
time = 20

;---------------------------------------------------------------------
; 龍連牙・天龍
[Command]
name = "RyuRenGa_y"
command = ~B, DB, D, DF, F, y
time = 20

;---------------------------------------------------------------------
; 超球弾
[Command]
name = "ChoKyuDan_x"
command = ~D, DB, B, x
time = 15

[Command]
name = "ChoKyuDan_y"
command = ~D, DB, B, y
time = 15

;---------------------------------------------------------------------
; 龍爪撃
[Command]
name = "RyuSoGeki_x"
command = ~D, DB, B, x
time = 15

[Command]
name = "RyuSoGeki_y"
command = ~D, DB, B, y
time = 15

;---------------------------------------------------------------------
; 穿弓腿
[Command]
name = "SoKyuTai_a"
command = ~D, DF, F, a
time = 15

[Command]
name = "SoKyuTai_b"
command = ~D, DF, F, b
time = 15


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
name = "ay"
command = a+y
time = 1

[Command]
name = "xy"
command = x+y
time = 1

[Command]
name = "abcd"
command = x+y+a+b
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
command = /F, a+x
time = 1

;[Command]
;name = "q_fwd"
;command = /F, z
;time = 1

[Command]
name = "q_back"
command = /B, a+x
time = 1

;[Command]
;name = "q_back"
;command = /B, z
;time = 1

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

;=====================================================================
; CPU Function
;=====================================================================

;=====================================================================
; Super Arts
;=====================================================================
;---------------------------------------------------------------------
; 潜在能力発動～超球玉
[State -1]
type = ChangeState
value = 3900
triggerall = Command = "ModeChange" ;&& fVar(31) != 1000
triggerall = Var(32) = 0
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)

;---------------------------------------------------------------------
; 神龍穿弓乱舞腿
[State -1]
type = ChangeState
value = 3500
triggerall = Var(32)=1
triggerall = (Command = "SinRyuSenKyu_a" || Command = "SinRyuSenKyu_b") && Power >= 1000
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = MoveContact && (StateNo = 200 && AnimElemNo(0) >= 4)
trigger3 = MoveContact && (StateNo = 210 && AnimElemNo(0) >= 3)
trigger4 = MoveContact && (StateNo = 220 && AnimElemNo(0) >= 5)
trigger5 = MoveContact && (StateNo = 230 && AnimElemNo(0) >= 5)
trigger6 = MoveContact && (StateNo = 225 && AnimElemNo(0) >= 9)
trigger7 = MoveContact && (StateNo = 400 && AnimElemNo(0) >= 3)
trigger8 = MoveContact && (StateNo = 410 && AnimElemNo(0) >= 3)
trigger9 = MoveContact && (StateNo = 420 && AnimElemNo(0) >= 4)
trigger10 = MoveContact && (StateNo = 710 && AnimElemNo(0) >= 7)
trigger11 = MoveContact && (StateNo = 600 && AnimElemNo(0) >= 6)
trigger12 = MoveContact && (StateNo = 1300 && AnimElemNo(0) >= 4) && Power >= 2000
trigger13 = MoveContact && (StateNo = 1350 && AnimElemNo(0) >= 4) && Power >= 2000
trigger14 = MoveContact && (StateNo = 1305 && AnimElemNo(0) >= 1 && AnimElemNo(0) <= 1) && Power >= 2000
trigger15 = MoveContact && (StateNo = 1355 && AnimElemNo(0) >= 1 && AnimElemNo(0) <= 1) && Power >= 2000
trigger16 = MoveContact && StateNo = 1510 && Var(32)=1 && Power >= 2000
trigger17 = MoveContact && StateNo = 1580 && Var(32)=1 && Power >= 2000

;---------------------------------------------------------------------
; ＭＡＸ神龍連爪撃
[State -1]
type = ChangeState
value = 3800
triggerall = Var(32)=1
triggerall = Command = "SinRyuRenSoGeki_xy"
trigger1 = StateType = A && (Ctrl = 1 && StateNo != 105) && Power >= 2000
trigger2 = MoveContact && (StateNo = 500)
trigger3 = MoveContact && (StateNo = 510)
trigger4 = MoveContact && (StateNo = 520)
trigger5 = MoveContact && (StateNo = 530)
trigger6 = MoveContact && (StateNo = 760)

; 神龍連爪撃 X
[State -1]
type = ChangeState
value = 3700
triggerall = Var(32)=1
triggerall = Command = "SinRyuRenSoGeki_x"
trigger1 = StateType = A && (Ctrl = 1 && StateNo != 105) && Power >= 1000
trigger2 = MoveContact && (StateNo = 500)
trigger3 = MoveContact && (StateNo = 510)
trigger4 = MoveContact && (StateNo = 520)
trigger5 = MoveContact && (StateNo = 530)
trigger6 = MoveContact && (StateNo = 760)

; 神龍連爪撃 Y
[State -1]
type = ChangeState
value = 3750
triggerall = Var(32)=1
triggerall = Command = "SinRyuRenSoGeki_y"
trigger1 = StateType = A && (Ctrl = 1 && StateNo != 105) && Power >= 1000
trigger2 = MoveContact && (StateNo = 500)
trigger3 = MoveContact && (StateNo = 510)
trigger4 = MoveContact && (StateNo = 520)
trigger5 = MoveContact && (StateNo = 530)
trigger6 = MoveContact && (StateNo = 760)

;---------------------------------------------------------------------
; 仙氣発動
[State -1]
type = ChangeState
value = 3300
triggerall = Var(32)!=2
triggerall = P2StateType != L
triggerall = P2StateType != A
triggerall = P2BodyDist X < 12
triggerall = Command = "SenkiHatu_xy" && Power >= 2000
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = MoveContact && (StateNo = 200 && AnimElemNo(0) >= 4)

; 拳崇ＳＰパッケージ
[State -1]
type = ChangeState
value = 3200
triggerall = Var(32)=2
triggerall = P2StateType != L
triggerall = P2StateType != A
triggerall = P2BodyDist X < 12
triggerall = Command = "SenkiHatu_xy" && Power >= 3000
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = MoveContact && (StateNo = 200 && AnimElemNo(0) >= 4)

;超龍連拳？ 常時使用可能に変更
[State -1]
type = ChangeState
value = 7700
;triggerall = Var(32)=1
triggerall = Command = "SinRyuRenSoGeki_xy" && Power >= 2000
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = MoveContact && (StateNo = 200 && AnimElemNo(0) >= 4)
trigger3 = MoveContact && (StateNo = 210 && AnimElemNo(0) >= 3)
trigger4 = MoveContact && (StateNo = 220 && AnimElemNo(0) >= 5)
trigger5 = MoveContact && (StateNo = 230 && AnimElemNo(0) >= 5)
trigger6 = MoveContact && (StateNo = 225 && AnimElemNo(0) >= 9)
trigger7 = MoveContact && (StateNo = 400 && AnimElemNo(0) >= 3)
trigger8 = MoveContact && (StateNo = 410 && AnimElemNo(0) >= 3)
trigger9 = MoveContact && (StateNo = 420 && AnimElemNo(0) >= 4)
trigger10 = MoveContact && (StateNo = 710 && AnimElemNo(0) >= 7)
trigger11 = MoveContact && (StateNo = 600 && AnimElemNo(0) >= 6)
trigger12 = MoveContact && (StateNo = 1300 && AnimElemNo(0) >= 4) && Power >= 3000
trigger13 = MoveContact && (StateNo = 1350 && AnimElemNo(0) >= 4) && Power >= 3000
trigger14 = MoveContact && (StateNo = 1305 && AnimElemNo(0) >= 1 && AnimElemNo(0) <= 1) && Power >= 3000
trigger15 = MoveContact && (StateNo = 1355 && AnimElemNo(0) >= 1 && AnimElemNo(0) <= 1) && Power >= 3000
trigger16 = MoveContact && StateNo = 1510 && Var(32)=1 && Power >= 3000
trigger17 = MoveContact && StateNo = 1580 && Var(32)=1 && Power >= 3000
trigger18 = StateNo = 960 && AnimElemNo(0) >= 6

;---------------------------------------------------------------------
; 神龍凄煌裂脚
[State -1]
type = ChangeState
value = 3000
triggerall = Command = "SinRyuSeiOu_a" && Power >= 1000
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = MoveContact && (StateNo = 200 && AnimElemNo(0) >= 4)
trigger3 = MoveContact && (StateNo = 210 && AnimElemNo(0) >= 3)
trigger4 = MoveContact && (StateNo = 220 && AnimElemNo(0) >= 5)
trigger5 = MoveContact && (StateNo = 230 && AnimElemNo(0) >= 5)
trigger6 = MoveContact && (StateNo = 225 && AnimElemNo(0) >= 9)
trigger7 = MoveContact && (StateNo = 400 && AnimElemNo(0) >= 3)
trigger8 = MoveContact && (StateNo = 410 && AnimElemNo(0) >= 3)
trigger9 = MoveContact && (StateNo = 420 && AnimElemNo(0) >= 4)
trigger10 = MoveContact && (StateNo = 710 && AnimElemNo(0) >= 7)
trigger11 = MoveContact && (StateNo = 600 && AnimElemNo(0) >= 6)
trigger12 = MoveContact && (StateNo = 1300 && AnimElemNo(0) >= 4) && Power >= 2000
trigger13 = MoveContact && (StateNo = 1350 && AnimElemNo(0) >= 4) && Power >= 2000
trigger14 = MoveContact && (StateNo = 1305 && AnimElemNo(0) >= 1 && AnimElemNo(0) <= 1) && Power >= 2000
trigger15 = MoveContact && (StateNo = 1355 && AnimElemNo(0) >= 1 && AnimElemNo(0) <= 1) && Power >= 2000
trigger16 = MoveContact && StateNo = 1510 && Var(32)=1 && Power >= 2000
trigger17 = MoveContact && StateNo = 1580 && Var(32)=1 && Power >= 2000

;---------------------------------------------------------------------
; 神龍天舞脚
[State -1]
type = ChangeState
value = 3100
triggerall = Command = "SinRyuTenBu_b" && Power >= 1000
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = MoveContact && (StateNo = 200 && AnimElemNo(0) >= 4)
trigger3 = MoveContact && (StateNo = 210 && AnimElemNo(0) >= 3)
trigger4 = MoveContact && (StateNo = 220 && AnimElemNo(0) >= 5)
trigger5 = MoveContact && (StateNo = 230 && AnimElemNo(0) >= 5)
trigger6 = MoveContact && (StateNo = 225 && AnimElemNo(0) >= 9)
trigger7 = MoveContact && (StateNo = 400 && AnimElemNo(0) >= 3)
trigger8 = MoveContact && (StateNo = 410 && AnimElemNo(0) >= 3)
trigger9 = MoveContact && (StateNo = 420 && AnimElemNo(0) >= 4)
trigger10 = MoveContact && (StateNo = 710 && AnimElemNo(0) >= 7)
trigger11 = MoveContact && (StateNo = 600 && AnimElemNo(0) >= 6)
trigger12 = MoveContact && (StateNo = 1300 && AnimElemNo(0) >= 4) && Power >= 2000
trigger13 = MoveContact && (StateNo = 1350 && AnimElemNo(0) >= 4) && Power >= 2000
trigger14 = MoveContact && (StateNo = 1305 && AnimElemNo(0) >= 1 && AnimElemNo(0) <= 1) && Power >= 2000
trigger15 = MoveContact && (StateNo = 1355 && AnimElemNo(0) >= 1 && AnimElemNo(0) <= 1) && Power >= 2000
trigger16 = MoveContact && StateNo = 1510 && Var(32)=1 && Power >= 2000
trigger17 = MoveContact && StateNo = 1580 && Var(32)=1 && Power >= 2000

;=====================================================================
; Special Arts 
;=====================================================================
;---------------------------------------------------------------------
; 箭疾歩 X モード中
[State -1]
type = ChangeState
value = 1500
triggerall = Var(32)=1
triggerall = Command = "SenSiPo_x"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = MoveContact && (StateNo = 200 && AnimElemNo(0) >= 4)
trigger3 = MoveContact && (StateNo = 210 && AnimElemNo(0) >= 3)
trigger4 = MoveContact && (StateNo = 220 && AnimElemNo(0) >= 5)
trigger5 = MoveContact && (StateNo = 230 && AnimElemNo(0) >= 5)
trigger6 = MoveContact && (StateNo = 225 && AnimElemNo(0) >= 9)
trigger7 = MoveContact && (StateNo = 400 && AnimElemNo(0) >= 3)
trigger8 = MoveContact && (StateNo = 410 && AnimElemNo(0) >= 3)
trigger9 = MoveContact && (StateNo = 420 && AnimElemNo(0) >= 4)
trigger10 = MoveContact && (StateNo = 710 && AnimElemNo(0) >= 7)
trigger11 = MoveContact && (StateNo = 600 && AnimElemNo(0) >= 6)

; 箭疾歩 Y モード中
[State -1]
type = ChangeState
value = 1570
triggerall = Var(32)=1
triggerall = Command = "SenSiPo_y"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = MoveContact && (StateNo = 200 && AnimElemNo(0) >= 4)
trigger3 = MoveContact && (StateNo = 210 && AnimElemNo(0) >= 3)
trigger4 = MoveContact && (StateNo = 220 && AnimElemNo(0) >= 5)
trigger5 = MoveContact && (StateNo = 230 && AnimElemNo(0) >= 5)
trigger6 = MoveContact && (StateNo = 225 && AnimElemNo(0) >= 9)
trigger7 = MoveContact && (StateNo = 400 && AnimElemNo(0) >= 3)
trigger8 = MoveContact && (StateNo = 410 && AnimElemNo(0) >= 3)
trigger9 = MoveContact && (StateNo = 420 && AnimElemNo(0) >= 4)
trigger10 = MoveContact && (StateNo = 710 && AnimElemNo(0) >= 7)
trigger11 = MoveContact && (StateNo = 600 && AnimElemNo(0) >= 6)

;---------------------------------------------------------------------
; 龍顎砕
[State -1]
type = ChangeState
value = 1300
triggerall = Command = "RyuGakuSai_a"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = MoveContact && (StateNo = 200 && AnimElemNo(0) >= 4)
trigger3 = MoveContact && (StateNo = 210 && AnimElemNo(0) >= 3)
trigger4 = MoveContact && (StateNo = 220 && AnimElemNo(0) >= 5)
trigger5 = MoveContact && (StateNo = 230 && AnimElemNo(0) >= 5)
trigger6 = MoveContact && (StateNo = 225 && AnimElemNo(0) >= 9)
trigger7 = MoveContact && (StateNo = 400 && AnimElemNo(0) >= 3)
trigger8 = MoveContact && (StateNo = 410 && AnimElemNo(0) >= 3)
trigger9 = MoveContact && (StateNo = 420 && AnimElemNo(0) >= 4)
trigger10 = MoveContact && (StateNo = 710 && AnimElemNo(0) >= 7)
trigger11 = MoveContact && (StateNo = 600 && AnimElemNo(0) >= 6)
trigger12 = MoveContact && StateNo = 1510 && Var(32)=1
trigger13 = MoveContact && StateNo = 1580 && Var(32)=1

; 龍顎砕
[State -1]
type = ChangeState
value = 1350
triggerall = Command = "RyuGakuSai_b"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = MoveContact && (StateNo = 200 && AnimElemNo(0) >= 4)
trigger3 = MoveContact && (StateNo = 210 && AnimElemNo(0) >= 3)
trigger4 = MoveContact && (StateNo = 220 && AnimElemNo(0) >= 5)
trigger5 = MoveContact && (StateNo = 230 && AnimElemNo(0) >= 5)
trigger6 = MoveContact && (StateNo = 225 && AnimElemNo(0) >= 9)
trigger7 = MoveContact && (StateNo = 400 && AnimElemNo(0) >= 3)
trigger8 = MoveContact && (StateNo = 410 && AnimElemNo(0) >= 3)
trigger9 = MoveContact && (StateNo = 420 && AnimElemNo(0) >= 4)
trigger10 = MoveContact && (StateNo = 710 && AnimElemNo(0) >= 7)
trigger11 = MoveContact && (StateNo = 600 && AnimElemNo(0) >= 6)
trigger12 = MoveContact && StateNo = 1510 && Var(32)=1
trigger13 = MoveContact && StateNo = 1580 && Var(32)=1

;---------------------------------------------------------------------
;龍連牙・地龍
[State -1]
type = ChangeState
value = 1200
triggerall = Command = "RyuRenGa_x"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = MoveContact && (StateNo = 200 && AnimElemNo(0) >= 4)
trigger3 = MoveContact && (StateNo = 210 && AnimElemNo(0) >= 3)
trigger4 = MoveContact && (StateNo = 220 && AnimElemNo(0) >= 5)
trigger5 = MoveContact && (StateNo = 230 && AnimElemNo(0) >= 5)
trigger6 = MoveContact && (StateNo = 225 && AnimElemNo(0) >= 9)
trigger7 = MoveContact && (StateNo = 400 && AnimElemNo(0) >= 3)
trigger8 = MoveContact && (StateNo = 410 && AnimElemNo(0) >= 3)
trigger9 = MoveContact && (StateNo = 420 && AnimElemNo(0) >= 4)
trigger10 = MoveContact && (StateNo = 710 && AnimElemNo(0) >= 7)
trigger11 = MoveContact && (StateNo = 600 && AnimElemNo(0) >= 6)
trigger12 = MoveContact && StateNo = 1510 && Var(32)=1
trigger13 = MoveContact && StateNo = 1580 && Var(32)=1

;龍連牙・天龍
[State -1]
type = ChangeState
value = 1250
triggerall = Command = "RyuRenGa_y"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = MoveContact && (StateNo = 200 && AnimElemNo(0) >= 4)
trigger3 = MoveContact && (StateNo = 210 && AnimElemNo(0) >= 3)
trigger4 = MoveContact && (StateNo = 220 && AnimElemNo(0) >= 5)
trigger5 = MoveContact && (StateNo = 230 && AnimElemNo(0) >= 5)
trigger6 = MoveContact && (StateNo = 225 && AnimElemNo(0) >= 9)
trigger7 = MoveContact && (StateNo = 400 && AnimElemNo(0) >= 3)
trigger8 = MoveContact && (StateNo = 410 && AnimElemNo(0) >= 3)
trigger9 = MoveContact && (StateNo = 420 && AnimElemNo(0) >= 4)
trigger10 = MoveContact && (StateNo = 710 && AnimElemNo(0) >= 7)
trigger11 = MoveContact && (StateNo = 600 && AnimElemNo(0) >= 6)
trigger12 = MoveContact && StateNo = 1510 && Var(32)=1
trigger13 = MoveContact && StateNo = 1580 && Var(32)=1

;---------------------------------------------------------------------
; 超球弾
[State -1]
type = ChangeState
value = 1000
triggerall = Var(32)!=2
triggerall = Command = "ChoKyuDan_x"
triggerall = NumProjID(1050)=0
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)
trigger2 = MoveContact && (StateNo = 200 && AnimElemNo(0) >= 4)
trigger3 = MoveContact && (StateNo = 210 && AnimElemNo(0) >= 3)
trigger4 = MoveContact && (StateNo = 220 && AnimElemNo(0) >= 5)
trigger5 = MoveContact && (StateNo = 230 && AnimElemNo(0) >= 5)
trigger6 = MoveContact && (StateNo = 225 && AnimElemNo(0) >= 9)
trigger7 = MoveContact && (StateNo = 400 && AnimElemNo(0) >= 3)
trigger8 = MoveContact && (StateNo = 410 && AnimElemNo(0) >= 3)
trigger9 = MoveContact && (StateNo = 420 && AnimElemNo(0) >= 4)
trigger10 = MoveContact && (StateNo = 710 && AnimElemNo(0) >= 7)
trigger11 = MoveContact && (StateNo = 600 && AnimElemNo(0) >= 6)
trigger12 = MoveContact && StateNo = 1510 && Var(32)=1
trigger13 = MoveContact && StateNo = 1580 && Var(32)=1

; 超球弾
[State -1]
type = ChangeState
value = 1050
triggerall = Var(32)!=2
triggerall = Command = "ChoKyuDan_y"
triggerall = NumProjID(1050)=0
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)
trigger2 = MoveContact && (StateNo = 200 && AnimElemNo(0) >= 4)
trigger3 = MoveContact && (StateNo = 210 && AnimElemNo(0) >= 3)
trigger4 = MoveContact && (StateNo = 220 && AnimElemNo(0) >= 5)
trigger5 = MoveContact && (StateNo = 230 && AnimElemNo(0) >= 5)
trigger6 = MoveContact && (StateNo = 225 && AnimElemNo(0) >= 9)
trigger7 = MoveContact && (StateNo = 400 && AnimElemNo(0) >= 3)
trigger8 = MoveContact && (StateNo = 410 && AnimElemNo(0) >= 3)
trigger9 = MoveContact && (StateNo = 420 && AnimElemNo(0) >= 4)
trigger10 = MoveContact && (StateNo = 710 && AnimElemNo(0) >= 7)
trigger11 = MoveContact && (StateNo = 600 && AnimElemNo(0) >= 6)
trigger12 = MoveContact && StateNo = 1510 && Var(32)=1
trigger13 = MoveContact && StateNo = 1580 && Var(32)=1

;---------------------------------------------------------------------
; 箭疾歩 X
[State -1]
type = ChangeState
value = 1600
triggerall = Var(32)=2
triggerall = Command = "ChoKyuDan_x"
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)
trigger2 = MoveContact && (StateNo = 200 && AnimElemNo(0) >= 4)
trigger3 = MoveContact && (StateNo = 210 && AnimElemNo(0) >= 3)
trigger4 = MoveContact && (StateNo = 220 && AnimElemNo(0) >= 5)
trigger5 = MoveContact && (StateNo = 230 && AnimElemNo(0) >= 5)
trigger6 = MoveContact && (StateNo = 225 && AnimElemNo(0) >= 9)
trigger7 = MoveContact && (StateNo = 400 && AnimElemNo(0) >= 3)
trigger8 = MoveContact && (StateNo = 410 && AnimElemNo(0) >= 3)
trigger9 = MoveContact && (StateNo = 420 && AnimElemNo(0) >= 4)
trigger10 = MoveContact && (StateNo = 710 && AnimElemNo(0) >= 7)
trigger11 = MoveContact && (StateNo = 600 && AnimElemNo(0) >= 6)
trigger12 = MoveContact && StateNo = 1510 && Var(32)=1
trigger13 = MoveContact && StateNo = 1580 && Var(32)=1

; 箭疾歩 Y
[State -1]
type = ChangeState
value = 1650
triggerall = Var(32)=2
triggerall = Command = "ChoKyuDan_y"
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)
trigger2 = MoveContact && (StateNo = 200 && AnimElemNo(0) >= 4)
trigger3 = MoveContact && (StateNo = 210 && AnimElemNo(0) >= 3)
trigger4 = MoveContact && (StateNo = 220 && AnimElemNo(0) >= 5)
trigger5 = MoveContact && (StateNo = 230 && AnimElemNo(0) >= 5)
trigger6 = MoveContact && (StateNo = 225 && AnimElemNo(0) >= 9)
trigger7 = MoveContact && (StateNo = 400 && AnimElemNo(0) >= 3)
trigger8 = MoveContact && (StateNo = 410 && AnimElemNo(0) >= 3)
trigger9 = MoveContact && (StateNo = 420 && AnimElemNo(0) >= 4)
trigger10 = MoveContact && (StateNo = 710 && AnimElemNo(0) >= 7)
trigger11 = MoveContact && (StateNo = 600 && AnimElemNo(0) >= 6)
trigger12 = MoveContact && StateNo = 1510 && Var(32)=1
trigger13 = MoveContact && StateNo = 1580 && Var(32)=1

;---------------------------------------------------------------------
; 穿弓腿
[State -1]
type = ChangeState
value = 1100
triggerall = Command = "SoKyuTai_a"
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)
trigger2 = MoveContact && (StateNo = 200 && AnimElemNo(0) >= 4)
trigger3 = MoveContact && (StateNo = 210 && AnimElemNo(0) >= 3)
trigger4 = MoveContact && (StateNo = 220 && AnimElemNo(0) >= 5)
trigger5 = MoveContact && (StateNo = 230 && AnimElemNo(0) >= 5)
trigger6 = MoveContact && (StateNo = 225 && AnimElemNo(0) >= 9)
trigger7 = MoveContact && (StateNo = 400 && AnimElemNo(0) >= 3)
trigger8 = MoveContact && (StateNo = 410 && AnimElemNo(0) >= 3)
trigger9 = MoveContact && (StateNo = 420 && AnimElemNo(0) >= 4)
trigger10 = MoveContact && (StateNo = 710 && AnimElemNo(0) >= 7)
trigger11 = MoveContact && (StateNo = 600 && AnimElemNo(0) >= 6)
trigger12 = MoveContact && StateNo = 1510 && Var(32)=1
trigger13 = MoveContact && StateNo = 1580 && Var(32)=1

; 穿弓腿
[State -1]
type = ChangeState
value = 1150
triggerall = Command = "SoKyuTai_b"
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)
trigger2 = MoveContact && (StateNo = 200 && AnimElemNo(0) >= 4)
trigger3 = MoveContact && (StateNo = 210 && AnimElemNo(0) >= 3)
trigger4 = MoveContact && (StateNo = 220 && AnimElemNo(0) >= 5)
trigger5 = MoveContact && (StateNo = 230 && AnimElemNo(0) >= 5)
trigger6 = MoveContact && (StateNo = 225 && AnimElemNo(0) >= 9)
trigger7 = MoveContact && (StateNo = 400 && AnimElemNo(0) >= 3)
trigger8 = MoveContact && (StateNo = 410 && AnimElemNo(0) >= 3)
trigger9 = MoveContact && (StateNo = 420 && AnimElemNo(0) >= 4)
trigger10 = MoveContact && (StateNo = 710 && AnimElemNo(0) >= 7)
trigger11 = MoveContact && (StateNo = 600 && AnimElemNo(0) >= 6)
trigger12 = MoveContact && StateNo = 1510 && Var(32)=1
trigger13 = MoveContact && StateNo = 1580 && Var(32)=1

;---------------------------------------------------------------------
; 龍爪撃
[State -1]
type = ChangeState
value = 1400
triggerall = Command = "RyuSoGeki_x"
trigger1 = StateType = A && (Ctrl = 1 && StateNo != 105)
trigger2 = MoveContact && (StateNo = 500)
trigger3 = MoveContact && (StateNo = 510)
trigger4 = MoveContact && (StateNo = 520)
trigger5 = MoveContact && (StateNo = 530)
trigger6 = MoveContact && (StateNo = 760)

; 龍爪撃
[State -1]
type = ChangeState
value = 1450
triggerall = Command = "RyuSoGeki_y"
trigger1 = StateType = A && (Ctrl = 1 && StateNo != 105)
trigger2 = MoveContact && (StateNo = 500)
trigger3 = MoveContact && (StateNo = 510)
trigger4 = MoveContact && (StateNo = 520)
trigger5 = MoveContact && (StateNo = 530)
trigger6 = MoveContact && (StateNo = 760)

;---------------------------------------------------------------------
; ストライカー
;----------------
[State -1]
type = ChangeState
value = 960
triggerall = Command = "ay" && Power >= 1000-Ceil(fVar(34))
triggerall = NumHelper(7500)=0
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)

[State -1]
type = Helper
triggerall = Command = "ay" && Power >= 1000-Ceil(fVar(34))
triggerall = NumHelper(7500)=0
trigger1 = MoveContact && StateNo = [200,430]
trigger2 = MoveContact && StateNo = [500,530]
trigger3 = MoveContact && StateNo = [600,610]
trigger4 = MoveContact && StateNo = [700,760]
trigger5 = MoveContact && StateNo = [1100,1670]
trigger6 = StateNo = 1000 && ProjContact(1050) = 1
trigger7 = StateNo = 1050 && ProjContact(1050) = 1
helpertype = normal
name = "Athena"
id = 7500
postype = p1
pos = (-1*(BackEdgeBodyDist+20)),-200
stateno = 7000
ownpal = 1

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
; 発勁（Ｐ通常投げ）
[State -1]
type = ChangeState
value = 800
triggerall = StateNo != 100 && StateType = S && Ctrl = 1
triggerall = P2MoveType != H && !P2StateType = A
trigger1 = Command = "fwd_y" && P2BodyDist X < 8
trigger2 = Command = "back_y" && P2BodyDist X < 12

;---------------------------------------------------------------------
;巴投げ（Ｋ通常投げ）
[State -1]
type = ChangeState
value = 850
triggerall = StateNo != 100 && StateType = S && Ctrl = 1
triggerall = P2MoveType != H && !P2StateType = A
trigger1 = Command = "fwd_b" && P2BodyDist X < 8
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
trigger2 = P2BodyDist X != [-20,100]

;---------------------------------------------------------------------
; 空中ふっとばし攻撃
[State -1]
type = ChangeState
value = 610
triggerall = Command = "c" || Command = "by"
triggerall = StateType = A
trigger1 =  Ctrl = 1
trigger2 = Palno >= 7 && Var(33)=3 && MoveContact && StateNo = [500,530]

;---------------------------------------------------------------------
; ガードキャンセル緊急回避動作（前・後）
[State -1]
type = ChangeState
value = 4000
triggerall = Command = "gc_fwd" && Power >= 1000
triggerall = Var(4) = 1 && StateType != A
trigger1 = StateNo = 150 || StateNo = 152

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
; 虎僕手
[State -1]
type = ChangeState
value = 700
triggerall = Command = "x" && Command = "holdfwd"
trigger1 = StateType = S && Ctrl = 1
trigger2 = StateNo = 100

[State -1]
type = ChangeState
value = 710
triggerall = Command = "x" && Command = "holdfwd"
trigger1 = MoveContact && (StateNo = 200 && AnimElemNo(0) >= 3)
trigger2 = MoveContact && (StateNo = 210 && AnimElemNo(0) >= 2)
trigger3 = MoveContact && (StateNo = 220 && AnimElemNo(0) >= 4)
trigger4 = MoveContact && (StateNo = 230 && AnimElemNo(0) >= 5)
trigger5 = MoveContact && (StateNo = 225 && AnimElemNo(0) >= 9)
trigger6 = MoveContact && (StateNo = 400 && AnimElemNo(0) >= 2)
trigger7 = MoveContact && (StateNo = 410 && AnimElemNo(0) >= 3)
trigger8 = MoveContact && (StateNo = 420 && AnimElemNo(0) >= 3)

; 後旋腿
[State -1]
type = ChangeState
value = 750
triggerall = Command = "a" && Command = "holdfwd"
trigger1 = StateType = S && Ctrl = 1
trigger2 = StateNo = 100
trigger3 = MoveContact && (StateNo = 200 && AnimElemNo(0) >= 4)
trigger4 = MoveContact && (StateNo = 210 && AnimElemNo(0) >= 3)
trigger5 = MoveContact && (StateNo = 220 && AnimElemNo(0) >= 5)
trigger6 = MoveContact && (StateNo = 230 && AnimElemNo(0) >= 5)
trigger7 = MoveContact && (StateNo = 225 && AnimElemNo(0) >= 9)
trigger8 = MoveContact && (StateNo = 400 && AnimElemNo(0) >= 3)
trigger9 = MoveContact && (StateNo = 410 && AnimElemNo(0) >= 3)
trigger10 = MoveContact && (StateNo = 420 && AnimElemNo(0) >= 4)


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
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)
trigger2 = (StateNo = 200 && AnimElemNo(0) >= 4)
trigger3 = (StateNo = 210 && AnimElemNo(0) >= 3)
trigger4 = (StateNo = 400 && AnimElemNo(0) >= 3)
trigger5 = (StateNo = 410 && AnimElemNo(0) >= 3)

;---------------------------------------------------------------------
; 弱キック
[State -1]
type = ChangeState
value = 210
triggerall = Command = "a" && !Command = "holddown"
triggerall = P2BodyDist X = [0,18]
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)
trigger2 = (StateNo = 200 && AnimElemNo(0) >= 4)
trigger3 = (StateNo = 210 && AnimElemNo(0) >= 3)
trigger4 = (StateNo = 400 && AnimElemNo(0) >= 3)
trigger5 = (StateNo = 410 && AnimElemNo(0) >= 3)

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
triggerall = P2BodyDist X = [0,10]
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)

;---------------------------------------------------------------------
; 強パンチ
[State -1]
type = ChangeState
value = 225
triggerall = Command = "y" && !Command = "holddown"
triggerall = P2BodyDist X != [0,10]
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
trigger3 = (StateNo = 200 && AnimElemNo(0) >= 4)
trigger4 = (StateNo = 210 && AnimElemNo(0) >= 3)
trigger5 = (StateNo = 400 && AnimElemNo(0) >= 3)
trigger6 = (StateNo = 410 && AnimElemNo(0) >= 3)

;---------------------------------------------------------------------
; しゃがみ弱キック
[State -1]
type = ChangeState
value = 410
triggerall = Command = "a" && Command = "holddown"
trigger1 = StateType = C && Ctrl = 1
trigger2 = StateNo = 100
trigger3 = (StateNo = 400 && AnimElemNo(0) >= 3)

;---------------------------------------------------------------------
; しゃがみ強パンチ
[State -1]
type = ChangeState
value = 420
triggerall = Command = "y" && Command = "holddown"
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
trigger2 = Palno >= 7 && Var(33)=3 && MoveContact && StateNo = 520

;---------------------------------------------------------------------
; ジャンプ強パンチ
[State -1]
type = ChangeState
value = IfElse(Var(25) = 0 && Vel X = 0,520,520)
triggerall = Command = "y" && StateType = A
trigger1 = StateNo != 105 && Ctrl = 1

;---------------------------------------------------------------------
; ジャンプ弱キック
[State -1]
type = ChangeState
value = IfElse(Var(25) = 0 && Vel X = 0,510,510)
triggerall = Command = "a" && StateType = A
trigger1 = StateNo != 105 && Ctrl = 1

;---------------------------------------------------------------------
; ジャンプ強キック
[State -1]
type = ChangeState
value = IfElse(Var(25) = 0 && Vel X = 0,530,530)
triggerall = Command = "b" && StateType = A
trigger1 = StateNo != 105 && Ctrl = 1
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
