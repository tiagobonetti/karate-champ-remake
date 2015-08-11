;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 3	;4
;--| CPU Motions |-------------------------
[command]
name = "AI1"
command = B,D,a+c,z,c+b,s
time = 1
[command]
name = "AI2"
command = B,F,c+b,z,c+z,x,s
time = 1
[command]
name = "AI3"
command = B,U,a+b,y,c+y,s,z,D
time = 1
[command]
name = "AI4"
command = B,B,a+y,c,z+x,s
time = 1
[command]
name = "AI5"
command = B,B,a+b,z,c+b,s
time = 1
[command]
name = "AI6"
command = D,B,z+b,z,c+x,s
time = 1
[command]
name = "AI7"
command = B,U,a+b,z,c+x,s
time = 1
[command]
name = "AI8"
command = B,F,a+b,c,c+x,s
time = 1
[Command]
name = "AI9"
command = U,D,F,F,B,B,s
time = 1
[Command]
name = "AI10"
command = U,D,F,F,B,F,s
time = 1
[Command]
name = "AI11"
command = U,D,F,F,B,D,s
time = 1
[Command]
name = "AI12"
command = U,D,F,F,B,U,s
time = 1
[Command]
name = "AI13"
command = U,D,F,F,U,B,s
time = 1
[Command]
name = "AI14"
command = U,D,F,F,D,B,s
time = 1
[Command]
name = "AI15"
command = U,D,F,F,F,B,s
time = 1
[Command]
name = "AI16"
command = U,D,U,F,B,B,s
time = 1
[Command]
name = "AI17"
command = U,D,D,F,B,B,s
time = 1
[Command]
name = "AI18"
command = D,D,F,F,B,B,s
time = 1
[Command]
name = "AI19"
command = U,U,F,F,B,B,s
time = 1
[Command]
name = "AI20"
command = U,B,F,F,B,B,s
time = 1
[Command]
name = "AI21"
command = UB, U, F, a+b,s
time = 1
[Command]
name = "AI22"
command = UB, U, F, b+c,s
time = 1
[Command]
name = "AI23"
command = UB, U, F, a+c,s
time = 1
[Command]
name = "AI24"
command = UF, U, B, x+y,s
time = 1
[Command]
name = "AI25"
command = UF, U, B, y+z,s
time = 1
[Command]
name = "AI26"
command = UF, U, B, x+z,s
time = 1
[Command]
name = "AI27"
command = UB, U, F, x+y,s
time = 1
[Command]
name = "AI28"
command = UB, U, F, y+z,s
time = 1
[Command]
name = "AI29"
command = UB, U, F, x+z,s
time = 1
[Command]
name = "AI30"
command = UF, U, B, a+b,s
time = 1
[Command]
name = "AI31"
command = UF, U, B, b+c,s
time = 1
[Command]
name = "AI32"
command = UF, U, B, a+c,s
time = 1
[Command]
name = "AI33"
command = UF, DB, UB,DF ,x,s
time = 1
[Command]
name = "AI34"
command = UF, DB, UB,DF ,y,s
time = 1
[Command]
name = "AI35"
command = UF, DB, UB,DF , z,s
time = 1
;-| Super Motions |--------------------------------------------------------
;----------------------------3206-R
[Command]
name = "3200-MAX-R"
command = ~D, F, $D, B, a+b
time = 30

[Command]
name = "3200-MAX-R"
command = ~D, F, $D, B, c
time = 30

[Command]
name = "3200-MAX-R"
command = ~D, F, B, a+b
time = 30

[Command]
name = "3200-MAX-R"
command = ~D, F, B, c
time = 30

[Command]
name = "3200-MAX-R-AC"
command = ~D, F, $D, B, $D, a+b
time = 30
[Command]
name = "3200-MAX-R-AC"
command = ~D, F, $D, B, $D, c
time = 30
[Command]
name = "3200-MAX-R-AC"
command = ~D, F, B, $D, a+b
time = 30
[Command]
name = "3200-MAX-R-AC"
command = ~D, F, B, $D, c
time = 30

[Command]
name = "3200-MAX-R-AC"
command = ~D, F, $D, B, $F, a+b
time = 30
[Command]
name = "3200-MAX-R-AC"
command = ~D, F, $D, B, $F, c
time = 30
[Command]
name = "3200-MAX-R-AC"
command = ~D, F, B, $F, a+b
time = 30
[Command]
name = "3200-MAX-R-AC"
command = ~D, F, B, $F, c
time = 30

;----------------------------3156-R
[Command]
name = "3100-B-R"
command = ~D, F, $D, B, a
time = 30

[Command]
name = "3100-B-R"
command = ~D, F, B, a
time = 30

[Command]
name = "3100-B-R-AC"
command = ~D, F, $D, B, $D, a
time = 30
[Command]
name = "3100-B-R-AC"
command = ~D, F, B, $D, a
time = 30
[Command]
name = "3100-B-R-AC"
command = ~D, F, $D, B, $F, a
time = 30
[Command]
name = "3100-B-R-AC"
command = ~D, F, B, $F, a
time = 30

;----------------------------3156-R
[Command]
name = "3100-D-R"
command = ~D, F, $D, B, b
time = 30

[Command]
name = "3100-D-R"
command = ~D, F, B, b
time = 30

[Command]
name = "3100-D-R-AC"
command = ~D, F, $D, B, $D, b
time = 30
[Command]
name = "3100-D-R-AC"
command = ~D, F, B, $D, b
time = 30
[Command]
name = "3100-D-R-AC"
command = ~D, F, $D, B, $F, b
time = 30
[Command]
name = "3100-D-R-AC"
command = ~D, F, B, $F, b
time = 30

;----------------------------3006-R
[Command]
name = "3000-B-R"
command = ~D, DB, B, D, DB, B, a
time = 30

[Command]
name = "3000-B-R-AC"
command = ~D, DB, B, D, DB, B, $D, a
time = 30
[Command]
name = "3000-B-R-AC"
command = ~D, DB, B, D, DB, B, $F, a
time = 30

;----------------------------3056-R
[Command]
name = "3000-D-R"
command = ~D, DB, B, D, DB, B, b
time = 30

[Command]
name = "3000-D-R-AC"
command = ~D, DB, B, D, DB, B, $D, b
time = 30
[Command]
name = "3000-D-R-AC"
command = ~D, DB, B, D, DB, B, $F, b
time = 30

;-| Special Motions |------------------------------------------------------
;----------------------------1306-R
[Command]
name = "1300-A-R"
command = ~D, DF, F, x
time = 16

[Command]
name = "1300-A-R-AC"
command = ~D, DF, F, $D, x
time = 16
[Command]
name = "1300-A-R-AC"
command = ~D, DF, F, $B, x
time = 16

;----------------------------1356-R
[Command]
name = "1300-C-R"
command = ~D, DF, F, y
time = 16

[Command]
name = "1300-C-R-AC"
command = ~D, DF, F, $D, y
time = 16
[Command]
name = "1300-C-R-AC"
command = ~D, DF, F, $B, y
time = 16

;----------------------------1006-R
[Command]
name = "1000-B-R"
command = ~D, DF, F, a
time = 16

[Command]
name = "1000-B-R-AC"
command = ~D, DF, F, $D, a
time = 16
[Command]
name = "1000-B-R-AC"
command = ~D, DF, F, $B, a
time = 16

;----------------------------1056-R
[Command]
name = "1000-D-R"
command = ~D, DF, F, b
time = 16

[Command]
name = "1000-D-R-AC"
command = ~D, DF, F, $D, b
time = 16
[Command]
name = "1000-D-R-AC"
command = ~D, DF, F, $B, b
time = 16

;----------------------------1406-R
[Command]
name = "1400-B-R"
command = ~D, DB, B, a
time = 16

[Command]
name = "1400-B-R-AC"
command = ~D, DB, B, $D, a
time = 16
[Command]
name = "1400-B-R-AC"
command = ~D, DB, B, $F, a
time = 16

;----------------------------1456-R
[Command]
name = "1400-D-R"
command = ~D, DB, B, b
time = 16

[Command]
name = "1400-D-R-AC"
command = ~D, DB, B, $D, b
time = 16
[Command]
name = "1400-D-R-AC"
command = ~D, DB, B, $F, b
time = 16

;=====================================================================================

;-| Super Motions |--------------------------------------------------------
;----------------------------3206
[Command]
name = "3200-MAX"
command = ~D, B, $D, F, a+b
time = 30

[Command]
name = "3200-MAX"
command = ~D, B, $D, F, c
time = 30

[Command]
name = "3200-MAX"
command = ~D, B, F, a+b
time = 30

[Command]
name = "3200-MAX"
command = ~D, B, F, c
time = 30

[Command]
name = "3200-MAX-AC"
command = ~D, B, $D, F, $D, a+b
time = 30
[Command]
name = "3200-MAX-AC"
command = ~D, B, $D, F, $D, c
time = 30
[Command]
name = "3200-MAX-AC"
command = ~D, B, F, $D, a+b
time = 30
[Command]
name = "3200-MAX-AC"
command = ~D, B, F, $D, c
time = 30

[Command]
name = "3200-MAX-AC"
command = ~D, B, $D, F, $B, a+b
time = 30
[Command]
name = "3200-MAX-AC"
command = ~D, B, $D, F, $B, c
time = 30
[Command]
name = "3200-MAX-AC"
command = ~D, B, F, $B, a+b
time = 30
[Command]
name = "3200-MAX-AC"
command = ~D, B, F, $B, c
time = 30

;----------------------------3156
[Command]
name = "3100-B"
command = ~D, B, $D, F, a
time = 30

[Command]
name = "3100-B"
command = ~D, B, F, a
time = 30

[Command]
name = "3100-B-AC"
command = ~D, B, $D, F, $D, a
time = 30
[Command]
name = "3100-B-AC"
command = ~D, B, F, $D, a
time = 30
[Command]
name = "3100-B-AC"
command = ~D, B, $D, F, $B, a
time = 30
[Command]
name = "3100-B-AC"
command = ~D, B, F, $B, a
time = 30

;----------------------------3156
[Command]
name = "3100-D"
command = ~D, B, $D, F, b
time = 30

[Command]
name = "3100-D"
command = ~D, B, F, b
time = 30

[Command]
name = "3100-D-AC"
command = ~D, B, $D, F, $D, b
time = 30
[Command]
name = "3100-D-AC"
command = ~D, B, F, $D, b
time = 30
[Command]
name = "3100-D-AC"
command = ~D, B, $D, F, $B, b
time = 30
[Command]
name = "3100-D-AC"
command = ~D, B, F, $B, b
time = 30

;----------------------------3006
[Command]
name = "3000-B"
command = ~D, DF, F, D, DF, F, a
time = 30

[Command]
name = "3000-B-AC"
command = ~D, DF, F, D, DF, F, $D, a
time = 30
[Command]
name = "3000-B-AC"
command = ~D, DF, F, D, DF, F, $B, a
time = 30

;----------------------------3056
[Command]
name = "3000-D"
command = ~D, DF, F, D, DF, F, b
time = 30

[Command]
name = "3000-D-AC"
command = ~D, DF, F, D, DF, F, $D, b
time = 30
[Command]
name = "3000-D-AC"
command = ~D, DF, F, D, DF, F, $B, b
time = 30

;-| Special Motions |------------------------------------------------------
;----------------------------1106
[Command]
name = "1100-B"
command=~30$D,$U,a
time = 16

;----------------------------1106
[Command]
name = "1100-D"
command=~30$D,$U,b
time = 16

;----------------------------1206
[Command]
name = "1200-B"
command = ~D, D, a
time = 20

[Command]
name = "1200-B-AC"
command = ~D, D, $F, a
time = 20
[Command]
name = "1200-B-AC"
command = ~D, D, $B, a
time = 20

;----------------------------1256
[Command]
name = "1200-D"
command = ~D, D, b
time = 20

[Command]
name = "1200-D-AC"
command = ~D, D, $F, b
time = 20
[Command]
name = "1200-D-AC"
command = ~D, D, $B, b
time = 20

;----------------------------1306
[Command]
name = "1300-A"
command = ~D, DB, B, x
time = 16

[Command]
name = "1300-A-AC"
command = ~D, DB, B, $D, x
time = 16
[Command]
name = "1300-A-AC"
command = ~D, DB, B, $F, x
time = 16

;----------------------------1356
[Command]
name = "1300-C"
command = ~D, DB, B, y
time = 16

[Command]
name = "1300-C-AC"
command = ~D, DB, B, $D, y
time = 16
[Command]
name = "1300-C-AC"
command = ~D, DB, B, $F, y
time = 16

;----------------------------1006
[Command]
name = "1000-B"
command = ~D, DB, B, a
time = 16

[Command]
name = "1000-B-AC"
command = ~D, DB, B, $D, a
time = 16
[Command]
name = "1000-B-AC"
command = ~D, DB, B, $F, a
time = 16

;----------------------------1056
[Command]
name = "1000-D"
command = ~D, DB, B, b
time = 16

[Command]
name = "1000-D-AC"
command = ~D, DB, B, $D, b
time = 16
[Command]
name = "1000-D-AC"
command = ~D, DB, B, $F, b
time = 16

;----------------------------1406
[Command]
name = "1400-B"
command = ~D, DF, F, a
time = 16

[Command]
name = "1400-B-AC"
command = ~D, DF, F, $D, a
time = 16
[Command]
name = "1400-B-AC"
command = ~D, DF, F, $B, a
time = 16

;----------------------------1456
[Command]
name = "1400-D"
command = ~D, DF, F, b
time = 16

[Command]
name = "1400-D-AC"
command = ~D, DF, F, $D, b
time = 16
[Command]
name = "1400-D-AC"
command = ~D, DF, F, $B, b
time = 16

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10	;8

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10	;8

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = B,U,a+b,y,c+y,s,z,D;x+a
time = 1

[Command]
name = "recovery";Required (do not remove)
command = B,U,a+b,y,c+y,s,z,D;z
time = 1

[Command]
name = "900"
command = x+a

[Command]
name = "900"
command = z

[Command]
name = "ay"
command = a+y

[Command]
name = "CD"
command = b+y

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = a
;time = 1

[Command]
name = "b"
command = b
;time = 1

[Command]
name = "c"
command = c
;time = 1

[Command]
name = "x"
command = x
;time = 1

[Command]
name = "y"
command = y
;time = 1

[Command]
name = "z"
command = z
;time = 1

[Command]
name = "start"
command = s
;time = 1

[Command]
name = "hold_a"
command = /$a
;time = 1
command.buffer.time = 1

[Command]
name = "hold_b"
command = /$b
;time = 1
command.buffer.time = 1

[Command]
name = "hold_c"
command = /$c
;time = 1
command.buffer.time = 1

[Command]
name = "hold_x"
command = /$x
;time = 1
command.buffer.time = 1

[Command]
name = "hold_y"
command = /$y
;time = 1
command.buffer.time = 1

[Command]
name = "hold2_a"
command = ~a
time = 1
command.buffer.time = 1

[Command]
name = "hold2_b"
command = ~b
time = 1
command.buffer.time = 1

[Command]
name = "hold2_x"
command = ~x
time = 1
command.buffer.time = 1

[Command]
name = "hold2_y"
command = ~y
time = 1
command.buffer.time = 1

;-| Hold Dir |--------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
Command = /$F
;time = 1
command.buffer.time = 1

[Command]
name = "holdback";Required (do not remove)
Command = /$B
;time = 1
command.buffer.time = 1

[Command]
name = "holdup";Required (do not remove)
Command = /$U
;time = 1
command.buffer.time = 1

[Command]
name = "holddown";Required (do not remove)
Command = /$D
;time = 1
command.buffer.time = 1

;------------------------ For KOF Series Only
[Command]
name = "holdupfwd"
command = /UF
time = 1

;longjump
[Command]
name = "longjump"
command = D, $U
time = 18

;die
[Command]
name = "die"
command = s, s, s, s
time = 44
buffer.time = 1

[Statedef -1]

;=======================================================================
;-------------------------------------------------------------------------------
;��ư�����ҽ�
[State -2]
type = varset
trigger1 = command != "hold_x"
trigger2 = command = "hold2_x"
fvar(0) = 0
ignorehitpause = 1

[State -2]
type = varset
trigger1 = command != "hold_y"
trigger2 = command = "hold2_y"
fvar(39) = 0
ignorehitpause = 1

[State -2]
type = varset
trigger1 = command != "hold_a"
trigger2 = command = "hold2_a"
var(9) = 0
ignorehitpause = 1

[State -2]
type = varset
trigger1 = command != "hold_b"
trigger2 = command = "hold2_b"
var(56) = 0
ignorehitpause = 1

[State -2]
type = varadd
trigger1 = command = "hold_x"
fvar(0) = 1
ignorehitpause = 1

[State -2]
type = varadd
trigger1 = command = "hold_y"
fvar(39) = 1
ignorehitpause = 1

[State -2]
type = varadd
trigger1 = command = "hold_a"
var(9) = 1
ignorehitpause = 1

[State -2]
type = varadd
trigger1 = command = "hold_b"
var(56) = 1
ignorehitpause = 1

[State -2]
type = varset
trigger1 = fvar(0) < 14
trigger2 = fvar(39) < 14
trigger3 = var(9) < 14
trigger4 = var(56) < 14
var(0) = 1
ignorehitpause = 1

[State -2]
type = varset
trigger1 = fvar(0) >= 14
trigger2 = fvar(39) >= 14
trigger3 = var(9) >= 14
trigger4 = var(56) >= 14
var(0) = 0
ignorehitpause = 1

;=======================================================================
;2k2��� ĵ������1
[State -2]
type = varset
triggerall = stateno != [200,250]
triggerall = stateno != [400,500]
triggerall = stateno != [750,999]
trigger1 = movecontact = 1 && (HitDefAttr = SCA, NA, SA, HA)
trigger2 = movecontact = 1 && (HitDefAttr = SCA, NP, SP, HP)
var(21) = 2
ignorehitpause = 1
persistent = 0

[State -2]
type = VarAdd
trigger1 = var(21) >= 1
var(21) = -1
ignorehitpause = 1

[State -2]
type = varset
trigger1 = var(21) > 2
var(21) =2
ignorehitpause = 1

;2k2��� ĵ������2
[State -2]
type = varset
trigger1 = movecontact = 1 && (HitDefAttr = SCA, NA, SA, HA)
trigger2 = movecontact = 1 && (HitDefAttr = SCA, NP, SP, HP)
var(23) = 4
ignorehitpause = 1
persistent = 0

[State -2]
type = VarAdd
trigger1 = var(23) >= 1
var(23) = -1
ignorehitpause = 1

[State -2]
type = varset
trigger1 = var(23) > 4
var(23) =4
ignorehitpause = 1

;ĵ������ �⺻����
[State -2]
type = varset
trigger1 = movecontact = 1 && (HitDefAttr = SCA, NA, SA, HA)
trigger2 = movecontact = 1 && (HitDefAttr = SCA, NP, SP, HP)
var(24) = 4
ignorehitpause = 1
persistent = 0

[State -2]
type = VarAdd
trigger1 = var(24) >= 1
var(24) = -1
ignorehitpause = 1

[State -2]
type = varset
trigger1 = var(24) > 4
var(24) =4
ignorehitpause = 1

;=======================================================================
;---------------------------------------------------------------------------
;ĵ���� ��½�ϋ�
[State -1]
type = varset
triggerall = var(3) > -128 || (power >= 1000 && stateno != [0,999])
trigger1 = stateno = 200 || stateno = 205 || stateno = 210 || stateno = 215 || stateno = 230
trigger2 = stateno = 235 || stateno = 240 || stateno = 245 || stateno = 250 || stateno = 400
trigger3 = stateno = 410 || stateno = 430 || stateno = 440
trigger4 = var(21) > 0
trigger5 = (stateno = [600,605]) || (stateno = [610,615]) || (stateno = [630,635])
trigger6 = (stateno = [640,645]) || (stateno = [650,655])
var(22) = 1
ignorehitpause = 1
persistent = 0
;---------------------------------------------------------------------------
;ĵ���� ��½�Ÿ���������(����)
[State -1]
type = varset
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = AnimElem = 2, >= 1 && AnimElem = 2, <= 4 && stateno = 205
trigger3 = AnimElem = 4, >= 1 && AnimElem = 4, <= 3 && stateno = 215
trigger4 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 235
trigger5 = AnimElem = 6, >= 1 && AnimElem = 6, <= 2 && stateno = 235
trigger6 = AnimElem = 5, >= 1 && AnimElem = 5, <= 5 && stateno = 245
trigger7 = AnimElem = 7, >= 1 && AnimElem = 7, <= 3 && stateno = 245
trigger8 = AnimElem = 9, >= 1 && AnimElem = 10, <= 7 && stateno = 250
trigger9 = AnimElem = 2, >= 1 && AnimElem = 2, <= 3 && stateno = 400
trigger10 = AnimElem = 5, >= 1 && AnimElem = 6, <= 3 && stateno = 410
trigger11 = AnimElem = 3, >= 1 && AnimElem = 3, <= 7 && stateno = 440
trigger12 = var(23) > 0 && stateno = 750
var(22) = 0
ignorehitpause = 1
persistent = 0
;---------------------------------------------------------------------------
;ĵ���� ��½�Ÿ���������(����)
[State -1]
type = varset
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(24) > 0 && stateno = 600 || stateno = 601 || stateno = 605
trigger3 = stateno = 105
var(22) = 0
ignorehitpause = 1
persistent = 0
;===========================================================================
;===========================================================================
;2k2 mode
[State -1]
type = ChangeState
value = 1991
triggerall = power >= 1000 && var(3) < 1 && statetype != A && var(55) = 0
triggerall = command = "c" || command = "ay"
trigger1 = ctrl || stateno = 100

;===========================================================================
;2k2 mode ĵ��
[State -1]
type = ChangeState
value = 1990
triggerall = power >= 2000 && var(3) < 1 && statetype != A
triggerall = command = "c" || command = "ay"
trigger1 = var(24) > 0 && stateno != 1990 && (stateno = [0,799])

;===============================================================================================================
;===============================================================================================================
;���ΰŸ� ��Ȳ�� MAX2
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3300
triggerall = ifelse(fvar(37) = 0,command = "3200-MAX",command = "3200-MAX-R")
triggerall = ifelse(fvar(37) = 0,command != "3200-MAX-AC",command != "3200-MAX-R-AC")
triggerall = var(0)
triggerall = statetype != A && ((power >= 1000 && var(3) > 0) && life <= 250 || (power >= 20000 && var(3) > 0) && var(55) = 0)
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = AnimElem = 2, >= 1 && AnimElem = 2, <= 4 && stateno = 205
trigger3 = AnimElem = 4, >= 1 && AnimElem = 4, <= 3 && stateno = 215
trigger4 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 235
trigger5 = AnimElem = 6, >= 1 && AnimElem = 6, <= 2 && stateno = 235
trigger6 = AnimElem = 5, >= 1 && AnimElem = 5, <= 5 && stateno = 245
trigger7 = AnimElem = 7, >= 1 && AnimElem = 7, <= 3 && stateno = 245
trigger8 = AnimElem = 9, >= 1 && AnimElem = 10, <= 7 && stateno = 250
trigger9 = AnimElem = 2, >= 1 && AnimElem = 2, <= 3 && stateno = 400
trigger10 = AnimElem = 5, >= 1 && AnimElem = 6, <= 3 && stateno = 410
trigger11 = AnimElem = 3, >= 1 && AnimElem = 3, <= 7 && stateno = 440
trigger12 = var(23) > 0 && stateno = 750
;---------------------------------------------------------------------------
;����ĵ�� ���ΰŸ� ��Ȳ�� MAX2
[State -1]
type = ChangeState
value = 3300
triggerall = ifelse(fvar(37) = 0,command = "3200-MAX",command = "3200-MAX-R")
triggerall = ifelse(fvar(37) = 0,command != "3200-MAX-AC",command != "3200-MAX-R-AC")
triggerall = var(0)
triggerall = statetype != A && ((power >= 2000 && var(3) > 0) && life <= 250 || (power >= 30000 && var(3) > 0)) && (stateno != [3000,3500])
trigger1 = var(23) > 0 && (stateno = 1010 || stateno = 1150 || stateno = 1200)
trigger2 = var(23) > 0 && ((stateno = 1320 && time <= 24 && time >= 22) || (stateno = 1350 && time <= 22 && time >= 21))
trigger3 = var(23) > 0 && stateno = 1370 && AnimElem = 7, >= 1 && AnimElem = 7, <= 4

;---------------------------------------------------------------------------
;��Ȳ��MAX
[State -1]
type = ChangeState
value = 3200
triggerall = (P2dist X > 0 && command = "3200-MAX") || (P2dist X < 0 && command = "3200-MAX-R")
triggerall = (P2dist X > 0 && command != "3200-MAX-AC") || (P2dist X < 0 && command != "3200-MAX-R-AC")
triggerall = var(0)
triggerall = statetype = A && (power >= 1000 && var(3) > 0) && var(55) = 0
trigger1 = (ctrl && statetype = A) || (stateno = 105 && time > 3)
trigger2 = var(24) > 0 && (stateno = 600 || stateno = 601 || stateno = 605)
;---------------------------------------------------------------------------
;����ĵ�� ��Ȳ��MAX
[State -1]
type = ChangeState
value = 3200
triggerall = (P2dist X > 0 && command = "3200-MAX") || (P2dist X < 0 && command = "3200-MAX-R")
triggerall = (P2dist X > 0 && command != "3200-MAX-AC") || (P2dist X < 0 && command != "3200-MAX-R-AC")
triggerall = var(0)
triggerall = statetype = A && (power >= 2000 && var(3) > 0) && (stateno != [3000,3500])
trigger1 = var(23) > 0 && (stateno = 1010 || stateno = 1150 || stateno = 1200)
trigger2 = var(23) > 0 && ((stateno = 1320 && time <= 24 && time >= 22) || (stateno = 1350 && time <= 22 && time >= 21))
trigger3 = var(23) > 0 && stateno = 1370 && AnimElem = 7, >= 1 && AnimElem = 7, <= 4

;---------------------------------------------------------------------------
;��Ȳ��õ�� ��
[State -1]
type = ChangeState
value = 3000
triggerall = ifelse(fvar(37) = 0,command = "3000-B",command = "3000-B-R")
triggerall = ifelse(fvar(37) = 0,command != "3000-B-AC",command != "3000-B-R-AC")
triggerall = var(0)
triggerall = statetype != A && (power >= 1000 || var(3) > 0) && var(55) = 0
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = AnimElem = 2, >= 1 && AnimElem = 2, <= 4 && stateno = 205
trigger3 = AnimElem = 4, >= 1 && AnimElem = 4, <= 3 && stateno = 215
trigger4 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 235
trigger5 = AnimElem = 6, >= 1 && AnimElem = 6, <= 2 && stateno = 235
trigger6 = AnimElem = 5, >= 1 && AnimElem = 5, <= 5 && stateno = 245
trigger7 = AnimElem = 7, >= 1 && AnimElem = 7, <= 3 && stateno = 245
trigger8 = AnimElem = 9, >= 1 && AnimElem = 10, <= 7 && stateno = 250
trigger9 = AnimElem = 2, >= 1 && AnimElem = 2, <= 3 && stateno = 400
trigger10 = AnimElem = 5, >= 1 && AnimElem = 6, <= 3 && stateno = 410
trigger11 = AnimElem = 3, >= 1 && AnimElem = 3, <= 7 && stateno = 440
trigger12 = var(23) > 0 && stateno = 750
;---------------------------------------------------------------------------
;����ĵ�� ��Ȳ��õ�� ��
[State -1]
type = ChangeState
value = 3000
triggerall = ifelse(fvar(37) = 0,command = "3000-B",command = "3000-B-R")
triggerall = ifelse(fvar(37) = 0,command != "3000-B-AC",command != "3000-B-R-AC")
triggerall = var(0)
triggerall = statetype != A && (power >= 2000 || power >= 1000 && var(3) > 0) && (stateno != [3000,3500])
trigger1 = var(23) > 0 && (stateno = 1010 || stateno = 1150 || stateno = 1200)
trigger2 = var(23) > 0 && ((stateno = 1320 && time <= 24 && time >= 22) || (stateno = 1350 && time <= 22 && time >= 21))
trigger3 = var(23) > 0 && stateno = 1370 && AnimElem = 7, >= 1 && AnimElem = 7, <= 4

;---------------------------------------------------------------------------
;��Ȳ��õ�� ��
[State -1]
type = ChangeState
value = 3050
triggerall = ifelse(fvar(37) = 0,command = "3000-D",command = "3000-D-R")
triggerall = ifelse(fvar(37) = 0,command != "3000-D-AC",command != "3000-D-R-AC")
triggerall = var(0)
triggerall = statetype != A && (power >= 1000 || var(3) > 0) && var(55) = 0
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = AnimElem = 2, >= 1 && AnimElem = 2, <= 4 && stateno = 205
trigger3 = AnimElem = 4, >= 1 && AnimElem = 4, <= 3 && stateno = 215
trigger4 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 235
trigger5 = AnimElem = 6, >= 1 && AnimElem = 6, <= 2 && stateno = 235
trigger6 = AnimElem = 5, >= 1 && AnimElem = 5, <= 5 && stateno = 245
trigger7 = AnimElem = 7, >= 1 && AnimElem = 7, <= 3 && stateno = 245
trigger8 = AnimElem = 9, >= 1 && AnimElem = 10, <= 7 && stateno = 250
trigger9 = AnimElem = 2, >= 1 && AnimElem = 2, <= 3 && stateno = 400
trigger10 = AnimElem = 5, >= 1 && AnimElem = 6, <= 3 && stateno = 410
trigger11 = AnimElem = 3, >= 1 && AnimElem = 3, <= 7 && stateno = 440
trigger12 = var(23) > 0 && stateno = 750
;---------------------------------------------------------------------------
;����ĵ�� ��Ȳ��õ�� ��
[State -1]
type = ChangeState
value = 3050
triggerall = ifelse(fvar(37) = 0,command = "3000-D",command = "3000-D-R")
triggerall = ifelse(fvar(37) = 0,command != "3000-D-AC",command != "3000-D-R-AC")
triggerall = var(0)
triggerall = statetype != A && (power >= 2000 || power >= 1000 && var(3) > 0) && (stateno != [3000,3500])
trigger1 = var(23) > 0 && (stateno = 1010 || stateno = 1150 || stateno = 1200)
trigger2 = var(23) > 0 && ((stateno = 1320 && time <= 24 && time >= 22) || (stateno = 1350 && time <= 22 && time >= 21))
trigger3 = var(23) > 0 && stateno = 1370 && AnimElem = 7, >= 1 && AnimElem = 7, <= 4

;---------------------------------------------------------------------------
;��Ȳ�� ��
[State -1]
type = ChangeState
value = 3100
triggerall = ifelse(fvar(37) = 0,command = "3100-B",command = "3100-B-R")
triggerall = ifelse(fvar(37) = 0,command != "3100-B-AC",command != "3100-B-R-AC")
triggerall = var(0)
triggerall = statetype != A && (power >= 1000 || var(3) > 0) && var(55) = 0
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = AnimElem = 2, >= 1 && AnimElem = 2, <= 4 && stateno = 205
trigger3 = AnimElem = 4, >= 1 && AnimElem = 4, <= 3 && stateno = 215
trigger4 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 235
trigger5 = AnimElem = 6, >= 1 && AnimElem = 6, <= 2 && stateno = 235
trigger6 = AnimElem = 5, >= 1 && AnimElem = 5, <= 5 && stateno = 245
trigger7 = AnimElem = 7, >= 1 && AnimElem = 7, <= 3 && stateno = 245
trigger8 = AnimElem = 9, >= 1 && AnimElem = 10, <= 7 && stateno = 250
trigger9 = AnimElem = 2, >= 1 && AnimElem = 2, <= 3 && stateno = 400
trigger10 = AnimElem = 5, >= 1 && AnimElem = 6, <= 3 && stateno = 410
trigger11 = AnimElem = 3, >= 1 && AnimElem = 3, <= 7 && stateno = 440
trigger12 = var(23) > 0 && stateno = 750
;---------------------------------------------------------------------------
;����ĵ�� ��Ȳ�� ��
[State -1]
type = ChangeState
value = 3100
triggerall = ifelse(fvar(37) = 0,command = "3100-B",command = "3100-B-R")
triggerall = ifelse(fvar(37) = 0,command != "3100-B-AC",command != "3100-B-R-AC")
triggerall = var(0)
triggerall = statetype != A && (power >= 2000 || power >= 1000 && var(3) > 0) && (stateno != [3000,3500])
trigger1 = var(23) > 0 && (stateno = 1010 || stateno = 1150 || stateno = 1200)
trigger2 = var(23) > 0 && ((stateno = 1320 && time <= 24 && time >= 22) || (stateno = 1350 && time <= 22 && time >= 21))
trigger3 = var(23) > 0 && stateno = 1370 && AnimElem = 7, >= 1 && AnimElem = 7, <= 4

;---------------------------------------------------------------------------
;��Ȳ�� ��
[State -1]
type = ChangeState
value = 3150
triggerall = ifelse(fvar(37) = 0,command = "3100-D",command = "3100-D-R")
triggerall = ifelse(fvar(37) = 0,command != "3100-D-AC",command != "3100-D-R-AC")
triggerall = var(0)
triggerall = statetype != A && (power >= 1000 || var(3) > 0) && var(55) = 0
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = AnimElem = 2, >= 1 && AnimElem = 2, <= 4 && stateno = 205
trigger3 = AnimElem = 4, >= 1 && AnimElem = 4, <= 3 && stateno = 215
trigger4 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 235
trigger5 = AnimElem = 6, >= 1 && AnimElem = 6, <= 2 && stateno = 235
trigger6 = AnimElem = 5, >= 1 && AnimElem = 5, <= 5 && stateno = 245
trigger7 = AnimElem = 7, >= 1 && AnimElem = 7, <= 3 && stateno = 245
trigger8 = AnimElem = 9, >= 1 && AnimElem = 10, <= 7 && stateno = 250
trigger9 = AnimElem = 2, >= 1 && AnimElem = 2, <= 3 && stateno = 400
trigger10 = AnimElem = 5, >= 1 && AnimElem = 6, <= 3 && stateno = 410
trigger11 = AnimElem = 3, >= 1 && AnimElem = 3, <= 7 && stateno = 440
trigger12 = var(23) > 0 && stateno = 750
;---------------------------------------------------------------------------
;����ĵ�� ��Ȳ�� ��
[State -1]
type = ChangeState
value = 3150
triggerall = ifelse(fvar(37) = 0,command = "3100-D",command = "3100-D-R")
triggerall = ifelse(fvar(37) = 0,command != "3100-D-AC",command != "3100-D-R-AC")
triggerall = var(0)
triggerall = statetype != A && (power >= 2000 || power >= 1000 && var(3) > 0) && (stateno != [3000,3500])
trigger1 = var(23) > 0 && (stateno = 1010 || stateno = 1150 || stateno = 1200)
trigger2 = var(23) > 0 && ((stateno = 1320 && time <= 24 && time >= 22) || (stateno = 1350 && time <= 22 && time >= 21))
trigger3 = var(23) > 0 && stateno = 1370 && AnimElem = 7, >= 1 && AnimElem = 7, <= 4

;===========================================================================
;---------------------------------------------------------------------------
;���� ��
[State -1]
type = ChangeState
value = 1100
triggerall = command = "1100-B"
triggerall = var(0)
triggerall = statetype != A && var(55) = 0
trigger1 = ctrl || (stateno = 100 && time > 3) || stateno = 40
trigger2 = AnimElem = 2, >= 1 && AnimElem = 2, <= 4 && stateno = 205
trigger3 = AnimElem = 4, >= 1 && AnimElem = 4, <= 3 && stateno = 215
trigger4 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 235
trigger5 = AnimElem = 6, >= 1 && AnimElem = 6, <= 2 && stateno = 235
trigger6 = AnimElem = 5, >= 1 && AnimElem = 5, <= 5 && stateno = 245
trigger7 = AnimElem = 7, >= 1 && AnimElem = 7, <= 3 && stateno = 245
trigger8 = AnimElem = 9, >= 1 && AnimElem = 10, <= 7 && stateno = 250
trigger9 = AnimElem = 2, >= 1 && AnimElem = 2, <= 3 && stateno = 400
trigger10 = AnimElem = 5, >= 1 && AnimElem = 6, <= 3 && stateno = 410
trigger11 = AnimElem = 3, >= 1 && AnimElem = 3, <= 7 && stateno = 440
trigger12 = var(23) > 0 && stateno = 750
;---------------------------------------------------------------------------
;���� ��-2k2 mode
[State -1]
type = ChangeState
value = 1100
triggerall = command = "1100-B"
triggerall = var(0)
triggerall = (stateno != [1100,1199]) && (stateno != [3000,9999])
triggerall = (var(3) > -128 || (power >= 10009 && stateno != [0,999])) && (statetype != A && (stateno != [3000,3500]))
trigger1 = stateno = 200 || stateno = 205 || stateno = 210 || stateno = 215 || stateno = 230
trigger2 = stateno = 235 || stateno = 240 || stateno = 245 || stateno = 250 || stateno = 400
trigger3 = stateno = 410 || stateno = 430 || stateno = 440
trigger4 = var(21) > 0

;---------------------------------------------------------------------------
;���� ��
[State -1]
type = ChangeState
value = 1150
triggerall = command = "1100-D"
triggerall = var(0)
triggerall = statetype != A && var(55) = 0
trigger1 = ctrl || (stateno = 100 && time > 3) || stateno = 40
trigger2 = AnimElem = 2, >= 1 && AnimElem = 2, <= 4 && stateno = 205
trigger3 = AnimElem = 4, >= 1 && AnimElem = 4, <= 3 && stateno = 215
trigger4 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 235
trigger5 = AnimElem = 6, >= 1 && AnimElem = 6, <= 2 && stateno = 235
trigger6 = AnimElem = 5, >= 1 && AnimElem = 5, <= 5 && stateno = 245
trigger7 = AnimElem = 7, >= 1 && AnimElem = 7, <= 3 && stateno = 245
trigger8 = AnimElem = 9, >= 1 && AnimElem = 10, <= 7 && stateno = 250
trigger9 = AnimElem = 2, >= 1 && AnimElem = 2, <= 3 && stateno = 400
trigger10 = AnimElem = 5, >= 1 && AnimElem = 6, <= 3 && stateno = 410
trigger11 = AnimElem = 3, >= 1 && AnimElem = 3, <= 7 && stateno = 440
trigger12 = var(23) > 0 && stateno = 750
;---------------------------------------------------------------------------
;���� ��-2k2 mode
[State -1]
type = ChangeState
value = 1150
triggerall = command = "1100-D"
triggerall = var(0)
triggerall = (stateno != [1100,1199]) && (stateno != [3000,9999])
triggerall = (var(3) > -128 || (power >= 10009 && stateno != [0,999])) && (statetype != A && (stateno != [3000,3500]))
trigger1 = stateno = 200 || stateno = 205 || stateno = 210 || stateno = 215 || stateno = 230
trigger2 = stateno = 235 || stateno = 240 || stateno = 245 || stateno = 250 || stateno = 400
trigger3 = stateno = 410 || stateno = 430 || stateno = 440
trigger4 = var(21) > 0

;---------------------------------------------------------------------------
;�бⰢ ��
[State -1]
type = ChangeState
value = 1200
triggerall = command = "1200-B"
triggerall = command != "1200-B-AC"
triggerall = var(0)
triggerall = statetype != A && var(55) = 0
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = AnimElem = 2, >= 1 && AnimElem = 2, <= 4 && stateno = 205
trigger3 = AnimElem = 4, >= 1 && AnimElem = 4, <= 3 && stateno = 215
trigger4 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 235
trigger5 = AnimElem = 6, >= 1 && AnimElem = 6, <= 2 && stateno = 235
trigger6 = AnimElem = 5, >= 1 && AnimElem = 5, <= 5 && stateno = 245
trigger7 = AnimElem = 7, >= 1 && AnimElem = 7, <= 3 && stateno = 245
trigger8 = AnimElem = 9, >= 1 && AnimElem = 10, <= 7 && stateno = 250
trigger9 = AnimElem = 2, >= 1 && AnimElem = 2, <= 3 && stateno = 400
trigger10 = AnimElem = 5, >= 1 && AnimElem = 6, <= 3 && stateno = 410
trigger11 = AnimElem = 3, >= 1 && AnimElem = 3, <= 7 && stateno = 440
trigger12 = var(23) > 0 && stateno = 750
;---------------------------------------------------------------------------
;�бⰢ ��-2k2 mode
[State -1]
type = ChangeState
value = 1200
triggerall = command = "1200-B"
triggerall = command != "1200-B-AC"
triggerall = var(0)
triggerall = (stateno != [1200,1299]) && (stateno != [3000,9999])
triggerall = (var(3) > -128 || (power >= 10009 && stateno != [0,999])) && (statetype != A && (stateno != [3000,3500]))
trigger1 = stateno = 200 || stateno = 205 || stateno = 210 || stateno = 215 || stateno = 230
trigger2 = stateno = 235 || stateno = 240 || stateno = 245 || stateno = 250 || stateno = 400
trigger3 = stateno = 410 || stateno = 430 || stateno = 440
trigger4 = var(21) > 0

;---------------------------------------------------------------------------
;�бⰢ ��
[State -1]
type = ChangeState
value = 1250
triggerall = command = "1200-D"
triggerall = command != "1200-D-AC"
triggerall = var(0)
triggerall = statetype != A && var(55) = 0
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = AnimElem = 2, >= 1 && AnimElem = 2, <= 4 && stateno = 205
trigger3 = AnimElem = 4, >= 1 && AnimElem = 4, <= 3 && stateno = 215
trigger4 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 235
trigger5 = AnimElem = 6, >= 1 && AnimElem = 6, <= 2 && stateno = 235
trigger6 = AnimElem = 5, >= 1 && AnimElem = 5, <= 5 && stateno = 245
trigger7 = AnimElem = 7, >= 1 && AnimElem = 7, <= 3 && stateno = 245
trigger8 = AnimElem = 9, >= 1 && AnimElem = 10, <= 7 && stateno = 250
trigger9 = AnimElem = 2, >= 1 && AnimElem = 2, <= 3 && stateno = 400
trigger10 = AnimElem = 5, >= 1 && AnimElem = 6, <= 3 && stateno = 410
trigger11 = AnimElem = 3, >= 1 && AnimElem = 3, <= 7 && stateno = 440
trigger12 = var(23) > 0 && stateno = 750
;---------------------------------------------------------------------------
;�бⰢ ��-2k2 mode
[State -1]
type = ChangeState
value = 1250
triggerall = command = "1200-D"
triggerall = command != "1200-D-AC"
triggerall = var(0)
triggerall = (stateno != [1200,1299]) && (stateno != [3000,9999])
triggerall = (var(3) > -128 || (power >= 10009 && stateno != [0,999])) && (statetype != A && (stateno != [3000,3500]))
trigger1 = stateno = 200 || stateno = 205 || stateno = 210 || stateno = 215 || stateno = 230
trigger2 = stateno = 235 || stateno = 240 || stateno = 245 || stateno = 250 || stateno = 400
trigger3 = stateno = 410 || stateno = 430 || stateno = 440
trigger4 = var(21) > 0

;---------------------------------------------------------------------------
;�￬�� ��
[State -1]
type = ChangeState
value = 1300
triggerall = ifelse(fvar(37) = 0,command = "1300-A",command = "1300-A-R")
triggerall = ifelse(fvar(37) = 0,command != "1300-A-AC",command != "1300-A-R-AC")
triggerall = var(0)
triggerall = statetype != A && var(55) = 0
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = AnimElem = 2, >= 1 && AnimElem = 2, <= 4 && stateno = 205
trigger3 = AnimElem = 4, >= 1 && AnimElem = 4, <= 3 && stateno = 215
trigger4 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 235
trigger5 = AnimElem = 6, >= 1 && AnimElem = 6, <= 2 && stateno = 235
trigger6 = AnimElem = 5, >= 1 && AnimElem = 5, <= 5 && stateno = 245
trigger7 = AnimElem = 7, >= 1 && AnimElem = 7, <= 3 && stateno = 245
trigger8 = AnimElem = 9, >= 1 && AnimElem = 10, <= 7 && stateno = 250
trigger9 = AnimElem = 2, >= 1 && AnimElem = 2, <= 3 && stateno = 400
trigger10 = AnimElem = 5, >= 1 && AnimElem = 6, <= 3 && stateno = 410
trigger11 = AnimElem = 3, >= 1 && AnimElem = 3, <= 7 && stateno = 440
trigger12 = var(23) > 0 && stateno = 750
;---------------------------------------------------------------------------
;�￬�� ��-2k2 mode
[State -1]
type = ChangeState
value = 1300
triggerall = ifelse(fvar(37) = 0,command = "1300-A",command = "1300-A-R")
triggerall = ifelse(fvar(37) = 0,command != "1300-A-AC",command != "1300-A-R-AC")
triggerall = var(0)
triggerall = (stateno != [1300,1399]) && (stateno != [3000,9999])
triggerall = (var(3) > -128 || (power >= 10009 && stateno != [0,999])) && (statetype != A && (stateno != [3000,3500]))
trigger1 = stateno = 200 || stateno = 205 || stateno = 210 || stateno = 215 || stateno = 230
trigger2 = stateno = 235 || stateno = 240 || stateno = 245 || stateno = 250 || stateno = 400
trigger3 = stateno = 410 || stateno = 430 || stateno = 440
trigger4 = var(21) > 0

;---------------------------------------------------------------------------
;�￬�� ��
[State -1]
type = ChangeState
value = 1330
triggerall = ifelse(fvar(37) = 0,command = "1300-C",command = "1300-C-R")
triggerall = ifelse(fvar(37) = 0,command != "1300-C-AC",command != "1300-C-R-AC")
triggerall = var(0)
triggerall = statetype != A && var(55) = 0
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = AnimElem = 2, >= 1 && AnimElem = 2, <= 4 && stateno = 205
trigger3 = AnimElem = 4, >= 1 && AnimElem = 4, <= 3 && stateno = 215
trigger4 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 235
trigger5 = AnimElem = 6, >= 1 && AnimElem = 6, <= 2 && stateno = 235
trigger6 = AnimElem = 5, >= 1 && AnimElem = 5, <= 5 && stateno = 245
trigger7 = AnimElem = 7, >= 1 && AnimElem = 7, <= 3 && stateno = 245
trigger8 = AnimElem = 9, >= 1 && AnimElem = 10, <= 7 && stateno = 250
trigger9 = AnimElem = 2, >= 1 && AnimElem = 2, <= 3 && stateno = 400
trigger10 = AnimElem = 5, >= 1 && AnimElem = 6, <= 3 && stateno = 410
trigger11 = AnimElem = 3, >= 1 && AnimElem = 3, <= 7 && stateno = 440
trigger12 = var(23) > 0 && stateno = 750
;---------------------------------------------------------------------------
;�￬�� ��-2k2 mode
[State -1]
type = ChangeState
value = 1330
triggerall = ifelse(fvar(37) = 0,command = "1300-C",command = "1300-C-R")
triggerall = ifelse(fvar(37) = 0,command != "1300-C-AC",command != "1300-C-R-AC")
triggerall = var(0)
triggerall = (stateno != [1300,1399]) && (stateno != [3000,9999])
triggerall = (var(3) > -128 || (power >= 10009 && stateno != [0,999])) && (statetype != A && (stateno != [3000,3500]))
trigger1 = stateno = 200 || stateno = 205 || stateno = 210 || stateno = 215 || stateno = 230
trigger2 = stateno = 235 || stateno = 240 || stateno = 245 || stateno = 250 || stateno = 400
trigger3 = stateno = 410 || stateno = 430 || stateno = 440
trigger4 = var(21) > 0

;---------------------------------------------------------------------------
;�ݿ��� ��
[State -1]
type = ChangeState
value = 1000
triggerall = ifelse(fvar(37) = 0,command = "1000-B",command = "1000-B-R")
triggerall = ifelse(fvar(37) = 0,command != "1000-B-AC",command != "1000-B-R-AC")
triggerall = var(0)
triggerall = statetype != A && var(55) = 0
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = AnimElem = 2, >= 1 && AnimElem = 2, <= 4 && stateno = 205
trigger3 = AnimElem = 4, >= 1 && AnimElem = 4, <= 3 && stateno = 215
trigger4 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 235
trigger5 = AnimElem = 6, >= 1 && AnimElem = 6, <= 2 && stateno = 235
trigger6 = AnimElem = 5, >= 1 && AnimElem = 5, <= 5 && stateno = 245
trigger7 = AnimElem = 7, >= 1 && AnimElem = 7, <= 3 && stateno = 245
trigger8 = AnimElem = 9, >= 1 && AnimElem = 10, <= 7 && stateno = 250
trigger9 = AnimElem = 2, >= 1 && AnimElem = 2, <= 3 && stateno = 400
trigger10 = AnimElem = 5, >= 1 && AnimElem = 6, <= 3 && stateno = 410
trigger11 = AnimElem = 3, >= 1 && AnimElem = 3, <= 7 && stateno = 440
trigger12 = var(23) > 0 && stateno = 750
;---------------------------------------------------------------------------
;�ݿ��� ��-2k2 mode
[State -1]
type = ChangeState
value = 1000
triggerall = ifelse(fvar(37) = 0,command = "1000-B",command = "1000-B-R")
triggerall = ifelse(fvar(37) = 0,command != "1000-B-AC",command != "1000-B-R-AC")
triggerall = var(0)
triggerall = (stateno != [1000,1099]) && (stateno != [3000,9999])
triggerall = (var(3) > -128 || (power >= 10009 && stateno != [0,999])) && (statetype != A && (stateno != [3000,3500]))
trigger1 = stateno = 200 || stateno = 205 || stateno = 210 || stateno = 215 || stateno = 230
trigger2 = stateno = 235 || stateno = 240 || stateno = 245 || stateno = 250 || stateno = 400
trigger3 = stateno = 410 || stateno = 430 || stateno = 440
trigger4 = var(21) > 0

;---------------------------------------------------------------------------
;�ݿ��� ��
[State -1]
type = ChangeState
value = 1050
triggerall = ifelse(fvar(37) = 0,command = "1000-D",command = "1000-D-R")
triggerall = ifelse(fvar(37) = 0,command != "1000-D-AC",command != "1000-D-R-AC")
triggerall = var(0)
triggerall = statetype != A && var(55) = 0
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = AnimElem = 2, >= 1 && AnimElem = 2, <= 4 && stateno = 205
trigger3 = AnimElem = 4, >= 1 && AnimElem = 4, <= 3 && stateno = 215
trigger4 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 235
trigger5 = AnimElem = 6, >= 1 && AnimElem = 6, <= 2 && stateno = 235
trigger6 = AnimElem = 5, >= 1 && AnimElem = 5, <= 5 && stateno = 245
trigger7 = AnimElem = 7, >= 1 && AnimElem = 7, <= 3 && stateno = 245
trigger8 = AnimElem = 9, >= 1 && AnimElem = 10, <= 7 && stateno = 250
trigger9 = AnimElem = 2, >= 1 && AnimElem = 2, <= 3 && stateno = 400
trigger10 = AnimElem = 5, >= 1 && AnimElem = 6, <= 3 && stateno = 410
trigger11 = AnimElem = 3, >= 1 && AnimElem = 3, <= 7 && stateno = 440
trigger12 = var(23) > 0 && stateno = 750
;---------------------------------------------------------------------------
;�ݿ��� ��-2k2 mode
[State -1]
type = ChangeState
value = 1050
triggerall = ifelse(fvar(37) = 0,command = "1000-D",command = "1000-D-R")
triggerall = ifelse(fvar(37) = 0,command != "1000-D-AC",command != "1000-D-R-AC")
triggerall = var(0)
triggerall = (stateno != [1000,1099]) && (stateno != [3000,9999])
triggerall = (var(3) > -128 || (power >= 10009 && stateno != [0,999])) && (statetype != A && (stateno != [3000,3500]))
trigger1 = stateno = 200 || stateno = 205 || stateno = 210 || stateno = 215 || stateno = 230
trigger2 = stateno = 235 || stateno = 240 || stateno = 245 || stateno = 250 || stateno = 400
trigger3 = stateno = 410 || stateno = 430 || stateno = 440
trigger4 = var(21) > 0

;---------------------------------------------------------------------------
;��� �� ����
[State -1]
type = ChangeState
value = 1400
triggerall = (P2dist X > 0 && command = "1400-B") || (P2dist X < 0 && command = "1400-B-R")
triggerall = (P2dist X > 0 && command != "1400-B-AC") || (P2dist X < 0 && command != "1400-B-R-AC")
triggerall = var(0)
triggerall = Pos Y <= -58 && statetype = A && var(55) = 0
trigger1 = (ctrl && statetype = A) || (stateno = 105 && time > 3)
trigger2 = var(24) > 0 && stateno = 600 || stateno = 601 || stateno = 605

;---------------------------------------------------------------------------
;��� �� ����
[State -1]
type = ChangeState
value = 1450
triggerall = (P2dist X > 0 && command = "1400-D") || (P2dist X < 0 && command = "1400-D-R")
triggerall = (P2dist X > 0 && command != "1400-D-AC") || (P2dist X < 0 && command != "1400-D-R-AC")
triggerall = var(0)
triggerall = Pos Y <= -58 && statetype = A && var(55) = 0
trigger1 = (ctrl && statetype = A) || (stateno = 105 && time > 3)
trigger2 = var(24) > 0 && stateno = 600 || stateno = 601 || stateno = 605

;---------------------------------------------------------------------------
;��� �߰�Ÿ
[State -1]
type = ChangeState
value = 1440
triggerall = var(0)
trigger1 = command = "b" && statetype = A
trigger1 = stateno = 1420 || stateno = 1470

;===========================================================================
;---------------------------------------------------------------------

;�ձ�����
[State -1]
type = ChangeState
value = 900
triggerall = command = "900"	;(var(26) = [900,905])
triggerall = Command != "holdback" && StateType = S && stateno != 100 && (command != "holddown")
trigger1 = ctrl

;�޸��鼭 �ձ�����
[State -1]
type = ChangeState
value = 910
triggerall = command = "900"	;(var(26) = [900,905])
triggerall = Command != "holdback" && StateType = S && (command != "holddown")
trigger1 = (stateno = 100 && time > 3)

;ĵ�� ������
[State -1]
type = ChangeState
value = 930
triggerall = command = "900"	;(var(26) = [900,905]) || command = "900"
triggerall = statetype != A && power >= 1000
triggerall = stateno = [0,799]
trigger1 = var(24) > 0

;---------------------------------------------------------------------
;�ڱ�����
[State -1]
type = ChangeState
value = 950
triggerall = command = "900"	;(var(26) = [900,905])
triggerall = Command != "holdfwd" && StateType = S && (command != "holddown")
trigger1 = Ctrl

;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF" && (stateno != [100,101]) && statetype != A && (ctrl || stateno = 1990)
;trigger1 = (var(26) = [100,105]) && (stateno != [100,101]) && statetype != A && (ctrl || stateno = 1990)

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB" && statetype != A && ctrl
;trigger1 = (var(26) = [110,115]) && statetype != A && ctrl

;---------------------------------------------------------------------------
;C���
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "y" && StateNo != 100 && StateType = S && Ctrl
;triggerall = (var(26) = [210,215]) && StateNo != 100 && StateType = S && Ctrl
triggerall = (p2stateno != [120,152]) && P2MoveType != H && P2StateType != A
trigger1 = (Command = "holdfwd" && P2Dist X < 46) || (Command = "holdback" && P2Dist X < 46)

;---------------------------------------------------------------------------
;D���
[State -1, Kung Fu Throw]
type = ChangeState
value = 850
triggerall = command = "b" && StateNo != 100 && StateType = S && Ctrl
;triggerall = (var(26) = [240,245]) && StateNo != 100 && StateType = S && Ctrl
triggerall = (p2stateno != [120,152]) && P2MoveType != H && P2StateType != A
trigger1 = (Command = "holdfwd" && P2Dist X < 46) || (Command = "holdback" && P2Dist X < 46)

;===========================================================================
; FWD + B ��������
[State -1]
type = ChangeState
value = 700
triggerall = command = "a" && command = "holdfwd"
triggerall = command != "holddown" && statetype != A && statetype != C && var(55) = 0
trigger1 = ctrl
trigger2 = (stateno = 100 && time > 3)

; FWD + B �������� ĵ��
[State -1]
type = ChangeState
value = 750
triggerall = command = "a" && command = "holdfwd"
triggerall = command != "holddown" && statetype != A && var(55) = 0
trigger1 = var(24) > 0 && (stateno = 205 || stateno = 215 || stateno = 235 || stateno = 245)
trigger2 = var(24) > 0 && (stateno = 400 || stateno = 410 || stateno = 440)

; FWD + B �������� 02������ ���ٵ� �E���?
[State -1]
type = ChangeState
value = 700
triggerall = command = "a" && command = "holdfwd"
triggerall = command != "holddown" && statetype != A && statetype != C && var(55) = 0
trigger1 = ctrl = 1
trigger2 = stateno = 205
trigger2 = (movecontact > 0 && time <= 8); || time = [7,8]
trigger3 = stateno = 215
trigger3 = (movecontact > 0 && time >=11 && time <= 11); || time = [11,11]
trigger4 = stateno = 235
trigger4 = (movecontact > 0 && time <= 8); || time = [8,8]
trigger5 = stateno = 235
trigger5 = (movecontact > 0 && time >=15 && time <= 15); || time = [15,15]
trigger6 = stateno = 245
trigger6 = (movecontact > 0 && time <= 14); || time = [12,14]
trigger7 = stateno = 245
trigger7 = (movecontact > 0 && time >=20 && time <= 20); || time = [20,20]
trigger8 = stateno = 400
trigger8 = (movecontact > 0 && time <= 7); || time = [7,7]
trigger9 = stateno = 410
trigger9 = (movecontact > 0 && time <= 10); || time = [10,10]
trigger10 = stateno = 410
trigger10 = (movecontact > 0 && time >=13 && time <= 13); || time = [13,13]
trigger11 = stateno = 440
trigger11 = (movecontact > 0 && time <= 14); || time = [10,14]

;===========================================================================

; standing CD attack ���� CD ������ ����
[State -1]
type = ChangeState
value = 250
triggerall = command = "CD" && (command != "holddown") || (command = "holddown") && command = "900"
;triggerall = (var(26) = [250,253]) && (command != "holddown") || (command = "holddown") && (var(26) = [900,903])
triggerall = statetype != A && var(55) = 0
trigger1 = ctrl || (stateno = 100 && time > 3)

; jump CD
[State -1]
type = ChangeState
value = 650
triggerall = command = "CD" || command = "900"		;(var(26) = [250,253]) || (var(26) = [900,903])
triggerall = statetype = A && var(55) = 0
trigger1 = ctrl

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start" && statetype != A && (stateno != [195,196]) && var(55) = 0
;triggerall = (var(26) = [300,305]) && statetype != A && (stateno != [195,196]) && var(55) = 0
trigger1 = ctrl

;---------------------------------------------------------------------------
;����ġ
[State -1, Stand Light Punch]
type = ChangeState
value = 200+ifelse(statetype = A,400,ifelse(command = "holddown",200,ifelse(P2dist X <= 64 && P2dist X >= -64,5,0)))
triggerall = command = "x"	;(var(26) = [200,205])
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = animtime >= -8 && stateno = 430

;---------------------------------------------------------------------------
;��ű
[State -1, Stand Light Kick]
type = ChangeState
value = 230+ifelse(statetype = A,400,ifelse(command = "holddown",200,ifelse(P2dist X <= 64 && P2dist X >= -64,5,0)))
triggerall = command = "a"	;(var(26) = [230,235])
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = animtime >= -8 && stateno = 430

;---------------------------------------------------------------------------
;����ġ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210+ifelse(statetype = A,400,ifelse(command = "holddown",200,ifelse(P2dist X <= 64 && P2dist X >= -64,5,0)))
triggerall = command = "y"	;(var(26) = [210,215])
trigger1 = ctrl || (stateno = 100 && time > 3)

;---------------------------------------------------------------------------
;��ű
[State -1, Standing Strong Kick]
type = ChangeState
value = 240+ifelse(statetype = A,400,ifelse(command = "holddown",200,ifelse(P2dist X <= 64 && P2dist X >= -64,5,0)))
triggerall = command = "b"	;(var(26) = [240,245])
trigger1 = ctrl || (stateno = 100 && time > 3)

;--------------------------------------------------------------------------
[State -2]
type = varset
trigger1 = anim != [5,6]
trigger1 = P2dist X >= 0
fvar(37) = 0
ignorehitpause = 1

[State -2]
type = varset
trigger1 = anim != [5,6]
trigger1 = P2dist X < 0
fvar(37) = 1
ignorehitpause = 1

;--------------------------------------------------------------------------
;   AI action
;--------------------------------------------------------------------------
[State -2, 0]  ;ai start
type = varset
triggerall = var(55) = 0
trigger1 = command = "AI1"
trigger2 = command = "AI2"
trigger3 = command = "AI3"
trigger4 = command = "AI4"
trigger5 = command = "AI5"
trigger6 = command = "AI6"
trigger7 = command = "AI7"
trigger8 = command = "AI8"
trigger9 = command = "AI9"
trigger10 = command = "AI10"
trigger11 = command = "AI11"
trigger12 = command = "AI12"
trigger13 = command = "AI13"
trigger14 = command = "AI14"
trigger15 = command = "AI15"
trigger16 = command = "AI16"
trigger17 = command = "AI17"
trigger18 = command = "AI18"
trigger19 = command = "AI19"
trigger20 = command = "AI20"
trigger21 = command = "AI21"
trigger22 = command = "AI22"
trigger23 = command = "AI23"
trigger24 = command = "AI24"
trigger25 = command = "AI25"
trigger26 = command = "AI26"
trigger27 = command = "AI27"
trigger28 = command = "AI28"
trigger29 = command = "AI29"
trigger30 = command = "AI30"
trigger31 = command = "AI31"
trigger32 = command = "AI32"
trigger33 = command = "AI33"
trigger34 = command = "AI34"
trigger35 = command = "AI35"
var(55) = 1

; win, stop moving
[State -2]
type = ChangeState
value = 0
triggerall = var(55) = 1 && statetype != A && ctrl
trigger1 = Win = 1
;-----------------------------------------------------------------------------

; Do Jumping      ����
[state -2,2]
type = ChangeState
value = 40
triggerall = var(55) = 1 && ctrl && statetype = S
triggerall = stateno != 100 || (stateno = 100 && random < 3)
trigger1 = p2statetype != L && random <= 2 && p2statetype = A
trigger2 = p2statetype != L && random <= 3 && p2statetype = S && p2bodydist X >= 60
trigger3 = p2statetype != L && p2statetype != A && p2bodydist X >= 50 && p2bodydist X <= 100 && (random <= 4)
trigger4 = p2statetype != L && random <= 20 && p2statetype != A && p2bodydist X <= 20
trigger5 = p2statetype != L && p2statetype != A && p2bodydist X > 100 && p2bodydist X <= 225 && (random <= 50)
trigger6 = p2statetype != L && p2statetype != A && p2bodydist X > 225 && (random <= 140)
trigger7 = p2stateno = 5120 && p2bodydist X <= 25 && p2movetype != H && (random <= 200)
trigger8 = (p2bodydist Y < -80 && p2bodydist Y > -125 && p2bodydist X <= 15 && p2bodydist X >= -30) && (random < 20)

;        ����
[state -2]
type = ChangeState
value = 130
triggerall = statetype != A && p2statetype != L && var(55) = 1 && p2movetype = A
triggerall = (p2dist X > 0 && p2bodydist X <= 250) && p2bodydist Y >= -80 && ctrl
trigger1 = p2statetype != A && random <= 500
trigger2 = p2statetype = A && random < 990

;     �ϴ� ����
[state -2]
type = ChangeState
value = 131
triggerall = statetype != A && p2statetype != L && var(55) = 1 && ctrl
triggerall = p2dist X > 0 && p2bodydist X <= 250 && p2bodydist Y >= -80
trigger1 = p2movetype = A

;-----------------------------------
;RunFwd                        ����
[state -2]
type = ChangeState
value = 20
triggerall = var(55) = 1 && statetype != A && ctrl && p2movetype != A
triggerall = stateno != 40 && stateno != 100 && prevstateno != 100
trigger1 = p2movetype != A && p2bodydist X >= 100 && (random <= 400)

;-----------------------------------
;RunFwd                        ����뽬
[state -2]
type = ChangeState
value = 100
triggerall = var(55) = 1 && statetype != A && ctrl && p2movetype != A
triggerall = stateno != 40 && stateno != 100 && prevstateno != 100
trigger1 = p2movetype != A && p2bodydist X >= 100 && (random <= 400)

;----------------------------------
;RunB                          ��뽬
[state -2]
type = ChangeState
value = 105
triggerall = var(55) = 1 && statetype != A && (backedgedist >= 100) && ctrl
trigger1 = p2stateno = 5120 && p2bodydist X <= 20 && p2movetype != H && (random <= 200)
trigger2 = p2movetype = H && p2statetype = A && (p2bodydist X > 50 && p2bodydist X < 200) && (random <= 200)

;--------------------------------
;Jump_C                  ���� ����ġ
[state -2]
type = ChangeState
value = 630
triggerall = var(55) = 1 && ctrl && statetype = A
triggerall = p2bodydist X > -1 && p2bodydist X <= 130
trigger1 = (random <= 300) && vel Y > 0.5
trigger2 = p2statetype = A && (random <= 800)
trigger3 = stateno = 2041 && p2statetype != C && time > 5 && (random <= 300)
trigger4 = (p2movetype = A && p2bodydist X <= 80 && p2statetype = A) && (random <= 990)
trigger5 = (p2movetype = A && p2bodydist X <= 80 && p2statetype != A && vel y > -3) && random <= 990

;--------------------------------
;��󰢰�
[state -2]
type = ChangeState
value = 1450
triggerall = var(55) = 1 && statetype = A && Pos Y <= -54 && random <= 100 && ctrl 
triggerall = p2bodydist X > -1 && p2bodydist X <= 130
trigger1 = ctrl 

;���ݿ�
[state -2]
type = ChangeState
value = 1050
trigger1 = p2bodydist X > 80 && p2bodydist X <= 110
triggerall = var(55) = 1 && statetype != A && random <= 50 && ctrl 
trigger1 = ctrl || (stateno = 100 && time > 3)

;��ݿ�
[state -2]
type = ChangeState
value = 430
triggerall = p2bodydist X <= 70
triggerall = var(55) = 1 && p2statetype != A && statetype != A && random <= 50 && ctrl 
trigger1 = ctrl || (stateno = 100 && time > 3)

;��3����
[state -2]
type = ChangeState
value = 1330
trigger1 = p2bodydist X > 80 && p2bodydist X <= 110
triggerall = var(55) = 1 && statetype != A && random <= 50 && ctrl 
trigger1 = ctrl || (stateno = 100 && time > 3)

;��3����
[state -2]
type = ChangeState
value = 1330
triggerall = p2bodydist X <= 80
triggerall = var(55) = 1 && statetype != A && random <= 50 && ctrl 
trigger1 = ctrl || (stateno = 100 && time > 3)

;�����
[state -2]
type = ChangeState
value = 1100
triggerall = var(55) = 1 && statetype != A && random <= 25 && ctrl
triggerall = p2bodydist X <= 70
trigger1 = P2statetype = A

;������
[state -2]
type = ChangeState
value = 1150
triggerall = var(55) = 1 && statetype != A && random <= 25 && ctrl
triggerall = p2bodydist X <= 70
trigger1 = P2statetype = A

;���� ���� ����
[state -2]
type = ChangeState
value = 215
triggerall = (p2stateno != [5000,5500]) && var(55) = 1 && statetype != A && (random <=140) && ctrl 
triggerall = p2bodydist X <= 27 && p2dist X >= 0
trigger1 = ctrl || (stateno = 100 && time > 3)

;���� ���� ��ű
[state -2]
type = ChangeState
value = 215
triggerall = (p2stateno != [5000,5500]) && var(55) = 1 && statetype != A && (random <= 20) && ctrl 
triggerall = p2bodydist X <= 27 && p2dist X >= 0
trigger1 = ctrl || (stateno = 100 && time > 3)

;��������
[state -2]
type = ChangeState
value = 700
triggerall = (p2stateno != [5000,5500]) && var(55) = 1 && statetype != A && (random <= 50) && ctrl 
trigger1 = p2bodydist X > 50 && p2bodydist X <= 80
trigger1 = ctrl || (stateno = 100 && time > 3)

;�ɾƾ��
[state -2]
type = ChangeState
value = 430
triggerall = (p2stateno != [5000,5500]) && var(55) = 1 && statetype != A && (random <= 50) && ctrl 
triggerall = p2bodydist X <= 44
trigger1 = ctrl || (stateno = 100 && time > 3)

;����ġ
[state -2]
type = ChangeState
value = 200
triggerall = (p2stateno != [5000,5500]) && var(55) = 1 && statetype != A && (random <= 50) && ctrl 
triggerall = p2bodydist X <= 50
trigger1 = ctrl || (stateno = 100 && time > 3)

;����ġ
[state -2]
type = ChangeState
value = 230
triggerall = (p2stateno != [5000,5500]) && var(55) = 1 && statetype != A && (random <= 50) && ctrl 
trigger1 = p2bodydist X > 60 && p2bodydist X <= 90
trigger1 = ctrl || (stateno = 100 && time > 3)

;�ɾư�ű
[state -2]
type = ChangeState
value = 440
triggerall = (p2stateno != [5000,5500]) && var(55) = 1 && statetype != A && (random <= 50) && ctrl 
trigger1 = p2bodydist X > 30 && p2bodydist X <= 80
trigger1 = ctrl || (stateno = 100 && time > 3)

;��ű
[state -2]
type = ChangeState
value = 240
triggerall = (p2stateno != [5000,5500]) && var(55) = 1 && statetype != A && (random <= 50) && ctrl 
triggerall = p2bodydist X >= 120
trigger1 = ctrl || (stateno = 100 && time > 3)

;���бⰢ
[state -2]
type = ChangeState
value = 1200
triggerall = (p2stateno != [5000,5500]) && var(55) = 1 && statetype != A && (random <= 50) && ctrl
triggerall = p2bodydist X > 120 && p2bodydist X <= 150
trigger1 = ctrl || (stateno = 100 && time > 3)

;�ɾư���ġ
[state -2]
type = ChangeState
value = 410
triggerall = (p2stateno != [5000,5500]) && var(55) = 1 && statetype != A && (random <= 50) && ctrl
triggerall = p2bodydist X > 30 && p2bodydist X <= 60
trigger1 = ctrl || (stateno = 100 && time > 3)

; Taunt            ����
[state -2]
type = ChangeState
value = 195
triggerall = power >= 1000 + var(20)*100
triggerall = var(55) = 1 && statetype != A  && ctrl && p2movetype != A
triggerall = p2bodydist X > 200 && ctrl 
trigger1 = p2stateno != 5110 && random <= 100
trigger2 = p2stateno = 5110 && random <= 200

;D���
[State -2, Kung Fu Throw]
type = ChangeState
value = 850
triggerall = random <= 100 && var(55) = 1 && StateNo != 100 && StateType = S && Ctrl
triggerall = p2stateno != 120 || p2stateno != 121 || p2stateno != 122
triggerall = p2stateno != 130 || p2stateno != 131 || p2stateno != 132
triggerall = p2stateno != 140 || p2stateno != 141 || p2stateno != 142
triggerall = p2stateno != 150 || p2stateno != 151 || p2stateno != 152
triggerall = P2MoveType != H && !P2StateType = A
trigger1 = p2stateno = 900 || p2stateno = 920 || p2stateno = 950
trigger1 = Command = "holdfwd" && P2BodyDist X < 3
trigger2 = Command = "holdback" && P2BodyDist X < 5
trigger2 = p2stateno = 900 || p2stateno = 920 || p2stateno = 950
trigger3 = Command = "holdfwd" && P2BodyDist X < 3
trigger4 = Command = "holdback" && P2BodyDist X < 5

[state -2]
type = ChangeState
value = 3300
triggerall = (power >= 1000 && var(3) > 0) && life <= 250 || (power >= 2000 && var(3) > 0)
triggerall = var(55) = 1 && statetype != A && ctrl 
trigger1 = ctrl && random <= 20
trigger2 = StateNo != 100 && StateType = S && Ctrl = 1
trigger2 = p2stateno != 120 || p2stateno != 121 || p2stateno != 122
trigger2 = p2stateno != 130 || p2stateno != 131 || p2stateno != 132
trigger2 = p2stateno != 140 || p2stateno != 141 || p2stateno != 142
trigger2 = p2stateno != 150 || p2stateno != 151 || p2stateno != 152
trigger2 = P2MoveType != H && !P2StateType = A
trigger2 = p2stateno = 900 || p2stateno = 920 || p2stateno = 950
trigger2 = Command = "holdfwd" && P2BodyDist X < 3
trigger2 = Command = "holdback" && P2BodyDist X < 5 || p2stateno = 900 || p2stateno = 920 || p2stateno = 950

[state -2]
type = ChangeState
value = 3000
triggerall = (power >= 1000 && var(3) > 0)
triggerall = var(55) = 1 && statetype != A && ctrl 
trigger1 = var(13) = 0 && random <= 400         
trigger2 = p2stateno = 5050 && random <= 20

[state -2]
type = ChangeState
value = 3100
triggerall = (power >= 1000 || var(3) > 0)
triggerall = var(13) = 0 && statetype != A && var(55) = 1 && ctrl       
trigger1 = ctrl && random <= 20 && p2bodydist X > 0 && p2bodydist X <= 120