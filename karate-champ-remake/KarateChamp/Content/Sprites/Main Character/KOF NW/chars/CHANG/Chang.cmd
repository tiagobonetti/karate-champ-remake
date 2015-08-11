;=====================================================================
;  CMD File For "Chang Koehan"                          Made By M.M.R.
;                                       Ver. 1.0           2000.Nov.10
;=====================================================================

;=====================================================================
; Definition of the Commands
;=====================================================================

;-| CPU Function |----------------------------------------------------
[Command]
name = "CPU_1"
command = U,U,a,F,D
time = 0
[Command]
name = "CPU_2"
command = U,D,U,F,F
time = 0
[Command]
name = "CPU_3"
command = B,B,D,F,U
time = 0
[Command]
name = "CPU_4"
command = F,F,a,a,U,F
time = 0
[Command]
name = "CPU_5"
command = D,F,U,B
time = 0
[Command]
name = "CPU_6"
command = D,D,U,U,U,B
time = 0
[Command]
name = "CPU_7"
command = B,B,U,U,U,D
time = 0
[Command]
name = "CPU_8"
command = U,U,D,D,B,B
time = 0
[Command]
name = "CPU_9"
command = U,D,F,B,B,B,B
time = 0
[Command]
name = "CPU_10"
command = D,U,F,F,F,F
time = 0
[Command]
name = "CPU_11"
command = F,D,B,D,D,F
time = 0
[Command]
name = "CPU_12"
command = F,F,F,D,D,D
time = 0
[Command]
name = "CPU_13"
command = F,F,D,D,F,U,U
time = 0
[Command]
name = "CPU_14"
command = U,D,F,U,U,U,D
time = 0
[Command]
name = "CPU_15"
command = F,c,U,F,U,D,F
time = 0
[Command]
name = "CPU_16"
command = D,D,U,F,B,B
time = 0
[Command]
name = "CPU_17"
command = F,F,F,F,F,F
time = 0
[Command]
name = "CPU_18"
command = D,D,D,D,D,D,D,D
time = 0
[Command]
name = "CPU_19"
command = U,D,F,U,U,F,F,D,B
time = 0
[Command]
name = "CPU_20"
command = U,D,F,D,D,F,F,D,B
time = 0
[Command]
name = "CPU_21"
command = U,D,F,B,B,D,F,D,B
time = 0
[Command]
name = "CPU_22"
command = U,D,F,F,B,B
time = 0
[Command]
name = "CPU_23"
command = U,D,F,F,B,F
time = 0
[Command]
name = "CPU_24"
command = U,D,F,F,B,F
time = 0
[Command]
name = "CPU_25"
command = U,D,F,F,B,U
time = 0
[Command]
name = "CPU_26"
command = U,D,F,F,U,B
time = 0
[Command]
name = "CPU_27"
command = U,D,F,F,D,B
time = 0
[Command]
name = "CPU_28"
command = U,D,F,F,F,B
time = 0
[Command]
name = "CPU_29"
command = U,D,U,F,B,B
time = 0
[Command]
name = "CPU_30"
command = U,D,D,F,B,B
time = 0
[Command]
name = "CPU_31"
command = D,D,F,F,B,B
time = 0
[Command]
name = "CPU_32"
command = U,U,F,F,B,B
time = 0
[Command]
name = "CPU_33"
command = U,B,F,F,B,B
time = 0
[Command]
name = "CPU_34"
command = U,B,F,F,U,U,B,B
time = 0
[Command]
name = "CPU_35"
command = U,B,F,F,F,B,U,D,F
time = 0


;-| Super Motions |---------------------------------------------------

;---------------------------------------------------------------------
; ìSãÖëÂà≥éEÅiÇkÇñÇPÅ^ÇkÇñÇQÅ^ÇkÇñÇRÅj
[Command]
name = "ats_a"
command = ~D,DF, F, D,DF, F, x
Time = 20;35
buffer.time = 5

[Command]
name = "ats_b"
command = ~D,DF, F, D,DF, F, y
Time = 20;35
buffer.time = 5

[Command]
name = "ats_c"
command = ~D,DF, F, D,DF, F, z
Time = 20;35
buffer.time = 5

[Command]
name = "ats_c"
command = ~D,$DF, F, D,$DF, F, x+y
Time = 20;30
buffer.time = 5

[Command]
name = "ats_c"
command = ~D,$DF, F, D,$DF, F, x+y
Time = 20;30
buffer.time = 5

;-------------

[Command]
name = "big world"
command = ~D,DB, B,D,DB, B,z
Time = 35

[Command]
name = "big world"
command = ~a,x,$F,y,x
Time = 30
buffer.time = 5

[Command]
name = "big world"
command = ~a,x,$D,y,x
Time =30
buffer.time = 5

[Command]
name = "big world"
command = ~a,x,$DF,y,x
Time =30
buffer.time = 5

[Command]
name = "big world"
command = ~a,x,y,x
Time =30
buffer.time = 5
;---------------------------------------------------------------------
; ìSãÖëÂñoéEÅiÇkÇñÇPÅ^ÇkÇñÇQÅ^ÇkÇñÇRÅj
[Command]
name = "bok_a"
command = ~D,DF, F, D,DF, F, a
Time = 20;35
buffer.time = 5

[Command]
name = "bok_a"
command = ~D,DF, F, D,DF, F, b
Time = 20;35
buffer.time = 5

[Command]
name = "bok_c"
command = ~D,DF, F, D,DF, F, c
Time = 20;35
buffer.time = 5

;------------
[Command]
name = "damage_x"
command = ~D,DB, B, D,DB, B, x
Time = 20;35
buffer.time = 5

[Command]
name = "damage_y"
command = ~D,DB, B, D,DB, B, y
Time = 20;35
buffer.time = 5
;---------------------------------------------------------------------
; ìSãÖëÂñ\ëñÅiÇkÇñÇPÅ^ÇkÇñÇQÅ^ÇkÇñÇRÅj
[Command]
name = "bou_a"
command = ~D,DF, F,DF, D,DB, B, x
Time = 20;35
buffer.time = 5

[Command]
name = "bou_b"
command = ~D,DF, F,DF, D,DB, B, y
Time = 20;35
buffer.time = 5

[Command]
name = "bou_c"
command = ~D,DF, F,DF, D,DB, B, z
Time = 20;35
buffer.time = 5

;-| Special Motions |-------------------------------------------------

;---------------------------------------------------------------------
; ìSãÖï≤ç”åÇÅEé„Å^ã≠
;[Command]
;name = "hun_a"
;command = ~35$B, F, x
;Time = 10

[Command]
name = "hun_a"
command = ~D, B, x
Time = 15
buffer.time = 5

;[Command]
;name = "hun_b"
;command = ~35$B, F, y
;Time = 10

[Command]
name = "hun_b"
command = ~D, B, y
Time = 15
buffer.time = 5

[Command]
name = "1500"
command = ~D, D, a
Time = 15
buffer.time = 5

[Command]
name = "1500"
command = ~D, D, b
Time = 15
buffer.time = 5
;---------------------------------------------------------------------
; ìSãÖîÚâçéaÅEé„Å^ã≠
[Command]
name = "hie_a"
command = ~35$D,$U, a
Time = 10
buffer.time = 5

[Command]
name = "hie_a"
command = ~F,D,$DF, a
Time = 15
buffer.time = 5

[Command]
name = "hie_b"
command = ~35$D,$U, b
Time = 10
buffer.time = 5

[Command]
name = "hie_b"
command = ~F,D,$DF, b
Time = 15
buffer.time = 5

;---------------------------------------------------------------------
; ìSãÖëÂâÒì]ÅEé„Å^ã≠
[Command]
name = "dai_a"
command = x,x,x,x;x,~x, x,~x, x,~x, x,~x
Time = 28
buffer.time = 5

[Command]
name = "dai_a"
command = ~F,D,$DF, x
Time = 15
buffer.time = 5

[Command]
name = "dai_b"
command = y,y,y,y;y,~y, y,~y, y,~y, y,~y
Time = 28
buffer.time = 5

[Command]
name = "dai_b"
command = ~F,D,$DF, y
Time = 15
buffer.time = 5

;---------------------------------------------------------------------
; ëÂîjâÛìäÇ∞ÅEé„Å^ã≠
[Command]
name = "hak_a"
command = ~F,DF, D,DB, B, F, x
Time = 30
buffer.time = 5

[Command]
name = "hak_a"
command = ~B,D,F, x
Time = 15
buffer.time = 5

[Command]
name = "hak_a"
command = ~DB,F, x
Time = 15
buffer.time = 5

[Command]
name = "hak_b"
command = ~F,DF, D,DB, B, F, y
Time = 30
buffer.time = 5

[Command]
name = "hak_b"
command = ~DB,F, y
Time = 15
buffer.time = 5

[Command]
name = "hak_b"
command = ~B,D,F, y
Time = 15
buffer.time = 5

;---------------------------------------------------------------------
; ìSãÖëæå€ë≈ÇøÅEé„Å^ã≠
[Command]
name = "tai_a"
command = ~D,B, a
Time = 30
buffer.time = 5

[Command]
name = "tai_b"
command = ~D,B, b
Time = 30
buffer.time = 5

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
name = "by"
command = b+y
time = 1

;[Command]
;name = "xy"
;command = x+y
;time = 1

[Command]
name = "abcd"
command = x+y+a+b
time = 1

[Command]
name = "abcd"
command = c
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
name = "downfwd_x"
command = /DF,x
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

[Command]
name = "justfwd"
command = F
time = 1

[Command]
name = "justback"
command = B
time = 1

[Command]
name = "justup"
command = U
time = 1

[Command]
name = "justdown"
command = D
time = 1

;-| Hold Dir |--------------------------------------------------------
[Command]
name = "holdupfwd"
command = /UF
time = 1

[Command]
name = "holdupback"
command = /UB
time = 1

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

;longjump
[Command]
name = "longjump"
command = $D, $U
time = 18;2
;buffer.time = 8

;-|Chang Koehan Only|-------------------
[Command]
name = "holdz"
command = /z
time = 1

;=====================================================================
; State Entry for Commands
;=====================================================================

[Statedef -1]

;=====================================================================
; CPU Function
;=====================================================================
;
[State -1]
type = ChangeState
value = 1150
triggerall = Var(30) = 1
triggerall = Ctrl = 1
triggerall = StateType != A
trigger1 = Var(29) = [0,14]
trigger1 = P2BodyDist X <= 25
trigger1 = P2BodyDist Y >= -30

[State -1]
type = ChangeState
value = 1250
triggerall = Var(30) = 1
triggerall = Ctrl = 1
triggerall = StateType != A
trigger1 = Var(29) = [25,34]
trigger1 = P2BodyDist X <= 25
trigger1 = P2BodyDist Y >= -30

[State -1]
type = ChangeState
value = 1300
triggerall = Var(30) = 1
triggerall = Ctrl = 1
triggerall = StateType != A
trigger1 = Var(29) = [0,44]
trigger1 = P2BodyDist X <= 15
trigger1 = P2StateType != A

;=====================================================================
; Super Arts
;=====================================================================

;---------------------------------------------------------------------
; ìSãÖëÂà≥éE  (Level 1)
[State -1]
type = ChangeState
value = 3000
triggerall = command = "ats_a"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1


;------------
[State -1]
type = ChangeState
value = 3850
triggerall = Command = "big world"
triggerall = power >= 2000 && life <= 1000
trigger1 = statetype = S
;trigger1 = ctrl = 1
trigger2 = statetype = C
;trigger2 = ctrl = 1

[State -1]
type = ChangeState
value = 3850
triggerall = Command = "big world"
triggerall = power >= 2000 && life <= 1000
trigger1 = StateNo = [200,800];) && time > 0
trigger2 = StateNo = 1500 && movecontact
;----------------------------- í èÌãZÉLÉÉÉìÉZÉãê›íË
[State -1]
type = ChangeState
value = 3000
triggerall = Command = "ats_a"
triggerall = Power >= 1000
triggerall = MoveContact
trigger1 = StateNo = 200
trigger1 = AnimElem = 4, <= 5
trigger2 = StateNo = 210
trigger2 = AnimElem = 3, <= 2
trigger3 = StateNo = 230
trigger3 = AnimElem = 4, <= 4
trigger4 = StateNo = 250
trigger4 = AnimElem = 3, <= 5
trigger5 = StateNo = 300
trigger5 = AnimElem = 4, <= 3
trigger6 = StateNo = 310
trigger6 = AnimElem = 5, <= 3
trigger7 = StateNo = 320
trigger7 = AnimElem = 5, <= 3
trigger8 = StateNo = 330
trigger8 = AnimElem = 6, <= 4
trigger9 = StateNo = 600
trigger9 = AnimElem = 7, <= 3
trigger10 = StateNo = 1500 && movecontact

[State -1]
type = ChangeState
value = 3000
triggerall = Command = "ats_a"
triggerall = Power >= 1000
triggerall = !MoveContact
trigger1 = StateNo = 330
trigger1 = AnimElem = 4, <= 4

;---------------------------------------------------------------------
; ìSãÖëÂà≥éE  (Level 2)
[State -1]
type = ChangeState
value = 3100
triggerall = command = "ats_b"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1

;----------------------------- í èÌãZÉLÉÉÉìÉZÉãê›íË
[State -1]
type = ChangeState
value = 3100
triggerall = Command = "ats_b"
triggerall = Power >= 1000
triggerall = MoveContact
trigger1 = StateNo = 200
trigger1 = AnimElem = 4, <= 5
trigger2 = StateNo = 210
trigger2 = AnimElem = 3, <= 2
trigger3 = StateNo = 230
trigger3 = AnimElem = 4, <= 4
trigger4 = StateNo = 250
trigger4 = AnimElem = 3, <= 5
trigger5 = StateNo = 300
trigger5 = AnimElem = 4, <= 3
trigger6 = StateNo = 310
trigger6 = AnimElem = 5, <= 3
trigger7 = StateNo = 320
trigger7 = AnimElem = 5, <= 3
trigger8 = StateNo = 330
trigger8 = AnimElem = 6, <= 4
trigger9 = StateNo = 600
trigger9 = AnimElem = 7, <= 3
trigger10 = StateNo = 1500 && movecontact

[State -1]
type = ChangeState
value = 3100
triggerall = Command = "ats_b"
triggerall = Power >= 1000
triggerall = !MoveContact
trigger1 = StateNo = 330
trigger1 = AnimElem = 4, <= 4


;---------------

[State -1]
type = ChangeState
value = 3780
triggerall = command = "damage_x" || command = "damage_y"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1

[State -1]
type = ChangeState
value = 3780
triggerall = Command = "damage_x" || command = "damage_y"
triggerall = Power >= 1000
triggerall = MoveContact
trigger1 = StateNo = 200
trigger1 = AnimElem = 4, <= 5
trigger2 = StateNo = 210
trigger2 = AnimElem = 3, <= 2
trigger3 = StateNo = 230
trigger3 = AnimElem = 4, <= 4
trigger4 = StateNo = 250
trigger4 = AnimElem = 3, <= 5
trigger5 = StateNo = 300
trigger5 = AnimElem = 4, <= 3
trigger6 = StateNo = 310
trigger6 = AnimElem = 5, <= 3
trigger7 = StateNo = 320
trigger7 = AnimElem = 5, <= 3
trigger8 = StateNo = 330
trigger8 = AnimElem = 6, <= 4
trigger9 = StateNo = 600
trigger9 = AnimElem = 7, <= 3
trigger10 = StateNo = 1500 && movecontact

[State -1]
type = ChangeState
value = 3780
triggerall = Command = "damage_x" || command = "damage_y"
triggerall = Power >= 1000
triggerall = !MoveContact
trigger1 = StateNo = 330
trigger1 = AnimElem = 4, <= 4

;---------------------------------------------------------------------
; ìSãÖëÂà≥éE  (Level 3)
[State -1]
type = ChangeState
value = 3200
triggerall = command = "ats_c"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1

;----------------------------- í èÌãZÉLÉÉÉìÉZÉãê›íË
[State -1]
type = ChangeState
value = 3200
triggerall = Command = "ats_c"
triggerall = Power >= 2000
triggerall = MoveContact
trigger1 = StateNo = 200
trigger1 = AnimElem = 4, <= 5
trigger2 = StateNo = 210
trigger2 = AnimElem = 3, <= 2
trigger3 = StateNo = 230
trigger3 = AnimElem = 4, <= 4
trigger4 = StateNo = 250
trigger4 = AnimElem = 3, <= 5
trigger5 = StateNo = 300
trigger5 = AnimElem = 4, <= 3
trigger6 = StateNo = 310
trigger6 = AnimElem = 5, <= 3
trigger7 = StateNo = 320
trigger7 = AnimElem = 5, <= 3
trigger8 = StateNo = 330
trigger8 = AnimElem = 6, <= 4
trigger9 = StateNo = 600
trigger9 = AnimElem = 7, <= 3
trigger10 = StateNo = 1500 && movecontact

[State -1]
type = ChangeState
value = 3200
triggerall = Command = "ats_c"
triggerall = Power >= 2000
triggerall = !MoveContact
trigger1 = StateNo = 330
trigger1 = AnimElem = 4, <= 4

;---------------------------------------------------------------------
; ìSãÖëÂñ\ëñÅ@(Level 1)
[State -1]
type = ChangeState
value = 3300
triggerall = command = "bou_a"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1

;----------------------------- í èÌãZÉLÉÉÉìÉZÉãê›íË
[State -1]
type = ChangeState
value = 3300
triggerall = Command = "bou_a"
triggerall = Power >= 1000
triggerall = MoveContact
trigger1 = StateNo = 200
trigger1 = AnimElem = 4, <= 5
trigger2 = StateNo = 210
trigger2 = AnimElem = 3, <= 2
trigger3 = StateNo = 230
trigger3 = AnimElem = 4, <= 4
trigger4 = StateNo = 250
trigger4 = AnimElem = 3, <= 5
trigger5 = StateNo = 300
trigger5 = AnimElem = 4, <= 3
trigger6 = StateNo = 310
trigger6 = AnimElem = 5, <= 3
trigger7 = StateNo = 320
trigger7 = AnimElem = 5, <= 3
trigger8 = StateNo = 330
trigger8 = AnimElem = 6, <= 4
trigger9 = StateNo = 600
trigger9 = AnimElem = 7, <= 3
trigger10 = StateNo = 1500 && movecontact

[State -1]
type = ChangeState
value = 3300
triggerall = Command = "bou_a"
triggerall = Power >= 1000
triggerall = !MoveContact
trigger1 = StateNo = 330
trigger1 = AnimElem = 4, <= 4

;---------------------------------------------------------------------
; ìSãÖëÂñ\ëñ (Level 2)
[State -1]
type = ChangeState
value = 3400
triggerall = command = "bou_b"
triggerall = power >= 1500
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1

;----------------------------- í èÌãZÉLÉÉÉìÉZÉãê›íË
[State -1]
type = ChangeState
value = 3400
triggerall = Command = "bou_b"
triggerall = Power >= 1500
triggerall = MoveContact
trigger1 = StateNo = 200
trigger1 = AnimElem = 4, <= 5
trigger2 = StateNo = 210
trigger2 = AnimElem = 3, <= 2
trigger3 = StateNo = 230
trigger3 = AnimElem = 4, <= 4
trigger4 = StateNo = 250
trigger4 = AnimElem = 3, <= 5
trigger5 = StateNo = 300
trigger5 = AnimElem = 4, <= 3
trigger6 = StateNo = 310
trigger6 = AnimElem = 5, <= 3
trigger7 = StateNo = 320
trigger7 = AnimElem = 5, <= 3
trigger8 = StateNo = 330
trigger8 = AnimElem = 6, <= 4
trigger9 = StateNo = 600
trigger9 = AnimElem = 7, <= 3
trigger10 = StateNo = 1500 && movecontact

[State -1]
type = ChangeState
value = 3400
triggerall = Command = "bou_b"
triggerall = Power >= 1500
triggerall = !MoveContact
trigger1 = StateNo = 330
trigger1 = AnimElem = 4, <= 4

;---------------------------------------------------------------------
; ìSãÖëÂñ\ëñ (Level 3)
[State -1]
type = ChangeState
value = 3500
triggerall = command = "bou_c"
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1

;----------------------------- í èÌãZÉLÉÉÉìÉZÉãê›íË
[State -1]
type = ChangeState
value = 3500
triggerall = Command = "bou_c"
triggerall = Power >= 3000
triggerall = MoveContact
trigger1 = StateNo = 200
trigger1 = AnimElem = 4, <= 5
trigger2 = StateNo = 210
trigger2 = AnimElem = 3, <= 2
trigger3 = StateNo = 230
trigger3 = AnimElem = 4, <= 4
trigger4 = StateNo = 250
trigger4 = AnimElem = 3, <= 5
trigger5 = StateNo = 300
trigger5 = AnimElem = 4, <= 3
trigger6 = StateNo = 310
trigger6 = AnimElem = 5, <= 3
trigger7 = StateNo = 320
trigger7 = AnimElem = 5, <= 3
trigger8 = StateNo = 330
trigger8 = AnimElem = 6, <= 4
trigger9 = StateNo = 600
trigger9 = AnimElem = 7, <= 3
trigger10 = StateNo = 1500 && movecontact

[State -1]
type = ChangeState
value = 3500
triggerall = Command = "bou_c"
triggerall = Power >= 3000
triggerall = !MoveContact
trigger1 = StateNo = 330
trigger1 = AnimElem = 4, <= 4

;---------------------------------------------------------------------
; ìSãÖëÂñoéE  (Level 1)
[State -1]
type = ChangeState
value = 3600
triggerall = command = "bok_a"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1

;----------------------------- í èÌãZÉLÉÉÉìÉZÉãê›íË
[State -1]
type = ChangeState
value = 3600
triggerall = Command = "bok_a"
triggerall = Power >= 1000
triggerall = MoveContact
trigger1 = StateNo = 200
trigger1 = AnimElem = 4, <= 5
trigger2 = StateNo = 210
trigger2 = AnimElem = 3, <= 2
trigger3 = StateNo = 230
trigger3 = AnimElem = 4, <= 4
trigger4 = StateNo = 250
trigger4 = AnimElem = 3, <= 5
trigger5 = StateNo = 300
trigger5 = AnimElem = 4, <= 3
trigger6 = StateNo = 310
trigger6 = AnimElem = 5, <= 3
trigger7 = StateNo = 320
trigger7 = AnimElem = 5, <= 3
trigger8 = StateNo = 330
trigger8 = AnimElem = 6, <= 4
trigger9 = StateNo = 600
trigger9 = AnimElem = 7, <= 3

[State -1]
type = ChangeState
value = 3600
triggerall = Command = "bok_a"
triggerall = Power >= 1000
triggerall = !MoveContact
trigger1 = StateNo = 330
trigger1 = AnimElem = 4, <= 4

;---------------------------------------------------------------------
; ìSãÖëÂñoéE  (Level 2)


[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 3700
triggerall = command = "bok_a"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = (stateno = 1500 && AnimElem = 4, <= 20)
trigger1 = movecontact


[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 3870
triggerall = command = "bok_c"
triggerall = power >= 2000
triggerall = statetype != A
triggerall = (stateno = 1500 && AnimElem = 4, <= 20)
trigger1 = movecontact

;---------------------------------------------------------------------
; ìSãÖëÂñoéE  (Level 3)
[State -1]
type = ChangeState
value = 3800
triggerall = command = "bok_c"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1

;----------------------------- í èÌãZÉLÉÉÉìÉZÉãê›íË
[State -1]
type = ChangeState
value = 3800
triggerall = Command = "bok_c"
triggerall = Power >= 2000
triggerall = MoveContact
trigger1 = StateNo = 200
trigger1 = AnimElem = 4, <= 5
trigger2 = StateNo = 210
trigger2 = AnimElem = 3, <= 2
trigger3 = StateNo = 230
trigger3 = AnimElem = 4, <= 4
trigger4 = StateNo = 250
trigger4 = AnimElem = 3, <= 5
trigger5 = StateNo = 300
trigger5 = AnimElem = 4, <= 3
trigger6 = StateNo = 310
trigger6 = AnimElem = 5, <= 3
trigger7 = StateNo = 320
trigger7 = AnimElem = 5, <= 3
trigger8 = StateNo = 330
trigger8 = AnimElem = 6, <= 4
trigger9 = StateNo = 600
trigger9 = AnimElem = 7, <= 3


[State -1]
type = ChangeState
value = 3800
triggerall = Command = "bok_c"
triggerall = Power >= 2000
triggerall = !MoveContact
trigger1 = StateNo = 330
trigger1 = AnimElem = 4, <= 4

;=====================================================================
; Special Arts 
;=====================================================================

;---------------------------------------------------------------------
; ìSãÖï≤ç”åÇÅEé„Å^ã≠
;----------------------------- é„
[State -1]
type = ChangeState
value = 1000
triggerall = command = "hun_a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1

;----------------------------- í èÌãZÉLÉÉÉìÉZÉãê›íË
[State -1]
type = ChangeState
value = 1000
triggerall = Command = "hun_a"
triggerall = MoveContact
trigger1 = StateNo = 200
trigger1 = AnimElem = 4, <= 5
trigger2 = StateNo = 210
trigger2 = AnimElem = 3, <= 2
trigger3 = StateNo = 230
trigger3 = AnimElem = 4, <= 4
trigger4 = StateNo = 250
trigger4 = AnimElem = 3, <= 5
trigger5 = StateNo = 300
trigger5 = AnimElem = 4, <= 3
trigger6 = StateNo = 310
trigger6 = AnimElem = 5, <= 3
trigger7 = StateNo = 320
trigger7 = AnimElem = 5, <= 3
trigger8 = StateNo = 330
trigger8 = AnimElem = 6, <= 4


[State -1]
type = ChangeState
value = 1000
triggerall = Command = "hun_a"
triggerall = !MoveContact
trigger1 = StateNo = 330
trigger1 = AnimElem = 4, <= 4

[State -1]
type = ChangeState
value = 1000
triggerall = Command = "hun_a"
trigger1 = (StateNo = 600 && AnimElem = 4, > 3) && time > 0
;trigger1 = AnimElem = 5, >= 2

;----------------------------- ã≠
[State -1]
type = ChangeState
value = 1050
triggerall = command = "hun_b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1

;----------------------------- í èÌãZÉLÉÉÉìÉZÉãê›íË
[State -1]
type = ChangeState
value = 1050
triggerall = Command = "hun_b"
triggerall = MoveContact
trigger1 = StateNo = 200
trigger1 = AnimElem = 4, <= 5
trigger2 = StateNo = 210
trigger2 = AnimElem = 3, <= 2
trigger3 = StateNo = 230
trigger3 = AnimElem = 4, <= 4
trigger4 = StateNo = 250
trigger4 = AnimElem = 3, <= 5
trigger5 = StateNo = 300
trigger5 = AnimElem = 4, <= 3
trigger6 = StateNo = 310
trigger6 = AnimElem = 5, <= 3
trigger7 = StateNo = 320
trigger7 = AnimElem = 5, <= 3
trigger8 = StateNo = 330
trigger8 = AnimElem = 6, <= 4

[State -1]
type = ChangeState
value = 1050
triggerall = Command = "hun_b"
trigger1 = (StateNo = 600 && AnimElem = 4, > 3) && time > 0
;trigger1 = AnimElem = 5, >= 2

[State -1]
type = ChangeState
value = 1050
triggerall = Command = "hun_b"
triggerall = !MoveContact
trigger1 = StateNo = 330
trigger1 = AnimElem = 4, <= 4

;---------------------------------------------------------------------
; ìSãÖîÚâçéaÅEé„Å^ã≠
;----------------------------- é„
[State -1]
type = ChangeState
value = 1100
triggerall = command = "hie_a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = StateNo = 40

;----------------------------- í èÌãZÉLÉÉÉìÉZÉãê›íË
[State -1]
type = ChangeState
value = 1100
triggerall = Command = "hie_a"
triggerall = MoveContact
trigger1 = StateNo = 200
trigger1 = AnimElem = 4, <= 5
trigger2 = StateNo = 210
trigger2 = AnimElem = 3, <= 2
trigger3 = StateNo = 230
trigger3 = AnimElem = 4, <= 4
trigger4 = StateNo = 250
trigger4 = AnimElem = 3, <= 5
trigger5 = StateNo = 300
trigger5 = AnimElem = 4, <= 3
trigger6 = StateNo = 310
trigger6 = AnimElem = 5, <= 3
trigger7 = StateNo = 320
trigger7 = AnimElem = 5, <= 3
trigger8 = StateNo = 330
trigger8 = AnimElem = 6, <= 4
trigger9 = StateNo = 600
trigger9 = AnimElem = 7, <= 3

[State -1]
type = ChangeState
value = 1100
triggerall = Command = "hie_a"
triggerall = !MoveContact
trigger1 = StateNo = 330
trigger1 = AnimElem = 4, <= 4

;----------------------------- ã≠
[State -1]
type = ChangeState
value = 1150
triggerall = command = "hie_b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = StateNo = 40

;----------------------------- í èÌãZÉLÉÉÉìÉZÉãê›íË
[State -1]
type = ChangeState
value = 1150
triggerall = Command = "hie_b"
triggerall = MoveContact
trigger1 = StateNo = 200
trigger1 = AnimElem = 4, <= 5
trigger2 = StateNo = 210
trigger2 = AnimElem = 3, <= 2
trigger3 = StateNo = 230
trigger3 = AnimElem = 4, <= 4
trigger4 = StateNo = 250
trigger4 = AnimElem = 3, <= 5
trigger5 = StateNo = 300
trigger5 = AnimElem = 4, <= 3
trigger6 = StateNo = 310
trigger6 = AnimElem = 5, <= 3
trigger7 = StateNo = 320
trigger7 = AnimElem = 5, <= 3
trigger8 = StateNo = 330
trigger8 = AnimElem = 6, <= 4
trigger9 = StateNo = 600
trigger9 = AnimElem = 7, <= 3

[State -1]
type = ChangeState
value = 1150
triggerall = Command = "hie_b"
triggerall = !MoveContact
trigger1 = StateNo = 330
trigger1 = AnimElem = 4, <= 4

;---------------------------------------------------------------------
; ìSãÖëÂâÒì]ÅEé„Å^ã≠
;----------------------------- é„
[State -1]
type = ChangeState
value = 1200
triggerall = command = "dai_a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1

;----------------------------- í èÌãZÉLÉÉÉìÉZÉãê›íË
[State -1]
type = ChangeState
value = 1200
triggerall = Command = "dai_a"
triggerall = MoveContact
trigger1 = StateNo = 200
trigger1 = AnimElem = 4, <= 5
trigger2 = StateNo = 210
trigger2 = AnimElem = 3, <= 2
trigger3 = StateNo = 230
trigger3 = AnimElem = 4, <= 4
trigger4 = StateNo = 250
trigger4 = AnimElem = 3, <= 5
trigger5 = StateNo = 300
trigger5 = AnimElem = 4, <= 3
trigger6 = StateNo = 310
trigger6 = AnimElem = 5, <= 3
trigger7 = StateNo = 320
trigger7 = AnimElem = 5, <= 3
trigger8 = StateNo = 330
trigger8 = AnimElem = 6, <= 4
trigger9 = StateNo = 600
trigger9 = AnimElem = 7, <= 3

[State -1]
type = ChangeState
value = 1200
triggerall = Command = "dai_a"
triggerall = !MoveContact
trigger1 = StateNo = 330
trigger1 = AnimElem = 4, <= 4

;----------------------------- ã≠
[State -1]
type = ChangeState
value = 1250
triggerall = command = "dai_b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1

;----------------------------- í èÌãZÉLÉÉÉìÉZÉãê›íË
[State -1]
type = ChangeState
value = 1250
triggerall = Command = "dai_b"
triggerall = MoveContact
trigger1 = StateNo = 200
trigger1 = AnimElem = 4, <= 5
trigger2 = StateNo = 210
trigger2 = AnimElem = 3, <= 2
trigger3 = StateNo = 230
trigger3 = AnimElem = 4, <= 4
trigger4 = StateNo = 250
trigger4 = AnimElem = 3, <= 5
trigger5 = StateNo = 300
trigger5 = AnimElem = 4, <= 3
trigger6 = StateNo = 310
trigger6 = AnimElem = 5, <= 3
trigger7 = StateNo = 320
trigger7 = AnimElem = 5, <= 3
trigger8 = StateNo = 330
trigger8 = AnimElem = 6, <= 4
trigger9 = StateNo = 600
trigger9 = AnimElem = 7, <= 3

[State -1]
type = ChangeState
value = 1250
triggerall = Command = "dai_b"
triggerall = !MoveContact
trigger1 = StateNo = 330
trigger1 = AnimElem = 4, <= 4

;---------------------------------------------------------------------
; ëÂîjâÛìäÇ∞ÅEé„Å^ã≠
;----------------------------- é„
[State -1]
type = ChangeState
value = 1300
triggerall = command = "hak_a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1

;----------------------------- í èÌãZÉLÉÉÉìÉZÉãê›íË
[State -1]
type = ChangeState
value = 1300
triggerall = Command = "hak_a"
triggerall = MoveContact
trigger1 = StateNo = 200
trigger1 = AnimElem = 4, <= 5
trigger2 = StateNo = 210
trigger2 = AnimElem = 3, <= 2
trigger3 = StateNo = 230
trigger3 = AnimElem = 4, <= 4
trigger4 = StateNo = 250
trigger4 = AnimElem = 3, <= 5
trigger5 = StateNo = 300
trigger5 = AnimElem = 4, <= 3
trigger6 = StateNo = 310
trigger6 = AnimElem = 5, <= 3
trigger7 = StateNo = 320
trigger7 = AnimElem = 5, <= 3
trigger8 = StateNo = 330
trigger8 = AnimElem = 6, <= 4
trigger9 = StateNo = 600
trigger9 = AnimElem = 7, <= 3

[State -1]
type = ChangeState
value = 1300
triggerall = Command = "hak_a"
triggerall = !MoveContact
trigger1 = StateNo = 330
trigger1 = AnimElem = 4, <= 4

;----------------------------- ã≠
[State -1]
type = ChangeState
value = 1300
triggerall = command = "hak_b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1

;----------------------------- í èÌãZÉLÉÉÉìÉZÉãê›íË
[State -1]
type = ChangeState
value = 1300
triggerall = Command = "hak_b"
triggerall = MoveContact
trigger1 = StateNo = 200
trigger1 = AnimElem = 4, <= 5
trigger2 = StateNo = 210
trigger2 = AnimElem = 3, <= 2
trigger3 = StateNo = 230
trigger3 = AnimElem = 4, <= 4
trigger4 = StateNo = 250
trigger4 = AnimElem = 3, <= 5
trigger5 = StateNo = 300
trigger5 = AnimElem = 4, <= 3
trigger6 = StateNo = 310
trigger6 = AnimElem = 5, <= 3
trigger7 = StateNo = 320
trigger7 = AnimElem = 5, <= 3
trigger8 = StateNo = 330
trigger8 = AnimElem = 6, <= 4
trigger9 = StateNo = 600
trigger9 = AnimElem = 7, <= 3

[State -1]
type = ChangeState
value = 1300
triggerall = Command = "hak_b"
triggerall = !MoveContact
trigger1 = StateNo = 330
trigger1 = AnimElem = 4, <= 4

;;-----------

;----------------------------- é„
[State -1]
type = ChangeState
value = 1500
triggerall = Command = "1500"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1

;----------------------------- í èÌãZÉLÉÉÉìÉZÉãê›íË
[State -1]
type = ChangeState
value = 1500
triggerall = Command = "1500"
triggerall = MoveContact
trigger1 = StateNo = 200
trigger1 = AnimElem = 4, <= 5
trigger2 = StateNo = 210
trigger2 = AnimElem = 3, <= 2
trigger3 = StateNo = 230
trigger3 = AnimElem = 4, <= 4
trigger4 = StateNo = 250
trigger4 = AnimElem = 3, <= 5
trigger5 = StateNo = 300
trigger5 = AnimElem = 4, <= 3
trigger6 = StateNo = 310
trigger6 = AnimElem = 5, <= 3
trigger7 = StateNo = 320
trigger7 = AnimElem = 5, <= 3
trigger8 = StateNo = 330
trigger8 = AnimElem = 6, <= 4
trigger9 = StateNo = 600
trigger9 = AnimElem = 7, <= 3

[State -1]
type = ChangeState
value = 1500
triggerall = Command = "1500"
triggerall = !MoveContact
trigger1 = StateNo = 330
trigger1 = AnimElem = 4, <= 4

;---------------------------------------------------------------------
; ìSãÖëæå€ë≈ÇøÅEé„Å^ã≠
;----------------------------- é„
[State -1]
type = ChangeState
value = 1400
triggerall = command = "tai_a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1

;----------------------------- í èÌãZÉLÉÉÉìÉZÉãê›íË
[State -1]
type = ChangeState
value = 1400
triggerall = Command = "tai_a"
triggerall = MoveContact
trigger1 = StateNo = 200
trigger1 = AnimElem = 4, <= 5
trigger2 = StateNo = 210
trigger2 = AnimElem = 3, <= 2
trigger3 = StateNo = 230
trigger3 = AnimElem = 4, <= 4
trigger4 = StateNo = 250
trigger4 = AnimElem = 3, <= 5
trigger5 = StateNo = 300
trigger5 = AnimElem = 4, <= 3
trigger6 = StateNo = 310
trigger6 = AnimElem = 5, <= 3
trigger7 = StateNo = 320
trigger7 = AnimElem = 5, <= 3
trigger8 = StateNo = 330
trigger8 = AnimElem = 6, <= 4
trigger9 = StateNo = 600
trigger9 = AnimElem = 7, <= 3

[State -1]
type = ChangeState
value = 1400
triggerall = Command = "tai_a"
triggerall = !MoveContact
trigger1 = StateNo = 330
trigger1 = AnimElem = 4, <= 4

;----------------------------- ã≠
[State -1]
type = ChangeState
value = 1400
triggerall = command = "tai_b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1

;----------------------------- í èÌãZÉLÉÉÉìÉZÉãê›íË
[State -1]
type = ChangeState
value = 1400
triggerall = Command = "tai_b"
triggerall = MoveContact
trigger1 = StateNo = 200
trigger1 = AnimElem = 4, <= 5
trigger2 = StateNo = 210
trigger2 = AnimElem = 3, <= 2
trigger3 = StateNo = 230
trigger3 = AnimElem = 4, <= 4
trigger4 = StateNo = 250
trigger4 = AnimElem = 3, <= 5
trigger5 = StateNo = 300
trigger5 = AnimElem = 4, <= 3
trigger6 = StateNo = 310
trigger6 = AnimElem = 5, <= 3
trigger7 = StateNo = 320
trigger7 = AnimElem = 5, <= 3
trigger8 = StateNo = 330
trigger8 = AnimElem = 6, <= 4
trigger9 = StateNo = 600
trigger9 = AnimElem = 7, <= 3

[State -1]
type = ChangeState
value = 1400
triggerall = Command = "tai_b"
triggerall = !MoveContact
trigger1 = StateNo = 330
trigger1 = AnimElem = 4, <= 4

;=====================================================================
; Basic Animation
;=====================================================================

;---------------------------------------------------------------------
;RunFwd
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = StateNo != 100

;---------------------------------------------------------------------
;RunBack
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1

;=====================================================================
; Basic Throws
;=====================================================================

;---------------------------------------------------------------------
; îjäÁåÇÅiÉpÉìÉ`ìäÇ∞Åj
[State -1]
type = ChangeState
value = 900
triggerall = StateNo != 100
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "fwd_y"
trigger1 = p2bodydist X < 8
trigger1 = p2statetype = S
trigger1 = p2movetype != H
trigger2 = command = "fwd_y"
trigger2 = p2bodydist X < 8
trigger2 = p2statetype = C
trigger2 = p2movetype != H
trigger3 = command = "back_y"
trigger3 = p2bodydist X < 20
trigger3 = p2statetype = S
trigger3 = p2movetype != H
trigger4 = command = "back_y"
trigger4 = p2bodydist X < 20
trigger4 = p2statetype = C
trigger4 = p2movetype != H

;---------------------------------------------------------------------
; çΩí˜ÇﬂÅiÉLÉbÉNìäÇ∞Åj
[State -1]
type = ChangeState
value = 950
triggerall = StateNo != 100
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "fwd_b"
trigger1 = p2bodydist X < 8
trigger1 = p2statetype = S
trigger1 = p2movetype != H
trigger2 = command = "fwd_b"
trigger2 = p2bodydist X < 8
trigger2 = p2statetype = C
trigger2 = p2movetype != H
trigger3 = command = "back_b"
trigger3 = p2bodydist X < 20
trigger3 = p2statetype = S
trigger3 = p2movetype != H
trigger4 = command = "back_b"
trigger4 = p2bodydist X < 20
trigger4 = p2statetype = C
trigger4 = p2movetype != H

;---------------------------------------------------------------------
; Special Attacks , Moves and so on.
;---------------------------------------------------------------------
;---------------------------------------------------------------------
; ínè„Ç”Ç¡Ç∆ÇŒÇµçUåÇ
[State -1]
type = ChangeState
value = 600
triggerall = command = "c"
trigger1 = statetype != A
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 600
triggerall = command = "by"
trigger1 = statetype != A
trigger1 = ctrl = 1

;---------------------------------------------------------------------
; ãÛíÜÇ”Ç¡Ç∆ÇŒÇµçUåÇ
[State -1]
type = ChangeState
value = 610
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 610
triggerall = command = "by"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------
; ÉKÅ[ÉhÉLÉÉÉìÉZÉããŸã}âÒîìÆçÏÅiëOÅEå„Åj
[State -1]
type = ChangeState
value = 4000
triggerall = Command = "gc_fwd"
triggerall = Var(4) = 1
triggerall = Power >= 500
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152

;---------------------------------------------------------------------
; ãŸã}âÒîìÆçÏÅiëOÅj  ÅiÇjÇnÇeÇXÇWédólÅj
[State -1]
type = ChangeState
value = 4050
triggerall = Command = "q_fwd"
triggerall = Command != "holdback"
triggerall = StateType = S
trigger1 = Ctrl = 1

;---------------------------------------------------------------------
; ãŸã}âÒîìÆçÏÅiå„Åj  ÅiÇjÇnÇeÇXÇWédólÅj
[State -1]
type = ChangeState
value = 4150
triggerall = Command = "q_back"
triggerall = Command != "holdfwd"
triggerall = StateType = S
trigger1 = Ctrl = 1

;---------------------------------------------------------------------
; ÉKÅ[ÉhÉLÉÉÉìÉZÉãêÅÇ¡îÚÇŒÇµçUåÇ
[State -1]
type = ChangeState
value = 4500
triggerall = Command = "by"
triggerall = Var(4) = 1
triggerall = Power >= 500
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152

[State -1]
type = ChangeState
value = 4500
triggerall = Command = "c"
triggerall = Var(4) = 1
triggerall = Power >= 500
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152

;=====================================================================
; Dir + Button
;=====================================================================

;---------------------------------------------------------------------
; Ç–Ç´ì¶Ç∞
[State -1]
type = ChangeState
value = 800
triggerall = command = "downfwd_x"
triggerall = StateType != A
triggerall = ctrl = 1
trigger1 = statetype = S
trigger2 = statetype = C

;----------------------------- í èÌãZÉLÉÉÉìÉZÉãê›íË
[State -1]
type = ChangeState
value = 850
triggerall = Command = "downfwd_x"
triggerall = MoveContact
trigger1 = StateNo = 200
trigger1 = AnimElem = 4, <= 5
trigger2 = StateNo = 210
trigger2 = AnimElem = 3, <= 2
trigger3 = StateNo = 230
trigger3 = AnimElem = 4, <= 4
trigger4 = StateNo = 250
trigger4 = AnimElem = 3, <= 5
trigger5 = StateNo = 300
trigger5 = AnimElem = 4, <= 3
trigger6 = StateNo = 310
trigger6 = AnimElem = 5, <= 3
trigger7 = StateNo = 320
trigger7 = AnimElem = 5, <= 3
trigger8 = StateNo = 330
trigger8 = AnimElem = 6, <= 4

;=====================================================================
; Taunts
;=====================================================================

;---------------------------------------------------------------------
; íßî≠
[State -1]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = StateType = S
trigger1 = ctrl = 1

;----------------------------- í èÌãZÉLÉÉÉìÉZÉãê›íË
[State -1]
type = ChangeState
value = 195
triggerall = Command = "s"
triggerall = MoveContact
trigger1 = StateNo = 200
trigger1 = AnimElem = 4, <= 5
trigger2 = StateNo = 210
trigger2 = AnimElem = 3, <= 2
trigger3 = StateNo = 230
trigger3 = AnimElem = 4, <= 4
trigger4 = StateNo = 250
trigger4 = AnimElem = 3, <= 5
trigger5 = StateNo = 300
trigger5 = AnimElem = 4, <= 3
trigger6 = StateNo = 310
trigger6 = AnimElem = 5, <= 3
trigger7 = StateNo = 320
trigger7 = AnimElem = 5, <= 3
trigger8 = StateNo = 330
trigger8 = AnimElem = 6, <= 4
trigger9 = StateNo = 600
trigger9 = AnimElem = 7, <= 3

[State -1]
type = ChangeState
value = 195
triggerall = Command = "s"
triggerall = !MoveContact
trigger1 = StateNo = 330
trigger1 = AnimElem = 4, <= 4

;=====================================================================
; Basic Arts
;=====================================================================

;---------------------------------------------------------------------
; ãﬂãóó£é„ÉpÉìÉ`
[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2bodydist X < 20
trigger1 = ctrl = 1
trigger1 = statetype = S

;---------------------------------------------------------------------
; ãﬂÅ^âìãóó£é„ÉLÉbÉN
[State -1]
type = ChangeState
value = 210
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = ctrl = 1
trigger1 = statetype = S

;---------------------------------------------------------------------
; ãﬂãóó£ã≠ÉpÉìÉ`
[State -1]
type = ChangeState
value = 220
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2bodydist X < 28
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------
; ãﬂãóó£ã≠ÉLÉbÉN
[State -1]
type = ChangeState
value = 230
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------
; âìãóó£é„ÉpÉìÉ`
[State -1]
type = ChangeState
value = 250
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2bodydist   X >= 20 
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = StateNo = 205
trigger3 = StateNo = 225
trigger3 = Time >= 6

;---------------------------------------------------------------------
; âìãóó£ã≠ÉpÉìÉ`
[State -1]
type = ChangeState
value = 270
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2bodydist   X >= 28
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------
; âìãóó£ã≠ÉLÉbÉN
[State -1]
type = ChangeState
value = 280
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2bodydist X >= 20
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------
; ÇµÇ·Ç™Ç›é„ÉpÉìÉ`
[State -1]
type = ChangeState
value = 300
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = StateNo = 300
trigger2 = Time >= 11

;---------------------------------------------------------------------
; ÇµÇ·Ç™Ç›é„ÉLÉbÉN
[State -1]
type = ChangeState
value = 310
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = StateNo = 310
trigger2 = Time >= 7

;---------------------------------------------------------------------
; ÇµÇ·Ç™Ç›ã≠ÉpÉìÉ`
[State -1]
type = ChangeState
value = 320
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------
; ÇµÇ·Ç™Ç›ã≠ÉLÉbÉN
[State -1]
type = ChangeState
value = 330
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------
; ÉWÉÉÉìÉvé„ÉpÉìÉ`
[State -1]
type = ChangeState
value = 500
triggerall = command = "x"
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = StateNo != 105

;---------------------------------------------------------------------
; ÉWÉÉÉìÉvé„ÉLÉbÉN
[State -1]
type = ChangeState
value = 510
triggerall = command = "a"
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = StateNo != 105

;---------------------------------------------------------------------
; ÉWÉÉÉìÉvã≠ÉpÉìÉ`
[State -1]
type = ChangeState
value = 520
triggerall = command = "y"
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = StateNo != 105

;---------------------------------------------------------------------
; ÉWÉÉÉìÉvã≠ÉLÉbÉN
[State -1]
type = ChangeState
value = 530
triggerall = command = "b"
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = StateNo != 105

;-----------------
; Test Button
;[State -1]
;type = ChangeState
;value = 1150
;triggerall = command = "y"
;triggerall = StateType != A
;trigger1 = ctrl = 1
;trigger1 = StateType = S
;trigger2 = StateType = C
;trigger2 = ctrl = 1
;trigger3 = MoveContact
;trigger3 = stateno = 215
;trigger3 = AnimElem = 9, <= 0
;trigger3 = AnimElem = 8, >= 0
;trigger4 = MoveContact
;trigger4 = stateno = 220
;trigger4 = AnimElem = 7, <= 0
;trigger4 = AnimElem = 6, >= 0
;trigger5 = MoveContact
;trigger5 = stateno = 320
;trigger5 = AnimElem = 6, <= 0
;trigger5 = AnimElem = 4, >= 0
;trigger6 = MoveContact
;trigger6 = StateNo = 600
;trigger6 = AnimElem = 10, >= 0
;trigger6 = AnimElem = 12, <= 0


