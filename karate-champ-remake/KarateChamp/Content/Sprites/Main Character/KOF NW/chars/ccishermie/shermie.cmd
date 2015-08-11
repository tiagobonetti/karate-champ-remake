;==========================================================================
;                   CCI Shermie 's Command file
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

[Command]
name = "AI_11"
command = F, U, B, D
time = 1

[Command]
name = "AI_12"
command = F, F, F, F, F, B, U, U
time = 1

[Command]
name = "AI_13"
command = U, U, D, D, F, F, U
time = 1

[Command]
name = "AI_14"
command = U, D, U, D, U, D
time = 1

[Command]
name = "AI_15"
command = F, F, B, B, U, D, U
time = 1

[Command]
name = "AI_16"
command = B, D, D, U, F, D, D
time = 1

[Command]
name = "AI_17"
command = D, D, U, U, U, U, U, U
time = 1

[Command]
name = "AI_18"
command = D, D, D, D, D, D, D, U, U
time = 1

[Command]
name = "AI_19"
command = D, U, D, D, F, D, D, U, U
time = 1

[Command]
name = "AI_20"
command = D, D, D, D, B, D, D, U, U
time = 1

;-| Super Motions |--------------------------------------------------------
[Command]
name = "Shermie_Flash"
command = ~F, $D, B, F, $D, B, x
time = 35

[Command]
name = "Shermie_Flash"
command = ~F, $D, B, F, $D, B, y
time = 35

[Command]
name = "Shermie_Carnival1"
command = ~B, $D, F, B, $D, F, x
time = 35

[Command]
name = "Shermie_Carnival1"
command = ~B, $D, F, B, $D, F, y
time = 35

[Command]
name = "Shermie_Carnival2"
command = ~B, $D, F, B, $D, F, x+y
time = 35

[Command]
name = "Inazuma_Leg_Lariat"
command = ~D, DF, F, D, DF, F, a+b
time = 30

[Command]
name = "Ankoku_Raikou_Ken"
command = ~D, DF, F, D, DF, F, x+y
time = 30

;-| Special Motions |------------------------------------------------------
[Command]
name = "Axle_Spin_Kick1"
command = ~D, DB, B, a
time = 20

[Command]
name = "Axle_Spin_Kick2"
command = ~D, DB, B, b
time = 20

[Command]
name = "Diamond_Bust1"
command = ~B, DB, D, DF, F, a
time = 25

[Command]
name = "Diamond_Bust2"
command = ~B, DB, D, DF, F, b
time = 25

[Command]
name = "Shermie_Whip1"
command = ~D, DB, B, x
time = 20

[Command]
name = "Shermie_Whip2"
command = ~D, DB, B, y
time = 20

[Command]
name = "Shermie_Spiral"
command = ~B, DB, D, DF, F, x
time = 25

[Command]
name = "Shermie_Spiral"
command = ~B, DB, D, DF, F, y
time = 25

[Command]
name = "F-Captured"
command = ~F, D, B, F, x
time = 30

[Command]
name = "F-Captured"
command = ~F, D, B, F, y
time = 30

[Command]
name = "Shermie_Cute"
command = ~D, DF, F, a
time = 20

[Command]
name = "Shermie_Cute"
command = ~D, DF, F, b
time = 20

[Command]
name = "Shermie_Cute2"
command = ~D, DB, B, a
time = 20

[Command]
name = "Shermie_Cute2"
command = ~D, DB, B, b
time = 20

[Command]
name = "Shermie_Clutch1"
command = ~F, D, DF, a
time = 15

[Command]
name = "Shermie_Clutch2"
command = ~F, D, DF, b
time = 15

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
;Inazuma Leg Lariat
[State -1]
type = changestate
value = 2300
triggerall = var(9) = 0
triggerall = command = "Inazuma_Leg_Lariat"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 101

;Inazuma Leg Lariat (cancel)
[State -1]
type = changestate
value = 2302
triggerall = command = "Inazuma_Leg_Lariat"
triggerall = power >= 2000
trigger1 = stateno = 200 && time = 7
trigger2 = stateno = 210 && time = [7,8]
trigger3 = stateno = 210 && time = [14,22]
trigger4 = stateno = 225 && time = [7,8]
trigger5 = stateno = 400 && time = 7
trigger6 = stateno = 410 && time = [10,13]
trigger7 = stateno = 420 && time = [8,11]
trigger8 = stateno = 300 && time = [16,23]
trigger9 = stateno = 245 && time = [24,31]

;Shermie Carnival SDM
[State -1]
type = changestate
value = 2200
triggerall = var(9) = 0
triggerall = command = "Shermie_Carnival2"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 101

;Shermie Carnival SDM (cancel)
[State -1]
type = changestate
value = 2202
triggerall = command = "Shermie_Carnival2"
triggerall = power >= 2000
trigger1 = stateno = 200 && time = 7
trigger2 = stateno = 210 && time = [7,8]
trigger3 = stateno = 210 && time = [14,22]
trigger4 = stateno = 225 && time = [7,8]
trigger5 = stateno = 400 && time = 7
trigger6 = stateno = 410 && time = [10,13]
trigger7 = stateno = 420 && time = [8,11]
trigger8 = stateno = 300 && time = [16,23]
trigger9 = stateno = 245 && time = [24,31]

;Ankoku Raikoken
[State -1]
type = changestate
value = 2400
triggerall = var(9) = 0
triggerall = command = "Ankoku_Raikou_Ken"
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 200 && time = 7
trigger5 = stateno = 210 && time = [7,8]
trigger6 = stateno = 210 && time = [14,22]
trigger7 = stateno = 225 && time = [7,8]
trigger8 = stateno = 400 && time = 7
trigger9 = stateno = 410 && time = [10,13]
trigger10 = stateno = 420 && time = [8,11]
trigger11 = stateno = 300 && time = [16,23]
trigger12 = stateno = 245 && time = [24,31]

;Shermie Carnival
[State -1]
type = changestate
value = 2100
triggerall = var(9) = 0
triggerall = command = "Shermie_Carnival1"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 101

;Shermie Carnival (cancel)
[State -1]
type = changestate
value = 2102
triggerall = command = "Shermie_Carnival1"
triggerall = power >= 1000
trigger1 = stateno = 200 && time = 7
trigger2 = stateno = 210 && time = [7,8]
trigger3 = stateno = 210 && time = [14,22]
trigger4 = stateno = 225 && time = [7,8]
trigger5 = stateno = 400 && time = 7
trigger6 = stateno = 410 && time = [10,13]
trigger7 = stateno = 420 && time = [8,11]
trigger8 = stateno = 300 && time = [16,23]
trigger9 = stateno = 245 && time = [24,31]

;Shermie Flash
[State -1]
type = changestate
value = 2000
triggerall = var(9) = 0
triggerall = command = "Shermie_Flash"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 101

;Shermie Flash (cancel)
[State -1]
type = changestate
value = 2002
triggerall = command = "Shermie_Flash"
triggerall = power >= 1000
trigger1 = stateno = 200 && time = 7
trigger2 = stateno = 210 && time = [7,8]
trigger3 = stateno = 210 && time = [14,22]
trigger4 = stateno = 225 && time = [7,8]
trigger5 = stateno = 400 && time = 7
trigger6 = stateno = 410 && time = [10,13]
trigger7 = stateno = 420 && time = [8,11]
trigger8 = stateno = 300 && time = [16,23]
trigger9 = stateno = 245 && time = [24,31]

;Axle Spin Kick weak
[State -1]
type = changestate
value = 1000
triggerall = command = "Axle_Spin_Kick1"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 200 && time = 7
trigger5 = stateno = 210 && time = [7,8]
trigger6 = stateno = 210 && time = [14,22]
trigger7 = stateno = 225 && time = [7,8]
trigger8 = stateno = 400 && time = 7
trigger9 = stateno = 410 && time = [10,13]
trigger10 = stateno = 420 && time = [8,11]
trigger11 = stateno = 300 && time = [16,23]
trigger12 = stateno = 245 && time = [24,31]

;Axle Spin Kick strong
[State -1]
type = changestate
value = 1005
triggerall = var(9) = 0
triggerall = command = "Axle_Spin_Kick2"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 200 && time = 7
trigger5 = stateno = 210 && time = [7,8]
trigger6 = stateno = 210 && time = [14,22]
trigger7 = stateno = 225 && time = [7,8]
trigger8 = stateno = 400 && time = 7
trigger9 = stateno = 410 && time = [10,13]
trigger10 = stateno = 420 && time = [8,11]
trigger11 = stateno = 300 && time = [16,23]
trigger12 = stateno = 245 && time = [24,31]

;Shermie Clutch weak
[State -1]
type = changestate
value = 1700
triggerall = var(9) = 0
triggerall = command = "Shermie_Clutch1"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 200 && time = 7
trigger5 = stateno = 210 && time = [7,8]
trigger6 = stateno = 210 && time = [14,22]
trigger7 = stateno = 225 && time = [7,8]
trigger8 = stateno = 400 && time = 7
trigger9 = stateno = 410 && time = [10,13]
trigger10 = stateno = 420 && time = [8,11]
trigger11 = stateno = 300 && time = [16,23]
trigger12 = stateno = 245 && time = [24,31]

;Shermie Clutch strong
[State -1]
type = changestate
value = 1705
triggerall = var(9) = 0
triggerall = command = "Shermie_Clutch2"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 200 && time = 7
trigger5 = stateno = 210 && time = [7,8]
trigger6 = stateno = 210 && time = [14,22]
trigger7 = stateno = 225 && time = [7,8]
trigger8 = stateno = 400 && time = 7
trigger9 = stateno = 410 && time = [10,13]
trigger10 = stateno = 420 && time = [8,11]
trigger11 = stateno = 300 && time = [16,23]
trigger12 = stateno = 245 && time = [24,31]

;Diamond Bust weak
[State -1]
type = changestate
value = 1100
triggerall = var(9) = 0
triggerall = command = "Diamond_Bust1"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 101

;Diamond Bust weak (cancel)
[State -1]
type = changestate
value = 1150
triggerall = command = "Diamond_Bust1"
trigger1 = stateno = 200 && time = 7
trigger2 = stateno = 210 && time = [7,8]
trigger3 = stateno = 210 && time = [14,22]
trigger4 = stateno = 225 && time = [7,8]
trigger5 = stateno = 400 && time = 7
trigger6 = stateno = 410 && time = [10,13]
trigger7 = stateno = 420 && time = [8,11]
trigger8 = stateno = 300 && time = [16,23]
trigger9 = stateno = 245 && time = [24,31]

;Diamond Bust strong
[State -1]
type = changestate
value = 1120
triggerall = var(9) = 0
triggerall = command = "Diamond_Bust2"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 101

;Diamond Bust strong (cancel)
[State -1]
type = changestate
value = 1160
triggerall = command = "Diamond_Bust2"
trigger1 = stateno = 200 && time = 7
trigger2 = stateno = 210 && time = [7,8]
trigger3 = stateno = 210 && time = [14,22]
trigger4 = stateno = 225 && time = [7,8]
trigger5 = stateno = 400 && time = 7
trigger6 = stateno = 410 && time = [10,13]
trigger7 = stateno = 420 && time = [8,11]
trigger8 = stateno = 300 && time = [16,23]
trigger9 = stateno = 245 && time = [24,31]

;F-Captured
[State -1]
type = changestate
value = 1400
triggerall = var(9) = 0
triggerall = command = "F-Captured"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 200 && time = 7
trigger5 = stateno = 210 && time = [7,8]
trigger6 = stateno = 210 && time = [14,22]
trigger7 = stateno = 225 && time = [7,8]
trigger8 = stateno = 400 && time = 7
trigger9 = stateno = 410 && time = [10,13]
trigger10 = stateno = 420 && time = [8,11]
trigger11 = stateno = 300 && time = [16,23]
trigger12 = stateno = 245 && time = [24,31]

;Shermie Whip weak
[State -1]
type = changestate
value = 1200
triggerall = var(9) = 0
triggerall = command = "Shermie_Whip1"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 200 && time = 7
trigger5 = stateno = 210 && time = [7,8]
trigger6 = stateno = 210 && time = [14,22]
trigger7 = stateno = 225 && time = [7,8]
trigger8 = stateno = 400 && time = 7
trigger9 = stateno = 410 && time = [10,13]
trigger10 = stateno = 420 && time = [8,11]
trigger11 = stateno = 300 && time = [16,23]
trigger12 = stateno = 245 && time = [24,31]

;Shermie Whip strong
[State -1]
type = changestate
value = 1203
triggerall = var(9) = 0
triggerall = command = "Shermie_Whip2"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 200 && time = 7
trigger5 = stateno = 210 && time = [7,8]
trigger6 = stateno = 210 && time = [14,22]
trigger7 = stateno = 225 && time = [7,8]
trigger8 = stateno = 400 && time = 7
trigger9 = stateno = 410 && time = [10,13]
trigger10 = stateno = 420 && time = [8,11]
trigger11 = stateno = 300 && time = [16,23]
trigger12 = stateno = 245 && time = [24,31]

;Shermie Spiral
[State -1]
type = changestate
value = 1300
triggerall = var(9) = 0
triggerall = command = "Shermie_Spiral"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 101

;Shermie Spiral (cancel)
[State -1]
type = changestate
value = 1302
triggerall = command = "Shermie_Spiral"
trigger1 = stateno = 200 && time = 7
trigger2 = stateno = 210 && time = [7,8]
trigger3 = stateno = 210 && time = [14,22]
trigger4 = stateno = 225 && time = [7,8]
trigger5 = stateno = 400 && time = 7
trigger6 = stateno = 410 && time = [10,13]
trigger7 = stateno = 420 && time = [8,11]
trigger8 = stateno = 300 && time = [16,23]
trigger9 = stateno = 245 && time = [24,31]

;---------------------------------------------------------------------------
;Run Fwd 1
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(7) = 0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = command = "holdfwd" && stateno = 102

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
triggerall = var(9) = 0
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
triggerall = var(9) = 0
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
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 200 && time = [8,10]
trigger5 = stateno = 400 && time = [8,10]

;Baku New Suplex
[State -1]
type = changestate
value = 250
triggerall = command = "x"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 200 && time = 7
trigger5 = stateno = 210 && time = [7,8]
trigger6 = stateno = 210 && time = [14,22]
trigger7 = stateno = 225 && time = [7,8]
trigger8 = stateno = 400 && time = 7
trigger9 = stateno = 410 && time = [10,13]
trigger10 = stateno = 420 && time = [8,11]
trigger11 = stateno = 300 && time = [16,23]
;--------------------------------------------------------------------------
;Standing Weak Kick
[State -1]
type = changestate
value = 210
triggerall = command = "a"
triggerall = command != "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 200 && time = [8,10]
trigger5 = stateno = 400 && time = [8,10]

;Shermie Stand
[State -1]
type = changestate
value = 240
triggerall = command = "a"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101

;Shermie Stand
[State -1]
type = changestate
value = 245
triggerall = command = "a"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
trigger1 = stateno = 200 && time = 7
trigger2 = stateno = 210 && time = [7,8]
trigger3 = stateno = 210 && time = [14,22]
trigger4 = stateno = 225 && time = [7,8]
trigger5 = stateno = 400 && time = 7
trigger6 = stateno = 410 && time = [10,13]
trigger7 = stateno = 420 && time = [8,11]
trigger8 = stateno = 300 && time = [16,23]

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
trigger3 = stateno = 200 && time = [8,10]
trigger4 = stateno = 400 && time = [8,10]

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
trigger3 = stateno = 200 && time = [8,10]
trigger4 = stateno = 400 && time = [8,10]
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
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jumping Kick
[State -1]
type = changestate
value = 610
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jumping strong punch
[State -1]
type = changestate
value = 620
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;Jumping strong Kick
[State -1]
type = changestate
value = 630
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = vel x = 0

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
;HSDM ANKOKU RAIKO KEN
[State -1,]
type = ChangeState
value = 2400
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = power >= 3000
triggerall = movehit
trigger1 = stateno = 200
trigger2 = stateno = 210
trigger3 = stateno = 225
trigger4 = stateno = 400
trigger5 = stateno = 410
trigger6 = stateno = 420

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

;Axle kick weak
[State -1]
type = ChangeState
value = 1000
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = p2movetype = A
triggerall = p2bodydist x > 100
triggerall = p2bodydist x <= 125
triggerall = random <= 40
triggerall = p2stateno != 5120
triggerall = p2statetype != L
trigger1 = statetype != A
trigger1 = ctrl

;Axle kick strong
[State -1]
type = ChangeState
value = 1005
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = p2movetype = A
triggerall = p2bodydist x > 125
triggerall = p2bodydist x <= 150
triggerall = random <= 40
triggerall = p2stateno != 5120
triggerall = p2statetype != L
trigger1 = statetype != A
trigger1 = ctrl

;Shermie Whip
[State -1]
type = ChangeState
value = 1120
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = p2movetype = A
triggerall = p2bodydist x > 70
triggerall = p2bodydist x <= 100
triggerall = random <= 40
triggerall = p2stateno != 5120
triggerall = p2statetype != L
trigger1 = statetype != A
trigger1 = ctrl

;Shermie Spiral
[State -1]
type = ChangeState
value = 1300
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = p2movetype != A
triggerall = p2bodydist x <= 40
triggerall = random <= 50
triggerall = p2stateno != 5120
triggerall = p2statetype != L
trigger1 = statetype != A
trigger1 = ctrl

;Long jump
[State -1,]
type = ChangeState
value = 38
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = p2bodydist x >= 150
triggerall = random <= 30
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
triggerall = random <= 30
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
triggerall = p2statetype != L
trigger1 = statetype = A
trigger1 = ctrl

;Forward jump
[State -1,]
type = ChangeState
value = 39
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = p2bodydist x = [75,90]
triggerall = random <= 30
trigger1 = statetype != A
trigger1 = ctrl = 1

; Dodge forward
[State -1]
type = ChangeState
value = 361
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = p2movetype = A
triggerall = random <= 50
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
triggerall = random <= 30
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

;Shermie Whip weak
[State -1,]
type = ChangeState
value = 1200
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = p2bodydist x <= 50
triggerall = enemy,vel x >= 0
triggerall = random <= 70
trigger1 = p2statetype = A
trigger1 = p2movetype != H
trigger1 = statetype != A
trigger1 = ctrl = 1

;Shermie Clutch strong
[State -1,]
type = ChangeState
value = 1705
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = p2bodydist x <= 100
triggerall = enemy,vel x >= 0
triggerall = random <= 60
trigger1 = p2statetype = A
trigger1 = p2movetype != H
trigger1 = statetype != A
trigger1 = ctrl = 1

;F-Captured
[State -1]
type = ChangeState
value = 1400
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = p2movetype = A
triggerall = random <= 70
trigger1 = p2statetype = A
trigger1 = statetype != A
trigger1 = ctrl

;RANDOM SPECIAL DURING A COMBO
[State -1,]
type = ChangeState
value = 4002
triggerall = roundstate = 2
triggerall = var(9) = 1
trigger1 = random < 100
trigger1 = stateno = 200 && movecontact
trigger2 = random < 100
trigger2 = stateno = 210 && movecontact
trigger3 = random < 100
trigger3 = stateno = 225 && movecontact
trigger4 = random < 100
trigger4 = stateno = 400 && movecontact
trigger5 = random < 400
trigger5 = stateno = 410 && movecontact
trigger6 = random < 400
trigger6 = stateno = 420 && movecontact

;Counter
[State -1]
type = ChangeState
value = 305
triggerall = roundstate = 2
triggerall = var(9) = 1
trigger1 = (stateno = 150 || stateno = 151) && power >= 1000
trigger1 = random <= 40

