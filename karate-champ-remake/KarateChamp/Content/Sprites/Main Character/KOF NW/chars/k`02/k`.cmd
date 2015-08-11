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

;=====================================================
;----------------------------3406-R
[Command]
name = "3400-R"
command = ~D, DF, F, y, x
time = 8

[Command]
name = "3400-R-AC"
command = ~D, DF, F, $D, y, x
time = 8
[Command]
name = "3400-R-AC"
command = ~D, DF, F, $B, y, x
time = 8

;----------------------------3306-R
[Command]
name = "3300-R"
command = ~D, DB, B, $D, F, c
time = 30

[Command]
name = "3300-R"
command = ~D, DB, B, $D, F, x+y
time = 30

[Command]
name = "3300-R-AC"
command = ~D, DB, B, $D, F, $D, c
time = 30
[Command]
name = "3300-R-AC"
command = ~D, DB, B, $D, F, $B, c
time = 30
[Command]
name = "3300-R-AC"
command = ~D, DB, B, $D, F, $D, x+y
time = 30
[Command]
name = "3300-R-AC"
command = ~D, DB, B, $D, F, $B, x+y
time = 30

;----------------------------3206-R
[Command]
name = "3200-R"
command = ~D, DB, B, $D, F, x
time = 30

[Command]
name = "3250-R"
command = ~D, DB, B, $D, F, y
time = 30

[Command]
name = "3200-R-AC"
command = ~D, DB, B, $D, F, $D, x
time = 30
[Command]
name = "3250-R-AC"
command = ~D, DB, B, $D, F, $B, x
time = 30
[Command]
name = "3200-R-AC"
command = ~D, DB, B, $D, F, $D, y
time = 30
[Command]
name = "3250-R-AC"
command = ~D, DB, B, $D, F, $B, y
time = 30

;----------------------------3106-R
[Command]
name = "3100-A-R"
command = ~D, DB, B, D, DB, B, x
time = 30

[Command]
name = "3100-A-R-AC"
command = ~D, DB, B, D, DB, B, $D, x
time = 30
[Command]
name = "3100-A-R-AC"
command = ~D, DB, B, D, DB, B, $F, x
time = 30

;----------------------------3156-R
[Command]
name = "3100-C-R"
command = ~D, DB, B, D, DB, B, y
time = 30

[Command]
name = "3100-C-R-AC"
command = ~D, DB, B, D, DB, B, $D, y
time = 30
[Command]
name = "3100-C-R-AC"
command = ~D, DB, B, D, DB, B, $F, y
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
name = "1300_x-R"
command = ~B, D, $B, x
time = 15

;----------------------------1356-R
[Command]
name = "1300_y-R"
command = ~B, D, $B, y
time = 15

;----------------------------1206-R
[Command]
name = "1200_a-R"
command = ~D, DF, F, a
time = 16

[Command]
name = "1200_a-R-AC"
command = ~D, DF, F, $D, a
time = 16
[Command]
name = "1200_a-R-AC"
command = ~D, DF, F, $B, a
time = 16

;----------------------------1256-R
[Command]
name = "1200_b-R"
command = ~D, DF, F, b
time = 16

[Command]
name = "1200_b-R-AC"
command = ~D, DF, F, $D, b
time = 16
[Command]
name = "1200_b-R-AC"
command = ~D, DF, F, $B, b
time = 16

;----------------------------1006-R
[Command]
name = "1000_x-R"
command = ~D, DB, B, x
time = 16

[Command]
name = "1000_x-R-AC"
command = ~D, DB, B, $D, x
time = 16
[Command]
name = "1000_x-R-AC"
command = ~D, DB, B, $F, x
time = 16

;----------------------------1056-R
[Command]
name = "1000_y-R"
command = ~D, DB, B, y
time = 16

[Command]
name = "1000_y-R-AC"
command = ~D, DB, B, $D, y
time = 16
[Command]
name = "1000_y-R-AC"
command = ~D, DB, B, $F, y
time = 16

;----------------------------1106-R
[Command]
name = "1100_a-R"
command = ~D, DB, B, a
time = 16

[Command]
name = "1100_a-R-AC"
command = ~D, DB, B, $D, a
time = 16
[Command]
name = "1100_a-R-AC"
command = ~D, DB, B, $F, a
time = 16

;----------------------------1156-R
[Command]
name = "1100_b-R"
command = ~D, DB, B, b
time = 16

[Command]
name = "1100_b-R-AC"
command = ~D, DB, B, $D, b
time = 16
[Command]
name = "1100_b-R-AC"
command = ~D, DB, B, $F, b
time = 16

;=============================================================================

;----------------------------3406
[Command]
name = "3400"
command = ~D, DB, B, y, x
time = 8

[Command]
name = "3400-AC"
command = ~D, DB, B, $D, y, x
time = 8
[Command]
name = "3400-AC"
command = ~D, DB, B, $F, y, x
time = 8

;----------------------------3306
[Command]
name = "3300"
command = ~D, DF, F, $D, B, c
time = 30

[Command]
name = "3300"
command = ~D, DF, F, $D, B, x+y
time = 30

[Command]
name = "3300-AC"
command = ~D, DF, F, $D, B, $D, c
time = 30
[Command]
name = "3300-AC"
command = ~D, DF, F, $D, B, $F, c
time = 30
[Command]
name = "3300-AC"
command = ~D, DF, F, $D, B, $D, x+y
time = 30
[Command]
name = "3300-AC"
command = ~D, DF, F, $D, B, $F, x+y
time = 30

;----------------------------3206
[Command]
name = "3200"
command = ~D, DF, F, $D, B, x
time = 30

[Command]
name = "3250"
command = ~D, DF, F, $D, B, y
time = 30

[Command]
name = "3200-AC"
command = ~D, DF, F, $D, B, $D, x
time = 30
[Command]
name = "3250-AC"
command = ~D, DF, F, $D, B, $F, x
time = 30
[Command]
name = "3200-AC"
command = ~D, DF, F, $D, B, $D, y
time = 30
[Command]
name = "3250-AC"
command = ~D, DF, F, $D, B, $F, y
time = 30

;----------------------------3106
[Command]
name = "3100-A"
command = ~D, DF, F, D, DF, F, x
time = 30

[Command]
name = "3100-A-AC"
command = ~D, DF, F, D, DF, F, $D, x
time = 30
[Command]
name = "3100-A-AC"
command = ~D, DF, F, D, DF, F, $B, x
time = 30

;----------------------------3156
[Command]
name = "3100-C"
command = ~D, DF, F, D, DF, F, y
time = 30

[Command]
name = "3100-C-AC"
command = ~D, DF, F, D, DF, F, $D, y
time = 30
[Command]
name = "3100-C-AC"
command = ~D, DF, F, D, DF, F, $B, y
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

;----------------------------1306
[Command]
name = "1300_x"
command = ~F, D, $F, x
time = 15

;----------------------------1356
[Command]
name = "1300_y"
command = ~F, D, $F, y
time = 15

;----------------------------1206
[Command]
name = "1200_a"
command = ~D, DB, B, a
time = 16

[Command]
name = "1200_a-AC"
command = ~D, DB, B, $D, a
time = 16
[Command]
name = "1200_a-AC"
command = ~D, DB, B, $F, a
time = 16

;----------------------------1256
[Command]
name = "1200_b"
command = ~D, DB, B, b
time = 16

[Command]
name = "1200_b-AC"
command = ~D, DB, B, $D, b
time = 16
[Command]
name = "1200_b-AC"
command = ~D, DB, B, $F, b
time = 16

;----------------------------1006
[Command]
name = "1000_x"
command = ~D, DF, F, x
time = 16

[Command]
name = "1000_x-AC"
command = ~D, DF, F, $D, x
time = 16
[Command]
name = "1000_x-AC"
command = ~D, DF, F, $B, x
time = 16

;----------------------------1056
[Command]
name = "1000_y"
command = ~D, DF, F, y
time = 16

[Command]
name = "1000_y-AC"
command = ~D, DF, F, $D, y
time = 16
[Command]
name = "1000_y-AC"
command = ~D, DF, F, $B, y
time = 16

;----------------------------1106
[Command]
name = "1100_a"
command = ~D, DF, F, a
time = 16

[Command]
name = "1100_a-AC"
command = ~D, DF, F, $D, a
time = 16
[Command]
name = "1100_a-AC"
command = ~D, DF, F, $B, a
time = 16

;----------------------------1156
[Command]
name = "1100_b"
command = ~D, DF, F, b
time = 16

[Command]
name = "1100_b-AC"
command = ~D, DF, F, $D, b
time = 16
[Command]
name = "1100_b-AC"
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
;버튼유지소스
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
;2k2모드 캔슬관리1
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

;2k2모드 캔슬관리2
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

;캔슬관리 기본기쪽
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
;캔슬시 번쩍일떄
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
;캔슬시 번쩍거리지않을때(지상)
[State -1]
type = varset
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger3 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 205
trigger4 = AnimElem = 3, >= 1 && AnimElem = 3, <= 2 && stateno = 215
trigger5 = AnimElem = 5, >= 1 && AnimElem = 5, <= 3 && stateno = 215
trigger6 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 235
trigger7 = AnimElem = 4, >= 1 && AnimElem = 4, <= 3 && stateno = 245
trigger8 = AnimElem = 5, >= 1 && AnimElem = 5, <= 6 && stateno = 250
trigger9 = AnimElem = 3, >= 1 && AnimElem = 3, <= 5 && stateno = 400
trigger10 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 410
trigger11 = AnimElem = 5, >= 1 && AnimElem = 5, <= 4 && stateno = 410
trigger12 = AnimElem = 4, >= 1 && AnimElem = 4, <= 4 && stateno = 440
trigger13 = var(23) > 0 && stateno = 750
var(22) = 0
ignorehitpause = 1
persistent = 0
;---------------------------------------------------------------------------
;캔슬시 번쩍거리지않을때(공중)
[State -1]
type = varset
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(24) > 0 && stateno = 610 || stateno = 615 || stateno = 640 || stateno = 641 || stateno = 761
trigger3 = var(24) > 0 && stateno = 645 || stateno = 650
trigger4 = stateno = 105
var(22) = 0
ignorehitpause = 1
persistent = 0

;=======================================================================================================================
;===========================================================================
;2k2 mode
[State -1]
type = ChangeState
value = 1991
triggerall = power >= 1000 && var(3) < 1 && statetype != A && var(55) = 0
triggerall = command = "c" || command = "ay"
trigger1 = ctrl || stateno = 100

;===========================================================================
;2k2 mode 캔슬
[State -1]
type = ChangeState
value = 1990
triggerall = power >= 2000 && var(3) < 1 && statetype != A
triggerall = command = "c" || command = "ay"
trigger1 = var(24) > 0 && stateno != 1990 && (stateno = [0,799])

;---------------------------------------------------------------------------
;크립슨 스타로드 MAX2
[State -1]
type = ChangeState
value = 3400
triggerall = ifelse(fvar(37) = 0,command = "3400",command = "3400-R")
triggerall = ifelse(fvar(37) = 0,command != "3400-AC",command != "3400-R-AC")
triggerall = var(0)
triggerall = statetype != A && ((power >= 1000 && var(3) > 0) && life <= 250 || (power >= 20000 && var(3) > 0) && var(55) = 0)
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 205
trigger3 = AnimElem = 3, >= 1 && AnimElem = 3, <= 2 && stateno = 215
trigger4 = AnimElem = 5, >= 1 && AnimElem = 5, <= 3 && stateno = 215
trigger5 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 235
trigger6 = AnimElem = 4, >= 1 && AnimElem = 4, <= 3 && stateno = 245
trigger7 = AnimElem = 5, >= 1 && AnimElem = 5, <= 6 && stateno = 250
trigger8 = AnimElem = 3, >= 1 && AnimElem = 3, <= 5 && stateno = 400
trigger9 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 410
trigger10 = AnimElem = 5, >= 1 && AnimElem = 5, <= 4 && stateno = 410
trigger11 = AnimElem = 4, >= 1 && AnimElem = 4, <= 4 && stateno = 440
trigger12 = var(23) > 0 && stateno = 750
trigger13 = stateno = [0,250]
;---------------------------------------------------------------------------
;슈퍼캔슬 ;크립슨 스타로드 MAX2
[State -1]
type = ChangeState
value = 3400
triggerall = ifelse(fvar(37) = 0,command = "3400",command = "3400-R")
triggerall = ifelse(fvar(37) = 0,command != "3400-AC",command != "3400-R-AC")
triggerall = var(0)
triggerall = statetype != A && ((power >= 2000 && var(3) > 0) && life <= 250 || (power >= 30000 && var(3) > 0)) && (stateno != [3000,3500])
trigger1 = var(23) > 0 && (stateno = 1240 || stateno = 1300 || stateno = 1350)

;---------------------------------------------------------------------------
;체인드라이브 MAX
[State -1]
type = ChangeState
value = 3300
triggerall = ifelse(fvar(37) = 0,command = "3300",command = "3300-R")
triggerall = ifelse(fvar(37) = 0,command != "3300-AC",command != "3300-R-AC")
triggerall = var(0)
triggerall = statetype != A && (power >= 1000 && var(3) > 0) && var(55) = 0
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 205
trigger3 = AnimElem = 3, >= 1 && AnimElem = 3, <= 2 && stateno = 215
trigger4 = AnimElem = 5, >= 1 && AnimElem = 5, <= 3 && stateno = 215
trigger5 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 235
trigger6 = AnimElem = 4, >= 1 && AnimElem = 4, <= 3 && stateno = 245
trigger7 = AnimElem = 5, >= 1 && AnimElem = 5, <= 6 && stateno = 250
trigger8 = AnimElem = 3, >= 1 && AnimElem = 3, <= 5 && stateno = 400
trigger9 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 410
trigger10 = AnimElem = 5, >= 1 && AnimElem = 5, <= 4 && stateno = 410
trigger11 = AnimElem = 4, >= 1 && AnimElem = 4, <= 4 && stateno = 440
trigger12 = var(23) > 0 && stateno = 750
;---------------------------------------------------------------------------
;슈퍼캔슬 ;체인드라이브 MAX
[State -1]
type = ChangeState
value = 3300
triggerall = ifelse(fvar(37) = 0,command = "3300",command = "3300-R")
triggerall = ifelse(fvar(37) = 0,command != "3300-AC",command != "3300-R-AC")
triggerall = var(0)
triggerall = statetype != A && (power >= 2000 && var(3) > 0) && (stateno != [3000,3500])
trigger1 = var(23) > 0 && (stateno = 1240 || stateno = 1300 || stateno = 1350)

;---------------------------------------------------------------------------
;체인드라이브 약
[State -1]
type = ChangeState
value = 3200
triggerall = ifelse(fvar(37) = 0,command = "3200",command = "3200-R")
triggerall = ifelse(fvar(37) = 0,command != "3200-AC",command != "3200-R-AC")
triggerall = var(0)
triggerall = statetype != A && (power >= 1000 || var(3) > 0) && var(55) = 0
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 205
trigger3 = AnimElem = 3, >= 1 && AnimElem = 3, <= 2 && stateno = 215
trigger4 = AnimElem = 5, >= 1 && AnimElem = 5, <= 3 && stateno = 215
trigger5 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 235
trigger6 = AnimElem = 4, >= 1 && AnimElem = 4, <= 3 && stateno = 245
trigger7 = AnimElem = 5, >= 1 && AnimElem = 5, <= 6 && stateno = 250
trigger8 = AnimElem = 3, >= 1 && AnimElem = 3, <= 5 && stateno = 400
trigger9 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 410
trigger10 = AnimElem = 5, >= 1 && AnimElem = 5, <= 4 && stateno = 410
trigger11 = AnimElem = 4, >= 1 && AnimElem = 4, <= 4 && stateno = 440
trigger12 = var(23) > 0 && stateno = 750
;---------------------------------------------------------------------------
;슈퍼캔슬 ;체인드라이브 약
[State -1]
type = ChangeState
value = 3200
triggerall = ifelse(fvar(37) = 0,command = "3200",command = "3200-R")
triggerall = ifelse(fvar(37) = 0,command != "3200-AC",command != "3200-R-AC")
triggerall = var(0)
triggerall = statetype != A && (power >= 1000 || var(3) > 0) && (stateno != [3000,3500])
trigger1 = var(23) > 0 && (stateno = 1240 || stateno = 1300 || stateno = 1350)

;---------------------------------------------------------------------------
;체인드라이브 강
[State -1]
type = ChangeState
value = 3200
triggerall = ifelse(fvar(37) = 0,command = "3250",command = "3250-R")
triggerall = ifelse(fvar(37) = 0,command != "3250-AC",command != "3250-R-AC")
triggerall = var(0)
triggerall = statetype != A && (power >= 1000 || var(3) > 0) && var(55) = 0
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 205
trigger3 = AnimElem = 3, >= 1 && AnimElem = 3, <= 2 && stateno = 215
trigger4 = AnimElem = 5, >= 1 && AnimElem = 5, <= 3 && stateno = 215
trigger5 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 235
trigger6 = AnimElem = 4, >= 1 && AnimElem = 4, <= 3 && stateno = 245
trigger7 = AnimElem = 5, >= 1 && AnimElem = 5, <= 6 && stateno = 250
trigger8 = AnimElem = 3, >= 1 && AnimElem = 3, <= 5 && stateno = 400
trigger9 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 410
trigger10 = AnimElem = 5, >= 1 && AnimElem = 5, <= 4 && stateno = 410
trigger11 = AnimElem = 4, >= 1 && AnimElem = 4, <= 4 && stateno = 440
trigger12 = var(23) > 0 && stateno = 750
;---------------------------------------------------------------------------
;슈퍼캔슬 ;체인드라이브 강
[State -1]
type = ChangeState
value = 3200
triggerall = ifelse(fvar(37) = 0,command = "3250",command = "3250-R")
triggerall = ifelse(fvar(37) = 0,command != "3250-AC",command != "3250-R-AC")
triggerall = var(0)
triggerall = statetype != A && (power >= 1000 || var(3) > 0) && (stateno != [3000,3500])
trigger1 = var(23) > 0 && (stateno = 1240 || stateno = 1300 || stateno = 1350)

;---------------------------------------------------------------------------
;히트드라이브약
[State -1]
type = ChangeState
value = 3100
triggerall = ifelse(fvar(37) = 0,command = "3100-A",command = "3100-A-R")
triggerall = ifelse(fvar(37) = 0,command != "3100-A-AC",command != "3100-A-R-AC")
triggerall = var(0)
triggerall = statetype != A && (power >= 1000 || var(3) > 0) && var(55) = 0
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 205
trigger3 = AnimElem = 3, >= 1 && AnimElem = 3, <= 2 && stateno = 215
trigger4 = AnimElem = 5, >= 1 && AnimElem = 5, <= 3 && stateno = 215
trigger5 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 235
trigger6 = AnimElem = 4, >= 1 && AnimElem = 4, <= 3 && stateno = 245
trigger7 = AnimElem = 5, >= 1 && AnimElem = 5, <= 6 && stateno = 250
trigger8 = AnimElem = 3, >= 1 && AnimElem = 3, <= 5 && stateno = 400
trigger9 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 410
trigger10 = AnimElem = 5, >= 1 && AnimElem = 5, <= 4 && stateno = 410
trigger11 = AnimElem = 4, >= 1 && AnimElem = 4, <= 4 && stateno = 440
trigger12 = var(23) > 0 && stateno = 750
;---------------------------------------------------------------------------
;슈퍼캔슬 ;히트드라이브약
[State -1]
type = ChangeState
value = 3100
triggerall = ifelse(fvar(37) = 0,command = "3100-A",command = "3100-A-R")
triggerall = ifelse(fvar(37) = 0,command != "3100-A-AC",command != "3100-A-R-AC")
triggerall = var(0)
triggerall = statetype != A && (power >= 1000 || var(3) > 0) && (stateno != [3000,3500])
trigger1 = var(23) > 0 && (stateno = 1240 || stateno = 1300 || stateno = 1350)

;---------------------------------------------------------------------------
;히트드라이브강
[State -1]
type = ChangeState
value = 3150
triggerall = ifelse(fvar(37) = 0,command = "3100-C",command = "3100-C-R")
triggerall = ifelse(fvar(37) = 0,command != "3100-C-AC",command != "3100-C-R-AC")
triggerall = var(0)
triggerall = statetype != A && (power >= 1000 || var(3) > 0) && var(55) = 0
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 205
trigger3 = AnimElem = 3, >= 1 && AnimElem = 3, <= 2 && stateno = 215
trigger4 = AnimElem = 5, >= 1 && AnimElem = 5, <= 3 && stateno = 215
trigger5 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 235
trigger6 = AnimElem = 4, >= 1 && AnimElem = 4, <= 3 && stateno = 245
trigger7 = AnimElem = 5, >= 1 && AnimElem = 5, <= 6 && stateno = 250
trigger8 = AnimElem = 3, >= 1 && AnimElem = 3, <= 5 && stateno = 400
trigger9 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 410
trigger10 = AnimElem = 5, >= 1 && AnimElem = 5, <= 4 && stateno = 410
trigger11 = AnimElem = 4, >= 1 && AnimElem = 4, <= 4 && stateno = 440
trigger12 = var(23) > 0 && stateno = 750
;---------------------------------------------------------------------------
;슈퍼캔슬 ;히트드라이브강
[State -1]
type = ChangeState
value = 3150
triggerall = ifelse(fvar(37) = 0,command = "3100-C",command = "3100-C-R")
triggerall = ifelse(fvar(37) = 0,command != "3100-C-AC",command != "3100-C-R-AC")
triggerall = var(0)
triggerall = statetype != A && (power >= 1000 || var(3) > 0) && (stateno != [3000,3500])
trigger1 = var(23) > 0 && (stateno = 1240 || stateno = 1300 || stateno = 1350)

;;---------------------------------------------------------------------------
;;03신필살기
;[State -1]
;type = ChangeState
;value = 3000
;triggerall = (var(28) = [3000,3005]) || (var(28) = [3050,3055])
;triggerall = statetype != A && (power >= 1000 || var(3) > 0) && var(55) = 0
;trigger1 = ctrl || (stateno = 100 && time > 3)
;trigger2 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 205
;trigger3 = AnimElem = 3, >= 1 && AnimElem = 3, <= 2 && stateno = 215
;trigger4 = AnimElem = 5, >= 1 && AnimElem = 5, <= 3 && stateno = 215
;trigger5 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 235
;trigger6 = AnimElem = 4, >= 1 && AnimElem = 4, <= 3 && stateno = 245
;trigger7 = AnimElem = 5, >= 1 && AnimElem = 5, <= 6 && stateno = 250
;trigger8 = AnimElem = 3, >= 1 && AnimElem = 3, <= 5 && stateno = 400
;trigger9 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 410
;trigger10 = AnimElem = 5, >= 1 && AnimElem = 5, <= 4 && stateno = 410
;trigger11 = AnimElem = 4, >= 1 && AnimElem = 4, <= 4 && stateno = 440
;trigger12 = var(23) > 0 && stateno = 750
;;---------------------------------------------------------------------------
;;슈퍼캔슬 ;03신필살기
;[State -1]
;type = ChangeState
;value = 3000
;triggerall = (var(28) = [3000,3005]) || (var(28) = [3050,3055])
;triggerall = statetype != A && (power >= 1000 || var(3) > 0) && (stateno != [3000,3500])
;trigger1 = var(23) > 0 && (stateno = 1240 || stateno = 1300 || stateno = 1350)

;===========================================================================
;---------------------------------------------------------------------------
;크로우바이츠 약
[State -1]
type = ChangeState
value = 1300
triggerall = ifelse(fvar(37) = 0,command = "1300_x",command = "1300_x-R")
triggerall = var(0)
triggerall = statetype != A && var(55) = 0
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 205
trigger3 = AnimElem = 3, >= 1 && AnimElem = 3, <= 2 && stateno = 215
trigger4 = AnimElem = 5, >= 1 && AnimElem = 5, <= 3 && stateno = 215
trigger5 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 235
trigger6 = AnimElem = 4, >= 1 && AnimElem = 4, <= 3 && stateno = 245
trigger7 = AnimElem = 5, >= 1 && AnimElem = 5, <= 6 && stateno = 250
trigger8 = AnimElem = 3, >= 1 && AnimElem = 3, <= 5 && stateno = 400
trigger9 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 410
trigger10 = AnimElem = 5, >= 1 && AnimElem = 5, <= 4 && stateno = 410
trigger11 = AnimElem = 4, >= 1 && AnimElem = 4, <= 4 && stateno = 440
trigger12 = var(23) > 0 && stateno = 750
;---------------------------------------------------------------------------
;크로우바이츠 약-2k2 mode
[State -1]
type = ChangeState
value = 1300
triggerall = ifelse(fvar(37) = 0,command = "1300_x",command = "1300_x-R")
triggerall = var(0)
triggerall = (stateno != [1300,1399]) && (stateno != [3000,9999])
triggerall = (var(3) > -128 || (power >= 10009 && stateno != [0,999])) && (statetype != A && (stateno != [3000,3500]))
trigger1 = stateno = 200 || stateno = 205 || stateno = 210 || stateno = 215 || stateno = 230
trigger2 = stateno = 235 || stateno = 240 || stateno = 245 || stateno = 250 || stateno = 400
trigger3 = stateno = 410 || stateno = 430 || stateno = 440
trigger4 = var(21) > 0

;---------------------------------------------------------------------------
;크로우바이츠 강
[State -1]
type = ChangeState
value = 1350
triggerall = ifelse(fvar(37) = 0,command = "1300_y",command = "1300_y-R")
triggerall = var(0)
triggerall = statetype != A && var(55) = 0
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 205
trigger3 = AnimElem = 3, >= 1 && AnimElem = 3, <= 2 && stateno = 215
trigger4 = AnimElem = 5, >= 1 && AnimElem = 5, <= 3 && stateno = 215
trigger5 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 235
trigger6 = AnimElem = 4, >= 1 && AnimElem = 4, <= 3 && stateno = 245
trigger7 = AnimElem = 5, >= 1 && AnimElem = 5, <= 6 && stateno = 250
trigger8 = AnimElem = 3, >= 1 && AnimElem = 3, <= 5 && stateno = 400
trigger9 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 410
trigger10 = AnimElem = 5, >= 1 && AnimElem = 5, <= 4 && stateno = 410
trigger11 = AnimElem = 4, >= 1 && AnimElem = 4, <= 4 && stateno = 440
trigger12 = var(23) > 0 && stateno = 750
;---------------------------------------------------------------------------
;크로우바이츠 강-2k2 mode
[State -1]
type = ChangeState
value = 1350
triggerall = ifelse(fvar(37) = 0,command = "1300_y",command = "1300_y-R")
triggerall = var(0)
triggerall = (stateno != [1300,1399]) && (stateno != [3000,9999])
triggerall = (var(3) > -128 || (power >= 10009 && stateno != [0,999])) && (statetype != A && (stateno != [3000,3500]))
trigger1 = stateno = 200 || stateno = 205 || stateno = 210 || stateno = 215 || stateno = 230
trigger2 = stateno = 235 || stateno = 240 || stateno = 245 || stateno = 250 || stateno = 400
trigger3 = stateno = 410 || stateno = 430 || stateno = 440
trigger4 = var(21) > 0

;---------------------------------------------------------------------------
;에어트리거 약
[State -1]
type = ChangeState
value = 1400
triggerall = (P2dist X > 0 && command = "1100_a") || (P2dist X < 0 && command = "1100_a-R")
triggerall = (P2dist X > 0 && command != "1100_a-AC") || (P2dist X < 0 && command != "1100_a-R-AC")
triggerall = var(0)
triggerall = statetype = A && var(55) = 0
trigger1 = (ctrl && statetype = A) || (stateno = 105 && time > 3)
trigger2 = var(24) > 0 && (stateno = 610 || stateno = 615 || stateno = 640 || stateno = 641 || stateno = 761)
trigger3 = var(24) > 0 && (stateno = 645 || stateno = 650)
;---------------------------------------------------------------------------
;에어트리거 약-2k2 mode
[State -1]
type = ChangeState
value = 1400
triggerall = (P2dist X > 0 && command = "1100_a") || (P2dist X < 0 && command = "1100_a-R")
triggerall = (P2dist X > 0 && command != "1100_a-AC") || (P2dist X < 0 && command != "1100_a-R-AC")
triggerall = var(0)
triggerall = (stateno != [1400,1499]) && stateno != 1300 && stateno != 1350 && (stateno != [3000,9999])
triggerall = (var(3) > -128 || (power >= 10009 && stateno != [0,999])) && (statetype = A && (stateno != [3000,3500]))
trigger1 = var(24) > 0 && (stateno = 200 || stateno = 205 || stateno = 210 || stateno = 215 || stateno = 230)
trigger2 = var(24) > 0 && (stateno = 235 || stateno = 240 || stateno = 245 || stateno = 250 || stateno = 400)
trigger3 = var(24) > 0 && (stateno = 410 || stateno = 430 || stateno = 440)
trigger4 = var(21) > 0

;---------------------------------------------------------------------------
;에어트리거 강
[State -1]
type = ChangeState
value = 1450
triggerall = (P2dist X > 0 && command = "1100_b") || (P2dist X < 0 && command = "1100_b-R")
triggerall = (P2dist X > 0 && command != "1100_b-AC") || (P2dist X < 0 && command != "1100_b-R-AC")
triggerall = var(0)
triggerall = statetype = A && var(55) = 0
trigger1 = (ctrl && statetype = A) || (stateno = 105 && time > 3)
trigger2 = var(24) > 0 && (stateno = 610 || stateno = 615 || stateno = 640 || stateno = 641 || stateno = 761)
trigger3 = var(24) > 0 && (stateno = 645 || stateno = 650)
;---------------------------------------------------------------------------
;에어트리거 강-2k2 mode
[State -1]
type = ChangeState
value = 1450
triggerall = (P2dist X > 0 && command = "1100_b") || (P2dist X < 0 && command = "1100_b-R")
triggerall = (P2dist X > 0 && command != "1100_b-AC") || (P2dist X < 0 && command != "1100_b-R-AC")
triggerall = var(0)
triggerall = (stateno != [1400,1499]) && stateno != 1300 && stateno != 1350 && (stateno != [3000,9999])
triggerall = (var(3) > -128 || (power >= 10009 && stateno != [0,999])) && (statetype = A && (stateno != [3000,3500]))
trigger1 = var(24) > 0 && (stateno = 200 || stateno = 205 || stateno = 210 || stateno = 215 || stateno = 230)
trigger2 = var(24) > 0 && (stateno = 235 || stateno = 240 || stateno = 245 || stateno = 250 || stateno = 400)
trigger3 = var(24) > 0 && (stateno = 410 || stateno = 430 || stateno = 440)
trigger4 = var(21) > 0

;---------------------------------------------------------------------------
;공중 미닛스파이크 약
[State -1]
type = ChangeState
value = 1220
triggerall = (P2dist X > 0 && command = "1200_a") || (P2dist X < 0 && command = "1200_a-R")
triggerall = (P2dist X > 0 && command != "1200_a-AC") || (P2dist X < 0 && command != "1200_a-R-AC")
triggerall = var(0)
triggerall = statetype = A && var(55) = 0
trigger1 = (ctrl && statetype = A) || (stateno = 105 && time > 3)
trigger2 = var(24) > 0 && (stateno = 610 || stateno = 615 || stateno = 640 || stateno = 641 || stateno = 761)
trigger3 = var(24) > 0 && (stateno = 645 || stateno = 650)
;---------------------------------------------------------------------------
;공중 미닛스파이크 약-2k2 mode
[State -1]
type = ChangeState
value = 1220
triggerall = (P2dist X > 0 && command = "1200_a") || (P2dist X < 0 && command = "1200_a-R")
triggerall = (P2dist X > 0 && command != "1200_a-AC") || (P2dist X < 0 && command != "1200_a-R-AC")
triggerall = var(0)
triggerall = (stateno != [1200,1299]) && stateno != 1300 && stateno != 1350 && (stateno != [3000,9999])
triggerall = (var(3) > -128 || (power >= 10009 && stateno != [0,999])) && (statetype = A && (stateno != [3000,3500]))
trigger1 = var(24) > 0 && (stateno = 200 || stateno = 205 || stateno = 210 || stateno = 215 || stateno = 230)
trigger2 = var(24) > 0 && (stateno = 235 || stateno = 240 || stateno = 245 || stateno = 250 || stateno = 400)
trigger3 = var(24) > 0 && (stateno = 410 || stateno = 430 || stateno = 440)
trigger4 = var(21) > 0

;---------------------------------------------------------------------------
;공중 미닛스파이크 강
[State -1]
type = ChangeState
value = 1270
triggerall = (P2dist X > 0 && command = "1200_b") || (P2dist X < 0 && command = "1200_b-R")
triggerall = (P2dist X > 0 && command != "1200_b-AC") || (P2dist X < 0 && command != "1200_b-R-AC")
triggerall = var(0)
triggerall = statetype = A && var(55) = 0
trigger1 = (ctrl && statetype = A) || (stateno = 105 && time > 3)
trigger2 = var(24) > 0 && (stateno = 610 || stateno = 615 || stateno = 640 || stateno = 641 || stateno = 761)
trigger3 = var(24) > 0 && (stateno = 645 || stateno = 650)
;---------------------------------------------------------------------------
;공중 미닛스파이크 강-2k2 mode
[State -1]
type = ChangeState
value = 1270
triggerall = (P2dist X > 0 && command = "1200_b") || (P2dist X < 0 && command = "1200_b-R")
triggerall = (P2dist X > 0 && command != "1200_b-AC") || (P2dist X < 0 && command != "1200_b-R-AC")
triggerall = var(0)
triggerall = (stateno != [1200,1299]) && stateno != 1300 && stateno != 1350 && (stateno != [3000,9999])
triggerall = (var(3) > -128 || (power >= 10009 && stateno != [0,999])) && (statetype = A && (stateno != [3000,3500]))
trigger1 = var(24) > 0 && (stateno = 200 || stateno = 205 || stateno = 210 || stateno = 215 || stateno = 230)
trigger2 = var(24) > 0 && (stateno = 235 || stateno = 240 || stateno = 245 || stateno = 250 || stateno = 400)
trigger3 = var(24) > 0 && (stateno = 410 || stateno = 430 || stateno = 440)
trigger4 = var(21) > 0

;---------------------------------------------------------------------------
;미닛스파이크 약
[State -1]
type = ChangeState
value = 1200
triggerall = ifelse(fvar(37) = 0,command = "1200_a",command = "1200_a-R")
triggerall = ifelse(fvar(37) = 0,command != "1200_a-AC",command != "1200_a-R-AC")
triggerall = var(0)
triggerall = statetype != A && var(55) = 0
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 205
trigger3 = AnimElem = 3, >= 1 && AnimElem = 3, <= 2 && stateno = 215
trigger4 = AnimElem = 5, >= 1 && AnimElem = 5, <= 3 && stateno = 215
trigger5 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 235
trigger6 = AnimElem = 4, >= 1 && AnimElem = 4, <= 3 && stateno = 245
trigger7 = AnimElem = 5, >= 1 && AnimElem = 5, <= 6 && stateno = 250
trigger8 = AnimElem = 3, >= 1 && AnimElem = 3, <= 5 && stateno = 400
trigger9 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 410
trigger10 = AnimElem = 5, >= 1 && AnimElem = 5, <= 4 && stateno = 410
trigger11 = AnimElem = 4, >= 1 && AnimElem = 4, <= 4 && stateno = 440
trigger12 = var(23) > 0 && stateno = 750
;---------------------------------------------------------------------------
;미닛스파이크 약-2k2 mode
[State -1]
type = ChangeState
value = 1200
triggerall = ifelse(fvar(37) = 0,command = "1200_a",command = "1200_a-R")
triggerall = ifelse(fvar(37) = 0,command != "1200_a-AC",command != "1200_a-R-AC")
triggerall = var(0)
triggerall = (stateno != [1200,1299]) && (stateno != [3000,9999])
triggerall = (var(3) > -128 || (power >= 10009 && stateno != [0,999])) && (statetype != A && (stateno != [3000,3500]))
trigger1 = stateno = 200 || stateno = 205 || stateno = 210 || stateno = 215 || stateno = 230
trigger2 = stateno = 235 || stateno = 240 || stateno = 245 || stateno = 250 || stateno = 400
trigger3 = stateno = 410 || stateno = 430 || stateno = 440
trigger4 = var(21) > 0

;---------------------------------------------------------------------------
;미닛스파이크 강
[State -1]
type = ChangeState
value = 1250
triggerall = ifelse(fvar(37) = 0,command = "1200_b",command = "1200_b-R")
triggerall = ifelse(fvar(37) = 0,command != "1200_b-AC",command != "1200_b-R-AC")
triggerall = var(0)
triggerall = statetype != A && var(55) = 0
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 205
trigger3 = AnimElem = 3, >= 1 && AnimElem = 3, <= 2 && stateno = 215
trigger4 = AnimElem = 5, >= 1 && AnimElem = 5, <= 3 && stateno = 215
trigger5 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 235
trigger6 = AnimElem = 4, >= 1 && AnimElem = 4, <= 3 && stateno = 245
trigger7 = AnimElem = 5, >= 1 && AnimElem = 5, <= 6 && stateno = 250
trigger8 = AnimElem = 3, >= 1 && AnimElem = 3, <= 5 && stateno = 400
trigger9 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 410
trigger10 = AnimElem = 5, >= 1 && AnimElem = 5, <= 4 && stateno = 410
trigger11 = AnimElem = 4, >= 1 && AnimElem = 4, <= 4 && stateno = 440
trigger12 = var(23) > 0 && stateno = 750
;---------------------------------------------------------------------------
;미닛스파이크 강-2k2 mode
[State -1]
type = ChangeState
value = 1250
triggerall = ifelse(fvar(37) = 0,command = "1200_b",command = "1200_b-R")
triggerall = ifelse(fvar(37) = 0,command != "1200_b-AC",command != "1200_b-R-AC")
triggerall = var(0)
triggerall = (stateno != [1200,1299]) && (stateno != [3000,9999])
triggerall = (var(3) > -128 || (power >= 10009 && stateno != [0,999])) && (statetype != A && (stateno != [3000,3500]))
trigger1 = stateno = 200 || stateno = 205 || stateno = 210 || stateno = 215 || stateno = 230
trigger2 = stateno = 235 || stateno = 240 || stateno = 245 || stateno = 250 || stateno = 400
trigger3 = stateno = 410 || stateno = 430 || stateno = 440
trigger4 = var(21) > 0

;---------------------------------------------------------------------------
;아인트리거 약
[State -1]
type = ChangeState
value = 1000
triggerall = ifelse(fvar(37) = 0,command = "1000_x",command = "1000_x-R")
triggerall = ifelse(fvar(37) = 0,command != "1000_x-AC",command != "1000_x-R-AC")
triggerall = var(0)
triggerall = statetype != A && var(55) = 0
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 205
trigger3 = AnimElem = 3, >= 1 && AnimElem = 3, <= 2 && stateno = 215
trigger4 = AnimElem = 5, >= 1 && AnimElem = 5, <= 3 && stateno = 215
trigger5 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 235
trigger6 = AnimElem = 4, >= 1 && AnimElem = 4, <= 3 && stateno = 245
trigger7 = AnimElem = 5, >= 1 && AnimElem = 5, <= 6 && stateno = 250
trigger8 = AnimElem = 3, >= 1 && AnimElem = 3, <= 5 && stateno = 400
trigger9 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 410
trigger10 = AnimElem = 5, >= 1 && AnimElem = 5, <= 4 && stateno = 410
trigger11 = AnimElem = 4, >= 1 && AnimElem = 4, <= 4 && stateno = 440
trigger12 = var(23) > 0 && stateno = 750

;---------------------------------------------------------------------------
;아인트리거 강
[State -1]
type = ChangeState
value = 1050
triggerall = ifelse(fvar(37) = 0,command = "1000_y",command = "1000_y-R")
triggerall = ifelse(fvar(37) = 0,command != "1000_y-AC",command != "1000_y-R-AC")
triggerall = var(0)
triggerall = statetype != A && var(55) = 0
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 205
trigger3 = AnimElem = 3, >= 1 && AnimElem = 3, <= 2 && stateno = 215
trigger4 = AnimElem = 5, >= 1 && AnimElem = 5, <= 3 && stateno = 215
trigger5 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 235
trigger6 = AnimElem = 4, >= 1 && AnimElem = 4, <= 3 && stateno = 245
trigger7 = AnimElem = 5, >= 1 && AnimElem = 5, <= 6 && stateno = 250
trigger8 = AnimElem = 3, >= 1 && AnimElem = 3, <= 5 && stateno = 400
trigger9 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 410
trigger10 = AnimElem = 5, >= 1 && AnimElem = 5, <= 4 && stateno = 410
trigger11 = AnimElem = 4, >= 1 && AnimElem = 4, <= 4 && stateno = 440
trigger12 = var(23) > 0 && stateno = 750

;---------------------------------------------------------------------------
;블랙아웃 약
[State -1]
type = ChangeState
value = 1100
triggerall = ifelse(fvar(37) = 0,command = "1100_a",command = "1100_a-R")
triggerall = ifelse(fvar(37) = 0,command != "1100_a-AC",command != "1100_a-R-AC")
triggerall = var(0)
triggerall = statetype != A && var(55) = 0
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 205
trigger3 = AnimElem = 3, >= 1 && AnimElem = 3, <= 2 && stateno = 215
trigger4 = AnimElem = 5, >= 1 && AnimElem = 5, <= 3 && stateno = 215
trigger5 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 235
trigger6 = AnimElem = 4, >= 1 && AnimElem = 4, <= 3 && stateno = 245
trigger7 = AnimElem = 5, >= 1 && AnimElem = 5, <= 6 && stateno = 250
trigger8 = AnimElem = 3, >= 1 && AnimElem = 3, <= 5 && stateno = 400
trigger9 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 410
trigger10 = AnimElem = 5, >= 1 && AnimElem = 5, <= 4 && stateno = 410
trigger11 = AnimElem = 4, >= 1 && AnimElem = 4, <= 4 && stateno = 440
trigger12 = var(23) > 0 && stateno = 750
;---------------------------------------------------------------------------
;블랙아웃 약-2k2 mode
[State -1]
type = ChangeState
value = 1100
triggerall = ifelse(fvar(37) = 0,command = "1100_a",command = "1100_a-R")
triggerall = ifelse(fvar(37) = 0,command != "1100_a-AC",command != "1100_a-R-AC")
triggerall = var(0)
triggerall = (stateno != [1100,1199]) && (stateno != [3000,9999])
triggerall = (var(3) > -128 || (power >= 10009 && stateno != [0,999])) && (statetype != A && (stateno != [3000,3500]))
trigger1 = stateno = 200 || stateno = 205 || stateno = 210 || stateno = 215 || stateno = 230
trigger2 = stateno = 235 || stateno = 240 || stateno = 245 || stateno = 250 || stateno = 400
trigger3 = stateno = 410 || stateno = 430 || stateno = 440
trigger4 = var(21) > 0

;---------------------------------------------------------------------------
;블랙아웃 강
[State -1]
type = ChangeState
value = 1150
triggerall = ifelse(fvar(37) = 0,command = "1100_b",command = "1100_b-R")
triggerall = ifelse(fvar(37) = 0,command != "1100_b-AC",command != "1100_b-R-AC")
triggerall = var(0)
triggerall = statetype != A && var(55) = 0
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 205
trigger3 = AnimElem = 3, >= 1 && AnimElem = 3, <= 2 && stateno = 215
trigger4 = AnimElem = 5, >= 1 && AnimElem = 5, <= 3 && stateno = 215
trigger5 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 235
trigger6 = AnimElem = 4, >= 1 && AnimElem = 4, <= 3 && stateno = 245
trigger7 = AnimElem = 5, >= 1 && AnimElem = 5, <= 6 && stateno = 250
trigger8 = AnimElem = 3, >= 1 && AnimElem = 3, <= 5 && stateno = 400
trigger9 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 410
trigger10 = AnimElem = 5, >= 1 && AnimElem = 5, <= 4 && stateno = 410
trigger11 = AnimElem = 4, >= 1 && AnimElem = 4, <= 4 && stateno = 440
trigger12 = var(23) > 0 && stateno = 750
;---------------------------------------------------------------------------
;블랙아웃 강-2k2 mode
[State -1]
type = ChangeState
value = 1150
triggerall = ifelse(fvar(37) = 0,command = "1100_b",command = "1100_b-R")
triggerall = ifelse(fvar(37) = 0,command != "1100_b-AC",command != "1100_b-R-AC")
triggerall = var(0)
triggerall = (stateno != [1100,1199]) && (stateno != [3000,9999])
triggerall = (var(3) > -128 || (power >= 10009 && stateno != [0,999])) && (statetype != A && (stateno != [3000,3500]))
trigger1 = stateno = 200 || stateno = 205 || stateno = 210 || stateno = 215 || stateno = 230
trigger2 = stateno = 235 || stateno = 240 || stateno = 245 || stateno = 250 || stateno = 400
trigger3 = stateno = 410 || stateno = 430 || stateno = 440
trigger4 = var(21) > 0

;===========================================================================
;---------------------------------------------------------------------

;앞구르기
[State -1]
type = ChangeState
value = 900
triggerall = command = "900"	;(var(26) = [900,905])
triggerall = Command != "holdback" && StateType = S && stateno != 100 && (command != "holddown")
trigger1 = ctrl

;달리면서 앞구르기
[State -1]
type = ChangeState
value = 910
triggerall = command = "900"	;(var(26) = [900,905])
triggerall = Command != "holdback" && StateType = S && (command != "holddown")
trigger1 = (stateno = 100 && time > 3)

;캔슬 구르기
[State -1]
type = ChangeState
value = 930
triggerall = command = "900"	;(var(26) = [900,905]) || command = "900"
triggerall = statetype != A && power >= 1000
triggerall = stateno = [0,799]
trigger1 = var(24) > 0

;---------------------------------------------------------------------
;뒤구르기
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
;C잡기
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "y" && StateNo != 100 && StateType = S && Ctrl
;triggerall = (var(26) = [210,215]) && StateNo != 100 && StateType = S && Ctrl
triggerall = (p2stateno != [120,152]) && P2MoveType != H && P2StateType != A
trigger1 = (Command = "holdfwd" && P2Dist X < 46) || (Command = "holdback" && P2Dist X < 46)

;---------------------------------------------------------------------------
;D잡기
[State -1, Kung Fu Throw]
type = ChangeState
value = 825
triggerall = command = "b" && StateNo != 100 && StateType = S && Ctrl
;triggerall = (var(26) = [240,245]) && StateNo != 100 && StateType = S && Ctrl
triggerall = (p2stateno != [120,152]) && P2MoveType != H && P2StateType != A
trigger1 = (Command = "holdfwd" && P2Dist X < 46) || (Command = "holdback" && P2Dist X < 46)

;---------------------------------------------------------------------------
; FWD + A 원인치
[State -1]
type = ChangeState
value = 700
triggerall = command = "x" && command = "holdfwd"
triggerall = command != "holddown" && statetype != A && statetype != C && var(55) = 0
trigger1 = ctrl
trigger2 = (stateno = 100 && time > 3)

;---------------------------------------------------------------------------
; FWD + A 원인치캔슬
[State -1]
type = ChangeState
value = 750
triggerall = command = "x" && command = "holdfwd"
triggerall = command != "holddown" && statetype != A && var(55) = 0
trigger1 = var(24) > 0 && (stateno = 205 || stateno = 215 || stateno = 235 || stateno = 245)
trigger2 = var(24) > 0 && (stateno = 400 || stateno = 410 || stateno = 440)

;---------------------------------------------------------------------------
; FWD + B 니 어설트
[State -1]
type = ChangeState
value = 710
triggerall = command = "a" && command = "holdfwd"
triggerall = command != "holddown" && statetype != A && statetype != C && var(55) = 0
trigger1 = ctrl
trigger2 = (stateno = 100 && time > 3)

;---------------------------------------------------------------------------
; FWD + B 니 어설트 캔슬
[State -1]
type = ChangeState
value = 760
triggerall = command = "a" && command = "holdfwd"
triggerall = command != "holddown" && statetype != A && var(55) = 0
trigger1 = var(24) > 0 && (stateno = 205 || stateno = 215 || stateno = 235 || stateno = 245)
trigger2 = var(24) > 0 && (stateno = 400 || stateno = 410 || stateno = 440)

;===========================================================================

; standing CD attack 서서 CD 날리기 공격
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
;약펀치
[State -1, Stand Light Punch]
type = ChangeState
value = 200+ifelse(statetype = A,400,ifelse(command = "holddown",200,ifelse(P2dist X <= 64 && P2dist X >= -64,5,0)))
triggerall = command = "x"	;(var(26) = [200,205])
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = animtime >= -6 && stateno = 200
trigger3 = animtime >= -3 && stateno = 205
trigger4 = animtime >= -7 && (stateno = 400 || stateno = 430)
trigger5 =  animtime >= -13 && stateno = 235

;---------------------------------------------------------------------------
;약킥
[State -1, Stand Light Kick]
type = ChangeState
value = 230+ifelse(statetype = A,400,ifelse(command = "holddown",200,ifelse(P2dist X <= 64 && P2dist X >= -64,5,0)))
triggerall = command = "a"	;(var(26) = [230,235])
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = animtime >= -6 && stateno = 200
trigger3 = animtime >= -3 && stateno = 205
trigger4 = animtime >= -7 && (stateno = 400 || stateno = 430)
trigger5 =  animtime >= -13 && stateno = 235

;---------------------------------------------------------------------------
;강펀치
[State -1, Stand Strong Punch]
type = ChangeState
value = 210+ifelse(statetype = A,400,ifelse(command = "holddown",200,ifelse(P2dist X <= 64 && P2dist X >= -64,5,0)))
triggerall = command = "y"	;(var(26) = [210,215])
trigger1 = ctrl || (stateno = 100 && time > 3)

;---------------------------------------------------------------------------
;강킥
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
var(55) = 1

; win, stop moving
[State -2]
type = ChangeState
value = 0
triggerall = var(55) = 1 && statetype != A && ctrl
trigger1 = Win = 1
;-----------------------------------------------------------------------------

; Do Jumping      점프
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

;        가드
[state -2]
type = ChangeState
value = 130
triggerall = statetype != A && p2statetype != L && var(55) = 1 && p2movetype = A
triggerall = (p2dist X > 0 && p2bodydist X <= 250) && p2bodydist Y >= -80 && ctrl
trigger1 = p2statetype != A && random <= 500
trigger2 = p2statetype = A && random < 990

;     하단 가드
[state -2]
type = ChangeState
value = 131
triggerall = statetype != A && p2statetype != L && var(55) = 1 && ctrl
triggerall = p2dist X > 0 && p2bodydist X <= 250 && p2bodydist Y >= -80
trigger1 = p2movetype = A

;-----------------------------------
;RunFwd                        전진
[state -2]
type = ChangeState
value = 20
triggerall = var(55) = 1 && statetype != A && ctrl && p2movetype != A
triggerall = stateno != 40 && stateno != 100 && prevstateno != 100
trigger1 = p2movetype != A && p2bodydist X >= 100 && (random <= 400)

;-----------------------------------
;RunFwd                        전방대쉬
[state -2]
type = ChangeState
value = 100
triggerall = var(55) = 1 && statetype != A && ctrl && p2movetype != A
triggerall = stateno != 40 && stateno != 100 && prevstateno != 100
trigger1 = p2movetype != A && p2bodydist X >= 100 && (random <= 400)

;----------------------------------
;RunB                          백대쉬
[state -2]
type = ChangeState
value = 105
triggerall = var(55) = 1 && statetype != A && (backedgedist >= 100) && ctrl
trigger1 = p2stateno = 5120 && p2bodydist X <= 20 && p2movetype != H && (random <= 200)
trigger2 = p2movetype = H && p2statetype = A && (p2bodydist X > 50 && p2bodydist X < 200) && (random <= 200)

;--------------------------------
;Jump_C                  점프 강킥
[state -2]
type = ChangeState
value = 640
triggerall = var(55) = 1 && ctrl && statetype = A
triggerall = p2bodydist X > -1 && p2bodydist X <= 130
trigger1 = (random <= 300) && vel Y > 0.5
trigger2 = p2statetype = A && (random <= 800)
trigger3 = stateno = 2041 && p2statetype != C && time > 5 && (random <= 300)
trigger4 = (p2movetype = A && p2bodydist X <= 80 && p2statetype = A) && (random <= 990)
trigger5 = (p2movetype = A && p2bodydist X <= 80 && p2statetype != A && vel y > -3) && (random <= 990)

;약크로우
[state -2]
type = ChangeState
value = 1300
triggerall = var(55) = 1 && statetype != A && random <= 50 && ctrl
triggerall = p2bodydist X <= 40
trigger1 = p2movetype = A || P2statetype = A
trigger2 = random <= 300 && p2stateno = 5050 && ctrl && var(13) = 0 

;강크로우
[state -2]
type = ChangeState
value = 1350
triggerall = var(55) = 1 && statetype != A && random <= 50 && ctrl
triggerall = p2bodydist X > 40 && p2bodydist X <= 60
trigger1 = p2movetype = A || P2statetype = A
trigger2 = random <= 300 && p2stateno = 5050 && ctrl && var(13) = 0

;약미닛
[state -2]
type = ChangeState
value = 1200
triggerall = stateno != 100 && statetype != A && var(55) = 1 && random <= 300 && ctrl
triggerall = p2bodydist X > 100 && p2bodydist X <= 150        
trigger1 = ctrl

;강미닛
[state -2]
type = ChangeState
value = 1250
triggerall = stateno != 100 && statetype != A && var(55) = 1 && random <= 300 && ctrl
triggerall = p2bodydist X > 150 && p2bodydist X <= 200
trigger1 = ctrl

;약아인
[state -2]
type = ChangeState
value = 1000
triggerall = stateno != 100 && statetype != A && var(55) = 1 && random <= 100 && ctrl
triggerall = p2bodydist X > 20 && p2bodydist X <= 75
trigger1 = ctrl

;강에어트리거
[state -2]
type = ChangeState
value = 1450
triggerall = stateno != 100 && var(55) = 1 && random <= 10 && ctrl
trigger1 = statetype = A && ctrl

; Taunt            도발
[state -2]
type = ChangeState
value = 195
triggerall = power >= 1000 + var(20)*100
triggerall = var(55) = 1 && statetype != A  && ctrl && p2movetype != A && ctrl
triggerall = p2bodydist X > 200
trigger1 = p2stateno != 5110 && random <= 100
trigger2 = p2stateno = 5110 && random <= 200

;근접 서서 강손
[state -2]
type = ChangeState
value = 215
triggerall = (p2stateno != [5000,5500]) && var(55) = 1 && statetype != A && (random <= 100) && ctrl
triggerall = p2bodydist X <= 40 && p2dist X >= 0
trigger1 = ctrl || (stateno = 100 && time > 3)

;앉아약발
[state -2]
type = ChangeState
value = 430
triggerall = (p2stateno != [5000,5500]) && var(55) = 1 && statetype != A && (random <= 50) && ctrl
triggerall = p2bodydist X <= 40 && p2dist X >= 0
trigger1 = ctrl || (stateno = 100 && time > 3)

;앉아약펀치
[state -2]
type = ChangeState
value = 400
triggerall = (p2stateno != [5000,5500]) && var(55) = 1 && statetype != A && (random <= 50) && ctrl
triggerall = p2bodydist X <= 45 && p2dist X >= 0
trigger1 = ctrl || (stateno = 100 && time > 3)

;앉아강킥
[state -2]
type = ChangeState
value = 440
triggerall = (p2stateno != [5000,5500]) && var(55) = 1 && statetype != A && (random <= 50) && ctrl
triggerall = p2bodydist X <= 40 && p2dist X >= 75
trigger1 = ctrl || (stateno = 100 && time > 3)

;원인치
[state -2]
type = ChangeState
value = 700
triggerall = stateno != 100 && var(55) = 1 && statetype != A && p2statetype != A && random <= 50 && ctrl
triggerall = p2bodydist X > 40 && p2bodydist X <=80
trigger1 = ctrl

;니어설트
[state -2]
type = ChangeState
value = 750
triggerall = stateno != 100 && var(55) = 1 && statetype != A && p2statetype != A && random <= 50 && ctrl
triggerall = p2bodydist X > 60 && p2bodydist X <=90
trigger1 = ctrl

;원거리강킥
[state -2]
type = ChangeState
value = 240
triggerall = (p2stateno != [5000,5500]) && var(55) = 1 && statetype != A && (random <= 50) && ctrl
triggerall = p2bodydist X <= 60 && p2dist X >= 100
trigger1 = ctrl || (stateno = 100 && time > 3)

;서서날리기
[state -2]
type = ChangeState
value = 250
triggerall = (p2stateno != [5000,5500]) && var(55) = 1 && statetype != A && (random <= 50) && ctrl
triggerall = p2bodydist X <= 30 && p2dist X >= 65
trigger1 = ctrl || (stateno = 100 && time > 3)

;서서강펀치
[state -2]
type = ChangeState
value = 210
triggerall = (p2stateno != [5000,5500]) && var(55) = 1 && statetype != A && (random <= 50) && ctrl
triggerall = p2bodydist X <= 40 && p2dist X >= 70
trigger1 = ctrl || (stateno = 100 && time > 3)

;c잡기
[State -2, Kung Fu Throw]
type = ChangeState
value = 800
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

;MAX2
[state -2]
type = ChangeState
value = 3400
triggerall = (power >= 1000 && var(3) > 0) && life <= 250 || (power >= 2000 && var(3) > 0)
triggerall = (power >= 1000 || var(3) > 0)
triggerall = var(55) = 1 && var(13) = 0 && statetype != A && ctrl
trigger1 = ctrl && random <= 15 && p2bodydist X > 0 && p2bodydist X <= 50

;MAX
[state -2]
type = ChangeState
value = 3300
triggerall = (power >= 1000 && var(3) > 0)
triggerall = var(55) = 1 && statetype != A && ctrl
trigger1 = var(13) = 0 && ctrl && random <= 300 && p2stateno = 5050  
trigger2 = ctrl && random <= 20

;초필
[state -2]
type = ChangeState
value = 3200
triggerall = (power >= 1000 || var(3) > 0)
triggerall = var(55) = 1 && var(13) = 0 && statetype != A && ctrl
trigger1 = ctrl && random <= 20 && p2bodydist X > 0 && p2bodydist X <= 120

;초필
[state -2]
type = ChangeState
value = 3100
triggerall = (power >= 1000 || var(3) > 0)
triggerall = var(55) = 1 && var(13) = 0 && statetype != A && ctrl
trigger1 = ctrl && random <= 20 && p2bodydist X > 0 && p2bodydist X <= 120

;초필
[state -2]
type = ChangeState
value = 3000
triggerall = (power >= 1000 || var(3) > 0)
triggerall = var(55) = 1 && var(13) = 0 && statetype != A && ctrl
trigger1 = ctrl && random <= 20 && p2bodydist X > 0 && p2bodydist X <= 120