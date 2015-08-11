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

;----------------------------3306-R
[Command]
name = "3300-R"
command = ~B, $D, F, B, $D, F, x+y
time = 35

[Command]
name = "3300-R"
command = ~B, $D, F, B, $D, F, c
time = 35

[Command]
name = "3300-R-AC"
command = ~B, $D, F, B, $D, F, $D, x+y
time = 35
[Command]
name = "3300-R-AC"
command = ~B, $D, F, B, $D, F, $B, x+y
time = 35

[Command]
name = "3300-R-AC"
command = ~B, $D, F, B, $D, F, $D, c
time = 35
[Command]
name = "3300-R-AC"
command = ~B, $D, F, B, $D, F, $B, c
time = 35

;----------------------------3456-R
[Command]
name = "3450-R"
command = ~D, DB, B, D, DB, B, x+y
time = 30

[Command]
name = "3450-R"
command = ~D, DB, B, D, DB, B, c
time = 30

[Command]
name = "3450-R-AC"
command = ~D, DB, B, D, DB, B, $D, x+y
time = 30
[Command]
name = "3450-R-AC"
command = ~D, DB, B, D, DB, B, $F, x+y
time = 30

[Command]
name = "3450-R-AC"
command = ~D, DB, B, D, DB, B, $D, c
time = 30
[Command]
name = "3450-R-AC"
command = ~D, DB, B, D, DB, B, $F, c
time = 30

;----------------------------3206-R
[Command]
name = "208-MAX-R"
command = ~D, DF, F, $D, B, x+y
time = 30

[Command]
name = "208-MAX-R"
command = ~D, DF, F, $D, B, c
time = 30

[Command]
name = "208-MAX-R-AC"
command = ~D, DF, F, $D, B, $D, x+y
time = 30
[Command]
name = "208-MAX-R-AC"
command = ~D, DF, F, $D, B, $F, x+y
time = 30

[Command]
name = "208-MAX-R-AC"
command = ~D, DF, F, $D, B, $D, c
time = 30
[Command]
name = "208-MAX-R-AC"
command = ~D, DF, F, $D, B, $F, c
time = 30

;----------------------------3106-R
[Command]
name = "208-A-R"
command = ~D, DF, F, $D, B, x
time = 30

[Command]
name = "208-A-R-AC"
command = ~D, DF, F, $D, B, $D, x
time = 30
[Command]
name = "208-A-R-AC"
command = ~D, DF, F, $D, B, $F, x
time = 30

;----------------------------3156-R
[Command]
name = "208-C-R"
command = ~D, DF, F, $D, B, y
time = 30

[Command]
name = "208-C-R-AC"
command = ~D, DF, F, $D, B, $D, y
time = 30
[Command]
name = "208-C-R-AC"
command = ~D, DF, F, $D, B, $F, y
time = 30

;----------------------------3006-R
[Command]
name = "3400-A-R"
command = ~D, DB, B, D, DB, B, a
time = 30

[Command]
name = "3400-A-R-AC"
command = ~D, DB, B, D, DB, B, $D, a
time = 30
[Command]
name = "3400-A-R-AC"
command = ~D, DB, B, D, DB, B, $F, a
time = 30

;----------------------------3056-R
[Command]
name = "3400-A-R"
command = ~D, DB, B, D, DB, B, b
time = 30

[Command]
name = "3400-A-R-AC"
command = ~D, DB, B, D, DB, B, $D, b
time = 30
[Command]
name = "3400-A-R-AC"
command = ~D, DB, B, D, DB, B, $F, b
time = 30

;-| Special Motions |------------------------------------------------------
;----------------------------1406-R
[Command]
name = "100_x-R"
command = ~B, D, $B, x
time = 16

;----------------------------1456-R
[Command]
name = "100_y-R"
command = ~B, D, $B, y
time = 16

;----------------------------1506-R
[Command]
name = "RED-kick_a-R"
command = ~F, D, $F, a
time = 16

;----------------------------1556-R
[Command]
name = "RED-kick_b-R"
command = ~F, D, $F, b
time = 16

;-----------------------------------------------------
;볭뷨뢉볭렜갋뗔뙉?뾸
[Command]
name = "1170-R"
command = ~B, $D, F, a
time = 20

;볭뷨뢉볭렜갋뗔뙉?뾸
[Command]
name = "1170-R"
command = ~B, $D, F, b
time = 20

[Command]
name = "1170-R-AC"
command = ~B, $D, F, $D, a
time = 20
[Command]
name = "1170-R-AC"
command = ~B, $D, F, $B, a
time = 20

[Command]
name = "1170-R-AC"
command = ~B, $D, F, $D, b
time = 20
[Command]
name = "1170-R-AC"
command = ~B, $D, F, $B, b
time = 20

;-----------------------------??-R
[Command]
name = "127_x-R"
command = ~B, $D, F, x
time = 20

[Command]
name = "127_y-R"
command = ~B, $D, F, y
time = 20

[Command]
name = "127_x-R-AC"
command = ~B, $D, F, $D, x
time = 20
[Command]
name = "127_x-R-AC"
command = ~B, $D, F, $B, x
time = 20

[Command]
name = "127_y-R-AC"
command = ~B, $D, F, $D, y
time = 20
[Command]
name = "127_y-R-AC"
command = ~B, $D, F, $F, y
time = 20

;----------------------------1806-R
[Command]
name = "427_b-R"
command = ~B, $D, F, b
time = 20

[Command]
name = "427_b-R-AC"
command = ~B, $D, F, $D, b
time = 20
[Command]
name = "427_b-R-AC"
command = ~B, $D, F, $B, b
time = 20

;----------------------------1856-R
[Command]
name = "427_a-R"
command = ~B, $D, F, a
time = 20

[Command]
name = "427_a-R-AC"
command = ~B, $D, F, $D, a
time = 20
[Command]
name = "427_a-R-AC"
command = ~B, $D, F, $B, a
time = 20

;----------------------------1006-R
[Command]
name = "75_a-R"
command = ~D, DB, B, a
time = 16

[Command]
name = "75_a-R-AC"
command = ~D, DB, B, $D, a
time = 16
[Command]
name = "75_a-R-AC"
command = ~D, DB, B, $F, a
time = 16

;----------------------------1056-R
[Command]
name = "75_b-R"
command = ~D, DB, B, b
time = 16

[Command]
name = "75_b-R-AC"
command = ~D, DB, B, $D, b
time = 16
[Command]
name = "75_b-R-AC"
command = ~D, DB, B, $F, b
time = 16

;----------------------------1706-R
[Command]
name = "114_x-R"
command = ~D, DB, B, x
time = 16

[Command]
name = "114_x-R-AC"
command = ~D, DB, B, $D, x
time = 16
[Command]
name = "114_x-R-AC"
command = ~D, DB, B, $F, x
time = 16

;----------------------------1756-R
[Command]
name = "115_y-R"
command = ~D, DB, B, y
time = 16

[Command]
name = "115_y-R-AC"
command = ~D, DB, B, $D, y
time = 16
[Command]
name = "115_y-R-AC"
command = ~D, DB, B, $F, y
time = 16

;----------------------------1606-R
[Command]
name = "1600_x-R"
command = ~D, DF, F, x
time = 16

[Command]
name = "1600_x-R-AC"
command = ~D, DF, F, $D, x
time = 16
[Command]
name = "1600_x-R-AC"
command = ~D, DF, F, $B, x
time = 16

;----------------------------1656-R
[Command]
name = "1600_y-R"
command = ~D, DF, F, y
time = 16

[Command]
name = "1600_y-R-AC"
command = ~D, DF, F, $D, y
time = 16
[Command]
name = "1600_y-R-AC"
command = ~D, DF, F, $B, y
time = 16

;===========================================================================================

;-------------------------------------------------------------------------------------
;----------------------------3306
[Command]
name = "3300"
command = ~F, $D, B, F, $D, B, x+y
time = 35

[Command]
name = "3300"
command = ~F, $D, B, F, $D, B, c
time = 35

[Command]
name = "3300-AC"
command = ~F, $D, B, F, $D, B, $D, x+y
time = 35
[Command]
name = "3300-AC"
command = ~F, $D, B, F, $D, B, $F, x+y
time = 35

[Command]
name = "3300-AC"
command = ~F, $D, B, F, $D, B, $D, c
time = 35
[Command]
name = "3300-AC"
command = ~F, $D, B, F, $D, B, $F, c
time = 35

;----------------------------3456
[Command]
name = "3450"
command = ~D, DF, F, D, DF, F, x+y
time = 30

[Command]
name = "3450"
command = ~D, DF, F, D, DF, F, c
time = 30

[Command]
name = "3450-AC"
command = ~D, DF, F, D, DF, F, $D, x+y
time = 30
[Command]
name = "3450-AC"
command = ~D, DF, F, D, DF, F, $B, x+y
time = 30

[Command]
name = "3450-AC"
command = ~D, DF, F, D, DF, F, $D, c
time = 30
[Command]
name = "3450-AC"
command = ~D, DF, F, D, DF, F, $B, c
time = 30

;----------------------------3206
[Command]
name = "208-MAX"
command = ~D, DB, B, $D, F, x+y
time = 30

[Command]
name = "208-MAX"
command = ~D, DB, B, $D, F, c
time = 30

[Command]
name = "208-MAX-AC"
command = ~D, DB, B, $D, F, $D, x+y
time = 30
[Command]
name = "208-MAX-AC"
command = ~D, DB, B, $D, F, $B, x+y
time = 30

[Command]
name = "208-MAX-AC"
command = ~D, DB, B, $D, F, $D, c
time = 30
[Command]
name = "208-MAX-AC"
command = ~D, DB, B, $D, F, $B, c
time = 30

;----------------------------3106
[Command]
name = "208-A"
command = ~D, DB, B, $D, F, x
time = 30

[Command]
name = "208-A-AC"
command = ~D, DB, B, $D, F, $D, x
time = 30
[Command]
name = "208-A-AC"
command = ~D, DB, B, $D, F, $B, x
time = 30

;----------------------------3156
[Command]
name = "208-C"
command = ~D, DB, B, $D, F, y
time = 30

[Command]
name = "208-C-AC"
command = ~D, DB, B, $D, F, $D, y
time = 30
[Command]
name = "208-C-AC"
command = ~D, DB, B, $D, F, $B, y
time = 30

;----------------------------3006
[Command]
name = "3400-A"
command = ~D, DF, F, D, DF, F, a
time = 30

[Command]
name = "3400-A-AC"
command = ~D, DF, F, D, DF, F, $D, a
time = 30
[Command]
name = "3400-A-AC"
command = ~D, DF, F, D, DF, F, $B, a
time = 30

;----------------------------3056
[Command]
name = "3400-A"
command = ~D, DF, F, D, DF, F, b
time = 30

[Command]
name = "3400-A-AC"
command = ~D, DF, F, D, DF, F, $D, b
time = 30
[Command]
name = "3400-A-AC"
command = ~D, DF, F, D, DF, F, $B, b
time = 30

;-| Special Motions |------------------------------------------------------
;볭뷨뢉볭렜갋뗔뙉?뾸
[Command]
name = "1170"
command = ~F, $D, B, a
time = 20

[Command]
name = "1170-AC"
command = ~F, $D, B, $D, a
time = 20
[Command]
name = "1170-AC"
command = ~F, $D, B, $F, a
time = 20

;볭뷨뢉볭렜갋뗔뙉?뾸
[Command]
name = "1170"
command = ~F, $D, B, b
time = 20

[Command]
name = "1170-AC"
command = ~F, $D, B, $D, b
time = 20
[Command]
name = "1170-AC"
command = ~F, $D, B, $F, b
time = 20

;----------------------------1406
[Command]
name = "100_x"
command = ~F, D, $F, x
time = 16

;----------------------------1456
[Command]
name = "100_y"
command = ~F, D, $F, y
time = 16

;----------------------------1506
[Command]
name = "RED-kick_a"
command = ~B, D, $B, a
time = 16

;----------------------------1556
[Command]
name = "RED-kick_b"
command = ~B, D, $B, b
time = 16

;-----------------------------??
[Command]
name = "127_x"
command = ~F, $D, B, x
time = 20

[Command]
name = "127_y"
command = ~F, $D, B, y
time = 20

[Command]
name = "127_x-AC"
command = ~F, $D, B, $D, x
time = 20
[Command]
name = "127_x-AC"
command = ~F, $D, B, $F, x
time = 20

[Command]
name = "127_y-AC"
command = ~F, $D, B, $D, y
time = 20
[Command]
name = "127_y-AC"
command = ~F, $D, B, $F, y
time = 20

;----------------------------1806
[Command]
name = "427_b"
command = ~F, $D, B, b
time = 20

[Command]
name = "427_b-AC"
command = ~F, $D, B, $D, b
time = 20
[Command]
name = "427_b-AC"
command = ~F, $D, B, $F, b
time = 20

;----------------------------1856
[Command]
name = "427_a"
command = ~F, $D, B, a
time = 20

[Command]
name = "427_a-AC"
command = ~F, $D, B, $D, a
time = 20
[Command]
name = "427_a-AC"
command = ~F, $D, B, $F, a
time = 20

;----------------------------1006
[Command]
name = "75_a"
command = ~D, DF, F, a
time = 16

[Command]
name = "75_a-AC"
command = ~D, DF, F, $D, a
time = 16
[Command]
name = "75_a-AC"
command = ~D, DF, F, $B, a
time = 16

;----------------------------1056
[Command]
name = "75_b"
command = ~D, DF, F, b
time = 16

[Command]
name = "75_b-AC"
command = ~D, DF, F, $D, b
time = 16
[Command]
name = "75_b-AC"
command = ~D, DF, F, $B, b
time = 16

;----------------------------1706
[Command]
name = "114_x"
command = ~D, DF, F, x
time = 16

[Command]
name = "114_x-AC"
command = ~D, DF, F, $D, x
time = 16
[Command]
name = "114_x-AC"
command = ~D, DF, F, $B, x
time = 16

;----------------------------1756
[Command]
name = "115_y"
command = ~D, DF, F, y
time = 16

[Command]
name = "115_y-AC"
command = ~D, DF, F, $D, y
time = 16
[Command]
name = "115_y-AC"
command = ~D, DF, F, $B, y
time = 16

;----------------------------1606
[Command]
name = "1600_x"
command = ~D, DB, B, x
time = 16

[Command]
name = "1600_x-AC"
command = ~D, DB, B, $D, x
time = 16
[Command]
name = "1600_x-AC"
command = ~D, DB, B, $F, x
time = 16

;----------------------------1656
[Command]
name = "1600_y"
command = ~D, DB, B, y
time = 16

[Command]
name = "1600_y-AC"
command = ~D, DB, B, $D, y
time = 16
[Command]
name = "1600_y-AC"
command = ~D, DB, B, $F, y
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

;뷨볭뢉뚙렜갋렦맋걁괧괥괥괥걂
[Command]
name = "1160"
command = a
time = 1
buffer.time = 1

;뷨볭뢉뚙렜갋렦맋걁괧괥괥괦걂
[Command]
name = "1160"
command = b
time = 1
buffer.time = 1

;둖렜갋宋멁궭
[Command]
name = "1140"
command = x
time = 1
buffer.time = 1

;둖렜갋宋멁궭
[Command]
name = "1140"
command = y
time = 1
buffer.time = 1

[Statedef -1]

;===========================================================================
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
trigger3 = stateno = 410 || stateno = 430 || stateno = 440 || ((stateno = 750 || stateno = 760) && time <=18)
trigger4 = var(21) > 0
var(22) = 1
ignorehitpause = 1
persistent = 0
;---------------------------------------------------------------------------
;캔슬시 번쩍거리지않을때(지상)
[State -1]
type = varset
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = AnimElem = 2, >= 1 && AnimElem = 2, <= 3 && stateno = 215
trigger3 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 245
trigger4 = AnimElem = 5, >= 1 && AnimElem = 5, <= 3 && stateno = 440
trigger5 = AnimElem = 2, >= 1 && AnimElem = 2, <= 4 && (stateno = 200 || stateno = 205 || stateno = 400)
trigger6 = AnimElem = 3, >= 1 && AnimElem = 3, <= 4 && stateno = 235
trigger7 = AnimElem = 5, >= 1 && AnimElem = 5, <= 4 && stateno = 250
trigger8 = AnimElem = 5, >= 1 && AnimElem = 5, <= 2 && stateno = 210
trigger9 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 410
trigger10 = var(23) > 0 && ((stateno = 750 || stateno = 760) && time >=19)
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
;최종결전오의 무식 MAX2
[State -1]
type = ChangeState
value = 3450
triggerall = ifelse(fvar(37) = 0,command = "3450",command = "3450-R")
triggerall = ifelse(fvar(37) = 0,command != "3450-AC",command != "3450-R-AC")
triggerall = var(0)
triggerall = statetype != A && ((power >= 1000 && var(3) > 0) && life <= 250 || (power >= 20000 && var(3) > 0) && var(55) = 0)
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = AnimElem = 2, >= 1 && AnimElem = 2, <= 3 && stateno = 215
trigger3 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 245
trigger4 = AnimElem = 5, >= 1 && AnimElem = 5, <= 3 && stateno = 440
trigger5 = AnimElem = 2, >= 1 && AnimElem = 2, <= 4 && (stateno = 200 || stateno = 205 || stateno = 400)
trigger6 = AnimElem = 3, >= 1 && AnimElem = 3, <= 4 && stateno = 235
trigger7 = AnimElem = 5, >= 1 && AnimElem = 5, <= 4 && stateno = 250
trigger8 = AnimElem = 5, >= 1 && AnimElem = 5, <= 2 && stateno = 210
trigger9 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 410
trigger10 = var(23) > 0 && ((stateno = 750 || stateno = 760) && time >=19)
;---------------------------------------------------------------------------
;슈퍼캔슬 최종결전오의 무식 MAX2
[State -1]
type = ChangeState
value = 3450
triggerall = ifelse(fvar(37) = 0,command = "3450",command = "3450-R")
triggerall = ifelse(fvar(37) = 0,command != "3450-AC",command != "3450-R-AC")
triggerall = var(0)
triggerall = statetype != A && ((power >= 2000 && var(3) > 0) && life <= 250 || (power >= 30000 && var(3) > 0)) && (stateno != [3000,3500])
trigger1 = var(23) > 0 && (stateno = 1400 || stateno = 1403 || stateno = 1405 || stateno = 1420)
trigger2 = var(23) > 0 && (stateno = 1302 || stateno = 1851 || stateno = 1423 || stateno = 1425)
trigger3 = var(23) > 0 && (stateno = 1852 || stateno = 1100)

;---------------------------------------------------------------------------
;신진 카쿠무라MAX2
[State -1]
type = ChangeState
value = 3300
triggerall = ifelse(fvar(37) = 0,command = "3300",command = "3300-R")
triggerall = ifelse(fvar(37) = 0,command != "3300-AC",command != "3300-R-AC")
triggerall = var(0)
triggerall = statetype != A && ((power >= 1000 && var(3) > 0) && life <= 250 || (power >= 20000 && var(3) > 0) && var(55) = 0) && var(17) = 3
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = AnimElem = 2, >= 1 && AnimElem = 2, <= 3 && stateno = 215
trigger3 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 245
trigger4 = AnimElem = 5, >= 1 && AnimElem = 5, <= 3 && stateno = 440
trigger5 = AnimElem = 2, >= 1 && AnimElem = 2, <= 4 && (stateno = 200 || stateno = 205 || stateno = 400)
trigger6 = AnimElem = 3, >= 1 && AnimElem = 3, <= 4 && stateno = 235
trigger7 = AnimElem = 5, >= 1 && AnimElem = 5, <= 4 && stateno = 250
trigger8 = AnimElem = 5, >= 1 && AnimElem = 5, <= 2 && stateno = 210
trigger9 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 410
trigger10 = var(23) > 0 && ((stateno = 750 || stateno = 760) && time >=19)
;---------------------------------------------------------------------------
;슈퍼캔슬;신진 카쿠무라MAX2
[State -1]
type = ChangeState
value = 3300
triggerall = ifelse(fvar(37) = 0,command = "3300",command = "3300-R")
triggerall = ifelse(fvar(37) = 0,command != "3300-AC",command != "3300-R-AC")
triggerall = var(0)
triggerall = statetype != A && ((power >= 1000 && var(3) > 0) && life <= 250 || (power >= 20000 && var(3) > 0) && var(55) = 0) && (stateno != [3000,3500]) && var(17) = 3
trigger1 = var(23) > 0 && (stateno = 1400 || stateno = 1403 || stateno = 1405 || stateno = 1420)
trigger2 = var(23) > 0 && (stateno = 1302 || stateno = 1851 || stateno = 1423 || stateno = 1425)
trigger3 = var(23) > 0 && (stateno = 1852 || stateno = 1100)

;---------------------------------------------------------------------------
;대사치 MAX
[State -1]
type = ChangeState
value = 3200
triggerall = ifelse(fvar(37) = 0,command = "208-MAX",command = "208-MAX-R")
triggerall = ifelse(fvar(37) = 0,command != "208-MAX-AC",command != "208-MAX-R-AC")
triggerall = var(0)
triggerall = statetype != A && (power >= 1000 && var(3) > 0) && var(55) = 0
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = AnimElem = 2, >= 1 && AnimElem = 2, <= 3 && stateno = 215
trigger3 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 245
trigger4 = AnimElem = 5, >= 1 && AnimElem = 5, <= 3 && stateno = 440
trigger5 = AnimElem = 2, >= 1 && AnimElem = 2, <= 4 && (stateno = 200 || stateno = 205 || stateno = 400)
trigger6 = AnimElem = 3, >= 1 && AnimElem = 3, <= 4 && stateno = 235
trigger7 = AnimElem = 5, >= 1 && AnimElem = 5, <= 4 && stateno = 250
trigger8 = AnimElem = 5, >= 1 && AnimElem = 5, <= 2 && stateno = 210
trigger9 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 410
trigger10 = var(23) > 0 && ((stateno = 750 || stateno = 760) && time >=19)
;---------------------------------------------------------------------------
;슈퍼캔슬 대사치 MAX
[State -1]
type = ChangeState
value = 3200
triggerall = ifelse(fvar(37) = 0,command = "208-MAX",command = "208-MAX-R")
triggerall = ifelse(fvar(37) = 0,command != "208-MAX-AC",command != "208-MAX-R-AC")
triggerall = var(0)
triggerall = statetype != A && (power >= 2000 && var(3) > 0) && (stateno != [3000,3500])
trigger1 = var(23) > 0 && (stateno = 1400 || stateno = 1403 || stateno = 1405 || stateno = 1420)
trigger2 = var(23) > 0 && (stateno = 1302 || stateno = 1851 || stateno = 1423 || stateno = 1425)
trigger3 = var(23) > 0 && (stateno = 1852 || stateno = 1100)

;---------------------------------------------------------------------------
;대사치 약(쿠사나기버젼) && svc
[State -1]
type = ChangeState
value = ifelse(var(17)=1,3100,3105)
triggerall = ifelse(fvar(37) = 0,command = "208-A",command = "208-A-R")
triggerall = ifelse(fvar(37) = 0,command != "208-A-AC",command != "208-A-R-AC")
triggerall = var(0)
triggerall = statetype != A && (power >= 1000 || var(3) > 0) && var(55) = 0
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = AnimElem = 2, >= 1 && AnimElem = 2, <= 3 && stateno = 215
trigger3 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 245
trigger4 = AnimElem = 5, >= 1 && AnimElem = 5, <= 3 && stateno = 440
trigger5 = AnimElem = 2, >= 1 && AnimElem = 2, <= 4 && (stateno = 200 || stateno = 205 || stateno = 400)
trigger6 = AnimElem = 3, >= 1 && AnimElem = 3, <= 4 && stateno = 235
trigger7 = AnimElem = 5, >= 1 && AnimElem = 5, <= 4 && stateno = 250
trigger8 = AnimElem = 5, >= 1 && AnimElem = 5, <= 2 && stateno = 210
trigger9 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 410
trigger10 = var(23) > 0 && ((stateno = 750 || stateno = 760) && time >=19)
;---------------------------------------------------------------------------
;슈퍼캔슬 대사치 약(쿠사나기버젼) && svc
[State -1]
type = ChangeState
value = ifelse(var(17)=1,3100,3105)
triggerall = ifelse(fvar(37) = 0,command = "208-A",command = "208-A-R")
triggerall = ifelse(fvar(37) = 0,command != "208-A-AC",command != "208-A-R-AC")
triggerall = var(0)
triggerall = statetype != A && (power >= 2000 || power >= 1000 && var(3) > 0) && (stateno != [3000,3500])
trigger1 = var(23) > 0 && (stateno = 1400 || stateno = 1403 || stateno = 1405 || stateno = 1420)
trigger2 = var(23) > 0 && (stateno = 1302 || stateno = 1851 || stateno = 1423 || stateno = 1425)
trigger3 = var(23) > 0 && (stateno = 1852 || stateno = 1100)

;---------------------------------------------------------------------------
;대사치 강(쿠사나기버젼) && svc
[State -1]
type = ChangeState
value = ifelse(var(17)=1,3130,3135)
triggerall = ifelse(fvar(37) = 0,command = "208-C",command = "208-C-R")
triggerall = ifelse(fvar(37) = 0,command != "208-C-AC",command != "208-C-R-AC")
triggerall = var(0)
triggerall = statetype != A && (power >= 1000 || var(3) > 0) && var(55) = 0
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = AnimElem = 2, >= 1 && AnimElem = 2, <= 3 && stateno = 215
trigger3 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 245
trigger4 = AnimElem = 5, >= 1 && AnimElem = 5, <= 3 && stateno = 440
trigger5 = AnimElem = 2, >= 1 && AnimElem = 2, <= 4 && (stateno = 200 || stateno = 205 || stateno = 400)
trigger6 = AnimElem = 3, >= 1 && AnimElem = 3, <= 4 && stateno = 235
trigger7 = AnimElem = 5, >= 1 && AnimElem = 5, <= 4 && stateno = 250
trigger8 = AnimElem = 5, >= 1 && AnimElem = 5, <= 2 && stateno = 210
trigger9 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 410
trigger10 = var(23) > 0 && ((stateno = 750 || stateno = 760) && time >=19)
;---------------------------------------------------------------------------
;슈퍼캔슬 대사치 강(쿠사나기버젼) && svc
[State -1]
type = ChangeState
value = ifelse(var(17)=1,3130,3135)
triggerall = ifelse(fvar(37) = 0,command = "208-C",command = "208-C-R")
triggerall = ifelse(fvar(37) = 0,command != "208-C-AC",command != "208-C-R-AC")
triggerall = var(0)
triggerall = statetype != A && (power >= 2000 || power >= 1000 && var(3) > 0) && (stateno != [3000,3500])
trigger1 = var(23) > 0 && (stateno = 1400 || stateno = 1403 || stateno = 1405 || stateno = 1420)
trigger2 = var(23) > 0 && (stateno = 1302 || stateno = 1851 || stateno = 1423 || stateno = 1425)
trigger3 = var(23) > 0 && (stateno = 1852 || stateno = 1100)

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;99식182 백팔십이식
[State -1]
type = ChangeState
value = 3000
triggerall = ifelse(fvar(37) = 0,command = "3400-A",command = "3400-A-R")
triggerall = ifelse(fvar(37) = 0,command != "3400-A-AC",command != "3400-A-R-AC")
triggerall = var(0)
triggerall = statetype != A && (power >= 1000 || var(3) > 0) && var(55) = 0 && var(17) = 3
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = AnimElem = 2, >= 1 && AnimElem = 2, <= 3 && stateno = 215
trigger3 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 245
trigger4 = AnimElem = 5, >= 1 && AnimElem = 5, <= 3 && stateno = 440
trigger5 = AnimElem = 2, >= 1 && AnimElem = 2, <= 4 && (stateno = 200 || stateno = 205 || stateno = 400)
trigger6 = AnimElem = 3, >= 1 && AnimElem = 3, <= 4 && stateno = 235
trigger7 = AnimElem = 5, >= 1 && AnimElem = 5, <= 4 && stateno = 250
trigger8 = AnimElem = 5, >= 1 && AnimElem = 5, <= 2 && stateno = 210
trigger9 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 410
trigger10 = var(23) > 0 && ((stateno = 750 || stateno = 760) && time >=19)
;---------------------------------------------------------------------------
;슈퍼캔슬 99식182 백팔십이식
[State -1]
type = ChangeState
value = 3000
triggerall = ifelse(fvar(37) = 0,command = "3400-A",command = "3400-A-R")
triggerall = ifelse(fvar(37) = 0,command != "3400-A-AC",command != "3400-A-R-AC")
triggerall = var(0)
triggerall = statetype != A && (power >= 2000 || power >= 1000 && var(3) > 0) && (stateno != [3000,3500]) && var(17) = 3
trigger1 = var(23) > 0 && (stateno = 1400 || stateno = 1403 || stateno = 1405 || stateno = 1420)
trigger2 = var(23) > 0 && (stateno = 1302 || stateno = 1851 || stateno = 1423 || stateno = 1425)
trigger3 = var(23) > 0 && (stateno = 1852 || stateno = 1100)

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;02식182 백팔십이식
[State -1]
type = ChangeState
value = 3000
triggerall = ifelse(fvar(37) = 0,command = "3400-A",command = "3400-A-R")
triggerall = ifelse(fvar(37) = 0,command != "3400-A-AC",command != "3400-A-R-AC")
triggerall = var(0)
triggerall = statetype != A && (power >= 1000 || var(3) > 0) && var(55) = 0 && var(17) = 2
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = AnimElem = 2, >= 1 && AnimElem = 2, <= 3 && stateno = 215
trigger3 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 245
trigger4 = AnimElem = 5, >= 1 && AnimElem = 5, <= 3 && stateno = 440
trigger5 = AnimElem = 2, >= 1 && AnimElem = 2, <= 4 && (stateno = 200 || stateno = 205 || stateno = 400)
trigger6 = AnimElem = 3, >= 1 && AnimElem = 3, <= 4 && stateno = 235
trigger7 = AnimElem = 5, >= 1 && AnimElem = 5, <= 4 && stateno = 250
trigger8 = AnimElem = 5, >= 1 && AnimElem = 5, <= 2 && stateno = 210
trigger9 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 410
trigger10 = var(23) > 0 && ((stateno = 750 || stateno = 760) && time >=19)
;---------------------------------------------------------------------------
;슈퍼캔슬 02식182 백팔십이식
[State -1]
type = ChangeState
value = 3000
triggerall = ifelse(fvar(37) = 0,command = "3400-A",command = "3400-A-R")
triggerall = ifelse(fvar(37) = 0,command != "3400-A-AC",command != "3400-A-R-AC")
triggerall = var(0)
triggerall = statetype != A && (power >= 2000 || power >= 1000 && var(3) > 0) && (stateno != [3000,3500]) && var(17) = 2
trigger1 = var(23) > 0 && (stateno = 1400 || stateno = 1403 || stateno = 1405 || stateno = 1420)
trigger2 = var(23) > 0 && (stateno = 1302 || stateno = 1851 || stateno = 1423 || stateno = 1425)
trigger3 = var(23) > 0 && (stateno = 1852 || stateno = 1100)

;---------------------------------------------------------------------------

;======================================================================================================================================
;---------------------------------------------------------------------------
;백식 귀신 태우기 약(쿠사나기버젼)
[State -1]
type = ChangeState
value = ifelse(var(17)=1,1400,1405)
triggerall = ifelse(fvar(37) = 0,command = "100_x",command = "100_x-R")
triggerall = var(0)
triggerall = statetype != A && var(55) = 0
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = AnimElem = 2, >= 1 && AnimElem = 2, <= 3 && stateno = 215
trigger3 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 245
trigger4 = AnimElem = 5, >= 1 && AnimElem = 5, <= 3 && stateno = 440
trigger5 = AnimElem = 2, >= 1 && AnimElem = 2, <= 4 && (stateno = 200 || stateno = 205 || stateno = 400)
trigger6 = AnimElem = 3, >= 1 && AnimElem = 3, <= 4 && stateno = 235
trigger7 = AnimElem = 5, >= 1 && AnimElem = 5, <= 4 && stateno = 250
trigger8 = AnimElem = 5, >= 1 && AnimElem = 5, <= 2 && stateno = 210
trigger9 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 410
trigger10 = var(23) > 0 && ((stateno = 750 || stateno = 760) && time >=19)
;---------------------------------------------------------------------------
;백식 귀신 태우기 약(쿠사나기버젼)-2k2 mode
[State -1]
type = ChangeState
value = 1400
triggerall = ifelse(fvar(37) = 0,command = "100_x",command = "100_x-R")
triggerall = var(0)
triggerall = (stateno != [1400,1499]) && (stateno != [3000,9999]) && var(17) = 1
triggerall = (var(3) > -128 || (power >= 10009 && stateno != [0,999])) && (statetype != A && (stateno != [3000,3500]))
trigger1 = stateno = 200 || stateno = 205 || stateno = 210 || stateno = 215 || stateno = 230
trigger2 = stateno = 235 || stateno = 240 || stateno = 245 || stateno = 250 || stateno = 400
trigger3 = stateno = 410 || stateno = 430 || stateno = 440
trigger4 = var(21) > 0 && (stateno != 1853)
trigger5 = var(23) > 0 && ((stateno = 750 || stateno = 760) && time <=18)

;---------------------------------------------------------------------------
;백식 귀신 태우기 강(쿠사나기버젼)
[State -1]
type = ChangeState
value = ifelse(var(17)=1,1420,1425)
triggerall = ifelse(fvar(37) = 0,command = "100_y",command = "100_y-R")
triggerall = var(0)
triggerall = statetype != A && var(55) = 0
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = AnimElem = 2, >= 1 && AnimElem = 2, <= 3 && stateno = 215
trigger3 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 245
trigger4 = AnimElem = 5, >= 1 && AnimElem = 5, <= 3 && stateno = 440
trigger5 = AnimElem = 2, >= 1 && AnimElem = 2, <= 4 && (stateno = 200 || stateno = 205 || stateno = 400)
trigger6 = AnimElem = 3, >= 1 && AnimElem = 3, <= 4 && stateno = 235
trigger7 = AnimElem = 5, >= 1 && AnimElem = 5, <= 4 && stateno = 250
trigger8 = AnimElem = 5, >= 1 && AnimElem = 5, <= 2 && stateno = 210
trigger9 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 410
trigger10 = var(23) > 0 && ((stateno = 750 || stateno = 760) && time >=19)
;---------------------------------------------------------------------------
;백식 귀신 태우기 강(쿠사나기버젼)-2k2 mode
[State -1]
type = ChangeState
value = 1420
triggerall = ifelse(fvar(37) = 0,command = "100_y",command = "100_y-R")
triggerall = var(0)
triggerall = (stateno != [1400,1499]) && (stateno != [3000,9999]) && var(17) = 1
triggerall = (var(3) > -128 || (power >= 10009 && stateno != [0,999])) && (statetype != A && (stateno != [3000,3500]))
trigger1 = stateno = 200 || stateno = 205 || stateno = 210 || stateno = 215 || stateno = 230
trigger2 = stateno = 235 || stateno = 240 || stateno = 245 || stateno = 250 || stateno = 400
trigger3 = stateno = 410 || stateno = 430 || stateno = 440
trigger4 = var(21) > 0 && (stateno != 1853)
trigger5 = var(23) > 0 && ((stateno = 750 || stateno = 760) && time <=18)

;---------------------------------------------------------------------------
;RED 킥 & 농차 약
[State -1]
type = ChangeState
value = ifelse(var(17)=1,1800,1500)
triggerall = ifelse(fvar(37) = 0,command = "RED-kick_a",command = "RED-kick_a-R")
triggerall = var(0)
triggerall = statetype != A && var(55) = 0
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = AnimElem = 2, >= 1 && AnimElem = 2, <= 3 && stateno = 215
trigger3 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 245
trigger4 = AnimElem = 5, >= 1 && AnimElem = 5, <= 3 && stateno = 440
trigger5 = AnimElem = 2, >= 1 && AnimElem = 2, <= 4 && (stateno = 200 || stateno = 205 || stateno = 400)
trigger6 = AnimElem = 3, >= 1 && AnimElem = 3, <= 4 && stateno = 235
trigger7 = AnimElem = 5, >= 1 && AnimElem = 5, <= 4 && stateno = 250
trigger8 = AnimElem = 5, >= 1 && AnimElem = 5, <= 2 && stateno = 210
trigger9 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 410
trigger10 = var(23) > 0 && ((stateno = 750 || stateno = 760) && time >=19)
;---------------------------------------------------------------------------
;RED 킥 & 농차 약-2k2 mode
[State -1]
type = ChangeState
value = ifelse(var(17)=1,1800,1500)
triggerall = ifelse(fvar(37) = 0,command = "RED-kick_a",command = "RED-kick_a-R")
triggerall = var(0)
triggerall = (stateno != [1500,1599]) && (stateno != [1800,1849]) && (stateno != [3000,9999])
triggerall = (var(3) > -128 || (power >= 10009 && stateno != [0,999])) && (statetype != A && (stateno != [3000,3500]))
trigger1 = stateno = 200 || stateno = 205 || stateno = 210 || stateno = 215 || stateno = 230
trigger2 = stateno = 235 || stateno = 240 || stateno = 245 || stateno = 250 || stateno = 400
trigger3 = stateno = 410 || stateno = 430 || stateno = 440
trigger4 = var(21) > 0 && (stateno != 1853)
trigger5 = var(23) > 0 && ((stateno = 750 || stateno = 760) && time <=18)

;---------------------------------------------------------------------------
;RED 킥 & 농차 강
[State -1]
type = ChangeState
value = ifelse(var(17)=1,1820,1550)
triggerall = ifelse(fvar(37) = 0,command = "RED-kick_b",command = "RED-kick_b-R")
triggerall = var(0)
triggerall = statetype != A && var(55) = 0
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = AnimElem = 2, >= 1 && AnimElem = 2, <= 3 && stateno = 215
trigger3 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 245
trigger4 = AnimElem = 5, >= 1 && AnimElem = 5, <= 3 && stateno = 440
trigger5 = AnimElem = 2, >= 1 && AnimElem = 2, <= 4 && (stateno = 200 || stateno = 205 || stateno = 400)
trigger6 = AnimElem = 3, >= 1 && AnimElem = 3, <= 4 && stateno = 235
trigger7 = AnimElem = 5, >= 1 && AnimElem = 5, <= 4 && stateno = 250
trigger8 = AnimElem = 5, >= 1 && AnimElem = 5, <= 2 && stateno = 210
trigger9 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 410
trigger10 = var(23) > 0 && ((stateno = 750 || stateno = 760) && time >=19)
;---------------------------------------------------------------------------
;RED 킥 & 농차 강-2k2 mode
[State -1]
type = ChangeState
value = ifelse(var(17)=1,1820,1550)
triggerall = ifelse(fvar(37) = 0,command = "RED-kick_b",command = "RED-kick_b-R")
triggerall = var(0)
triggerall = (stateno != [1500,1599]) && (stateno != [1800,1849]) && (stateno != [3000,9999])
triggerall = (var(3) > -128 || (power >= 10009 && stateno != [0,999])) && (statetype != A && (stateno != [3000,3500]))
trigger1 = stateno = 200 || stateno = 205 || stateno = 210 || stateno = 215 || stateno = 230
trigger2 = stateno = 235 || stateno = 240 || stateno = 245 || stateno = 250 || stateno = 400
trigger3 = stateno = 410 || stateno = 430 || stateno = 440
trigger4 = var(21) > 0 && (stateno != 1853)
trigger5 = var(23) > 0 && ((stateno = 750 || stateno = 760) && time <=18)

;---------------------------------------------------------------------------
;이백십이식 금월 양 약
[State -1]
type = ChangeState
value = 1850
triggerall = ifelse(fvar(37) = 0,command = "427_a",command = "427_a-R")
triggerall = ifelse(fvar(37) = 0,command != "427_a-AC",command != "427_a-R-AC")
triggerall = var(0)
triggerall = statetype != A && var(55) = 0; && var(17) = 2
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = AnimElem = 2, >= 1 && AnimElem = 2, <= 3 && stateno = 215
trigger3 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 245
trigger4 = AnimElem = 5, >= 1 && AnimElem = 5, <= 3 && stateno = 440
trigger5 = AnimElem = 2, >= 1 && AnimElem = 2, <= 4 && (stateno = 200 || stateno = 205 || stateno = 400)
trigger6 = AnimElem = 3, >= 1 && AnimElem = 3, <= 4 && stateno = 235
trigger7 = AnimElem = 5, >= 1 && AnimElem = 5, <= 4 && stateno = 250
trigger8 = AnimElem = 5, >= 1 && AnimElem = 5, <= 2 && stateno = 210
trigger9 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 410
trigger10 = var(23) > 0 && ((stateno = 750 || stateno = 760) && time >=19)
;---------------------------------------------------------------------------
;이백십이식 금월 양 약-2k2 mode
[State -1]
type = ChangeState
value = 1850
triggerall = ifelse(fvar(37) = 0,command = "427_a",command = "427_a-R")
triggerall = ifelse(fvar(37) = 0,command != "427_a-AC",command != "427_a-R-AC")
triggerall = var(0)
triggerall = (stateno != [1850,1899]) && (stateno != [3000,9999]); && var(17) = 2
triggerall = (var(3) > -128 || (power >= 10009 && stateno != [0,999])) && (statetype != A && (stateno != [3000,3500]))
trigger1 = stateno = 200 || stateno = 205 || stateno = 210 || stateno = 215 || stateno = 230
trigger2 = stateno = 235 || stateno = 240 || stateno = 245 || stateno = 250 || stateno = 400
trigger3 = stateno = 410 || stateno = 430 || stateno = 440
trigger4 = var(21) > 0 && (stateno != 1853)
trigger5 = var(23) > 0 && ((stateno = 750 || stateno = 760) && time <=18)

;---------------------------------------------------------------------------
;사백이십칠식 역철 약
[State -1]
type = ChangeState
value = 1300
triggerall = ifelse(fvar(37) = 0,command = "427_a",command = "427_a-R")
triggerall = ifelse(fvar(37) = 0,command != "427_a-AC",command != "427_a-R-AC")
triggerall = var(0)
triggerall = statetype != A && var(55) = 0 && var(17) = 3
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = AnimElem = 2, >= 1 && AnimElem = 2, <= 3 && stateno = 215
trigger3 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 245
trigger4 = AnimElem = 5, >= 1 && AnimElem = 5, <= 3 && stateno = 440
trigger5 = AnimElem = 2, >= 1 && AnimElem = 2, <= 4 && (stateno = 200 || stateno = 205 || stateno = 400)
trigger6 = AnimElem = 3, >= 1 && AnimElem = 3, <= 4 && stateno = 235
trigger7 = AnimElem = 5, >= 1 && AnimElem = 5, <= 4 && stateno = 250
trigger8 = AnimElem = 5, >= 1 && AnimElem = 5, <= 2 && stateno = 210
trigger9 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 410
trigger10 = var(23) > 0 && ((stateno = 750 || stateno = 760) && time >=19)
;---------------------------------------------------------------------------
;사백이십칠식 역철 약-2k2 mode
[State -1]
type = ChangeState
value = 1300
triggerall = ifelse(fvar(37) = 0,command = "427_a",command = "427_a-R")
triggerall = ifelse(fvar(37) = 0,command != "427_a-AC",command != "427_a-R-AC")
triggerall = var(0)
triggerall = (stateno != [1300,1399]) && (stateno != [3000,9999]) && var(17) = 3
triggerall = (var(3) > -128 || (power >= 10009 && stateno != [0,999])) && (statetype != A && (stateno != [3000,3500]))
trigger1 = stateno = 200 || stateno = 205 || stateno = 210 || stateno = 215 || stateno = 230
trigger2 = stateno = 235 || stateno = 240 || stateno = 245 || stateno = 250 || stateno = 400
trigger3 = stateno = 410 || stateno = 430 || stateno = 440
trigger4 = var(21) > 0 && (stateno != 1853)
trigger5 = var(23) > 0 && ((stateno = 750 || stateno = 760) && time <=18)

;---------------------------------------------------------------------------
;이백십이식 금월 양 강
[State -1]
type = ChangeState
value = 1856
triggerall = ifelse(fvar(37) = 0,command = "427_b",command = "427_b-R")
triggerall = ifelse(fvar(37) = 0,command != "427_b-AC",command != "427_b-R-AC")
triggerall = var(0)
triggerall = statetype != A && var(55) = 0; && var(17) = 2
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = AnimElem = 2, >= 1 && AnimElem = 2, <= 3 && stateno = 215
trigger3 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 245
trigger4 = AnimElem = 5, >= 1 && AnimElem = 5, <= 3 && stateno = 440
trigger5 = AnimElem = 2, >= 1 && AnimElem = 2, <= 4 && (stateno = 200 || stateno = 205 || stateno = 400)
trigger6 = AnimElem = 3, >= 1 && AnimElem = 3, <= 4 && stateno = 235
trigger7 = AnimElem = 5, >= 1 && AnimElem = 5, <= 4 && stateno = 250
trigger8 = AnimElem = 5, >= 1 && AnimElem = 5, <= 2 && stateno = 210
trigger9 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 410
trigger10 = var(23) > 0 && ((stateno = 750 || stateno = 760) && time >=19)
;---------------------------------------------------------------------------
;이백십이식 금월 양 강-2k2 mode
[State -1]
type = ChangeState
value = 1856
triggerall = ifelse(fvar(37) = 0,command = "427_b",command = "427_b-R")
triggerall = ifelse(fvar(37) = 0,command != "427_b-AC",command != "427_b-R-AC")
triggerall = var(0)
triggerall = (stateno != [1850,1899]) && (stateno != [3000,9999]); && var(17) = 2
triggerall = (var(3) > -128 || (power >= 10009 && stateno != [0,999])) && (statetype != A && (stateno != [3000,3500]))
trigger1 = stateno = 200 || stateno = 205 || stateno = 210 || stateno = 215 || stateno = 230
trigger2 = stateno = 235 || stateno = 240 || stateno = 245 || stateno = 250 || stateno = 400
trigger3 = stateno = 410 || stateno = 430 || stateno = 440
trigger4 = var(21) > 0 && (stateno != 1853)
trigger5 = var(23) > 0 && ((stateno = 750 || stateno = 760) && time <=18)

;---------------------------------------------------------------------------
;사백이십칠식 역철 강
[State -1]
type = ChangeState
value = 1350
triggerall = ifelse(fvar(37) = 0,command = "427_b",command = "427_b-R")
triggerall = ifelse(fvar(37) = 0,command != "427_b-AC",command != "427_b-R-AC")
triggerall = var(0)
triggerall = statetype != A && var(55) = 0 && var(17) = 3
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = AnimElem = 2, >= 1 && AnimElem = 2, <= 3 && stateno = 215
trigger3 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 245
trigger4 = AnimElem = 5, >= 1 && AnimElem = 5, <= 3 && stateno = 440
trigger5 = AnimElem = 2, >= 1 && AnimElem = 2, <= 4 && (stateno = 200 || stateno = 205 || stateno = 400)
trigger6 = AnimElem = 3, >= 1 && AnimElem = 3, <= 4 && stateno = 235
trigger7 = AnimElem = 5, >= 1 && AnimElem = 5, <= 4 && stateno = 250
trigger8 = AnimElem = 5, >= 1 && AnimElem = 5, <= 2 && stateno = 210
trigger9 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 410
trigger10 = var(23) > 0 && ((stateno = 750 || stateno = 760) && time >=19)
;---------------------------------------------------------------------------
;사백이십칠식 역철 강-2k2 mode
[State -1]
type = ChangeState
value = 1350
triggerall = ifelse(fvar(37) = 0,command = "427_b",command = "427_b-R")
triggerall = ifelse(fvar(37) = 0,command != "427_b-AC",command != "427_b-R-AC")
triggerall = var(0)
triggerall = (stateno != [1300,1399]) && (stateno != [3000,9999]) && var(17) = 3
triggerall = (var(3) > -128 || (power >= 10009 && stateno != [0,999])) && (statetype != A && (stateno != [3000,3500]))
trigger1 = stateno = 200 || stateno = 205 || stateno = 210 || stateno = 215 || stateno = 230
trigger2 = stateno = 235 || stateno = 240 || stateno = 245 || stateno = 250 || stateno = 400
trigger3 = stateno = 410 || stateno = 430 || stateno = 440
trigger4 = var(21) > 0 && (stateno != 1853)
trigger5 = var(23) > 0 && ((stateno = 750 || stateno = 760) && time <=18)

;---------------------------------------------------------------------------
;백십사식 황물기
[State -1]
type = ChangeState
value = 1100
triggerall = ifelse(fvar(37) = 0,command = "114_x",command = "114_x-R")
triggerall = ifelse(fvar(37) = 0,command != "114_x-AC",command != "114_x-R-AC")
triggerall = var(0)
triggerall = statetype != A && var(55) = 0 && var(17) = 2
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = AnimElem = 2, >= 1 && AnimElem = 2, <= 3 && stateno = 215
trigger3 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 245
trigger4 = AnimElem = 5, >= 1 && AnimElem = 5, <= 3 && stateno = 440
trigger5 = AnimElem = 2, >= 1 && AnimElem = 2, <= 4 && (stateno = 200 || stateno = 205 || stateno = 400)
trigger6 = AnimElem = 3, >= 1 && AnimElem = 3, <= 4 && stateno = 235
trigger7 = AnimElem = 5, >= 1 && AnimElem = 5, <= 4 && stateno = 250
trigger8 = AnimElem = 5, >= 1 && AnimElem = 5, <= 2 && stateno = 210
trigger9 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 410
trigger10 = var(23) > 0 && ((stateno = 750 || stateno = 760) && time >=19)
;---------------------------------------------------------------------------
;백십사식 황물기-2k2 mode
[State -1]
type = ChangeState
value = 1100
triggerall = ifelse(fvar(37) = 0,command = "114_x",command = "114_x-R")
triggerall = ifelse(fvar(37) = 0,command != "114_x-AC",command != "114_x-R-AC")
triggerall = var(0)
triggerall = (stateno != [1100,1199]) && (stateno != [3000,9999]) && var(17) = 2
triggerall = (var(3) > -128 || (power >= 10009 && stateno != [0,999])) && (statetype != A && (stateno != [3000,3500]))
trigger1 = stateno = 200 || stateno = 205 || stateno = 210 || stateno = 215 || stateno = 230
trigger2 = stateno = 235 || stateno = 240 || stateno = 245 || stateno = 250 || stateno = 400
trigger3 = stateno = 410 || stateno = 430 || stateno = 440
trigger4 = var(21) > 0 && (stateno != 1853)
trigger5 = var(23) > 0 && ((stateno = 750 || stateno = 760) && time <=18)

;---------------------------------------------------------------------------
;115식 독물기
[State -1]
type = ChangeState
value = 1200
triggerall = ifelse(fvar(37) = 0,command = "115_y",command = "115_y-R")
triggerall = ifelse(fvar(37) = 0,command != "115_y-AC",command != "115_y-R-AC")
triggerall = var(0)
triggerall = statetype != A && var(55) = 0 && var(17) = 2
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = AnimElem = 2, >= 1 && AnimElem = 2, <= 3 && stateno = 215
trigger3 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 245
trigger4 = AnimElem = 5, >= 1 && AnimElem = 5, <= 3 && stateno = 440
trigger5 = AnimElem = 2, >= 1 && AnimElem = 2, <= 4 && (stateno = 200 || stateno = 205 || stateno = 400)
trigger6 = AnimElem = 3, >= 1 && AnimElem = 3, <= 4 && stateno = 235
trigger7 = AnimElem = 5, >= 1 && AnimElem = 5, <= 4 && stateno = 250
trigger8 = AnimElem = 5, >= 1 && AnimElem = 5, <= 2 && stateno = 210
trigger9 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 410
trigger10 = var(23) > 0 && ((stateno = 750 || stateno = 760) && time >=19)
;---------------------------------------------------------------------------
;115식 독물기-2k2 mode
[State -1]
type = ChangeState
value = 1200
triggerall = ifelse(fvar(37) = 0,command = "115_y",command = "115_y-R")
triggerall = ifelse(fvar(37) = 0,command != "115_y-AC",command != "115_y-R-AC")
triggerall = var(0)
triggerall = (stateno != [1200,1299]) && (stateno != [3000,9999]) && var(17) = 2
triggerall = (var(3) > -128 || (power >= 10009 && stateno != [0,999])) && (statetype != A && (stateno != [3000,3500]))
trigger1 = stateno = 200 || stateno = 205 || stateno = 210 || stateno = 215 || stateno = 230
trigger2 = stateno = 235 || stateno = 240 || stateno = 245 || stateno = 250 || stateno = 400
trigger3 = stateno = 410 || stateno = 430 || stateno = 440
trigger4 = var(21) > 0 && (stateno != 1853)
trigger5 = var(23) > 0 && ((stateno = 750 || stateno = 760) && time <=18)

;---------------------------------------------------------------------------
;75식 개 약
[State -1]
type = ChangeState
value = 1000
triggerall = ifelse(fvar(37) = 0,command = "75_a",command = "75_a-R")
triggerall = ifelse(fvar(37) = 0,command != "75_a-AC",command != "75_a-R-AC")
triggerall = var(0)
triggerall = statetype != A && var(55) = 0
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = AnimElem = 2, >= 1 && AnimElem = 2, <= 3 && stateno = 215
trigger3 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 245
trigger4 = AnimElem = 5, >= 1 && AnimElem = 5, <= 3 && stateno = 440
trigger5 = AnimElem = 2, >= 1 && AnimElem = 2, <= 4 && (stateno = 200 || stateno = 205 || stateno = 400)
trigger6 = AnimElem = 3, >= 1 && AnimElem = 3, <= 4 && stateno = 235
trigger7 = AnimElem = 5, >= 1 && AnimElem = 5, <= 4 && stateno = 250
trigger8 = AnimElem = 5, >= 1 && AnimElem = 5, <= 2 && stateno = 210
trigger9 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 410
trigger10 = var(23) > 0 && ((stateno = 750 || stateno = 760) && time >=19)
;---------------------------------------------------------------------------
;75식 개 약-2k2 mode
[State -1]
type = ChangeState
value = 1000
triggerall = ifelse(fvar(37) = 0,command = "75_a",command = "75_a-R")
triggerall = ifelse(fvar(37) = 0,command != "75_a-AC",command != "75_a-R-AC")
triggerall = var(0)
triggerall = (stateno != [1000,1099]) && (stateno != [3000,9999])
triggerall = (var(3) > -128 || (power >= 10009 && stateno != [0,999])) && (statetype != A && (stateno != [3000,3500]))
trigger1 = stateno = 200 || stateno = 205 || stateno = 210 || stateno = 215 || stateno = 230
trigger2 = stateno = 235 || stateno = 240 || stateno = 245 || stateno = 250 || stateno = 400
trigger3 = stateno = 410 || stateno = 430 || stateno = 440
trigger4 = var(21) > 0 && (stateno != 1853)
trigger5 = var(23) > 0 && ((stateno = 750 || stateno = 760) && time <=18)

;---------------------------------------------------------------------------
;75식 개 강
[State -1]
type = ChangeState
value = 1006
triggerall = ifelse(fvar(37) = 0,command = "75_b",command = "75_b-R")
triggerall = ifelse(fvar(37) = 0,command != "75_b-AC",command != "75_b-R-AC")
triggerall = var(0)
triggerall = statetype != A && var(55) = 0
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = AnimElem = 2, >= 1 && AnimElem = 2, <= 3 && stateno = 215
trigger3 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 245
trigger4 = AnimElem = 5, >= 1 && AnimElem = 5, <= 3 && stateno = 440
trigger5 = AnimElem = 2, >= 1 && AnimElem = 2, <= 4 && (stateno = 200 || stateno = 205 || stateno = 400)
trigger6 = AnimElem = 3, >= 1 && AnimElem = 3, <= 4 && stateno = 235
trigger7 = AnimElem = 5, >= 1 && AnimElem = 5, <= 4 && stateno = 250
trigger8 = AnimElem = 5, >= 1 && AnimElem = 5, <= 2 && stateno = 210
trigger9 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 410
trigger10 = var(23) > 0 && ((stateno = 750 || stateno = 760) && time >=19)
;---------------------------------------------------------------------------
;75식 개 강-2k2 mode
[State -1]
type = ChangeState
value = 1006
triggerall = ifelse(fvar(37) = 0,command = "75_b",command = "75_b-R")
triggerall = ifelse(fvar(37) = 0,command != "75_b-AC",command != "75_b-R-AC")
triggerall = var(0)
triggerall = (stateno != [1000,1099]) && (stateno != [3000,9999])
triggerall = (var(3) > -128 || (power >= 10009 && stateno != [0,999])) && (statetype != A && (stateno != [3000,3500]))
trigger1 = stateno = 200 || stateno = 205 || stateno = 210 || stateno = 215 || stateno = 230
trigger2 = stateno = 235 || stateno = 240 || stateno = 245 || stateno = 250 || stateno = 400
trigger3 = stateno = 410 || stateno = 430 || stateno = 440
trigger4 = var(21) > 0 && (stateno != 1853)
trigger5 = var(23) > 0 && ((stateno = 750 || stateno = 760) && time <=18)

;---------------------------------------------------------------------------
;백팔식 어둠 쫓기 약
[State -1]
type = ChangeState
value = 1700
triggerall = ifelse(fvar(37) = 0,command = "114_x",command = "114_x-R")
triggerall = ifelse(fvar(37) = 0,command != "114_x-AC",command != "114_x-R-AC")
triggerall = var(0)
triggerall = statetype != A && numProjID(1791) = 0 && var(55) = 0 && var(17) = 1
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = AnimElem = 2, >= 1 && AnimElem = 2, <= 3 && stateno = 215
trigger3 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 245
trigger4 = AnimElem = 5, >= 1 && AnimElem = 5, <= 3 && stateno = 440
trigger5 = AnimElem = 2, >= 1 && AnimElem = 2, <= 4 && (stateno = 200 || stateno = 205 || stateno = 400)
trigger6 = AnimElem = 3, >= 1 && AnimElem = 3, <= 4 && stateno = 235
trigger7 = AnimElem = 5, >= 1 && AnimElem = 5, <= 4 && stateno = 250
trigger8 = AnimElem = 5, >= 1 && AnimElem = 5, <= 2 && stateno = 210
trigger9 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 410
trigger10 = var(23) > 0 && ((stateno = 750 || stateno = 760) && time >=19)

;---------------------------------------------------------------------------
;백팔식 어둠 쫓기 강
[State -1]
type = ChangeState
value = 1750
triggerall = ifelse(fvar(37) = 0,command = "115_y",command = "115_y-R")
triggerall = ifelse(fvar(37) = 0,command != "115_y-AC",command != "115_y-R-AC")
triggerall = var(0)
triggerall = statetype != A && numProjID(1791) = 0 && var(55) = 0 && var(17) = 1
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = AnimElem = 2, >= 1 && AnimElem = 2, <= 3 && stateno = 215
trigger3 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 245
trigger4 = AnimElem = 5, >= 1 && AnimElem = 5, <= 3 && stateno = 440
trigger5 = AnimElem = 2, >= 1 && AnimElem = 2, <= 4 && (stateno = 200 || stateno = 205 || stateno = 400)
trigger6 = AnimElem = 3, >= 1 && AnimElem = 3, <= 4 && stateno = 235
trigger7 = AnimElem = 5, >= 1 && AnimElem = 5, <= 4 && stateno = 250
trigger8 = AnimElem = 5, >= 1 && AnimElem = 5, <= 2 && stateno = 210
trigger9 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 410
trigger10 = var(23) > 0 && ((stateno = 750 || stateno = 760) && time >=19)

;---------------------------------------------------------------------------
;구백십식 야타기 약
[State -1]
type = ChangeState
value = 1600
triggerall = (ifelse(fvar(37) = 0,command = "1600_x",command = "1600_x-R"))
triggerall = (ifelse(fvar(37) = 0,command != "1600_x-AC",command != "1600_x-R-AC"))
triggerall = var(0)
triggerall = statetype != A && var(55) = 0 && var(17) = 1
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = AnimElem = 2, >= 1 && AnimElem = 2, <= 3 && stateno = 215
trigger3 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 245
trigger4 = AnimElem = 5, >= 1 && AnimElem = 5, <= 3 && stateno = 440
trigger5 = AnimElem = 2, >= 1 && AnimElem = 2, <= 4 && (stateno = 200 || stateno = 205 || stateno = 400)
trigger6 = AnimElem = 3, >= 1 && AnimElem = 3, <= 4 && stateno = 235
trigger7 = AnimElem = 5, >= 1 && AnimElem = 5, <= 4 && stateno = 250
trigger8 = AnimElem = 5, >= 1 && AnimElem = 5, <= 2 && stateno = 210
trigger9 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 410
trigger10 = var(23) > 0 && ((stateno = 750 || stateno = 760) && time >=19)

;---------------------------------------------------------------------------
;구백십식 야타기 강
[State -1]
type = ChangeState
value = 1600
triggerall = (ifelse(fvar(37) = 0,command = "1600_y",command = "1600_y-R"))
triggerall = (ifelse(fvar(37) = 0,command != "1600_y-AC",command != "1600_y-R-AC"))
triggerall = var(0)
triggerall = statetype != A && var(55) = 0 && var(17) = 1
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = AnimElem = 2, >= 1 && AnimElem = 2, <= 3 && stateno = 215
trigger3 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 245
trigger4 = AnimElem = 5, >= 1 && AnimElem = 5, <= 3 && stateno = 440
trigger5 = AnimElem = 2, >= 1 && AnimElem = 2, <= 4 && (stateno = 200 || stateno = 205 || stateno = 400)
trigger6 = AnimElem = 3, >= 1 && AnimElem = 3, <= 4 && stateno = 235
trigger7 = AnimElem = 5, >= 1 && AnimElem = 5, <= 4 && stateno = 250
trigger8 = AnimElem = 5, >= 1 && AnimElem = 5, <= 2 && stateno = 210
trigger9 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 410
trigger10 = var(23) > 0 && ((stateno = 750 || stateno = 760) && time >=19)

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
; FWD + B 외식 굉부.양 노멀 (쿠사나기버젼)
[State -1]
type = ChangeState
value = 700
triggerall = stateno != [700,799]
triggerall = command = "a" && command = "holdfwd"
triggerall = command != "holddown" && statetype != A && statetype != C && Palno < 7 && var(55) = 0
trigger1 = ctrl
trigger2 = (stateno = 100 && time > 3)

;---------------------------------------------------------------------------
; FWD + B 외식 굉부.양 노멀 (쿄2002버젼)
[State -1]
type = ChangeState
value = 710
triggerall = stateno != [700,799]
triggerall = command = "a" && command = "holdfwd"
triggerall = command != "holddown" && statetype != A && statetype != C && Palno > 6 && var(55) = 0
trigger1 = ctrl
trigger2 = (stateno = 100 && time > 3)

;---------------------------------------------------------------------------
; FWD + B cancelled 외식 굉부양 캔슬 (쿠사나기버젼)
[State -1]
type = ChangeState
value = 750
triggerall = stateno != [700,799]
triggerall = command = "a" && command = "holdfwd"
triggerall = command != "holddown" && statetype != A && Palno < 7 && var(55) = 0
trigger1 = AnimElem = 2, >= 1 && AnimElem = 2, <= 3 && stateno = 215
trigger2 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 245
trigger3 = AnimElem = 5, >= 1 && AnimElem = 5, <= 3 && stateno = 440
trigger4 = AnimElem = 2, >= 1 && AnimElem = 2, <= 4 && (stateno = 200 || stateno = 205 || stateno = 400)
trigger5 = AnimElem = 3, >= 1 && AnimElem = 3, <= 4 && stateno = 235
trigger6 = AnimElem = 5, >= 1 && AnimElem = 5, <= 4 && stateno = 250
trigger7 = AnimElem = 5, >= 1 && AnimElem = 5, <= 2 && stateno = 210
trigger8 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 410
trigger9 = var(23) > 0 && ((stateno = 750 || stateno = 760) && time >=19)

;---------------------------------------------------------------------------
; FWD + B cancelled 외식 굉부양 캔슬 (쿄2002버젼)
[State -1]
type = ChangeState
value = 760
triggerall = stateno != [700,799]
triggerall = command = "a" && command = "holdfwd"
triggerall = command != "holddown" && statetype != A && Palno > 6 && var(55) = 0
trigger1 = AnimElem = 2, >= 1 && AnimElem = 2, <= 3 && stateno = 215
trigger2 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 245
trigger3 = AnimElem = 5, >= 1 && AnimElem = 5, <= 3 && stateno = 440
trigger4 = AnimElem = 2, >= 1 && AnimElem = 2, <= 4 && (stateno = 200 || stateno = 205 || stateno = 400)
trigger5 = AnimElem = 3, >= 1 && AnimElem = 3, <= 4 && stateno = 235
trigger6 = AnimElem = 5, >= 1 && AnimElem = 5, <= 4 && stateno = 250
trigger7 = AnimElem = 5, >= 1 && AnimElem = 5, <= 2 && stateno = 210
trigger8 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 410
trigger9 = var(23) > 0 && ((stateno = 750 || stateno = 760) && time >=19)

;외식 나락 떨구기
[State -1]
type = ChangeState
value = 660
triggerall = command = "y" && command = "holddown"
triggerall = statetype = A && var(55) = 0
trigger1 = ctrl || stateno = 105

;팔십팔식
[State -1]
type = ChangeState
value = 730
triggerall = command = "b" && command = "holdfwd" && command = "holddown" && statetype != A
triggerall = var(55) = 0
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = AnimElem = 2, >= 1 && AnimElem = 2, <= 3 && stateno = 215
trigger3 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 245
trigger4 = AnimElem = 5, >= 1 && AnimElem = 5, <= 3 && stateno = 440
trigger5 = AnimElem = 2, >= 1 && AnimElem = 2, <= 4 && (stateno = 200 || stateno = 205 || stateno = 400)
trigger6 = AnimElem = 3, >= 1 && AnimElem = 3, <= 4 && stateno = 235
trigger7 = AnimElem = 5, >= 1 && AnimElem = 5, <= 4 && stateno = 250
trigger8 = AnimElem = 5, >= 1 && AnimElem = 5, <= 2 && stateno = 210
trigger9 = AnimElem = 3, >= 1 && AnimElem = 3, <= 3 && stateno = 410
trigger10 = var(23) > 0 && ((stateno = 750 || stateno = 760) && time >=19)

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
trigger2 = animtime >= -4 && (stateno = 200 || stateno = 205 || stateno = 400)
trigger3 = animtime >= -6 && (stateno = 430 || stateno = 230)
trigger4 = animtime >= -11 && stateno = 235

;---------------------------------------------------------------------------
;약킥
[State -1, Stand Light Kick]
type = ChangeState
value = 230+ifelse(statetype = A,400,ifelse(command = "holddown",200,ifelse(P2dist X <= 64 && P2dist X >= -64,5,0)))
triggerall = command = "a"	;(var(26) = [230,235])
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = animtime >= -4 && (stateno = 200 || stateno = 205 || stateno = 400)
trigger3 = animtime >= -6 && (stateno = 430 || stateno = 230)
trigger4 = animtime >= -11 && stateno = 235

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

;===========================================================================
;=======================================================================
;모드선택(쿠사)
[State -2]
type = varset
trigger1 = Palno < 7
var(17) = 1
ignorehitpause = 1

;모드선택(svc)
[State -2]
type = varset
trigger1 = Palno > 6
var(17) = 2
ignorehitpause = 1

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

;===========================================================================
;=======================================================================

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

;강 어둠쫒기
[state -2]
type = ChangeState
value = 1750
triggerall = stateno != 100 && ctrl
trigger1 = var(55) = 1 && statetype != A && p2bodydist X >= 180 && random <= 450

;무식MAX2
[state -2]
type = ChangeState
value = 3450
triggerall = (power >= 1000 && var(3) > 0) && life <= 250 || (power >= 2000 && var(3) > 0)
triggerall = var(55) = 1 && statetype != A && ctrl
trigger1 = random <= 150

;대사치MAX
[state -2]
type = ChangeState
value = 3200
triggerall = (power >= 1000 && var(3) > 0)
triggerall = var(55) = 1 && statetype != A && ctrl
trigger1 = (var(13) = 0 && random <= 300 && p2stateno = 5050) || random <= 100

;강대사치
[state -2]
type = ChangeState
value = 3130
triggerall = (power >= 1000 || var(3) > 0)
triggerall = var(55) = 1 && var(13) = 0 && statetype != A && ctrl
trigger1 = random <= 300 && p2stateno = 5050

;약농차
[state -2]
type = ChangeState
value = 1800
trigger1 = var(55) = 1 && var(13) = 0 && statetype != A && ctrl && random <= 800 && p2stateno = 5050

;강 금월
[state -2]
type = ChangeState
value = 1856
triggerall = (p2stateno != [5000,5500]) && stateno != 100 && var(55) = 1 && statetype != A && ctrl
trigger1 = p2dist X > 90 && p2bodydist X <= 120 && random <= 300

;야타기
[state -2]
type = ChangeState
value = 1600
triggerall = (p2stateno != [5000,5500]) && stateno != 100 && var(55) = 1 && ctrl
triggerall = p2bodydist X <= 40 && statetype != A && random <= 500
trigger1 = p2movetype = A

;달리기
[state -2]
type = ChangeState
value = 100
triggerall = stateno != 100 && var(55) = 1 && statetype != A && ctrl && random <= 650;600
triggerall = ctrl && p2movetype != A && stateno != 40 && stateno != 100 && prevstateno != 100
trigger1 = p2bodydist X > 27 && p2bodydist X <= 140

;약백식
[state -2]
type = ChangeState
value = 1400
triggerall = var(55) = 1 && (p2stateno != [5000,5500]) && statetype != A 
triggerall = random <= 800 && ctrl && p2bodydist X <= 60
trigger1 = p2movetype = A || P2statetype = A
;trigger2 = stateno = 100

;약 어둠쫒기
[state -2]
type = ChangeState
value = 1700
triggerall = stateno != 100 && var(55) = 1 && statetype != A && ctrl && random <= 450
trigger1 = p2dist X > 90 && p2bodydist X <= 120
trigger2 = stateno = 215 && (movecontact > 0 && time <= 6)
trigger3 = (AnimElem = 5, >= 1 && AnimElem = 5, <= 2 && stateno = 210) && movecontact > 0
trigger4 = stateno = 245 && (movecontact > 0 && time <= 7)

;강칠십오식개
[state -2]
type = ChangeState
value = 1006
triggerall = var(55) = 1 && statetype != A && ctrl && random <= 900
trigger1 = stateno = 215 && (movecontact > 0 && time <= 6)
trigger2 = stateno = 245 && (movecontact > 0 && time <= 7)

;D잡기
[State -2, Kung Fu Throw]
type = ChangeState
value = 825
triggerall = random <= 600 && var(55) = 1 && StateNo != 100 && StateType = S && Ctrl
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

;약백식
[state -2]
type = ChangeState
value = 1400
triggerall = (p2stateno != [5000,5500]) && var(55) = 1 && statetype != A && ctrl
trigger1 = p2bodydist X <= 55 && random <= 400

;앉아 약킥
[state -2]
type = ChangeState
value = 430
triggerall = (p2stateno != [5000,5500]) && var(55) = 1 && statetype != A && (random <= 600) && ctrl
triggerall = p2bodydist X <= 27 && p2dist X >= 0
trigger1 = ctrl || (stateno = 100 && time > 3)

;외식굉부
[state -2]
type = ChangeState
value = 700
triggerall = (p2stateno != [5000,5500]) && var(55) = 1 && statetype != A && (random <= 500) && ctrl
triggerall = p2bodydist X <= 36 && p2dist X >= 0
trigger1 = ctrl || (stateno = 100 && time > 3)
