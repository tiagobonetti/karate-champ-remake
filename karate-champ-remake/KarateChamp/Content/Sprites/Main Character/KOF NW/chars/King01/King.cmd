;=====================================================================
;  CMD File For "King"                                  Made By M.M.R.
;                                       Ver. 1.0           2003.May.08
;=====================================================================

;=====================================================================
; Definition of the Commands
;=====================================================================

;-| CPU Function |----------------------------------------------------
[Command]
name = "cpu"
command = ~D,DF, F, a
time = 1

[Command]
name = "cpu"
command = ~D,DF, F, b
time = 1

[Command]
name = "cpu"
command = ~D,DF, F, c
time = 1

[Command]
name = "cpu"
command = ~D,DB, B, a
time = 1

[Command]
name = "cpu"
command = ~D,DB, B, b
time = 1

[Command]
name = "cpu"
command = ~D,DB, B, c
time = 1

[Command]
name = "cpu"
command = ~D,DB, F, a
time = 1

[Command]
name = "cpu"
command = ~D,DB, F, b
time = 1

[Command]
name = "cpu"
command = ~D,DB, F, c
time = 1

[Command]
name = "cpu"
command = ~D,UB, F, a
time = 1

[Command]
name = "cpu"
command = ~D,UB, F, b
time = 1

[Command]
name = "cpu"
command = ~D,UB, F, c
time = 1

[Command]
name = "cpu"
command = ~D,DF, F, s
time = 1

[Command]
name = "cpu"
command = ~D,DB, B, s
time = 1

[Command]
name = "cpu"
command = ~D,UB, F, x
time = 1

[Command]
name = "cpu"
command = ~D,UB, F, y
time = 1

[Command]
name = "cpu"
command = ~D,UB, F, z
time = 1

[Command]
name = "cpu"
command = ~D,DB, F, x
time = 1

[Command]
name = "cpu"
command = ~D,DB, F, y
time = 1

[Command]
name = "cpu"
command = ~D,DB, F, z
time = 1

[Command]
name = "cpu"
command = ~D,DB, B, x
time = 1

[Command]
name = "cpu"
command = ~D,DB, B, y
time = 1

[Command]
name = "cpu"
command = ~D,DB, B, z
time = 1

[Command]
name = "cpu"
command = ~D,DF, F, x
time = 1

[Command]
name = "cpu"
command = ~D,DF, F, y
time = 1

[Command]
name = "cpu"
command = ~D,DF, F, z
time = 1


;-| Super Motions |---------------------------------------------------

;---------------------------------------------------------------------
; Rose "Dragooner" - 1954  (Max2)
[Command]
name = "rad"
command = ~D,DF, F, D, B, a+b+x+y
time = 30

[Command]
name = "rad"
command = ~D,DF, F, D, B, c+z
time = 30

;---------------------------------------------------------------------
; イリュージョンダンス  (Illusion Dance)
[Command]
name = "id_a"
command = ~D,DF, F, D, B, a
time = 30

[Command]
name = "id_b"
command = ~D,DF, F, D, B, b
time = 30

[Command]
name = "id_c"
command = ~D,DF, F, D, B, a+b
time = 30

;---------------------------------------------------------------------
; サイレントフラッシュ  (Silent Flash)
[Command]
name = "sf_a"
command = ~D,DB, B, D,DB, B, a
time = 35

[Command]
name = "sf_a"
command = ~D,DB, B, D,DB, B, b
time = 35

[Command]
name = "sf_c"
command = ~D,DB, B, D,DB, B, a+b
time = 35

;---------------------------------------------------------------------
; サプライズローズ（超必殺技版）  (Surprise Rose - Super Arts - )
[Command]
name = "ssr_a"
command = ~B, F,DF, D, a
time = 25

[Command]
name = "ssr_b"
command = ~B, F,DF, D, b
time = 25

[Command]
name = "ssr_c"
command = ~B, F,DF, D, a+b
time = 25

;-| Special Motions |-------------------------------------------------

;---------------------------------------------------------------------
; ベノムストライク  (Benom Strike)
[Command]
name = "bs"
command = ~D,DF, F, a
time = 20

;---------------------------------------------------------------------
; ダブルストライク  (Double Strike)
[Command]
name = "ds"
command = ~D,DF, F, b
time = 20

;---------------------------------------------------------------------
; トルネードキック'95  (Tornade Kick '95)
[Command]
name = "tk_a"
command = ~F, D, B, a
time = 25

[Command]
name = "tk_b"
command = ~F, D, B, b
time = 25

;---------------------------------------------------------------------
; サプライズローズ  (Surprise Rose)
[Command]
name = "sr_a"
command = ~F, D,DF, x
time = 20

[Command]
name = "sr_b"
command = ~F, D,DF, y
time = 20

;---------------------------------------------------------------------
; ミラージュキック  (Mirage Kick)
[Command]
name = "mk_a"
command = ~F, D, B, x
time = 25

[Command]
name = "mk_b"
command = ~F, D, B, y
time = 25

;---------------------------------------------------------------------
; トラップショット  (Trap Shot)
[Command]
name = "ts_a"
command = ~F,D ,DF, a
time = 20

[Command]
name = "ts_b"
command = ~F,D ,DF, b
time = 20

;---------------------------------------------------------------------
; ミラージュダンス  (Mirage Dance)
[Command]
name = "md"
command = ~B, D, F, x
time = 25

[Command]
name = "md"
command = ~B, D, F, y
time = 25

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
name = "downfwd_b"
command = /DF,b
time = 1

;-----------------------------For KOF Seriese only
[Command]
name = "gc_fwd"
command = /DF, a+x
time = 1

[Command]
name = "gc_fwd"
command = /DF, z
time = 1

[Command]
name = "gc_fwd"
command = /F, a+x
time = 1

[Command]
name = "gc_fwd"
command = /F, z
time = 1

[Command]
name = "gc_back"
command = /DB, a+x
time = 1

[Command]
name = "gc_back"
command = /DB, z
time = 1

[Command]
name = "gc_back"
command = /B, a+x
time = 1

[Command]
name = "gc_back"
command = /B, z
time = 1

[Command]
name = "q_fwd"
command = /F, a+x
time = 1

[Command]
name = "q_fwd"
command = /F, z
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

[Command]
name = "recovery"
command = z
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
; CPU Function
;=====================================================================
;
;=====================================================================
; Super Arts
;=====================================================================

;---------------------------------------------------------------------
; Rose "Dragooner" - 1954  (Max2)
[State -1]
type = ChangeState
value = 3800
triggerall = Command = "rad" && Power >= 3000
triggerall = !StateType = A
trigger1 = Ctrl = 1 || StateNo = 100
trigger2 = StateNo = 200 && AnimElemNo(0) <= 4
trigger3 = StateNo = 210 && AnimElemNo(0) <= 4
trigger4 = StateNo = 230 && AnimElemNo(0) <= 6
trigger5 = StateNo = 300 && AnimElemNo(0) <= 3
trigger6 = StateNo = 310 && AnimElemNo(0) <= 3

;---------------------------------------------------------------------
; ＭＡＸ版サイレントフラッシュ
[State -1]
type = ChangeState
value = 3400
triggerall = Command = "sf_c" && Power >= 2000
triggerall = !StateType = A
trigger1 = Ctrl = 1 || StateNo = 100
trigger2 = StateNo = 200 && AnimElemNo(0) <= 4
trigger3 = StateNo = 210 && AnimElemNo(0) <= 4
trigger4 = StateNo = 230 && AnimElemNo(0) <= 6
trigger5 = StateNo = 300 && AnimElemNo(0) <= 3
trigger6 = StateNo = 310 && AnimElemNo(0) <= 3
trigger7 = MoveContact && Power >= 3000 && ((StateNo = 1310 || StateNo = 1360) && AnimElemNo(0) <= 14)

;---------------------------------------------------------------------
; サイレントフラッシュ
[State -1]
type = ChangeState
value = 3300
triggerall = Command = "sf_a" && Power >= 1000
triggerall = !StateType = A
trigger1 = Ctrl = 1 || StateNo = 100
trigger2 = StateNo = 200 && AnimElemNo(0) <= 4
trigger3 = StateNo = 210 && AnimElemNo(0) <= 4
trigger4 = StateNo = 230 && AnimElemNo(0) <= 6
trigger5 = StateNo = 300 && AnimElemNo(0) <= 3
trigger6 = StateNo = 310 && AnimElemNo(0) <= 3
trigger7 = MoveContact && Power >= 2000 && ((StateNo = 1310 || StateNo = 1360) && AnimElemNo(0) <= 14)

;---------------------------------------------------------------------
; ＭＡＸ版イリュージョンダンス
[State -1]
type = ChangeState
value = 3200
triggerall = Command = "id_c" && Power >= 2000
triggerall = !StateType = A
trigger1 = Ctrl = 1 || StateNo = 100
trigger2 = StateNo = 200 && AnimElemNo(0) <= 4
trigger3 = StateNo = 210 && AnimElemNo(0) <= 4
trigger4 = StateNo = 230 && AnimElemNo(0) <= 6
trigger5 = StateNo = 300 && AnimElemNo(0) <= 3
trigger6 = StateNo = 310 && AnimElemNo(0) <= 3
trigger7 = MoveContact && Power >= 3000 && ((StateNo = 1310 || StateNo = 1360) && AnimElemNo(0) <= 14)

;---------------------------------------------------------------------
; イリュージョンダンス・強
[State -1]
type = ChangeState
value = 3100
triggerall = Command = "id_b" && Power >= 1000
triggerall = !StateType = A
trigger1 = Ctrl = 1 || StateNo = 100
trigger2 = StateNo = 200 && AnimElemNo(0) <= 4
trigger3 = StateNo = 210 && AnimElemNo(0) <= 4
trigger4 = StateNo = 230 && AnimElemNo(0) <= 6
trigger5 = StateNo = 300 && AnimElemNo(0) <= 3
trigger6 = StateNo = 310 && AnimElemNo(0) <= 3
trigger7 = MoveContact && Power >= 2000 && ((StateNo = 1310 || StateNo = 1360) && AnimElemNo(0) <= 14)

;---------------------------------------------------------------------
; イリュージョンダンス・弱
[State -1]
type = ChangeState
value = 3000
triggerall = Command = "id_a" && Power >= 1000
triggerall = !StateType = A
trigger1 = Ctrl = 1 || StateNo = 100
trigger2 = StateNo = 200 && AnimElemNo(0) <= 4
trigger3 = StateNo = 210 && AnimElemNo(0) <= 4
trigger4 = StateNo = 230 && AnimElemNo(0) <= 6
trigger5 = StateNo = 300 && AnimElemNo(0) <= 3
trigger6 = StateNo = 310 && AnimElemNo(0) <= 3
trigger7 = MoveContact && Power >= 2000 && ((StateNo = 1310 || StateNo = 1360) && AnimElemNo(0) <= 14)

;---------------------------------------------------------------------
; ＭＡＸ版サプライズローズ
[State -1]
type = ChangeState
value = 3700
triggerall = Command = "ssr_c" && Power >= 2000
triggerall = !StateType = A
trigger1 = Ctrl = 1 || StateNo = 100
trigger2 = StateNo = 200 && AnimElemNo(0) <= 4
trigger3 = StateNo = 210 && AnimElemNo(0) <= 4
trigger4 = StateNo = 230 && AnimElemNo(0) <= 6
trigger5 = StateNo = 300 && AnimElemNo(0) <= 3
trigger6 = StateNo = 310 && AnimElemNo(0) <= 3
trigger7 = MoveContact && Power >= 3000 && ((StateNo = 1310 || StateNo = 1360) && AnimElemNo(0) <= 14)

;---------------------------------------------------------------------
; サプライズローズ・強
[State -1]
type = ChangeState
value = 3600
triggerall = Command = "ssr_b" && Power >= 1000
triggerall = !StateType = A
trigger1 = Ctrl = 1 || StateNo = 100
trigger2 = StateNo = 200 && AnimElemNo(0) <= 4
trigger3 = StateNo = 210 && AnimElemNo(0) <= 4
trigger4 = StateNo = 230 && AnimElemNo(0) <= 6
trigger5 = StateNo = 300 && AnimElemNo(0) <= 3
trigger6 = StateNo = 310 && AnimElemNo(0) <= 3
trigger7 = MoveContact && Power >= 2000 && ((StateNo = 1310 || StateNo = 1360) && AnimElemNo(0) <= 14)

;---------------------------------------------------------------------
; サプライズローズ・弱
[State -1]
type = ChangeState
value = 3500
triggerall = Command = "ssr_a" && Power >= 1000
triggerall = !StateType = A
trigger1 = Ctrl = 1 || StateNo = 100
trigger2 = StateNo = 200 && AnimElemNo(0) <= 4
trigger3 = StateNo = 210 && AnimElemNo(0) <= 4
trigger4 = StateNo = 230 && AnimElemNo(0) <= 6
trigger5 = StateNo = 300 && AnimElemNo(0) <= 3
trigger6 = StateNo = 310 && AnimElemNo(0) <= 3
trigger7 = MoveContact && Power >= 2000 && ((StateNo = 1310 || StateNo = 1360) && AnimElemNo(0) <= 14)

;=====================================================================
; Special Arts 
;=====================================================================

;---------------------------------------------------------------------
; ミラージュダンス・弱／強
[State -1]
type = ChangeState
value = 1500
triggerall = Command = "md" && !StateType = A && !P2StateType = A
triggerall = P2BodyDist X <= 15
triggerall = P2StateNo != 5100 && P2StateNo != 5101 && P2StateNo != 5110
triggerall = P2StateNo != 5120 && P2StateNo != 5150 && (P2StateNo != [150,155])
trigger1 = Ctrl = 1 || StateNo = 100
trigger2 = StateNo = 200 && AnimElemNo(0) <= 4
trigger3 = StateNo = 210 && AnimElemNo(0) <= 4
trigger4 = StateNo = 230 && AnimElemNo(0) <= 6
trigger5 = StateNo = 300 && AnimElemNo(0) <= 3
trigger6 = StateNo = 310 && AnimElemNo(0) <= 3
trigger7 = StateNo = 600 && AnimElemNo(0) <= 5

;---------------------------------------------------------------------
; ミラージュキック・弱
[State -1]
type = ChangeState
value = 1300
triggerall = Command = "mk_a" && !StateType = A
trigger1 = Ctrl = 1 || StateNo = 100
trigger2 = StateNo = 200 && AnimElemNo(0) <= 4
trigger3 = StateNo = 210 && AnimElemNo(0) <= 4
trigger4 = StateNo = 230 && AnimElemNo(0) <= 6
trigger5 = StateNo = 300 && AnimElemNo(0) <= 3
trigger6 = StateNo = 310 && AnimElemNo(0) <= 3
trigger7 = StateNo = 600 && AnimElemNo(0) <= 5

;---------------------------------------------------------------------
; ミラージュキック・強
[State -1]
type = ChangeState
value = 1350
triggerall = Command = "mk_b" && !StateType = A
trigger1 = Ctrl = 1 || StateNo = 100
trigger2 = StateNo = 200 && AnimElemNo(0) <= 4
trigger3 = StateNo = 210 && AnimElemNo(0) <= 4
trigger4 = StateNo = 230 && AnimElemNo(0) <= 6
trigger5 = StateNo = 300 && AnimElemNo(0) <= 3
trigger6 = StateNo = 310 && AnimElemNo(0) <= 3
trigger7 = StateNo = 600 && AnimElemNo(0) <= 5

;---------------------------------------------------------------------
; トルネードキック'95・弱
[State -1]
type = ChangeState
value = 1100
triggerall = Command = "tk_a" && !StateType = A
trigger1 = Ctrl = 1 || StateNo = 100
trigger2 = StateNo = 200 && AnimElemNo(0) <= 4
trigger3 = StateNo = 210 && AnimElemNo(0) <= 4
trigger4 = StateNo = 230 && AnimElemNo(0) <= 6
trigger5 = StateNo = 300 && AnimElemNo(0) <= 3
trigger6 = StateNo = 310 && AnimElemNo(0) <= 3
trigger7 = StateNo = 600 && AnimElemNo(0) <= 5

;---------------------------------------------------------------------
; トルネードキック'95・強
[State -1]
type = ChangeState
value = 1150
triggerall = Command = "tk_b" && !StateType = A
trigger1 = Ctrl = 1 || StateNo = 100
trigger2 = StateNo = 200 && AnimElemNo(0) <= 4
trigger3 = StateNo = 210 && AnimElemNo(0) <= 4
trigger4 = StateNo = 230 && AnimElemNo(0) <= 6
trigger5 = StateNo = 300 && AnimElemNo(0) <= 3
trigger6 = StateNo = 310 && AnimElemNo(0) <= 3
trigger7 = StateNo = 600 && AnimElemNo(0) <= 5

;---------------------------------------------------------------------
; サプライズローズ・弱
[State -1]
type = ChangeState
value = 1200
triggerall = Command = "sr_a"
triggerall = StateType != A
trigger1 = Ctrl = 1 || StateNo = 100
trigger2 = StateNo = 200 && AnimElemNo(0) <= 4
trigger3 = StateNo = 210 && AnimElemNo(0) <= 4
trigger4 = StateNo = 230 && AnimElemNo(0) <= 6
trigger5 = StateNo = 300 && AnimElemNo(0) <= 3
trigger6 = StateNo = 310 && AnimElemNo(0) <= 3
trigger7 = StateNo = 600 && AnimElemNo(0) <= 5

;---------------------------------------------------------------------
; サプライズローズ・強
[State -1]
type = ChangeState
value = 1250
triggerall = Command = "sr_b"
triggerall = StateType != A
trigger1 = Ctrl = 1 || StateNo = 100
trigger2 = StateNo = 200 && AnimElemNo(0) <= 4
trigger3 = StateNo = 210 && AnimElemNo(0) <= 4
trigger4 = StateNo = 230 && AnimElemNo(0) <= 6
trigger5 = StateNo = 300 && AnimElemNo(0) <= 3
trigger6 = StateNo = 310 && AnimElemNo(0) <= 3
trigger7 = StateNo = 600 && AnimElemNo(0) <= 5

;---------------------------------------------------------------------
; トラップショット・弱
[State -1]
type = ChangeState
value = 1400
triggerall = Command = "ts_a"
triggerall = StateType != A
trigger1 = Ctrl = 1 || StateNo = 100
trigger2 = StateNo = 200 && AnimElemNo(0) <= 4
trigger3 = StateNo = 210 && AnimElemNo(0) <= 4
trigger4 = StateNo = 230 && AnimElemNo(0) <= 6
trigger5 = StateNo = 300 && AnimElemNo(0) <= 3
trigger6 = StateNo = 310 && AnimElemNo(0) <= 3
trigger7 = StateNo = 600 && AnimElemNo(0) <= 5

;---------------------------------------------------------------------
; トラップショット・強
[State -1]
type = ChangeState
value = 1450
triggerall = Command = "ts_b"
triggerall = StateType != A
trigger1 = Ctrl = 1 || StateNo = 100
trigger2 = StateNo = 200 && AnimElemNo(0) <= 4
trigger3 = StateNo = 210 && AnimElemNo(0) <= 4
trigger4 = StateNo = 230 && AnimElemNo(0) <= 6
trigger5 = StateNo = 300 && AnimElemNo(0) <= 3
trigger6 = StateNo = 310 && AnimElemNo(0) <= 3
trigger7 = StateNo = 600 && AnimElemNo(0) <= 5

;---------------------------------------------------------------------
; ベノムストライク
[State -1]
type = ChangeState
value = 1000
triggerall = Command = "bs" && !StateType = A && NumProjID(1000) = 0
trigger1 = Ctrl = 1 || StateNo = 100
trigger2 = StateNo = 200 && AnimElemNo(0) <= 4
trigger3 = StateNo = 210 && AnimElemNo(0) <= 4
trigger4 = StateNo = 230 && AnimElemNo(0) <= 6
trigger5 = StateNo = 300 && AnimElemNo(0) <= 3
trigger6 = StateNo = 310 && AnimElemNo(0) <= 3
trigger7 = StateNo = 600 && AnimElemNo(0) <= 5

;---------------------------------------------------------------------
; ダブルストライク
[State -1]
type = ChangeState
value = 1050
triggerall = Command = "ds" && !StateType = A && NumProjID(1000) = 0
trigger1 = Ctrl = 1 || StateNo = 100
trigger2 = StateNo = 200 && AnimElemNo(0) <= 4
trigger3 = StateNo = 210 && AnimElemNo(0) <= 4
trigger4 = StateNo = 230 && AnimElemNo(0) <= 6
trigger5 = StateNo = 300 && AnimElemNo(0) <= 3
trigger6 = StateNo = 310 && AnimElemNo(0) <= 3
trigger7 = StateNo = 600 && AnimElemNo(0) <= 5

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
; ホールドラッシュ（Ｐ通常投げ）
[State -1]
type = ChangeState
value = 800
triggerall = StateNo != 100 && StateType = S && Ctrl = 1
triggerall = P2MoveType != H && !P2StateType = A
trigger1 = Command = "fwd_y" && P2BodyDist X < 8
trigger2 = Command = "back_y" && P2BodyDist X < 20

;---------------------------------------------------------------------
; フックバスター（Ｋ通常投げ）
[State -1]
type = ChangeState
value = 850
triggerall = StateNo != 100 && StateType = S && Ctrl = 1
triggerall = P2MoveType != H && !P2StateType = A
trigger1 = Command = "fwd_b" && P2BodyDist X < 8
trigger2 = Command = "back_b" && P2BodyDist X < 20

;---------------------------------------------------------------------
; Special Attacks , Moves and so on.
;---------------------------------------------------------------------
;---------------------------------------------------------------------
; 地上ふっとばし攻撃
[State -1]
type = ChangeState
value = 600
triggerall = Command = "c" || Command = "by"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)

;---------------------------------------------------------------------
; 空中ふっとばし攻撃
[State -1]
type = ChangeState
value = 610
triggerall = Command = "c" || Command = "by"
trigger1 = StateType = A && Ctrl = 1

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

;---------------------------------------------------------------------
; トラップキック（→＋Ａ）
[State -1]
type = ChangeState
value = 700
triggerall = Command = "fwd_a" && !Command = "holddown"
triggerall = StateType != A
trigger1 = Ctrl = 1 || StateNo = 100
trigger2 = MoveContact && (StateNo = 200 && AnimElemNo(0) <= 4)
trigger3 = MoveContact && (StateNo = 210 && AnimElemNo(0) <= 4)
trigger4 = MoveContact && (StateNo = 230 && AnimElemNo(0) <= 6)
trigger5 = MoveContact && (StateNo = 300 && AnimElemNo(0) <= 3)
trigger6 = MoveContact && (StateNo = 310 && AnimElemNo(0) <= 3)

;---------------------------------------------------------------------
; スライディングキック（３＋Ｂ）
[State -1]
type = ChangeState
value = 710
triggerall = Command = "downfwd_b" && Command = "holddown"
triggerall = StateType != A
trigger1 = Ctrl = 1 || StateNo = 100
trigger2 = MoveContact && (StateNo = 200 && AnimElemNo(0) <= 4)
trigger3 = MoveContact && (StateNo = 210 && AnimElemNo(0) <= 4)
trigger4 = MoveContact && (StateNo = 230 && AnimElemNo(0) <= 6)
trigger5 = MoveContact && (StateNo = 300 && AnimElemNo(0) <= 3)
trigger6 = MoveContact && (StateNo = 310 && AnimElemNo(0) <= 3)

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
value = IfElse(P2BodyDist X <= 20,200,250)
triggerall = Command = "x" && !Command = "holddown"
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)
trigger2 = StateNo = 200 && AnimElemNo(0) >= 3
trigger3 = StateNo = 250 && AnimElemNo(0) >= 3
trigger4 = StateNo = 300 && AnimElemNo(0) >= 2
trigger5 = StateNo = 320 && AnimElemNo(0) >= 2

;---------------------------------------------------------------------
; 弱キック
[State -1]
type = ChangeState
value = IfElse(P2BodyDist X <= 18,220,270)
triggerall = Command = "a" && !Command = "holddown"
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)

;---------------------------------------------------------------------
; 強パンチ
[State -1]
type = ChangeState
value = IfElse(P2BodyDist X <= 25,210,260)
triggerall = Command = "y" && !Command = "holddown"
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)

;---------------------------------------------------------------------
; 強キック
[State -1]
type = ChangeState
value = IfElse(P2BodyDist X <= 20,230,280)
triggerall = Command = "b" && !Command = "holddown"
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)

;---------------------------------------------------------------------
; しゃがみ弱パンチ
[State -1]
type = ChangeState
value = 300
triggerall = Command = "x" && Command = "holddown"
trigger1 = (StateType = C && Ctrl = 1) || StateNo = 100
trigger2 = StateNo = 200 && AnimElemNo(0) >= 3
trigger3 = StateNo = 250 && AnimElemNo(0) >= 3
trigger4 = StateNo = 300 && AnimElemNo(0) >= 2
trigger5 = StateNo = 320 && AnimElemNo(0) >= 2

;---------------------------------------------------------------------
; しゃがみ強パンチ
[State -1]
type = ChangeState
value = 310
triggerall = Command = "y" && Command = "holddown"
trigger1 = StateType = C && Ctrl = 1
trigger2 = StateNo = 100

;---------------------------------------------------------------------
; しゃがみ弱キック
[State -1]
type = ChangeState
value = 320
triggerall = Command = "a" && Command = "holddown"
trigger1 = (StateType = C && Ctrl = 1) || StateNo = 100
trigger2 = StateNo = 200 && AnimElemNo(0) >= 3
trigger3 = StateNo = 250 && AnimElemNo(0) >= 3
trigger4 = StateNo = 300 && AnimElemNo(0) >= 2
trigger5 = StateNo = 320 && AnimElemNo(0) >= 2

;---------------------------------------------------------------------
; しゃがみ強キック
[State -1]
type = ChangeState
value = 330
triggerall = Command = "b" && Command = "holddown"
trigger1 = StateType = C && Ctrl = 1
trigger2 = StateNo = 100

;---------------------------------------------------------------------
; ジャンプ弱パンチ
[State -1]
type = ChangeState
value = IfElse(Var(25) = 0 && Vel X = 0,500,500)
triggerall = Command = "x" && StateType = A && Ctrl = 1
trigger1 = StateNo != 105

;---------------------------------------------------------------------
; ジャンプ強パンチ
[State -1]
type = ChangeState
value = IfElse(Var(25) = 0 && Vel X = 0,510,510)
triggerall = Command = "y" && StateType = A && Ctrl = 1
trigger1 = StateNo != 105

;---------------------------------------------------------------------
; ジャンプ弱キック
[State -1]
type = ChangeState
value = IfElse(Var(25) = 0 && Vel X = 0,520,520)
triggerall = Command = "a" && StateType = A && Ctrl = 1
trigger1 = StateNo != 105

;---------------------------------------------------------------------
; ジャンプ強キック
[State -1]
type = ChangeState
value = IfElse(Var(25) = 0 && Vel X = 0,530,530)
triggerall = Command = "b" && StateType = A && Ctrl = 1
trigger1 = StateNo != 105

