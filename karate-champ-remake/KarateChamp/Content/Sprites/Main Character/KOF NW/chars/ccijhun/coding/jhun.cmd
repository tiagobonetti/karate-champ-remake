;==========================================================================
;                   CCI Jhun 's Command file
;
;                   By Ironmugen
;==========================================================================

;-| AI Motions |--------------------------------------------------------
[Command]
name = "AI_1"
command = U,D,F,F,B,B
time = 1

[Command]
name = "AI_2"
command = U,D,F,F,B,F
time = 1

[Command]
name = "AI_3"
command = U,D,F,F,B,D
time = 1

[Command]
name = "AI_4"
command = U,D,F,F,B,U
time = 1

[Command]
name = "AI_5"
command = U,D,F,F,U,B
time = 1

[Command]
name = "AI_6"
command = U,D,F,F,D,B
time = 1

[Command]
name = "AI_7"
command = U,D,F,F,F,B
time = 1

[Command]
name = "AI_8"
command = D,D,F,F,D,B
time = 1

[Command]
name = "AI_9"
command = D,D,F,F,F,B
time = 1

[Command]
name = "AI_10"
command = F, D, B, U
time = 1

;-| Super Motions |--------------------------------------------------------
[Command]
name = "ressou"
command = ~D, DF, F, D, DF, F, a
time = 30

[Command]
name = "ressou"
command = ~D, DF, F, D, DF, F, b
time = 30

[Command]
name = "ressou_sdm"
command = ~D, DF, F, D, DF, F, a+b
time = 30

[Command]
name = "ldm"
command = ~D, DF, F, D, DF, F, x
time = 30

[Command]
name = "ldm"
command = ~D, DF, F, D, DF, F, y
time = 30

[Command]
name = "hououkyaku"
command = ~D, DB, B, F, a+b
time = 30

;-| Special Motions |------------------------------------------------------
[Command]
name = "stance_a"
command = ~D, D, x
time = 20

[Command]
name = "stance_b"
command = ~D, D, a
time = 20

[Command]
name = "hakigeki1"
command = ~D, DB, B, x
time = 20

[Command]
name = "hakigeki2"
command = ~D, DB, B, y
time = 20

[Command]
name = "kuusajin1"
command = ~20$D, U, x
time = 20

[Command]
name = "kuusajin2"
command = ~20$D, U, y
time = 20

[Command]
name = "mangetsuzan1"
command = ~D, DB, B, a
time = 20

[Command]
name = "mangetsuzan2"
command = ~D, DB, B, b
time = 20

[Command]
name = "sanrangeki1"
command = ~D, DF, F, x
time = 20

[Command]
name = "sanrangeki2"
command = ~D, DF, F, y
time = 20

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery"
command = x+a
time = 1

[Command]
name = "recovery"
command = c
time = 1

[Command]
name = "cd"
command = b+y
time = 1

[Command]
name = "ab"
command = a+x
time = 1

[Command]
name = "abc"
command = a+y+x
time = 1

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
name = "hold_a"
command = /$a
time = 1

[Command]
name = "hold_b"
command = /$b
time = 1

[Command]
name = "hold_c"
command = /$c
time = 1

[Command]
name = "hold_x"
command = /$x
time = 1

[Command]
name = "hold_y"
command = /$y
time = 1

[Command]
name = "hold_z"
command = /$z
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddownfwd";Required (do not remove)
command = /$DF
time = 1

[Command]
name = "longjump"
command = ~D, $U
time = 11

[Command]
name = "!longjump"
command = ~10$D, $U
time = 20

[Statedef -1]

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;--------------------------------------------------------------------------- 
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;==================================
;
;        Super cancels
;
;==================================

;Hou ou Ressou Kyaku SDM
[State -1, Ressou]
type = Null;changestate
value = 3300
triggerall = command = "ressou_sdm"
triggerall = power >= 3000
trigger1 = stateno = 1307 && movecontact
trigger2 = stateno = 1022 && time > 15

;Hou ou tenbu kyaku DM
[State -1, Tenbu]
type = Null;ChangeState
value = 3100
triggerall = command = "ressou"
triggerall = power >= 2000
trigger1 = stateno = 1306 && movecontact
trigger2 = stateno = 1463 && movecontact
trigger3 = stateno = 1206 && movecontact

;Hou ou Ressou Kyaku
[State -1, Ressou]
type = Null;changestate
value = 3000
triggerall = command = "ressou"
triggerall = power >= 2000
trigger1 = stateno = 1307 && movecontact
trigger2 = stateno = 1022 && time > 15

[State -1, LDM]
type = Null;changestate
value = 3200
triggerall = command = "ldm"
triggerall = power >= 2000
trigger1 = stateno = 1455 && movecontact

;==================================
;
;        Desperation Moves
;
;==================================
;Hou ou Kyaku
[State -1]
type = changestate
value = 2400
triggerall = command = "hououkyaku"
triggerall = var(9) = 0
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 101

;Hou ou Kyaku (cancel)
[State -1]
type = changestate
value = 2450
triggerall = command = "hououkyaku"
triggerall = power >= 3000
trigger1 = stateno = 205 && time = [4,7]
trigger2 = stateno = 225 && time = [6,9]
trigger3 = stateno = 400 && time = [4,7]
trigger4 = stateno = 420 && time = [11,13]
trigger5 = stateno = 430 && time = [8,14]
trigger6 = stateno = 300 && time = [8,11]

;Hou ou Ressou Kyaku SDM
[State -1, Ressou]
type = changestate
value = 2300
triggerall = command = "ressou_sdm"
triggerall = var(9) = 0
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 40
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 205 && time = [4,7]
trigger5 = stateno = 225 && time = [6,9]
trigger6 = stateno = 400 && time = [4,7]
trigger7 = stateno = 420 && time = [11,13]

;Hou ou Ressou Kyaku
[State -1, Ressou]
type = changestate
value = 2000
triggerall = command = "ressou"
triggerall = var(9) = 0
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 40
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 205 && time = [4,7]
trigger5 = stateno = 225 && time = [6,9]
trigger6 = stateno = 400 && time = [4,7]
trigger7 = stateno = 420 && time = [11,13]

[State -1, LDM]
type = changestate
value = 2200
triggerall = command = "ldm"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 40
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 205 && time = [4,7]
trigger5 = stateno = 225 && time = [6,9]
trigger6 = stateno = 400 && time = [4,7]
trigger7 = stateno = 420 && time = [11,13]
trigger8 = stateno = 430 && time = [8,14]
trigger9 = stateno = 300 && time = [8,11]

;Hou ou tenbu kyaku DM
[State -1, Tenbu]
type = ChangeState
value = 2100
triggerall = command = "ressou"
triggerall = var(9) = 0
triggerall = power >= 1000
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 246 && time = [0,6]

;==================================
;
;             Mangetsu Zan
;
;==================================

[State -1, weak]
type = changestate
value = 1300
triggerall = command = "mangetsuzan1"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 40
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 205 && time = [4,7]
trigger5 = stateno = 225 && time = [6,9]
trigger6 = stateno = 400 && time = [4,7]
trigger7 = stateno = 420 && time = [11,13]
trigger8 = stateno = 430 && time = [8,14]
trigger9 = stateno = 300 && time = [8,11]

[State -1, strong]
type = changestate
value = 1305
triggerall = command = "mangetsuzan2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 40
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 205 && time = [4,7]
trigger5 = stateno = 225 && time = [6,9]
trigger6 = stateno = 400 && time = [4,7]
trigger7 = stateno = 420 && time = [11,13]
trigger8 = stateno = 430 && time = [8,14]
trigger9 = stateno = 300 && time = [8,11]

;==================================
;
;             Kuusajin
;
;==================================

[State -1, weak]
type = changestate
value = 1200
triggerall = command = "kuusajin1"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 40
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 205 && time = [4,7]
trigger5 = stateno = 225 && time = [6,9]
trigger6 = stateno = 400 && time = [4,7]
trigger7 = stateno = 420 && time = [11,13]
trigger8 = stateno = 430 && time = [8,14]
trigger9 = stateno = 300 && time = [8,11]
trigger10 = stateno = 50 && time < 2

[State -1, strong]
type = changestate
value = 1205
triggerall = command = "kuusajin2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 40
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 205 && time = [4,7]
trigger5 = stateno = 225 && time = [6,9]
trigger6 = stateno = 400 && time = [4,7]
trigger7 = stateno = 420 && time = [11,13]
trigger8 = stateno = 430 && time = [8,14]
trigger9 = stateno = 300 && time = [8,11]
trigger10 = stateno = 50 && time < 2

;==================================
;
;             Haki Geki
;
;==================================

[State -1, weak]
type = changestate
value = 1100
triggerall = command = "hakigeki1"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 205 && time = [4,7]
trigger5 = stateno = 225 && time = [6,9]
trigger6 = stateno = 400 && time = [4,7]
trigger7 = stateno = 420 && time = [11,13]
trigger8 = stateno = 430 && time = [8,14]
trigger9 = stateno = 300 && time = [8,11]

[State -1, strong]
type = changestate
value = 1105
triggerall = command = "hakigeki2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 205 && time = [4,7]
trigger5 = stateno = 225 && time = [6,9]
trigger6 = stateno = 400 && time = [4,7]
trigger7 = stateno = 420 && time = [11,13]
trigger8 = stateno = 430 && time = [8,14]
trigger9 = stateno = 300 && time = [8,11]

;==================================
;
;             San Ran Geki
;
;==================================

[State -1, weak]
type = changestate
value = 1400
triggerall = command = "sanrangeki1"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 205 && time = [4,7]
trigger5 = stateno = 225 && time = [6,9]
trigger6 = stateno = 400 && time = [4,7]
trigger7 = stateno = 420 && time = [11,13]
trigger8 = stateno = 430 && time = [8,14]
trigger9 = stateno = 300 && time = [8,11]

[State -1, strong]
type = changestate
value = 1450
triggerall = command = "sanrangeki2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 205 && time = [4,7]
trigger5 = stateno = 225 && time = [6,9]
trigger6 = stateno = 400 && time = [4,7]
trigger7 = stateno = 420 && time = [11,13]
trigger8 = stateno = 430 && time = [8,14]
trigger9 = stateno = 300 && time = [8,11]

;==================================
;
;             STANCE A
;
;==================================

[State -1, start]
type = changestate
value = 1000
triggerall = command = "stance_a"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 205 && time = [4,7]
trigger5 = stateno = 225 && time = [6,9]
trigger6 = stateno = 400 && time = [4,7]
trigger7 = stateno = 420 && time = [11,13]
trigger8 = stateno = 430 && time = [8,14]
trigger9 = stateno = 300 && time = [8,11]

[State -1, up + B]
type = changestate
value = 1040
triggerall = var(9) = 0
trigger1 = var(7) = 1
trigger1 = stateno = 0 || stateno = 1005
trigger1 = command = "holdup"
trigger1 = command = "a"

[State -1, up + C]
type = changestate
value = 1022
triggerall = var(9) = 0
trigger1 = var(7) = 1
trigger1 = stateno = 0 || stateno = 1005
trigger1 = command = "holdup"
trigger1 = command = "y"
trigger2 = var(7) = 2
trigger2 = stateno = 0 || stateno = 1055 || stateno = 1052
trigger2 = command = "holdup"
trigger2 = command = "y" && command = "x"

[State -1, D]
type = changestate
value = 1021
trigger1 = var(7) = 1
trigger1 = stateno = 0 || stateno = 1005
trigger1 = command = "b"
trigger2 = var(7) = 2
trigger2 = stateno = 0 || stateno = 1055 || stateno = 1052
trigger2 = command = "b" && command = "x"

[State -1, C]
type = changestate
value = 1020
triggerall = var(9) = 0
trigger1 = var(7) = 1
trigger1 = stateno = 0 || stateno = 1005
trigger1 = command = "y"
trigger2 = var(7) = 2
trigger2 = stateno = 0 || stateno = 1055 || stateno = 1052
trigger2 = command = "y" && command = "x"

[State -1, attack swap]
type = changestate
value = 1015
triggerall = var(7) = 1
triggerall = stateno = 0 || stateno = 1005
trigger1 = command = "holdfwd" && command = "a"

[State -1, swap]
type = changestate
value = 1010
triggerall = var(9) = 0
triggerall = var(7) = 1
triggerall = stateno = 0
trigger1 = command = "a"
trigger2 = command != "hold_x" && command = "hold_a"

[State -1, end]
type = changestate
value = 1002
triggerall = command != "hold_x"
triggerall = var(9) = 0
triggerall = var(7) = 1
trigger1 = stateno = 0
trigger2 = stateno = 1005

[State -1, dash fwd]
type = changestate
value = 1030
triggerall = var(9) = 0
triggerall = command = "FF"
triggerall = var(7) = 1
trigger1 = stateno = 0
trigger2 = stateno = 1005

[State -1, dash back]
type = changestate
value = 1035
triggerall = command = "BB"
triggerall = var(7) = 1
trigger1 = stateno = 0
trigger2 = stateno = 1005

[State -1, Walk]
type = changestate
value = 1005
triggerall = var(9) = 0
triggerall = command = "holdfwd" || command = "holdback"
triggerall = var(7) = 1
trigger1 = stateno = 0

;==================================
;
;             STANCE B
;
;==================================

;STANCE B
[State -1,]
type = Changestate
value = 1050
triggerall = command = "stance_b"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 205 && time = [4,7]
trigger5 = stateno = 225 && time = [6,9]
trigger6 = stateno = 400 && time = [4,7]
trigger7 = stateno = 420 && time = [11,13]
trigger8 = stateno = 430 && time = [8,14]
trigger9 = stateno = 300 && time = [8,11]

[State -1, up + A]
type = changestate
value = 1090
triggerall = var(9) = 0
trigger1 = var(7) = 2
trigger1 = stateno = 0 || stateno = 1005
trigger1 = command = "holdup"
trigger1 = command = "x"

[State -1, down + C]
type = changestate
value = 1075
trigger1 = var(7) = 2
trigger1 = stateno = 0 || stateno = 1055
trigger1 = command = "holddown"
trigger1 = command = "y"
trigger2 = var(7) = 1
trigger2 = stateno = 0 || stateno = 1005 || stateno = 1002
trigger2 = command = "holddown"
trigger2 = command = "y" && command = "a"

[State -1, up + C]
type = changestate
value = 1072
trigger1 = var(7) = 2
trigger1 = stateno = 0 || stateno = 1055
trigger1 = command = "holdup"
trigger1 = command = "y"
trigger2 = var(7) = 1
trigger2 = stateno = 0 || stateno = 1005 || stateno = 1002
trigger2 = command = "holdup"
trigger2 = command = "y" && command = "a"

[State -1, D]
type = changestate
value = 1071
trigger1 = var(7) = 2
trigger1 = stateno = 0 || stateno = 1055
trigger1 = command = "b"
trigger2 = var(7) = 1
trigger2 = stateno = 0 || stateno = 1005 || stateno = 1002
trigger2 = command = "b" && command = "a"

[State -1, C]
type = changestate
value = 1070
triggerall = var(9) = 0
trigger1 = var(7) = 2
trigger1 = stateno = 0 || stateno = 1055
trigger1 = command = "y"
trigger2 = var(7) = 1
trigger2 = stateno = 0 || stateno = 1005 || stateno = 1002
trigger2 = command = "y" && command = "a"

[State -1, attack swap]
type = changestate
value = 1065
triggerall = var(7) = 2
triggerall = stateno = 0 || stateno = 1055
trigger1 = command = "holdfwd" && command = "x"

[State -1, swap]
type = changestate
value = 1060
triggerall = var(9) = 0
triggerall = var(7) = 2
triggerall = stateno = 0
trigger1 = command = "x"
trigger2 = command != "hold_a" && command = "hold_x"

[State -1, end]
type = changestate
value = 1052
triggerall = command != "hold_a"
triggerall = var(9) = 0
triggerall = var(7) = 2
trigger1 = stateno = 0
trigger2 = stateno = 1055

[State -1, dash fwd]
type = changestate
value = 1080
triggerall = var(9) = 0
triggerall = command = "FF"
triggerall = var(7) = 2
trigger1 = stateno = 0
trigger2 = stateno = 1055

[State -1, dash back]
type = changestate
value = 1085
triggerall = command = "BB"
triggerall = var(7) = 2
trigger1 = stateno = 0
trigger2 = stateno = 1055

[State -1, Walk]
type = changestate
value = 1055
triggerall = var(9) = 0
triggerall = command = "holdfwd" || command = "holdback"
triggerall = var(7) = 2
trigger1 = stateno = 0

;---------------------------------------------------------------------------
;Run Fwd 1
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(7) = 0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;Throw 1
[State -1]
type = changestate
value = 800
triggerall = command = "y"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = stateno != 100
trigger1 = p2bodydist x < 20
trigger1 = p2statetype != A
trigger1 = p2movetype != H
trigger1 = p2stateno != 5120
trigger1 = ctrl

;Throw 2
[State -1]
type = changestate
value = 801
triggerall = command = "b"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = stateno != 100
trigger1 = p2bodydist x < 20
trigger1 = p2statetype != A
trigger1 = p2movetype != H
trigger1 = p2stateno != 5120
trigger1 = ctrl

;Counter
[State -1]
type = changestate
value = 305
triggerall = command = "cd" ^^ command = "z"
trigger1 = (stateno = 150 || stateno = 151) && power >= 1000

; Power charge
[State -1]
type = changestate
value = 310
triggerall = var(9) = 0
triggerall = statetype = S
triggerall = Power < 3000
triggerall = ctrl = 1
trigger1 = command = "hold_a"
trigger1 = command = "hold_y"

; Taunt
[State -1]
type = changestate
value = 195
trigger1 = command = "start"
trigger1 = Vel X = 0
trigger1 = stateno != 195
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------
;-----------------------------------------DODGE
;---------------------------------------------------------------------
; Dodge backward (Kof98)
[State -1]
type = changestate
value = 360
triggerall = command = "ab" ^^ command = "c"
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 150 || stateno = 151) && power >= 1000
trigger3 = stateno = 101

; Dodge forward 98(after dodge forward 99)
[State -1]
type = changestate
value = 361
triggerall = command = "ab" ^^ command = "c"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 150 || stateno = 151) && power >= 1000
trigger3 = stateno = 101

;---------------------------------------------------------------------------
;Standing CD
[State -1]
type = changestate
value = 300
triggerall = command = "cd" ^^ command = "z"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 101

;Aerial CD
[State -1]
type = changestate
value = 650
triggerall = command = "cd" ^^ command = "z"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
;Standing Weak punch
[State -1,]
type = changestate
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = command != "holdfwd"
triggerall = p2bodydist x > 24
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 410 && time = [7,13]

;Standing close Weak punch
[State -1,]
type = changestate
value = 205
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = command != "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 410 && time = [7,13]

;Forward Weak Punch
[State -1]
type = changestate
value = 245
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 205 && time = [4,7]
trigger4 = stateno = 225 && time = [6,9]
trigger5 = stateno = 400 && time = [4,7]
trigger6 = stateno = 420 && time = [11,13]
trigger7 = stateno = 430 && time = [8,14]
trigger8 = stateno = 300 && time = [8,11]
;---------------------------------------------------------------------------
;Standing Weak Kick
[State -1]
type = changestate
value = 210
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = command != "holdfwd"
triggerall = p2bodydist x > 24
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 410 && time = [7,13]

;Standing close Weak Kick
[State -1]
type = changestate
value = 215
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = command != "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 410 && time = [7,13]

;Forward Weak Kick
[State -1]
type = changestate
value = 240
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 205 && time = [4,7]
trigger4 = stateno = 225 && time = [6,9]
trigger5 = stateno = 400 && time = [4,7]
trigger6 = stateno = 420 && time = [11,13]
trigger7 = stateno = 430 && time = [8,14]
trigger8 = stateno = 300 && time = [8,11]
;---------------------------------------------------------------------------
;Standing Hard punch
[State -1]
type = changestate
value = 220
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = p2bodydist x > 24
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101

;Standing Close Hard punch
[State -1]
type = changestate
value = 225
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101

;---------------------------------------------------------------------------
;Standing Hard Kick
[State -1]
type = changestate
value = 230
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = p2bodydist x > 24
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101

;Standing Close Hard Kick
[State -1]
type = changestate
value = 235
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101

;---------------------------------------------------------------------------
;Crouching Weak punch
[State -1]
type = changestate
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 410 && time = [7,13]

;---------------------------------------------------------------------------
;Crouching weak Kick
[State -1]
type = changestate
value = 410
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 410 && time = [7,13]

;---------------------------------------------------------------------------
;Crouching hard punch
[State -1]
type = changestate
value = 420
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 101

;---------------------------------------------------------------------------
;Crouching hard kick
[State -1]
type = changestate
value = 430
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 101
;---------------------------------------------------------------------------
;Jumping Weak punch
[State -1]
type = changestate
value = 600
triggerall = command = "x"
triggerall = statetype = A
triggerall = ctrl
trigger1 = vel x = 0
trigger2 = stateno = 950

;Jumping Weak punch
[State -1]
type = changestate
value = 605
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Jumping Kick
[State -1]
type = changestate
value = 610
triggerall = command = "a" && command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl

;Jumping Down Kick
[State -1]
type = changestate
value = 640
triggerall = command = "a" && command = "holddown"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Jumping strong punch
[State -1]
type = changestate
value = 620
triggerall = command = "y"
triggerall = statetype = A
triggerall = ctrl
trigger1 = vel x = 0
trigger1 = stateno != 950

;Jumping strong punch
[State -1]
type = changestate
value = 625
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;Jumping strong Kick
[State -1]
type = changestate
value = 630
triggerall = command = "b"
triggerall = statetype = A
triggerall = ctrl
trigger1 = vel x = 0
trigger1 = stateno != 950

;Jumping strong Kick
[State -1]
type = changestate
value = 635
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl



;-------------------------------------------------------
;----------------------------AI-------------------------
;-------------------------------------------------------

;HSDM SHIN HOU OU KYAKU
[State -1,]
type = ChangeState
value = 2400
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = power >= 3000
triggerall = p2bodydist x < 40
triggerall = p2statetype = S
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 101

;DM Tenbu Kyaku
[State -1,]
type = ChangeState
value = 2100
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = power >= 1000
triggerall = statetype = A
trigger1 = p2movetype = A
trigger1 = p2bodydist X < 150
trigger1 = p2bodydist Y > 20
trigger1 = ctrl

;Crouching block
[State -1]
type = ChangeState
value = 152
triggerall = p2movetype = A
triggerall = P2bodydist X <= 40
triggerall = statetype = C
triggerall = random <= 600
triggerall = var(9) = 1
trigger1 = ctrl

;Block
[State -1]
type = ChangeState
value = 130
triggerall = p2movetype = A
triggerall = P2bodydist X <= 40
triggerall = random <= 600
triggerall = statetype = S
triggerall = var(9) = 1
trigger1 = ctrl

;Air block
[State -1]
type = ChangeState
value = 132
triggerall = p2movetype = A
triggerall = P2bodydist X <= 40
triggerall = statetype = A
triggerall = random <= 600
triggerall = var(9) = 1
trigger1 = ctrl

;Long jump
[State -1,]
type = ChangeState
value = 38
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = p2bodydist x >= 150
triggerall = random <= 100
trigger1 = statetype != A
trigger1 = ctrl = 1

;Run Forward
[State -1]
type = ChangeState
value = 100
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = p2movetype != A
triggerall = p2bodydist x >= 150
triggerall = random <= 160
trigger1 = statetype != A
trigger1 = ctrl

;Run Forward
[State -1]
type = ChangeState
value = 100
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = p2statetype = L
trigger1 = stateno = 0
trigger1 = ctrl
trigger1 = p2bodydist x > 50

;Jumping strong Kick
[State -1]
type = ChangeState
value = 635
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = p2bodydist x <= 40
triggerall = statetype = A
trigger1 = statetype = A
trigger1 = ctrl

;Forward jump
[State -1,]
type = ChangeState
value = 39
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = p2bodydist x = [75,90]
triggerall = random <= 200
trigger1 = statetype != A
trigger1 = ctrl = 1

;ANTI AIR
[State -1,]
type = ChangeState
value = 4000
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = p2bodydist x <= 50
triggerall = random <= 800
trigger1 = p2statetype = A
trigger1 = p2movetype != H
trigger1 = statetype != A
trigger1 = ctrl = 1



; Dodge forward
[State -1]
type = ChangeState
value = 361
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = p2movetype = A
triggerall = random <= 150
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 101

; Dodge backward
[State -1]
type = ChangeState
value = 360
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = p2movetype = A
triggerall = p2bodydist x <= 50
triggerall = random <= 100
trigger1 = statetype != A
trigger1 = ctrl

;RANDOM CLOSE ATTACK
[State -1]
type = ChangeState
value = 4001
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = p2bodydist x <= 35
triggerall = random <= 300
triggerall = p2stateno != 5120
triggerall = p2statetype != L
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101

;Crouching weak kick
[State -1]
type = ChangeState
value = 410
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = p2bodydist x <= 35
triggerall = random <= 300
triggerall = p2stateno != 5120
triggerall = p2statetype != L
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 101

;Strong punch
[State -1]
type = ChangeState
value = 225
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = p2bodydist x <= 35
triggerall = random <= 300
triggerall = p2stateno != 5120
triggerall = p2statetype != L
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 101

;Crouching weak punch
[State -1]
type = ChangeState
value = 400
triggerall = roundstate = 2
triggerall = var(9) = 1
trigger1 = statetype != A
trigger1 = random < 800
trigger1 = stateno = 410 && movecontact && time = [5,10]

;Kuusajin weak
[State -1]
type = ChangeState
value = 1200
triggerall = var(9) = 1
trigger1 = stateno = 400 && movecontact

;RANDOM SPECIAL DURING A COMBO
[State -1,]
type = ChangeState
value = 4002
triggerall = roundstate = 2
triggerall = var(9) = 1
trigger1 = random < 100
trigger1 = stateno = 205 && movecontact
trigger2 = random < 100
trigger2 = stateno = 215 && movecontact
trigger3 = random < 100
trigger3 = stateno = 225 && movecontact && time = [11,21]
trigger4 = random < 100
trigger4 = stateno = 235 && movecontact
trigger5 = random < 100
trigger5 = stateno = 420 && movecontact
trigger6 = random < 400
trigger6 = stateno = 240 && movecontact

;Counter
[State -1]
type = ChangeState
value = 305
triggerall = roundstate = 2
triggerall = var(9) = 1
trigger1 = (stateno = 150 || stateno = 151) && power >= 1000
trigger1 = random <= 40



;==================================
;
;             STANCE A
;
;==================================

[State -1, up + C]
type = changestate
value = 1022
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = p2bodydist x <= 50
triggerall = random <= 20
triggerall = p2statetype = A
triggerall = p2movetype != H
trigger1 = var(7) = 1
trigger1 = stateno = 0 || stateno = 1005
trigger2 = var(7) = 2
trigger2 = stateno = 0 || stateno = 1055 || stateno = 1052

[State -1, attack swap]
type = changestate
value = 1015
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = p2movetype = A
triggerall = p2statetype != A
triggerall = random <= 150
triggerall = p2bodydist x <= 50
triggerall = var(7) = 1
trigger1 = stateno = 0 || stateno = 1005

;==================================
;
;             STANCE B
;
;==================================

[State -1, up + A]
type = changestate
value = 1090
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = random <= 300
triggerall = var(7) = 2
triggerall = stateno = 0 || stateno = 1005
trigger1 = p2statetype = A
trigger1 = p2movetype != H
trigger1 = p2bodydist x <= 50
trigger2 = enemy,NumProj = 1

[State -1, down + C]
type = changestate
value = 1075
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = p2movetype != A
triggerall = p2statetype = S
triggerall = p2bodydist x >= 100
triggerall = random <= 160
trigger1 = var(7) = 2
trigger1 = stateno = 0 || stateno = 1055
trigger2 = var(7) = 1
trigger2 = stateno = 0 || stateno = 1005 || stateno = 1002

[State -1, up + C]
type = changestate
value = 1072
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = p2bodydist x <= 100
triggerall = random <= 250
triggerall = p2statetype = A
trigger1 = var(7) = 2
trigger1 = stateno = 0 || stateno = 1055
trigger2 = var(7) = 1
trigger2 = stateno = 0 || stateno = 1005 || stateno = 1002

[State -1, D]
type = changestate
value = 1071
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = p2movetype = A
triggerall = p2bodydist x <= 50
triggerall = random <= 100
trigger1 = var(7) = 2
trigger1 = stateno = 0 || stateno = 1055
trigger2 = var(7) = 1
trigger2 = stateno = 0 || stateno = 1005 || stateno = 1002

[State -1, C]
type = changestate
value = 1070
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = p2bodydist x <= 35
triggerall = random <= 300
triggerall = p2stateno != 5120
triggerall = p2statetype != L
trigger1 = var(7) = 2
trigger1 = stateno = 0 || stateno = 1055
trigger2 = var(7) = 1
trigger2 = stateno = 0 || stateno = 1005 || stateno = 1002

[State -1, attack swap]
type = changestate
value = 1065
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = random <= 150
triggerall = p2bodydist x <= 50
triggerall = var(7) = 2
triggerall = stateno = 0 || stateno = 1055
trigger1 = p2movetype = A
trigger1 = p2statetype != A
trigger2 = p2statetype = L
