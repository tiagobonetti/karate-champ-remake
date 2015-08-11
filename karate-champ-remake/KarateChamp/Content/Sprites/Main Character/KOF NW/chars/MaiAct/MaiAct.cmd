;=====================================================================
;MUGEN CharData (01.04.14)
;"Mai 2K2"                                                    ActJapan
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
; 不知火流・九尾の狐 MAX2
[Command]
name = "KyubiNoKitsune"
command = b,a,y,U
time = 45

;---------------------------------------------------------------------
; 超必殺忍蜂
[Command]
name = "ChoShinobiBachi_MAX"
command = ~D, DB, B, DB, D, DF, F, a+b
time = 23

[Command]
name = "ChoShinobiBachi_a"
command = ~D, DB, B, DB, D, DF, F, a
time = 23

[Command]
name = "ChoShinobiBachi_b"
command = ~D, DB, B, DB, D, DF, F, b
time = 23

;---------------------------------------------------------------------

; 花嵐 MAX
[Command]
name = "HanaArasi_MAX"
command = ~D, DF, F, D, DF, F, x+y
time = 23

; 花嵐/水鳥の舞
[Command]
name = "HanaArasi_x"
command = ~D, DF, F, D, DF, F, x
time = 23

[Command]
name = "HanaArasi_y"
command = ~D, DF, F, D, DF, F, y
time = 23

;---------------------------------------------------------------------
; 鳳凰の舞
[Command]
name = "HouhoNoMai_x"
command = ~D, DB, B, D, DB, B, x
time = 23

[Command]
name = "HouhoNoMai_y"
command = ~D, DB, B, D, DB, B, y
time = 23

;---------------------------------------------------------------------
; 補助
[Command]
name = "HojoacU"
command = a, y, U
time = 20

;---------------------------------------------------------------------

;-| Special Motions |-------------------------------------------------
; 必殺忍蜂
[Command]
name = "ShinobiBachi_a"
command = ~B, DB ,D, DF, F, a
time = 20

[Command]
name = "ShinobiBachi_b"
command = ~B, DB ,D, DF, F, b
time = 20

;---------------------------------------------------------------------
; 飛翔龍炎陣
[Command]
name = "RyuEnJin_a"
command = ~F, D, DF, a
time = 15

[Command]
name = "RyuEnJin_b"
command = ~F, D, DF, b
time = 15

;---------------------------------------------------------------------
; 白鷺の舞
[Command]
name = "HakuRo_x"
command = ~F, D, DF, x
time = 15

[Command]
name = "HakuRo_y"
command = ~F, D, DF, y
time = 15

;---------------------------------------------------------------------
; 龍炎舞
[Command]
name = "RyuEnbu_x"
command = ~D, DB, B, x
time = 15

[Command]
name = "RyuEnbu_y"
command = ~D, DB, B, y
time = 15

;---------------------------------------------------------------------
; 小夜千鳥
[Command]
name = "ChiDori_a"
command = ~D, DB, B, a
time = 15

[Command]
name = "ChiDori_b"
command = ~D, DB, B, b
time = 15

;---------------------------------------------------------------------
; 花蝶扇
[Command]
name = "KaChoSen_x"
command = ~D, DF, F, x
time = 15

[Command]
name = "KaChoSen_y"
command = ~D, DF, F, y
time = 15

;---------------------------------------------------------------------
; ムササビの舞
[Command]
name = "Musasabi_x"
command = ~25$D, $U, x

[Command]
name = "Musasabi_y"
command = ~25$D, $U, y

;---------------------------------------------------------------------

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


[Command]
name = "holdfwdup";Required (do not remove)
command = /UF
time = 1

[Command]
name = "holddownOnly";Required (do not remove)
command = /D
time = 1

[Command]
name = "holdupOnly";Required (do not remove)
command = /U
time = 1

;=====================================================================
; State Entry for Commands
;=====================================================================

[Statedef -1]

;=====================================================================
; CPU Function
;=====================================================================

; ＣＰＵ専用フラグ
;[State -1,cpu01]
;type = VarSet
;triggerall = var(30)=0
;trigger1 = Command = "cpu01"
;persistent = 0
;v = 30
;value = 1

;=====================================================================
; Super Arts
;=====================================================================
; 不知火流・九尾の狐 MAX2
[State -1,3000]
type = ChangeState
value = 3400
triggerall = Command = "KyubiNoKitsune" && Var(32)!=0 && Life<=Var(7) && Power >= 2000-fVar(2)
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100 || StateNo = 40 || StateNo = 2040)
trigger2 = (StateNo = 200 && AnimElemTime(3) >= 2 && AnimElemTime(6) < 0)
trigger3 = (StateNo = 210 && AnimElemTime(4) >= 2 && AnimElemTime(6) <= 2)
trigger4 = (StateNo = 220 && AnimElemTime(3) >= 2 && AnimElemTime(6) <= 1)
trigger5 = (StateNo = 420 && AnimElemTime(4) >= 2 && AnimElemTime(7) <= 2)
trigger6 = (StateNo = 720 && AnimElemTime(2) >= 2 && AnimElemTime(6) < 0)
trigger7 = (StateNo = 600 && AnimElemTime(10) >= 1 && AnimElemTime(18) < 0)
trigger8 = MoveContact && (StateNo = 1150 && AnimElemTime(3) >= 1 && AnimElemTime(6) <= 2) && Power >= 3000-fVar(2)
trigger9 = Var(16) = 1 && (StateNo = 1000 && AnimElemTime(5) >= 2 && AnimElemTime(9) <= 3) && Power >= 3000-fVar(2)
trigger10 = Var(16) = 1 && (StateNo = 1050 && AnimElemTime(5) >= 2 && AnimElemTime(8) <= 3) && Power >= 3000-fVar(2)
trigger11 = (StateNo = 205 && AnimElemTime(2) >= 1 && AnimElemTime(6) < 0)
trigger12 = (StateNo = 215 && AnimElemTime(3) >= 2 && AnimElemTime(6) <= 2)
trigger13 = (StateNo = 225 && AnimElemTime(3) >= 2 && AnimElemTime(7) <= 1)

[State -1,3000]
type = ChangeState
value = 3400
triggerall = Command = "HojoacU" && Var(32)!=0 && Life<=Var(7) && Power >= 2000-fVar(2)
trigger1 = (StateNo = 230 && AnimElemTime(4) >= 2 && AnimElemTime(7) <= 2)
trigger2 = (StateNo = 430 && AnimElemTime(3) >= 1 && AnimElemTime(12) <= 0)
trigger3 = (StateNo = 235 && AnimElemTime(7) >= 0 && AnimElemTime(9) <= 2)


;---------------------------------------------------------------------
; 超必殺忍蜂 MAX
[State -1,3000]
type = ChangeState
value = 3300
triggerall = Command = "ChoShinobiBachi_MAX" && Var(32)!=0 && Power >= 2000-fVar(2)
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = (StateNo = 200 && AnimElemTime(3) >= 2 && AnimElemTime(6) < 0)
trigger3 = (StateNo = 210 && AnimElemTime(4) >= 2 && AnimElemTime(6) <= 2)
trigger4 = (StateNo = 220 && AnimElemTime(3) >= 2 && AnimElemTime(6) <= 1)
trigger5 = (StateNo = 230 && AnimElemTime(4) >= 2 && AnimElemTime(7) <= 2)
trigger6 = (StateNo = 420 && AnimElemTime(4) >= 2 && AnimElemTime(7) <= 2)
trigger7 = MoveContact && (StateNo = 430 && AnimElemTime(3) >= 1 && AnimElemTime(12) <= 0)
trigger8 = !MoveContact && (StateNo = 430 && AnimElemTime(6) >= 1 && AnimElemTime(12) <= 0)
trigger9 = MoveContact && (StateNo = 720 && AnimElemTime(2) >= 2 && AnimElemTime(6) < 0)
trigger10 = MoveContact && (StateNo = 600 && AnimElemTime(10) >= 1 && AnimElemTime(18) < 0)
trigger11 = !MoveContact && (StateNo = 600 && AnimElemTime(10) >= 1 && AnimElemTime(18) < 0) && Var(32)!=0
trigger12 = MoveContact && (StateNo = 1150 && AnimElemTime(3) >= 1 && AnimElemTime(6) <= 2) && Power >= 3000-fVar(2)
trigger13 = Var(16) = 1 && (StateNo = 1000 && AnimElemTime(5) >= 2 && AnimElemTime(9) <= 3) && Power >= 3000-fVar(2)
trigger14 = Var(16) = 1 && (StateNo = 1050 && AnimElemTime(5) >= 2 && AnimElemTime(8) <= 3) && Power >= 3000-fVar(2)
trigger15 = MoveContact && (StateNo = 1700 && AnimElemTime(3) >= 1 && AnimElemTime(3) <= 10) && Power >= 2000-fVar(2)
trigger16 = MoveContact && (StateNo = 1750 && AnimElemTime(3) >= 1 && AnimElemTime(3) <= 10) && Power >= 2000-fVar(2)

;---------------------------------------------------------------------
; 花嵐 MAX
[State -1,3000]
type = ChangeState
value = 3800
triggerall = Command = "HanaArasi_MAX" && Var(36)=1 && Var(32)!=0 && Power >= 2000-fVar(2)
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = (StateNo = 200 && AnimElemTime(3) >= 2 && AnimElemTime(6) < 0)
trigger3 = (StateNo = 210 && AnimElemTime(4) >= 2 && AnimElemTime(6) <= 2)
trigger4 = (StateNo = 220 && AnimElemTime(3) >= 2 && AnimElemTime(6) <= 1)
trigger5 = (StateNo = 230 && AnimElemTime(4) >= 2 && AnimElemTime(7) <= 2)
trigger6 = (StateNo = 420 && AnimElemTime(4) >= 2 && AnimElemTime(7) <= 2)
trigger7 = MoveContact && (StateNo = 430 && AnimElemTime(3) >= 1 && AnimElemTime(12) <= 0)
trigger8 = !MoveContact && (StateNo = 430 && AnimElemTime(6) >= 1 && AnimElemTime(12) <= 0)
trigger9 = MoveContact && (StateNo = 720 && AnimElemTime(2) >= 2 && AnimElemTime(6) < 0)
trigger10 = MoveContact && (StateNo = 600 && AnimElemTime(10) >= 1 && AnimElemTime(18) < 0)
trigger11 = !MoveContact && (StateNo = 600 && AnimElemTime(10) >= 1 && AnimElemTime(18) < 0) && Var(32)!=0
trigger12 = MoveContact && (StateNo = 1150 && AnimElemTime(3) >= 1 && AnimElemTime(6) <= 2) && Power >= 3000-fVar(2)
trigger13 = Var(16) = 1 && (StateNo = 1000 && AnimElemTime(5) >= 2 && AnimElemTime(9) <= 3) && Power >= 3000-fVar(2)
trigger14 = Var(16) = 1 && (StateNo = 1050 && AnimElemTime(5) >= 2 && AnimElemTime(8) <= 3) && Power >= 3000-fVar(2)
trigger15 = MoveContact && (StateNo = 1700 && AnimElemTime(3) >= 1 && AnimElemTime(3) <= 10) && Power >= 2000-fVar(2)
trigger16 = MoveContact && (StateNo = 1750 && AnimElemTime(3) >= 1 && AnimElemTime(3) <= 10) && Power >= 2000-fVar(2)

;---------------------------------------------------------------------
; 超必殺忍蜂 A
[State -1,3000]
type = ChangeState
value = 3000
triggerall = Command = "ChoShinobiBachi_a" && Power >= 1000-fVar(2)
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = (StateNo = 200 && AnimElemTime(3) >= 2 && AnimElemTime(6) < 0)
trigger3 = (StateNo = 210 && AnimElemTime(4) >= 2 && AnimElemTime(6) <= 2)
trigger4 = (StateNo = 220 && AnimElemTime(3) >= 2 && AnimElemTime(6) <= 1)
trigger5 = (StateNo = 230 && AnimElemTime(4) >= 2 && AnimElemTime(7) <= 2)
trigger6 = (StateNo = 420 && AnimElemTime(4) >= 2 && AnimElemTime(7) <= 2)
trigger7 = MoveContact && (StateNo = 430 && AnimElemTime(3) >= 1 && AnimElemTime(12) <= 0)
trigger8 = !MoveContact && (StateNo = 430 && AnimElemTime(6) >= 1 && AnimElemTime(12) <= 0)
trigger9 = MoveContact && (StateNo = 720 && AnimElemTime(2) >= 2 && AnimElemTime(6) < 0)
trigger10 = MoveContact && (StateNo = 600 && AnimElemTime(10) >= 1 && AnimElemTime(18) < 0)
trigger11 = !MoveContact && (StateNo = 600 && AnimElemTime(10) >= 1 && AnimElemTime(18) < 0) && Var(32)!=0
trigger12 = MoveContact && (StateNo = 1150 && AnimElemTime(3) >= 1 && AnimElemTime(6) <= 2) && Power >= 2000-fVar(2)
trigger13 = Var(16) = 1 && (StateNo = 1000 && AnimElemTime(5) >= 2 && AnimElemTime(9) <= 3) && Power >= 2000-fVar(2)
trigger14 = Var(16) = 1 && (StateNo = 1050 && AnimElemTime(5) >= 2 && AnimElemTime(8) <= 3) && Power >= 2000-fVar(2)
trigger15 = MoveContact && (StateNo = 1700 && AnimElemTime(3) >= 1 && AnimElemTime(3) <= 10) && Power >= 2000-fVar(2)
trigger16 = MoveContact && (StateNo = 1750 && AnimElemTime(3) >= 1 && AnimElemTime(3) <= 10) && Power >= 2000-fVar(2)

; 超必殺忍蜂 B
[State -1,3050]
type = ChangeState
value = 3050
triggerall = Command = "ChoShinobiBachi_b" && Power >= 1000-fVar(2)
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = (StateNo = 200 && AnimElemTime(3) >= 2 && AnimElemTime(6) < 0)
trigger3 = (StateNo = 210 && AnimElemTime(4) >= 2 && AnimElemTime(6) <= 2)
trigger4 = (StateNo = 220 && AnimElemTime(3) >= 2 && AnimElemTime(6) <= 1)
trigger5 = (StateNo = 230 && AnimElemTime(4) >= 2 && AnimElemTime(7) <= 2)
trigger6 = (StateNo = 420 && AnimElemTime(4) >= 2 && AnimElemTime(7) <= 2)
trigger7 = MoveContact && (StateNo = 430 && AnimElemTime(3) >= 1 && AnimElemTime(12) <= 0)
trigger8 = !MoveContact && (StateNo = 430 && AnimElemTime(6) >= 1 && AnimElemTime(12) <= 0)
trigger9 = MoveContact && (StateNo = 720 && AnimElemTime(2) >= 2 && AnimElemTime(6) < 0)
trigger10 = MoveContact && (StateNo = 600 && AnimElemTime(10) >= 1 && AnimElemTime(18) < 0)
trigger11 = !MoveContact && (StateNo = 600 && AnimElemTime(10) >= 1 && AnimElemTime(18) < 0) && Var(32)!=0
trigger12 = MoveContact && (StateNo = 1150 && AnimElemTime(3) >= 1 && AnimElemTime(6) <= 2) && Power >= 2000-fVar(2)
trigger13 = Var(16) = 1 && (StateNo = 1000 && AnimElemTime(5) >= 2 && AnimElemTime(9) <= 3) && Power >= 2000-fVar(2)
trigger14 = Var(16) = 1 && (StateNo = 1050 && AnimElemTime(5) >= 2 && AnimElemTime(8) <= 3) && Power >= 2000-fVar(2)
trigger15 = MoveContact && (StateNo = 1700 && AnimElemTime(3) >= 1 && AnimElemTime(3) <= 10) && Power >= 2000-fVar(2)
trigger16 = MoveContact && (StateNo = 1750 && AnimElemTime(3) >= 1 && AnimElemTime(3) <= 10) && Power >= 2000-fVar(2)

;---------------------------------------------------------------------
; 水鳥の舞 X
[State -1,3000]
type = ChangeState
value = 3700
triggerall = Command = "HanaArasi_x" && Var(36)=1 && Power >= 1000-fVar(2)
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = (StateNo = 200 && AnimElemTime(3) >= 2 && AnimElemTime(6) < 0)
trigger3 = (StateNo = 210 && AnimElemTime(4) >= 2 && AnimElemTime(6) <= 2)
trigger4 = (StateNo = 220 && AnimElemTime(3) >= 2 && AnimElemTime(6) <= 1)
trigger5 = (StateNo = 230 && AnimElemTime(4) >= 2 && AnimElemTime(7) <= 2)
trigger6 = (StateNo = 420 && AnimElemTime(4) >= 2 && AnimElemTime(7) <= 2)
trigger7 = MoveContact && (StateNo = 430 && AnimElemTime(3) >= 1 && AnimElemTime(12) <= 0)
trigger8 = !MoveContact && (StateNo = 430 && AnimElemTime(6) >= 1 && AnimElemTime(12) <= 0)
trigger9 = MoveContact && (StateNo = 720 && AnimElemTime(2) >= 2 && AnimElemTime(6) < 0)
trigger10 = MoveContact && (StateNo = 600 && AnimElemTime(10) >= 1 && AnimElemTime(18) < 0)
trigger11 = !MoveContact && (StateNo = 600 && AnimElemTime(10) >= 1 && AnimElemTime(18) < 0) && Var(32)!=0
trigger12 = MoveContact && (StateNo = 1150 && AnimElemTime(3) >= 1 && AnimElemTime(6) <= 2) && Power >= 2000-fVar(2)
trigger13 = Var(16) = 1 && (StateNo = 1000 && AnimElemTime(5) >= 2 && AnimElemTime(9) <= 3) && Power >= 2000-fVar(2)
trigger14 = Var(16) = 1 && (StateNo = 1050 && AnimElemTime(5) >= 2 && AnimElemTime(8) <= 3) && Power >= 2000-fVar(2)
trigger15 = MoveContact && (StateNo = 1700 && AnimElemTime(3) >= 1 && AnimElemTime(3) <= 10) && Power >= 2000-fVar(2)
trigger16 = MoveContact && (StateNo = 1750 && AnimElemTime(3) >= 1 && AnimElemTime(3) <= 10) && Power >= 2000-fVar(2)

; 水鳥の舞 Y
[State -1,3000]
type = ChangeState
value = 3750
triggerall = Command = "HanaArasi_y" && Var(36)=1 && Power >= 1000-fVar(2)
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = (StateNo = 200 && AnimElemTime(3) >= 2 && AnimElemTime(6) < 0)
trigger3 = (StateNo = 210 && AnimElemTime(4) >= 2 && AnimElemTime(6) <= 2)
trigger4 = (StateNo = 220 && AnimElemTime(3) >= 2 && AnimElemTime(6) <= 1)
trigger5 = (StateNo = 230 && AnimElemTime(4) >= 2 && AnimElemTime(7) <= 2)
trigger6 = (StateNo = 420 && AnimElemTime(4) >= 2 && AnimElemTime(7) <= 2)
trigger7 = MoveContact && (StateNo = 430 && AnimElemTime(3) >= 1 && AnimElemTime(12) <= 0)
trigger8 = !MoveContact && (StateNo = 430 && AnimElemTime(6) >= 1 && AnimElemTime(12) <= 0)
trigger9 = MoveContact && (StateNo = 720 && AnimElemTime(2) >= 2 && AnimElemTime(6) < 0)
trigger10 = MoveContact && (StateNo = 600 && AnimElemTime(10) >= 1 && AnimElemTime(18) < 0)
trigger11 = !MoveContact && (StateNo = 600 && AnimElemTime(10) >= 1 && AnimElemTime(18) < 0) && Var(32)!=0
trigger12 = MoveContact && (StateNo = 1150 && AnimElemTime(3) >= 1 && AnimElemTime(6) <= 2) && Power >= 2000-fVar(2)
trigger13 = Var(16) = 1 && (StateNo = 1000 && AnimElemTime(5) >= 2 && AnimElemTime(9) <= 3) && Power >= 2000-fVar(2)
trigger14 = Var(16) = 1 && (StateNo = 1050 && AnimElemTime(5) >= 2 && AnimElemTime(8) <= 3) && Power >= 2000-fVar(2)
trigger15 = MoveContact && (StateNo = 1700 && AnimElemTime(3) >= 1 && AnimElemTime(3) <= 10) && Power >= 2000-fVar(2)
trigger16 = MoveContact && (StateNo = 1750 && AnimElemTime(3) >= 1 && AnimElemTime(3) <= 10) && Power >= 2000-fVar(2)

;---------------------------------------------------------------------
; 鳳凰の舞 X
[State -1,3000]
type = ChangeState
value = 3600
triggerall = Command = "HouhoNoMai_x" && Var(36)=1 && Power >= 1000-fVar(2)
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = (StateNo = 200 && AnimElemTime(3) >= 2 && AnimElemTime(6) < 0)
trigger3 = (StateNo = 210 && AnimElemTime(4) >= 2 && AnimElemTime(6) <= 2)
trigger4 = (StateNo = 220 && AnimElemTime(3) >= 2 && AnimElemTime(6) <= 1)
trigger5 = (StateNo = 230 && AnimElemTime(4) >= 2 && AnimElemTime(7) <= 2)
trigger6 = (StateNo = 420 && AnimElemTime(4) >= 2 && AnimElemTime(7) <= 2)
trigger7 = MoveContact && (StateNo = 430 && AnimElemTime(3) >= 1 && AnimElemTime(12) <= 0)
trigger8 = !MoveContact && (StateNo = 430 && AnimElemTime(6) >= 1 && AnimElemTime(12) <= 0)
trigger9 = MoveContact && (StateNo = 720 && AnimElemTime(2) >= 2 && AnimElemTime(6) < 0)
trigger10 = MoveContact && (StateNo = 600 && AnimElemTime(10) >= 1 && AnimElemTime(18) < 0)
trigger11 = !MoveContact && (StateNo = 600 && AnimElemTime(10) >= 1 && AnimElemTime(18) < 0) && Var(32)!=0
trigger12 = MoveContact && (StateNo = 1150 && AnimElemTime(3) >= 1 && AnimElemTime(6) <= 2) && Power >= 2000-fVar(2)
trigger13 = Var(16) = 1 && (StateNo = 1000 && AnimElemTime(5) >= 2 && AnimElemTime(9) <= 3) && Power >= 2000-fVar(2)
trigger14 = Var(16) = 1 && (StateNo = 1050 && AnimElemTime(5) >= 2 && AnimElemTime(8) <= 3) && Power >= 2000-fVar(2)
trigger15 = MoveContact && (StateNo = 1700 && AnimElemTime(3) >= 1 && AnimElemTime(3) <= 10) && Power >= 2000-fVar(2)
trigger16 = MoveContact && (StateNo = 1750 && AnimElemTime(3) >= 1 && AnimElemTime(3) <= 10) && Power >= 2000-fVar(2)

; 鳳凰の舞 Y
[State -1,3000]
type = ChangeState
value = 3650
triggerall = Command = "HouhoNoMai_y" && Var(36)=1 && Power >= 1000-fVar(2)
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = (StateNo = 200 && AnimElemTime(3) >= 2 && AnimElemTime(6) < 0)
trigger3 = (StateNo = 210 && AnimElemTime(4) >= 2 && AnimElemTime(6) <= 2)
trigger4 = (StateNo = 220 && AnimElemTime(3) >= 2 && AnimElemTime(6) <= 1)
trigger5 = (StateNo = 230 && AnimElemTime(4) >= 2 && AnimElemTime(7) <= 2)
trigger6 = (StateNo = 420 && AnimElemTime(4) >= 2 && AnimElemTime(7) <= 2)
trigger7 = MoveContact && (StateNo = 430 && AnimElemTime(3) >= 1 && AnimElemTime(12) <= 0)
trigger8 = !MoveContact && (StateNo = 430 && AnimElemTime(6) >= 1 && AnimElemTime(12) <= 0)
trigger9 = MoveContact && (StateNo = 720 && AnimElemTime(2) >= 2 && AnimElemTime(6) < 0)
trigger10 = MoveContact && (StateNo = 600 && AnimElemTime(10) >= 1 && AnimElemTime(18) < 0)
trigger11 = !MoveContact && (StateNo = 600 && AnimElemTime(10) >= 1 && AnimElemTime(18) < 0) && Var(32)!=0
trigger12 = MoveContact && (StateNo = 1150 && AnimElemTime(3) >= 1 && AnimElemTime(6) <= 2) && Power >= 2000-fVar(2)
trigger13 = Var(16) = 1 && (StateNo = 1000 && AnimElemTime(5) >= 2 && AnimElemTime(9) <= 3) && Power >= 2000-fVar(2)
trigger14 = Var(16) = 1 && (StateNo = 1050 && AnimElemTime(5) >= 2 && AnimElemTime(8) <= 3) && Power >= 2000-fVar(2)
trigger15 = MoveContact && (StateNo = 1700 && AnimElemTime(3) >= 1 && AnimElemTime(3) <= 10) && Power >= 2000-fVar(2)
trigger16 = MoveContact && (StateNo = 1750 && AnimElemTime(3) >= 1 && AnimElemTime(3) <= 10) && Power >= 2000-fVar(2)

;---------------------------------------------------------------------
; 花嵐 X
[State -1,3000]
type = ChangeState
value = 3100
triggerall = Command = "HanaArasi_x" && Var(36)=0 && Power >= 1000-fVar(2)
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = (StateNo = 200 && AnimElemTime(3) >= 2 && AnimElemTime(6) < 0)
trigger3 = (StateNo = 210 && AnimElemTime(4) >= 2 && AnimElemTime(6) <= 2)
trigger4 = (StateNo = 220 && AnimElemTime(3) >= 2 && AnimElemTime(6) <= 1)
trigger5 = (StateNo = 230 && AnimElemTime(4) >= 2 && AnimElemTime(7) <= 2)
trigger6 = (StateNo = 420 && AnimElemTime(4) >= 2 && AnimElemTime(7) <= 2)
trigger7 = MoveContact && (StateNo = 430 && AnimElemTime(3) >= 1 && AnimElemTime(12) <= 0)
trigger8 = !MoveContact && (StateNo = 430 && AnimElemTime(6) >= 1 && AnimElemTime(12) <= 0)
trigger9 = MoveContact && (StateNo = 720 && AnimElemTime(2) >= 2 && AnimElemTime(6) < 0)
trigger10 = MoveContact && (StateNo = 600 && AnimElemTime(10) >= 1 && AnimElemTime(18) < 0)
trigger11 = !MoveContact && (StateNo = 600 && AnimElemTime(10) >= 1 && AnimElemTime(18) < 0) && Var(32)!=0
trigger12 = MoveContact && (StateNo = 1150 && AnimElemTime(3) >= 1 && AnimElemTime(6) <= 2) && Power >= 2000-fVar(2)
trigger13 = Var(16) = 1 && (StateNo = 1000 && AnimElemTime(5) >= 2 && AnimElemTime(9) <= 3) && Power >= 2000-fVar(2)
trigger14 = Var(16) = 1 && (StateNo = 1050 && AnimElemTime(5) >= 2 && AnimElemTime(8) <= 3) && Power >= 2000-fVar(2)

; 花嵐 Y
[State -1,3050]
type = ChangeState
value = 3150
triggerall = Command = "HanaArasi_y" && Var(36)=0 && Power >= 1000-fVar(2)
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = (StateNo = 200 && AnimElemTime(3) >= 2 && AnimElemTime(6) < 0)
trigger3 = (StateNo = 210 && AnimElemTime(4) >= 2 && AnimElemTime(6) <= 2)
trigger4 = (StateNo = 220 && AnimElemTime(3) >= 2 && AnimElemTime(6) <= 1)
trigger5 = (StateNo = 230 && AnimElemTime(4) >= 2 && AnimElemTime(7) <= 2)
trigger6 = (StateNo = 420 && AnimElemTime(4) >= 2 && AnimElemTime(7) <= 2)
trigger7 = MoveContact && (StateNo = 430 && AnimElemTime(3) >= 1 && AnimElemTime(12) <= 0)
trigger8 = !MoveContact && (StateNo = 430 && AnimElemTime(6) >= 1 && AnimElemTime(12) <= 0)
trigger9 = MoveContact && (StateNo = 720 && AnimElemTime(2) >= 2 && AnimElemTime(6) < 0)
trigger10 = MoveContact && (StateNo = 600 && AnimElemTime(10) >= 1 && AnimElemTime(18) < 0)
trigger11 = !MoveContact && (StateNo = 600 && AnimElemTime(10) >= 1 && AnimElemTime(18) < 0) && Var(32)!=0
trigger12 = MoveContact && (StateNo = 1150 && AnimElemTime(3) >= 1 && AnimElemTime(6) <= 2) && Power >= 2000-fVar(2)
trigger13 = Var(16) = 1 && (StateNo = 1000 && AnimElemTime(5) >= 2 && AnimElemTime(9) <= 3) && Power >= 2000-fVar(2)
trigger14 = Var(16) = 1 && (StateNo = 1050 && AnimElemTime(5) >= 2 && AnimElemTime(8) <= 3) && Power >= 2000-fVar(2)

;=====================================================================
; Special Arts 
;=====================================================================
;---------------------------------------------------------------------
; 飛翔龍炎陣 A
[State -1]
type = ChangeState
value = 1700
triggerall = Command = "RyuEnJin_a" && Var(36)=1
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = (StateNo = 200 && AnimElemTime(3) >= 2 && AnimElemTime(6) < 0)
trigger3 = (StateNo = 210 && AnimElemTime(4) >= 2 && AnimElemTime(6) <= 2)
trigger4 = (StateNo = 220 && AnimElemTime(3) >= 2 && AnimElemTime(6) <= 1)
trigger5 = (StateNo = 230 && AnimElemTime(4) >= 2 && AnimElemTime(7) <= 2)
trigger6 = (StateNo = 420 && AnimElemTime(4) >= 2 && AnimElemTime(7) <= 2)
trigger7 = MoveContact && (StateNo = 430 && AnimElemTime(3) >= 1 && AnimElemTime(12) <= 0)
trigger8 = !MoveContact && (StateNo = 430 && AnimElemTime(6) >= 1 && AnimElemTime(12) <= 0)
trigger9 = MoveContact && (StateNo = 720 && AnimElemTime(2) >= 2 && AnimElemTime(6) < 0)
trigger10 = MoveContact && (StateNo = 600 && AnimElemTime(10) >= 1 && AnimElemTime(18) < 0)
trigger11 = !MoveContact && (StateNo = 600 && AnimElemTime(10) >= 1 && AnimElemTime(18) < 0) && Var(32)!=0
trigger12 = (StateNo = 205 && AnimElemTime(2) >= 1 && AnimElemTime(5) <= 2) && Var(32)!=0
trigger13 = (StateNo = 215 && AnimElemTime(3) >= 1 && AnimElemTime(6) <= 2) && Var(32)!=0
trigger14 = (StateNo = 225 && AnimElemTime(3) >= 1 && AnimElemTime(7) <= 2) && Var(32)!=0
trigger15 = (StateNo = 235 && AnimElemTime(4) >= 1 && AnimElemTime(7) <= 2) && Var(32)!=0
trigger16 = (StateNo = 400 && AnimElemTime(5) >= 1 && AnimElemTime(8) <= 2) && Var(32)!=0
trigger17 = (StateNo = 410 && AnimElemTime(3) >= 1 && AnimElemTime(5) <= 2) && Var(32)!=0
trigger18 = MoveContact && (StateNo = 1400 && AnimElemTime(5) >= 1 && AnimElemTime(7) <= 2) && Var(32)!=0
trigger19 = MoveContact && (StateNo = 1600 && AnimElemTime(6) >= 1 && AnimElemTime(17) <= 2) && Var(32)!=0
trigger20 = MoveContact && (StateNo = 1650 && AnimElemTime(6) >= 1 && AnimElemTime(25) <= 2) && Var(32)!=0
trigger21 = MoveContact && (StateNo = 1200 && AnimElemTime(6) >= 2 && AnimElemTime(7) <= 6) && Var(32)!=0
trigger22 = MoveContact && (StateNo = 1250 && AnimElemTime(6) >= 2 && AnimElemTime(7) <= 6) && Var(32)!=0

; 飛翔龍炎陣 B
[State -1]
type = ChangeState
value = 1750
triggerall = Command = "RyuEnJin_b" && Var(36)=1
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = (StateNo = 200 && AnimElemTime(3) >= 2 && AnimElemTime(6) < 0)
trigger3 = (StateNo = 210 && AnimElemTime(4) >= 2 && AnimElemTime(6) <= 2)
trigger4 = (StateNo = 220 && AnimElemTime(3) >= 2 && AnimElemTime(6) <= 1)
trigger5 = (StateNo = 230 && AnimElemTime(4) >= 2 && AnimElemTime(7) <= 2)
trigger6 = (StateNo = 420 && AnimElemTime(4) >= 2 && AnimElemTime(7) <= 2)
trigger7 = MoveContact && (StateNo = 430 && AnimElemTime(3) >= 1 && AnimElemTime(12) <= 0)
trigger8 = !MoveContact && (StateNo = 430 && AnimElemTime(6) >= 1 && AnimElemTime(12) <= 0)
trigger9 = MoveContact && (StateNo = 720 && AnimElemTime(2) >= 2 && AnimElemTime(6) < 0)
trigger10 = MoveContact && (StateNo = 600 && AnimElemTime(10) >= 1 && AnimElemTime(18) < 0)
trigger11 = !MoveContact && (StateNo = 600 && AnimElemTime(10) >= 1 && AnimElemTime(18) < 0) && Var(32)!=0
trigger12 = (StateNo = 205 && AnimElemTime(2) >= 1 && AnimElemTime(5) <= 2) && Var(32)!=0
trigger13 = (StateNo = 215 && AnimElemTime(3) >= 1 && AnimElemTime(6) <= 2) && Var(32)!=0
trigger14 = (StateNo = 225 && AnimElemTime(3) >= 1 && AnimElemTime(7) <= 2) && Var(32)!=0
trigger15 = (StateNo = 235 && AnimElemTime(4) >= 1 && AnimElemTime(7) <= 2) && Var(32)!=0
trigger16 = (StateNo = 400 && AnimElemTime(5) >= 1 && AnimElemTime(8) <= 2) && Var(32)!=0
trigger17 = (StateNo = 410 && AnimElemTime(3) >= 1 && AnimElemTime(5) <= 2) && Var(32)!=0
trigger18 = MoveContact && (StateNo = 1400 && AnimElemTime(5) >= 1 && AnimElemTime(7) <= 2) && Var(32)!=0
trigger19 = MoveContact && (StateNo = 1600 && AnimElemTime(6) >= 1 && AnimElemTime(17) <= 2) && Var(32)!=0
trigger20 = MoveContact && (StateNo = 1650 && AnimElemTime(6) >= 1 && AnimElemTime(25) <= 2) && Var(32)!=0
trigger21 = MoveContact && (StateNo = 1200 && AnimElemTime(6) >= 2 && AnimElemTime(7) <= 6) && Var(32)!=0
trigger22 = MoveContact && (StateNo = 1250 && AnimElemTime(6) >= 2 && AnimElemTime(7) <= 6) && Var(32)!=0

;---------------------------------------------------------------------
; 白鷺の舞 X
[State -1]
type = ChangeState
value = 1600
triggerall = Command = "HakuRo_x" && Var(36)=1
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = (StateNo = 200 && AnimElemTime(3) >= 2 && AnimElemTime(6) < 0)
trigger3 = (StateNo = 210 && AnimElemTime(4) >= 2 && AnimElemTime(6) <= 2)
trigger4 = (StateNo = 220 && AnimElemTime(3) >= 2 && AnimElemTime(6) <= 1)
trigger5 = (StateNo = 230 && AnimElemTime(4) >= 2 && AnimElemTime(7) <= 2)
trigger6 = (StateNo = 420 && AnimElemTime(4) >= 2 && AnimElemTime(7) <= 2)
trigger7 = MoveContact && (StateNo = 430 && AnimElemTime(3) >= 1 && AnimElemTime(12) <= 0)
trigger8 = !MoveContact && (StateNo = 430 && AnimElemTime(6) >= 1 && AnimElemTime(12) <= 0)
trigger9 = MoveContact && (StateNo = 720 && AnimElemTime(2) >= 2 && AnimElemTime(6) < 0)
trigger10 = MoveContact && (StateNo = 600 && AnimElemTime(10) >= 1 && AnimElemTime(18) < 0)
trigger11 = !MoveContact && (StateNo = 600 && AnimElemTime(10) >= 1 && AnimElemTime(18) < 0) && Var(32)!=0
trigger12 = (StateNo = 205 && AnimElemTime(2) >= 1 && AnimElemTime(5) <= 2) && Var(32)!=0
trigger13 = (StateNo = 215 && AnimElemTime(3) >= 1 && AnimElemTime(6) <= 2) && Var(32)!=0
trigger14 = (StateNo = 225 && AnimElemTime(3) >= 1 && AnimElemTime(7) <= 2) && Var(32)!=0
trigger15 = (StateNo = 235 && AnimElemTime(4) >= 1 && AnimElemTime(7) <= 2) && Var(32)!=0
trigger16 = (StateNo = 400 && AnimElemTime(5) >= 1 && AnimElemTime(8) <= 2) && Var(32)!=0
trigger17 = (StateNo = 410 && AnimElemTime(3) >= 1 && AnimElemTime(5) <= 2) && Var(32)!=0
trigger18 = MoveContact && (StateNo = 1400 && AnimElemTime(5) >= 1 && AnimElemTime(7) <= 2) && Var(32)!=0
trigger19 = MoveContact && (StateNo = 1200 && AnimElemTime(6) >= 2 && AnimElemTime(7) <= 6) && Var(32)!=0
trigger20 = MoveContact && (StateNo = 1250 && AnimElemTime(6) >= 2 && AnimElemTime(7) <= 6) && Var(32)!=0

; 白鷺の舞 X
[State -1]
type = ChangeState
value = 1650
triggerall = Command = "HakuRo_y" && Var(36)=1
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = (StateNo = 200 && AnimElemTime(3) >= 2 && AnimElemTime(6) < 0)
trigger3 = (StateNo = 210 && AnimElemTime(4) >= 2 && AnimElemTime(6) <= 2)
trigger4 = (StateNo = 220 && AnimElemTime(3) >= 2 && AnimElemTime(6) <= 1)
trigger5 = (StateNo = 230 && AnimElemTime(4) >= 2 && AnimElemTime(7) <= 2)
trigger6 = (StateNo = 420 && AnimElemTime(4) >= 2 && AnimElemTime(7) <= 2)
trigger7 = MoveContact && (StateNo = 430 && AnimElemTime(3) >= 1 && AnimElemTime(12) <= 0)
trigger8 = !MoveContact && (StateNo = 430 && AnimElemTime(6) >= 1 && AnimElemTime(12) <= 0)
trigger9 = MoveContact && (StateNo = 720 && AnimElemTime(2) >= 2 && AnimElemTime(6) < 0)
trigger10 = MoveContact && (StateNo = 600 && AnimElemTime(10) >= 1 && AnimElemTime(18) < 0)
trigger11 = !MoveContact && (StateNo = 600 && AnimElemTime(10) >= 1 && AnimElemTime(18) < 0) && Var(32)!=0
trigger12 = (StateNo = 205 && AnimElemTime(2) >= 1 && AnimElemTime(5) <= 2) && Var(32)!=0
trigger13 = (StateNo = 215 && AnimElemTime(3) >= 1 && AnimElemTime(6) <= 2) && Var(32)!=0
trigger14 = (StateNo = 225 && AnimElemTime(3) >= 1 && AnimElemTime(7) <= 2) && Var(32)!=0
trigger15 = (StateNo = 235 && AnimElemTime(4) >= 1 && AnimElemTime(7) <= 2) && Var(32)!=0
trigger16 = (StateNo = 400 && AnimElemTime(5) >= 1 && AnimElemTime(8) <= 2) && Var(32)!=0
trigger17 = (StateNo = 410 && AnimElemTime(3) >= 1 && AnimElemTime(5) <= 2) && Var(32)!=0
trigger18 = MoveContact && (StateNo = 1400 && AnimElemTime(5) >= 1 && AnimElemTime(7) <= 2) && Var(32)!=0
trigger19 = MoveContact && (StateNo = 1200 && AnimElemTime(6) >= 2 && AnimElemTime(7) <= 6) && Var(32)!=0
trigger20 = MoveContact && (StateNo = 1250 && AnimElemTime(6) >= 2 && AnimElemTime(7) <= 6) && Var(32)!=0

;---------------------------------------------------------------------
; 必殺忍蜂 A
[State -1]
type = ChangeState
value = 1400
triggerall = Command = "ShinobiBachi_a"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = (StateNo = 200 && AnimElemTime(3) >= 2 && AnimElemTime(6) < 0)
trigger3 = (StateNo = 210 && AnimElemTime(4) >= 2 && AnimElemTime(6) <= 2)
trigger4 = (StateNo = 220 && AnimElemTime(3) >= 2 && AnimElemTime(6) <= 1)
trigger5 = (StateNo = 230 && AnimElemTime(4) >= 2 && AnimElemTime(7) <= 2)
trigger6 = (StateNo = 420 && AnimElemTime(4) >= 2 && AnimElemTime(7) <= 2)
trigger7 = MoveContact && (StateNo = 430 && AnimElemTime(3) >= 1 && AnimElemTime(12) <= 0)
trigger8 = !MoveContact && (StateNo = 430 && AnimElemTime(6) >= 1 && AnimElemTime(12) <= 0)
trigger9 = MoveContact && (StateNo = 720 && AnimElemTime(2) >= 2 && AnimElemTime(6) < 0)
trigger10 = MoveContact && (StateNo = 600 && AnimElemTime(10) >= 1 && AnimElemTime(18) < 0)
trigger11 = !MoveContact && (StateNo = 600 && AnimElemTime(10) >= 1 && AnimElemTime(18) < 0) && Var(32)!=0
trigger12 = (StateNo = 205 && AnimElemTime(2) >= 1 && AnimElemTime(5) <= 2) && Var(32)!=0
trigger13 = (StateNo = 215 && AnimElemTime(3) >= 1 && AnimElemTime(6) <= 2) && Var(32)!=0
trigger14 = (StateNo = 225 && AnimElemTime(3) >= 1 && AnimElemTime(7) <= 2) && Var(32)!=0
trigger15 = (StateNo = 235 && AnimElemTime(4) >= 1 && AnimElemTime(7) <= 2) && Var(32)!=0
trigger16 = (StateNo = 400 && AnimElemTime(5) >= 1 && AnimElemTime(8) <= 2) && Var(32)!=0
trigger17 = (StateNo = 410 && AnimElemTime(3) >= 1 && AnimElemTime(5) <= 2) && Var(32)!=0

; 必殺忍蜂 B
[State -1]
type = ChangeState
value = 1450
triggerall = Command = "ShinobiBachi_b"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = (StateNo = 200 && AnimElemTime(3) >= 2 && AnimElemTime(6) < 0)
trigger3 = (StateNo = 210 && AnimElemTime(4) >= 2 && AnimElemTime(6) <= 2)
trigger4 = (StateNo = 220 && AnimElemTime(3) >= 2 && AnimElemTime(6) <= 1)
trigger5 = (StateNo = 230 && AnimElemTime(4) >= 2 && AnimElemTime(7) <= 2)
trigger6 = (StateNo = 420 && AnimElemTime(4) >= 2 && AnimElemTime(7) <= 2)
trigger7 = MoveContact && (StateNo = 430 && AnimElemTime(3) >= 1 && AnimElemTime(12) <= 0)
trigger8 = !MoveContact && (StateNo = 430 && AnimElemTime(6) >= 1 && AnimElemTime(12) <= 0)
trigger9 = MoveContact && (StateNo = 720 && AnimElemTime(2) >= 2 && AnimElemTime(6) < 0)
trigger10 = MoveContact && (StateNo = 600 && AnimElemTime(10) >= 1 && AnimElemTime(18) < 0)
trigger11 = !MoveContact && (StateNo = 600 && AnimElemTime(10) >= 1 && AnimElemTime(18) < 0) && Var(32)!=0
trigger12 = (StateNo = 205 && AnimElemTime(2) >= 1 && AnimElemTime(5) <= 2) && Var(32)!=0
trigger13 = (StateNo = 215 && AnimElemTime(3) >= 1 && AnimElemTime(6) <= 2) && Var(32)!=0
trigger14 = (StateNo = 225 && AnimElemTime(3) >= 1 && AnimElemTime(7) <= 2) && Var(32)!=0
trigger15 = (StateNo = 235 && AnimElemTime(4) >= 1 && AnimElemTime(7) <= 2) && Var(32)!=0
trigger16 = (StateNo = 400 && AnimElemTime(5) >= 1 && AnimElemTime(8) <= 2) && Var(32)!=0
trigger17 = (StateNo = 410 && AnimElemTime(3) >= 1 && AnimElemTime(5) <= 2) && Var(32)!=0

;---------------------------------------------------------------------
; 龍炎舞 X
[State -1]
type = ChangeState
value = 1100
triggerall = Command = "RyuEnbu_x"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = (StateNo = 200 && AnimElemTime(3) >= 2 && AnimElemTime(6) < 0)
trigger3 = (StateNo = 210 && AnimElemTime(4) >= 2 && AnimElemTime(6) <= 2)
trigger4 = (StateNo = 220 && AnimElemTime(3) >= 2 && AnimElemTime(6) <= 1)
trigger5 = (StateNo = 230 && AnimElemTime(4) >= 2 && AnimElemTime(7) <= 2)
trigger6 = (StateNo = 420 && AnimElemTime(4) >= 2 && AnimElemTime(7) <= 2)
trigger7 = MoveContact && (StateNo = 430 && AnimElemTime(3) >= 1 && AnimElemTime(12) <= 0)
trigger8 = !MoveContact && (StateNo = 430 && AnimElemTime(6) >= 1 && AnimElemTime(12) <= 0)
trigger9 = MoveContact && (StateNo = 720 && AnimElemTime(2) >= 2 && AnimElemTime(6) < 0)
trigger10 = MoveContact && (StateNo = 600 && AnimElemTime(10) >= 1 && AnimElemTime(18) < 0)
trigger11 = !MoveContact && (StateNo = 600 && AnimElemTime(10) >= 1 && AnimElemTime(18) < 0) && Var(32)!=0
trigger12 = (StateNo = 205 && AnimElemTime(2) >= 1 && AnimElemTime(5) <= 2) && Var(32)!=0
trigger13 = (StateNo = 215 && AnimElemTime(3) >= 1 && AnimElemTime(6) <= 2) && Var(32)!=0
trigger14 = (StateNo = 225 && AnimElemTime(3) >= 1 && AnimElemTime(7) <= 2) && Var(32)!=0
trigger15 = (StateNo = 235 && AnimElemTime(4) >= 1 && AnimElemTime(7) <= 2) && Var(32)!=0
trigger16 = (StateNo = 400 && AnimElemTime(5) >= 1 && AnimElemTime(8) <= 2) && Var(32)!=0
trigger17 = (StateNo = 410 && AnimElemTime(3) >= 1 && AnimElemTime(5) <= 2) && Var(32)!=0
trigger18 = MoveContact && (StateNo = 1200 && AnimElemTime(6) >= 2 && AnimElemTime(7) <= 6) && Var(32)!=0
trigger19 = MoveContact && (StateNo = 1250 && AnimElemTime(6) >= 2 && AnimElemTime(7) <= 6) && Var(32)!=0
trigger20 = MoveContact && (StateNo = 1400 && AnimElemTime(5) >= 1 && AnimElemTime(7) <= 2) && Var(32)!=0
trigger21 = MoveContact && (StateNo = 1600 && AnimElemTime(6) >= 1 && AnimElemTime(17) <= 2) && Var(32)!=0
trigger22 = MoveContact && (StateNo = 1650 && AnimElemTime(6) >= 1 && AnimElemTime(25) <= 2) && Var(32)!=0

; 龍炎舞 Y
[State -1]
type = ChangeState
value = 1150
triggerall = Command = "RyuEnbu_y"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = (StateNo = 200 && AnimElemTime(3) >= 2 && AnimElemTime(6) < 0)
trigger3 = (StateNo = 210 && AnimElemTime(4) >= 2 && AnimElemTime(6) <= 2)
trigger4 = (StateNo = 220 && AnimElemTime(3) >= 2 && AnimElemTime(6) <= 1)
trigger5 = (StateNo = 230 && AnimElemTime(4) >= 2 && AnimElemTime(7) <= 2)
trigger6 = (StateNo = 420 && AnimElemTime(4) >= 2 && AnimElemTime(7) <= 2)
trigger7 = MoveContact && (StateNo = 430 && AnimElemTime(3) >= 1 && AnimElemTime(12) <= 0)
trigger8 = !MoveContact && (StateNo = 430 && AnimElemTime(6) >= 1 && AnimElemTime(12) <= 0)
trigger9 = MoveContact && (StateNo = 720 && AnimElemTime(2) >= 2 && AnimElemTime(6) < 0)
trigger10 = MoveContact && (StateNo = 600 && AnimElemTime(10) >= 1 && AnimElemTime(18) < 0)
trigger11 = !MoveContact && (StateNo = 600 && AnimElemTime(10) >= 1 && AnimElemTime(18) < 0) && Var(32)!=0
trigger12 = (StateNo = 205 && AnimElemTime(2) >= 1 && AnimElemTime(5) <= 2) && Var(32)!=0
trigger13 = (StateNo = 215 && AnimElemTime(3) >= 1 && AnimElemTime(6) <= 2) && Var(32)!=0
trigger14 = (StateNo = 225 && AnimElemTime(3) >= 1 && AnimElemTime(7) <= 2) && Var(32)!=0
trigger15 = (StateNo = 235 && AnimElemTime(4) >= 1 && AnimElemTime(7) <= 2) && Var(32)!=0
trigger16 = (StateNo = 400 && AnimElemTime(5) >= 1 && AnimElemTime(8) <= 2) && Var(32)!=0
trigger17 = (StateNo = 410 && AnimElemTime(3) >= 1 && AnimElemTime(5) <= 2) && Var(32)!=0
trigger18 = MoveContact && (StateNo = 1200 && AnimElemTime(6) >= 2 && AnimElemTime(7) <= 6) && Var(32)!=0
trigger19 = MoveContact && (StateNo = 1250 && AnimElemTime(6) >= 2 && AnimElemTime(7) <= 6) && Var(32)!=0
trigger20 = MoveContact && (StateNo = 1400 && AnimElemTime(5) >= 1 && AnimElemTime(7) <= 2) && Var(32)!=0
trigger21 = MoveContact && (StateNo = 1600 && AnimElemTime(6) >= 1 && AnimElemTime(17) <= 2) && Var(32)!=0
trigger22 = MoveContact && (StateNo = 1650 && AnimElemTime(6) >= 1 && AnimElemTime(25) <= 2) && Var(32)!=0

;---------------------------------------------------------------------
; 小夜千鳥 A
[State -1]
type = ChangeState
value = 1200
triggerall = Command = "ChiDori_a"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = (StateNo = 200 && AnimElemTime(3) >= 2 && AnimElemTime(6) < 0)
trigger3 = (StateNo = 210 && AnimElemTime(4) >= 2 && AnimElemTime(6) <= 2)
trigger4 = (StateNo = 220 && AnimElemTime(3) >= 2 && AnimElemTime(6) <= 1)
trigger5 = (StateNo = 230 && AnimElemTime(4) >= 2 && AnimElemTime(7) <= 2)
trigger6 = (StateNo = 420 && AnimElemTime(4) >= 2 && AnimElemTime(7) <= 2)
trigger7 = MoveContact && (StateNo = 430 && AnimElemTime(3) >= 1 && AnimElemTime(12) <= 0)
trigger8 = !MoveContact && (StateNo = 430 && AnimElemTime(6) >= 1 && AnimElemTime(12) <= 0)
trigger9 = MoveContact && (StateNo = 720 && AnimElemTime(2) >= 2 && AnimElemTime(6) < 0)
trigger10 = MoveContact && (StateNo = 600 && AnimElemTime(10) >= 1 && AnimElemTime(18) < 0)
trigger11 = !MoveContact && (StateNo = 600 && AnimElemTime(10) >= 1 && AnimElemTime(18) < 0) && Var(32)!=0
trigger12 = (StateNo = 205 && AnimElemTime(2) >= 1 && AnimElemTime(5) <= 2) && Var(32)!=0
trigger13 = (StateNo = 215 && AnimElemTime(3) >= 1 && AnimElemTime(6) <= 2) && Var(32)!=0
trigger14 = (StateNo = 225 && AnimElemTime(3) >= 1 && AnimElemTime(7) <= 2) && Var(32)!=0
trigger15 = (StateNo = 235 && AnimElemTime(4) >= 1 && AnimElemTime(7) <= 2) && Var(32)!=0
trigger16 = (StateNo = 400 && AnimElemTime(5) >= 1 && AnimElemTime(8) <= 2) && Var(32)!=0
trigger17 = (StateNo = 410 && AnimElemTime(3) >= 1 && AnimElemTime(5) <= 2) && Var(32)!=0
trigger18 = MoveContact && (StateNo = 1400 && AnimElemTime(5) >= 1 && AnimElemTime(7) <= 2) && Var(32)!=0

; 小夜千鳥 B
[State -1]
type = ChangeState
value = 1250
triggerall = Command = "ChiDori_b"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = (StateNo = 200 && AnimElemTime(3) >= 2 && AnimElemTime(6) < 0)
trigger3 = (StateNo = 210 && AnimElemTime(4) >= 2 && AnimElemTime(6) <= 2)
trigger4 = (StateNo = 220 && AnimElemTime(3) >= 2 && AnimElemTime(6) <= 1)
trigger5 = (StateNo = 230 && AnimElemTime(4) >= 2 && AnimElemTime(7) <= 2)
trigger6 = (StateNo = 420 && AnimElemTime(4) >= 2 && AnimElemTime(7) <= 2)
trigger7 = MoveContact && (StateNo = 430 && AnimElemTime(3) >= 1 && AnimElemTime(12) <= 0)
trigger8 = !MoveContact && (StateNo = 430 && AnimElemTime(6) >= 1 && AnimElemTime(12) <= 0)
trigger9 = MoveContact && (StateNo = 720 && AnimElemTime(2) >= 2 && AnimElemTime(6) < 0)
trigger10 = MoveContact && (StateNo = 600 && AnimElemTime(10) >= 1 && AnimElemTime(18) < 0)
trigger11 = !MoveContact && (StateNo = 600 && AnimElemTime(10) >= 1 && AnimElemTime(18) < 0) && Var(32)!=0
trigger12 = (StateNo = 205 && AnimElemTime(2) >= 1 && AnimElemTime(5) <= 2) && Var(32)!=0
trigger13 = (StateNo = 215 && AnimElemTime(3) >= 1 && AnimElemTime(6) <= 2) && Var(32)!=0
trigger14 = (StateNo = 225 && AnimElemTime(3) >= 1 && AnimElemTime(7) <= 2) && Var(32)!=0
trigger15 = (StateNo = 235 && AnimElemTime(4) >= 1 && AnimElemTime(7) <= 2) && Var(32)!=0
trigger16 = (StateNo = 400 && AnimElemTime(5) >= 1 && AnimElemTime(8) <= 2) && Var(32)!=0
trigger17 = (StateNo = 410 && AnimElemTime(3) >= 1 && AnimElemTime(5) <= 2) && Var(32)!=0
trigger18 = MoveContact && (StateNo = 1400 && AnimElemTime(5) >= 1 && AnimElemTime(7) <= 2) && Var(32)!=0

;---------------------------------------------------------------------
; 花蝶扇 X
[State -1]
type = ChangeState
value = 1000
triggerall = Command = "KaChoSen_x" && NumProjID(1050)=0
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = (StateNo = 200 && AnimElemTime(3) >= 2 && AnimElemTime(6) < 0)
trigger3 = (StateNo = 210 && AnimElemTime(4) >= 2 && AnimElemTime(6) <= 2)
trigger4 = (StateNo = 220 && AnimElemTime(3) >= 2 && AnimElemTime(6) <= 1)
trigger5 = (StateNo = 230 && AnimElemTime(4) >= 2 && AnimElemTime(7) <= 2)
trigger6 = (StateNo = 420 && AnimElemTime(4) >= 2 && AnimElemTime(7) <= 2)
trigger7 = MoveContact && (StateNo = 430 && AnimElemTime(3) >= 1 && AnimElemTime(12) <= 0)
trigger8 = !MoveContact && (StateNo = 430 && AnimElemTime(6) >= 1 && AnimElemTime(12) <= 0)
trigger9 = MoveContact && (StateNo = 720 && AnimElemTime(2) >= 2 && AnimElemTime(6) < 0)
trigger10 = MoveContact && (StateNo = 600 && AnimElemTime(10) >= 1 && AnimElemTime(18) < 0)
trigger11 = !MoveContact && (StateNo = 600 && AnimElemTime(10) >= 1 && AnimElemTime(18) < 0) && Var(32)!=0
trigger12 = (StateNo = 205 && AnimElemTime(2) >= 1 && AnimElemTime(5) <= 2) && Var(32)!=0
trigger13 = (StateNo = 215 && AnimElemTime(3) >= 1 && AnimElemTime(6) <= 2) && Var(32)!=0
trigger14 = (StateNo = 225 && AnimElemTime(3) >= 1 && AnimElemTime(7) <= 2) && Var(32)!=0
trigger15 = (StateNo = 235 && AnimElemTime(4) >= 1 && AnimElemTime(7) <= 2) && Var(32)!=0
trigger16 = (StateNo = 400 && AnimElemTime(5) >= 1 && AnimElemTime(8) <= 2) && Var(32)!=0
trigger17 = (StateNo = 410 && AnimElemTime(3) >= 1 && AnimElemTime(5) <= 2) && Var(32)!=0

; 花蝶扇 Y
[State -1]
type = ChangeState
value = 1050
triggerall = Command = "KaChoSen_y" && NumProjID(1050)=0
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = (StateNo = 200 && AnimElemTime(3) >= 2 && AnimElemTime(6) < 0)
trigger3 = (StateNo = 210 && AnimElemTime(4) >= 2 && AnimElemTime(6) <= 2)
trigger4 = (StateNo = 220 && AnimElemTime(3) >= 2 && AnimElemTime(6) <= 1)
trigger5 = (StateNo = 230 && AnimElemTime(4) >= 2 && AnimElemTime(7) <= 2)
trigger6 = (StateNo = 420 && AnimElemTime(4) >= 2 && AnimElemTime(7) <= 2)
trigger7 = MoveContact && (StateNo = 430 && AnimElemTime(3) >= 1 && AnimElemTime(12) <= 0)
trigger8 = !MoveContact && (StateNo = 430 && AnimElemTime(6) >= 1 && AnimElemTime(12) <= 0)
trigger9 = MoveContact && (StateNo = 720 && AnimElemTime(2) >= 2 && AnimElemTime(6) < 0)
trigger10 = MoveContact && (StateNo = 600 && AnimElemTime(10) >= 1 && AnimElemTime(18) < 0)
trigger11 = !MoveContact && (StateNo = 600 && AnimElemTime(10) >= 1 && AnimElemTime(18) < 0) && Var(32)!=0
trigger12 = (StateNo = 205 && AnimElemTime(2) >= 1 && AnimElemTime(5) <= 2) && Var(32)!=0
trigger13 = (StateNo = 215 && AnimElemTime(3) >= 1 && AnimElemTime(6) <= 2) && Var(32)!=0
trigger14 = (StateNo = 225 && AnimElemTime(3) >= 1 && AnimElemTime(7) <= 2) && Var(32)!=0
trigger15 = (StateNo = 235 && AnimElemTime(4) >= 1 && AnimElemTime(7) <= 2) && Var(32)!=0
trigger16 = (StateNo = 400 && AnimElemTime(5) >= 1 && AnimElemTime(8) <= 2) && Var(32)!=0
trigger17 = (StateNo = 410 && AnimElemTime(3) >= 1 && AnimElemTime(5) <= 2) && Var(32)!=0

;---------------------------------------------------------------------
; ムササビの舞 X
[State -1]
type = ChangeState
value = 1300
triggerall = Command = "Musasabi_x"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100 || StateNo = 40)
trigger2 = (StateNo = 200 && AnimElemTime(3) >= 2 && AnimElemTime(6) < 0)
trigger3 = (StateNo = 210 && AnimElemTime(4) >= 2 && AnimElemTime(6) <= 2)
trigger4 = (StateNo = 220 && AnimElemTime(3) >= 2 && AnimElemTime(6) <= 1)
trigger5 = (StateNo = 230 && AnimElemTime(4) >= 2 && AnimElemTime(7) <= 2)
trigger6 = (StateNo = 420 && AnimElemTime(4) >= 2 && AnimElemTime(7) <= 2)
trigger7 = MoveContact && (StateNo = 430 && AnimElemTime(3) >= 1 && AnimElemTime(12) <= 0)
trigger8 = !MoveContact && (StateNo = 430 && AnimElemTime(6) >= 1 && AnimElemTime(12) <= 0)
trigger9 = MoveContact && (StateNo = 720 && AnimElemTime(2) >= 2 && AnimElemTime(6) < 0)
trigger10 = MoveContact && (StateNo = 600 && AnimElemTime(10) >= 1 && AnimElemTime(18) < 0)
trigger11 = !MoveContact && (StateNo = 600 && AnimElemTime(10) >= 1 && AnimElemTime(18) < 0) && Var(32)!=0
trigger12 = (StateNo = 205 && AnimElemTime(2) >= 1 && AnimElemTime(5) <= 2) && Var(32)!=0
trigger13 = (StateNo = 215 && AnimElemTime(3) >= 1 && AnimElemTime(6) <= 2) && Var(32)!=0
trigger14 = (StateNo = 225 && AnimElemTime(3) >= 1 && AnimElemTime(7) <= 2) && Var(32)!=0
trigger15 = (StateNo = 235 && AnimElemTime(4) >= 1 && AnimElemTime(7) <= 2) && Var(32)!=0
trigger16 = (StateNo = 400 && AnimElemTime(5) >= 1 && AnimElemTime(8) <= 2) && Var(32)!=0
trigger17 = (StateNo = 410 && AnimElemTime(3) >= 1 && AnimElemTime(5) <= 2) && Var(32)!=0

; ムササビの舞 Y
[State -1]
type = ChangeState
value = 1350
triggerall = Command = "Musasabi_y"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100 || StateNo = 40)
trigger2 = (StateNo = 200 && AnimElemTime(3) >= 2 && AnimElemTime(6) < 0)
trigger3 = (StateNo = 210 && AnimElemTime(4) >= 2 && AnimElemTime(6) <= 2)
trigger4 = (StateNo = 220 && AnimElemTime(3) >= 2 && AnimElemTime(6) <= 1)
trigger5 = (StateNo = 230 && AnimElemTime(4) >= 2 && AnimElemTime(7) <= 2)
trigger6 = (StateNo = 420 && AnimElemTime(4) >= 2 && AnimElemTime(7) <= 2)
trigger7 = MoveContact && (StateNo = 430 && AnimElemTime(3) >= 1 && AnimElemTime(12) <= 0)
trigger8 = !MoveContact && (StateNo = 430 && AnimElemTime(6) >= 1 && AnimElemTime(12) <= 0)
trigger9 = MoveContact && (StateNo = 720 && AnimElemTime(2) >= 2 && AnimElemTime(6) < 0)
trigger10 = MoveContact && (StateNo = 600 && AnimElemTime(10) >= 1 && AnimElemTime(18) < 0)
trigger11 = !MoveContact && (StateNo = 600 && AnimElemTime(10) >= 1 && AnimElemTime(18) < 0) && Var(32)!=0
trigger12 = (StateNo = 205 && AnimElemTime(2) >= 1 && AnimElemTime(5) <= 2) && Var(32)!=0
trigger13 = (StateNo = 215 && AnimElemTime(3) >= 1 && AnimElemTime(6) <= 2) && Var(32)!=0
trigger14 = (StateNo = 225 && AnimElemTime(3) >= 1 && AnimElemTime(7) <= 2) && Var(32)!=0
trigger15 = (StateNo = 235 && AnimElemTime(4) >= 1 && AnimElemTime(7) <= 2) && Var(32)!=0
trigger16 = (StateNo = 400 && AnimElemTime(5) >= 1 && AnimElemTime(8) <= 2) && Var(32)!=0
trigger17 = (StateNo = 410 && AnimElemTime(3) >= 1 && AnimElemTime(5) <= 2) && Var(32)!=0


;---------------------------------------------------------------------

; 空中 ムササビの舞 X
[State -1]
type = ChangeState
value = 1500
triggerall = Command = "RyuEnbu_x" && StateType = A
trigger1 = Pos Y < -10
trigger1 = Ctrl = 1
trigger2 = StateNo = 105
trigger3 = MoveContact && StateNo = 610
trigger4 = MoveContact && StateNo = 540
trigger5 = MoveContact && StateNo = 705
trigger6 = StateNo = 1315
trigger7 = MoveContact && StateNo = 1410 && Var(32)!=0
trigger8 = MoveContact && StateNo = 1460 && Var(32)!=0
trigger9 = Var(16) = 1 && (StateNo = 1710 && AnimElemTime(2) >= 2 && AnimElemTime(4) <= 4) && Var(32)!=0
trigger10 = Var(16) = 1 && (StateNo = 1760 && AnimElemTime(2) >= 2 && AnimElemTime(4) <= 4) && Var(32)!=0


; 空中 ムササビの舞 Y
[State -1]
type = ChangeState
value = 1550
triggerall = Command = "RyuEnbu_y" && StateType = A
trigger1 = Pos Y < -10
trigger1 = Ctrl = 1
trigger2 = StateNo = 105
trigger3 = MoveContact && StateNo = 610
trigger4 = MoveContact && StateNo = 540
trigger5 = MoveContact && StateNo = 705
trigger6 = StateNo = 1315
trigger7 = MoveContact && StateNo = 1410 && Var(32)!=0
trigger8 = MoveContact && StateNo = 1460 && Var(32)!=0
trigger9 = Var(16) = 1 && (StateNo = 1710 && AnimElemTime(2) >= 2 && AnimElemTime(4) <= 4) && Var(32)!=0
trigger10 = Var(16) = 1 && (StateNo = 1760 && AnimElemTime(2) >= 2 && AnimElemTime(4) <= 4) && Var(32)!=0

;---------------------------------------------------------------------

; 桃花鳥
[State -1]
type = ChangeState
value = 1560
triggerall = Command = "b" && StateType = A
triggerall = Command = "holddown" && P2BodyDist X < 15
trigger1 = Pos Y < -5
trigger1 = StateNo = 1315

;---------------------------------------------------------------------
; 浮羽
[State -1]
type = ChangeState
value = 1370
triggerall = (Command = "a" || Command = "b") && StateType = A
triggerall = Command = "holddown"
trigger1 = Pos Y < -10
trigger1 = StateNo = 1315

; 山桜桃
[State -1]
type = ChangeState
value = 1380
triggerall = (Command = "x" || Command = "y") && StateType = A
triggerall = Command = "holddown"
trigger1 = Pos Y < -15
trigger1 = StateNo = 1315
;---------------------------------------------------------------------

;三角跳び
[State -1]
type = ChangeState
value = 1510
triggerall = !IsHelper
triggerall = Ctrl = 1 && StateType = A
triggerall = Command = "holdfwdup"
triggerall = Time >= 7
trigger1 = BackEdgeDist <=5


;---------------------------------------------------------------------
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


;---------------------------------------------------------------------
; ストライカー
;----------------
[State -1]
type = Null ;ChangeState
value = 950
triggerall = Command = "ay" && Power >= 1000-fVar(31)
triggerall = NumHelper(Var(40))=0
triggerall = NumHelper(Var(41))=0
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
;---------------------------------------------------------------------
;=====================================================================
; Basic Throws
;=====================================================================

;---------------------------------------------------------------------
; （Ｐ通常投げ）
[State -1]
type = ChangeState
value = 800
triggerall = StateNo != 100 && StateType = S && Ctrl = 1
triggerall = P2MoveType != H && !P2StateType = A
trigger1 = Command = "fwd_y" && P2BodyDist X < 8
trigger2 = Command = "back_y" && P2BodyDist X < 12

;---------------------------------------------------------------------
; （Ｋ通常投げ）
[State -1]
type = ChangeState
value = 850
triggerall = StateNo != 100 && StateType = S && Ctrl = 1
triggerall = P2MoveType != H && !P2StateType = A
trigger1 = Command = "fwd_b" && P2BodyDist X < 8
trigger2 = Command = "back_b" && P2BodyDist X < 12

;---------------------------------------------------------------------
; （空中Ｐ通常投げ）
[State -1]
type = ChangeState
value = 880
triggerall = StateNo != 105 && StateType = A && Ctrl = 1
triggerall = P2MoveType != H && P2StateType = A
triggerall = !Command = "holdupOnly"
triggerall = Command = "holdfwd" || Command = "holdback" || Command = "holddown"
trigger1 = Command = "y" && P2BodyDist X < 10

; （空中Ｋ通常投げ）
[State -1]
type = ChangeState
value = 881
triggerall = StateNo != 105 && StateType = A && Ctrl = 1
triggerall = P2MoveType != H && P2StateType = A
triggerall = !Command = "holdupOnly"
triggerall = Command = "holdfwd" || Command = "holdback" || Command = "holddown"
trigger1 = Command = "b" && P2BodyDist X < 10

;---------------------------------------------------------------------
; Special Attacks , Moves and so on.
;---------------------------------------------------------------------
;---------------------------------------------------------------------
; ふっとばし攻撃
[State -1]
type = ChangeState
value = 600
triggerall = Command = "by"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100) & Var(30)=0
trigger2 = StateType = S && (Ctrl = 1 || StateNo = 100) & Var(30)!=0
trigger2 = P2BodyDist X != [-20,80]
trigger3 = MoveContact && StateType != A && Var(32)!=0 && Var(36)=2

;---------------------------------------------------------------------
; 空中ふっとばし攻撃
[State -1]
type = ChangeState
value = 610
triggerall = Command = "by"
triggerall = StateType = A
trigger1 =  Ctrl = 1
trigger2 = MoveContact && (StateNo = 500 || StateNo = 510) && Var(36)=1 && Var(32)!=0

;---------------------------------------------------------------------
; ガードキャンセル緊急回避動作（前・後）&& キャンセル緊急回避動作
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
triggerall = Command = "by"
triggerall = Var(4) = 1 && Power >= 1000 && StateType != A
trigger1 = StateNo = 150 || StateNo = 152

;=====================================================================
; Dir + Button
;=====================================================================
; 黒燕の舞 キャンセル時
[State -1]
type = ChangeState
value = 700
triggerall = Command = "a" && Command != "holddown" && Command = "holdfwd"
trigger1 = (StateNo = 200 && AnimElemTime(3) >= 2 && AnimElemTime(6) < 0)
trigger2 = (StateNo = 210 && AnimElemTime(4) >= 2 && AnimElemTime(6) <= 2)
trigger3 = (StateNo = 220 && AnimElemTime(3) >= 2 && AnimElemTime(7) <= 0)
trigger4 = (StateNo = 230 && AnimElemTime(4) >= 2 && AnimElemTime(7) <= 2)
trigger5 = (StateNo = 420 && AnimElemTime(4) >= 2 && AnimElemTime(7) <= 2)
trigger6 = MoveContact && (StateNo = 430 && AnimElemTime(3) >= 1 && AnimElemTime(12) <= 0)
trigger7 = !MoveContact && (StateNo = 430 && AnimElemTime(6) >= 1 && AnimElemTime(12) <= 0)

; 黒燕の舞
[State -1]
type = ChangeState
value = 710
triggerall = Command = "a" && Command != "holddown" && Command = "holdfwd"
trigger1 = StateType = S && Ctrl = 1
trigger2 = StateNo = 100

; 紅鶴の舞 キャンセル時
[State -1]
type = ChangeState
value = 720
triggerall = Command = "a" && Command = "holddown" && Command = "holdfwd"
trigger1 = (StateNo = 200 && AnimElemTime(3) >= 2 && AnimElemTime(6) < 0)
trigger2 = (StateNo = 210 && AnimElemTime(4) >= 2 && AnimElemTime(6) <= 2)
trigger3 = (StateNo = 220 && AnimElemTime(3) >= 1 && AnimElemTime(7) <= 0)
trigger4 = (StateNo = 230 && AnimElemTime(4) >= 1 && AnimElemTime(7) <= 2)
trigger5 = (StateNo = 420 && AnimElemTime(4) >= 1 && AnimElemTime(7) <= 2)
trigger6 = MoveContact && (StateNo = 430 && AnimElemTime(3) >= 1 && AnimElemTime(12) <= 0)
trigger7 = !MoveContact && (StateNo = 430 && AnimElemTime(6) >= 1 && AnimElemTime(12) <= 0)

; 紅鶴の舞
[State -1]
type = ChangeState
value = 730
triggerall = Command = "a" && Command = "holddown" && Command = "holdfwd"
trigger1 = StateType != A && Ctrl = 1
trigger2 = StateNo = 100

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
triggerall = P2BodyDist X = [0,20]
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)

; 弱パンチ
[State -1]
type = ChangeState
value = 205
triggerall = Command = "x" && !Command = "holddown"
triggerall = P2BodyDist X != [0,20]
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)

;---------------------------------------------------------------------
; 弱キック
[State -1]
type = ChangeState
value = 210
triggerall = Command = "a" && !Command = "holddown"
triggerall = P2BodyDist X = [0,20]
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)
trigger2 = (StateNo = 210 && AnimElemTime(6) >= 0 && AnimElemTime(7) <= 3)
trigger3 = (StateNo = 400 && AnimElemTime(6) >= 2 && AnimElemTime(8) <= 2)
trigger4 = (StateNo = 410 && AnimElemTime(4) >= 1 && AnimElemTime(5) <= 3)

; 弱キック
[State -1]
type = ChangeState
value = 215
triggerall = Command = "a" && !Command = "holddown"
triggerall = P2BodyDist X != [0,20]
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)
trigger2 = (StateNo = 210 && AnimElemTime(5) >= 1 && AnimElemTime(7) <= 0)
trigger3 = (StateNo = 400 && AnimElemTime(6) >= 2 && AnimElemTime(8) <= 2)
trigger4 = (StateNo = 410 && AnimElemTime(4) >= 1 && AnimElemTime(5) <= 3)

;---------------------------------------------------------------------
; 強パンチ
[State -1]
type = ChangeState
value = 220
triggerall = Command = "y" && !Command = "holddown"
triggerall = P2BodyDist X = [0,25]
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)

;---------------------------------------------------------------------
; 強パンチ
[State -1]
type = ChangeState
value = 225
triggerall = Command = "y" && !Command = "holddown"
triggerall = P2BodyDist X != [0,25]
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)

;---------------------------------------------------------------------
; 強キック
[State -1]
type = ChangeState
value = 230
triggerall = Command = "b" && !Command = "holddown"
triggerall = P2BodyDist X = [0,28]
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)

;---------------------------------------------------------------------
; 強キック
[State -1]
type = ChangeState
value = 235
triggerall = Command = "b" && !Command = "holddown"
triggerall = P2BodyDist X != [0,28]
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)

;---------------------------------------------------------------------
; しゃがみ弱パンチ
[State -1]
type = ChangeState
value = 400
triggerall = Command = "x" && Command = "holddown"
trigger1 = StateType = C && Ctrl = 1
trigger2 = StateNo = 100
trigger3 = (StateNo = 210 && AnimElemTime(2) >= 4 && AnimElemTime(4) <= 1)
trigger4 = (StateNo = 400 && AnimElemTime(6) >= 2 && AnimElemTime(8) <= 2)
trigger5 = (StateNo = 410 && AnimElemTime(4) >= 1 && AnimElemTime(5) <= 3)

;---------------------------------------------------------------------
; しゃがみ弱キック
[State -1]
type = ChangeState
value = 410
triggerall = Command = "a" && Command = "holddown"
trigger1 = StateType = C && Ctrl = 1
trigger2 = StateNo = 100
trigger3 = (StateNo = 210 && AnimElemTime(5) >= 1 && AnimElemTime(7) <= 2)
trigger4 = (StateNo = 400 && AnimElemTime(6) >= 2 && AnimElemTime(8) <= 2)
trigger5 = (StateNo = 410 && AnimElemTime(4) >= 1 && AnimElemTime(5) <= 3)

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
; 大輪風車落とし
[State -1]
type = ChangeState
value = 540
triggerall = Command = "x" && Command = "holddownOnly" && StateType = A
trigger1 = Ctrl = 1

; 浮羽
[State -1]
type = ChangeState
value = 550
triggerall = Command = "a" && Command = "holddownOnly" && StateType = A
trigger1 = Pos Y < -10
trigger1 = Ctrl = 1
trigger2 = StateNo = 105
trigger3 = MoveContact && StateNo = 705

; 山桜桃
[State -1]
type = ChangeState
value = 560
triggerall = Command = "b" && Command = "holddownOnly" && StateType = A
trigger1 = Pos Y < -25
trigger1 = Ctrl = 1

;---------------------------------------------------------------------
; ジャンプ弱パンチ
[State -1]
type = ChangeState
value = IfElse(Var(25) = 0 && Vel X = 0,500,500)
triggerall = Command = "x" && StateType = A
trigger1 = StateNo != 105 && Ctrl = 1

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
trigger1 = Var(30)!=0 && Random < 200
value = 5200 ;HITFALL_RECOVER

[State -1, 5050]; Recover in mid air
type = ChangeState
triggerall = Stateno = 5050
triggerall = Vel Y > -1
triggerall = alive && CanRecover
trigger1 = Var(30)!=0 && Random < 200
value = 5210 ;HITFALL_AIRRECOVER
