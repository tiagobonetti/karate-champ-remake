; Command file for David Demianoff 's Card captor Iron Saisyu Kusanagi
; Please don't edit, thanks
;
;-| Super Motions |--------------------------------------------------------
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
name = "serpent1"
command = ~D, DB, B, DB, D, DF, F, x
time = 25

[Command]
name = "serpent2"
command = ~D, DB, B, DB, D, DF, F, y
time = 25

[Command]
name = "tobukai"
command = ~D, DF, F, D, DF, F, x+y
time = 25

[Command]
name = "hsdm"
command = ~F, B, D, U, y+b
;command = z
time = 40

;-| Special Motions |------------------------------------------------------
[Command]
name = "oniyaki1"
command = ~F, D, DF, x
time = 15

[Command]
name = "oniyaki2"
command = ~F, D, DF, y
time = 15

[Command]
name = "yamibarai1"
command = ~D, DF, F, x
time = 20

[Command]
name = "yamibarai2"
command = ~D, DF, F, y
time = 20

[Command]
name = "wave1"
command = ~F, DF, D, DB, B, a
time = 20

[Command]
name = "wave2"
command = ~F, DF, D, DB, B, b
time = 20

[Command]
name = "kick1"
command = ~F, D, DF, a
time = 20

[Command]
name = "kick2"
command = ~F, D, DF, b
time = 20

[Command]
name = "doigt1"
command = ~D, DB, B, x
time = 15

[Command]
name = "doigt2"
command = ~D, DB, B, y
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
name = "rock"
command = a+y
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
;HSDM
[State -1,]
type = ChangeState
value = 2200
triggerall = command = "hsdm"
triggerall = power >= 3000
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 40
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 205 && time = [3,6]
trigger5 = stateno = 215 && time = [5,7]
trigger6 = stateno = 225 && time = [2,10]
trigger7 = stateno = 400 && time = [3,6]
trigger8 = stateno = 420 && time = [6,9]
trigger9 = stateno = 430 && time = [11,14]
trigger10 = stateno = 220 && time = [10,13]
trigger11 = stateno = 245 && time = [16,19]

;Tobukai
[State -1,]
type = ChangeState
value = 2100
triggerall = command = "tobukai"
triggerall = power >= 2000
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 205 && time = [3,6]
trigger5 = stateno = 215 && time = [5,7]
trigger6 = stateno = 225 && time = [2,10]
trigger7 = stateno = 400 && time = [3,6]
trigger8 = stateno = 420 && time = [6,9]
trigger9 = stateno = 430 && time = [11,14]
trigger10 = stateno = 220 && time = [10,13]
trigger11 = stateno = 245 && time = [16,19]

;Serpent Wave 2
[State -1,]
type = ChangeState
value = 2003
triggerall = command = "serpent2"
triggerall = power >= 1000
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 205 && time = [3,6]
trigger5 = stateno = 215 && time = [5,7]
trigger6 = stateno = 225 && time = [2,10]
trigger7 = stateno = 400 && time = [3,6]
trigger8 = stateno = 420 && time = [6,9]
trigger9 = stateno = 430 && time = [11,14]
trigger10 = stateno = 220 && time = [10,13]
trigger11 = stateno = 245 && time = [16,19]

;Serpent Wave 1
[State -1,]
type = ChangeState
value = 2000
triggerall = command = "serpent1"
triggerall = power >= 1000
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 205 && time = [3,6]
trigger5 = stateno = 215 && time = [5,7]
trigger6 = stateno = 225 && time = [2,10]
trigger7 = stateno = 400 && time = [3,6]
trigger8 = stateno = 420 && time = [6,9]
trigger9 = stateno = 430 && time = [11,14]
trigger10 = stateno = 220 && time = [10,13]
trigger11 = stateno = 245 && time = [16,19]

;Serpent Wave 2 super cancel
[State -1,]
type = ChangeState
value = 2013
triggerall = command = "serpent2"
triggerall = power >= 2000
triggerall = var(9) = 0
trigger1 = stateno = 1402 && movecontact
trigger2 = stateno = 1407 && movecontact

;Serpent Wave 1 super cancel
[State -1,]
type = ChangeState
value = 2010
triggerall = command = "serpent1"
triggerall = power >= 2000
triggerall = var(9) = 0
trigger1 = stateno = 1402 && movecontact
trigger2 = stateno = 1407 && movecontact

;Oniyaki (weak)
[State -1,]
type = ChangeState
value = 1000
triggerall = command = "oniyaki1"
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 205 && time = [3,6]
trigger5 = stateno = 215 && time = [5,7]
trigger6 = stateno = 225 && time = [2,10]
trigger7 = stateno = 400 && time = [3,6]
trigger8 = stateno = 420 && time = [6,9]
trigger9 = stateno = 430 && time = [11,14]
trigger10 = stateno = 220 && time = [10,13]
trigger11 = stateno = 245 && time = [16,19]

;Oniyaki (strong)
[State -1,]
type = ChangeState
value = 1005
triggerall = command = "oniyaki2"
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 205 && time = [3,6]
trigger5 = stateno = 215 && time = [5,7]
trigger6 = stateno = 225 && time = [2,10]
trigger7 = stateno = 400 && time = [3,6]
trigger8 = stateno = 420 && time = [6,9]
trigger9 = stateno = 430 && time = [11,14]
trigger10 = stateno = 220 && time = [10,13]
trigger11 = stateno = 245 && time = [16,19]

;Yamibarai (weak)
[State -1,]
type = ChangeState
value = 1100
triggerall = command = "yamibarai1"
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 205 && time = [3,6]
trigger5 = stateno = 215 && time = [5,7]
trigger6 = stateno = 225 && time = [2,10]
trigger7 = stateno = 400 && time = [3,6]
trigger8 = stateno = 420 && time = [6,9]
trigger9 = stateno = 430 && time = [11,14]
trigger10 = stateno = 220 && time = [10,13]
trigger11 = stateno = 245 && time = [16,19]

;Yamibarai (strong)
[State -1,]
type = ChangeState
value = 1105
triggerall = command = "yamibarai2"
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 205 && time = [3,6]
trigger5 = stateno = 215 && time = [5,7]
trigger6 = stateno = 225 && time = [2,10]
trigger7 = stateno = 400 && time = [3,6]
trigger8 = stateno = 420 && time = [6,9]
trigger9 = stateno = 430 && time = [11,14]
trigger10 = stateno = 220 && time = [10,13]
trigger11 = stateno = 245 && time = [16,19]

;Wave smash (weak)
[State -1,]
type = ChangeState
value = 1200
triggerall = command = "wave1"
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 205 && time = [3,6]
trigger5 = stateno = 215 && time = [5,7]
trigger6 = stateno = 225 && time = [2,10]
trigger7 = stateno = 400 && time = [3,6]
trigger8 = stateno = 420 && time = [6,9]
trigger9 = stateno = 430 && time = [11,14]
trigger10 = stateno = 220 && time = [10,13]
trigger11 = stateno = 245 && time = [16,19]

;Wave smash (strong)
[State -1,]
type = ChangeState
value = 1205
triggerall = command = "wave2"
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 205 && time = [3,6]
trigger5 = stateno = 215 && time = [5,7]
trigger6 = stateno = 225 && time = [2,10]
trigger7 = stateno = 400 && time = [3,6]
trigger8 = stateno = 420 && time = [6,9]
trigger9 = stateno = 430 && time = [11,14]
trigger10 = stateno = 220 && time = [10,13]
trigger11 = stateno = 245 && time = [16,19]

;Special Kick (weak)
[State -1,]
type = ChangeState
value = 1300
triggerall = command = "kick1"
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 205 && time = [3,6]
trigger5 = stateno = 215 && time = [5,7]
trigger6 = stateno = 225 && time = [2,10]
trigger7 = stateno = 400 && time = [3,6]
trigger8 = stateno = 420 && time = [6,9]
trigger9 = stateno = 430 && time = [11,14]
trigger10 = stateno = 220 && time = [10,13]
trigger11 = stateno = 245 && time = [16,19]

;Special Kick (strong)
[State -1,]
type = ChangeState
value = 1305
triggerall = command = "kick2"
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 205 && time = [3,6]
trigger5 = stateno = 215 && time = [5,7]
trigger6 = stateno = 225 && time = [2,10]
trigger7 = stateno = 400 && time = [3,6]
trigger8 = stateno = 420 && time = [6,9]
trigger9 = stateno = 430 && time = [11,14]
trigger10 = stateno = 220 && time = [10,13]
trigger11 = stateno = 245 && time = [16,19]

;Doigt dans le cul - weak
[State -1,]
type = ChangeState
value = 1400
triggerall = command = "doigt1"
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 205 && time = [3,6]
trigger5 = stateno = 215 && time = [5,7]
trigger6 = stateno = 225 && time = [2,10]
trigger7 = stateno = 400 && time = [3,6]
trigger8 = stateno = 420 && time = [6,9]
trigger9 = stateno = 430 && time = [11,14]
trigger10 = stateno = 220 && time = [10,13]
trigger11 = stateno = 245 && time = [16,19]

;Doigt dans le cul - strong
[State -1,]
type = ChangeState
value = 1405
triggerall = command = "doigt2"
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 205 && time = [3,6]
trigger5 = stateno = 215 && time = [5,7]
trigger6 = stateno = 225 && time = [2,10]
trigger7 = stateno = 400 && time = [3,6]
trigger8 = stateno = 420 && time = [6,9]
trigger9 = stateno = 430 && time = [11,14]
trigger10 = stateno = 220 && time = [10,13]
trigger11 = stateno = 245 && time = [16,19]

;---------------------------------------------------------------------------
;Run Fwd 1
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(22) = 0
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
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = command = "holdfwd"
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
type = ChangeState
value = 801
triggerall = command = "b"
triggerall = command = "holdfwd"
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
type = ChangeState
value = 305
triggerall = var(22) = 0
triggerall = command = "cd" ^^ command = "z"
trigger1 = (stateno = 150 || stateno = 151) && power >= 1000

; Power charge
[State -1]
type = ChangeState
value = 310
triggerall = statetype = S
triggerall = Power < 3000
triggerall = var(9) = 0
triggerall = ctrl = 1
trigger1 = command = "hold_a"
trigger1 = command = "hold_y"

; Taunt
[State -1]
type = ChangeState
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
type = ChangeState
value = 360
triggerall = command = "ab" ^^ command = "c"
triggerall = command = "holdback"
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 150 || stateno = 151) && power >= 1000
trigger3 = stateno = 101

; Dodge forward 98(after dodge forward 99)
[State -1]
type = ChangeState
value = 361
triggerall = command = "ab" ^^ command = "c"
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 150 || stateno = 151) && power >= 1000
trigger3 = stateno = 101

;---------------------------------------------------------------------------
;Standing CD
[State -1]
type = ChangeState
value = 300
triggerall = command = "cd" ^^ command = "z"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 101

;Aerial CD
[State -1]
type = ChangeState
value = 650
triggerall = command = "cd" ^^ command = "z"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
;Standing Weak punch
[State -1,]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = command != "holdfwd"
triggerall = p2bodydist x > 24
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 200 && time = [7,8]
trigger5 = stateno = 205 && time = [5,6]
trigger6 = stateno = 400 && time = [5,6]
trigger7 = stateno = 410 && time = [5,6]

;Standing Close weak punch
[State -1]
type = ChangeState
value = 205
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = command != "holdfwd"
triggerall = var(9) = 0
triggerall = p2bodydist x < 25
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 205 && time = [5,6]
trigger5 = stateno = 400 && time = [5,6]
trigger6 = stateno = 410 && time = [5,6]

;Standing Forward + Weak punch
[State -1,]
type = ChangeState
value = 240
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101

;Standing Forward + Weak punch
[State -1,]
type = ChangeState
value = 245
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
triggerall = var(9) = 0
trigger1 = stateno = 205 && time = [3,6]
trigger2 = stateno = 215 && time = [5,7]
trigger3 = stateno = 225 && time = [2,10]
trigger4 = stateno = 400 && time = [3,6]
trigger5 = stateno = 420 && time = [6,9]
trigger6 = stateno = 430 && time = [11,14]

;---------------------------------------------------------------------------
;Standing Weak Kick
[State -1]
type = ChangeState
value = 210
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = command != "holdfwd"
triggerall = p2bodydist x > 24
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && time = [7,8]
trigger4 = stateno = 205 && time = [5,6]
trigger5 = stateno = 400 && time = [5,6]
trigger6 = stateno = 410 && time = [5,6]

;Standing Close Weak Kick
[State -1]
type = ChangeState
value = 215
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = command != "holdfwd"
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 205 && time = [5,6]
trigger4 = stateno = 400 && time = [5,6]
trigger5 = stateno = 410 && time = [5,6]

;Standing Forward + Weak kick
[State -1,]
type = ChangeState
value = 250
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 205 && time = [3,6]
trigger5 = stateno = 215 && time = [5,7]
trigger6 = stateno = 225 && time = [2,10]
trigger7 = stateno = 400 && time = [3,6]
trigger8 = stateno = 420 && time = [6,9]
trigger9 = stateno = 430 && time = [11,14]

;---------------------------------------------------------------------------
;Standing Hard punch
[State -1]
type = ChangeState
value = 220
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = p2bodydist x > 24
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101

;Standing Close Hard punch
[State -1]
type = ChangeState
value = 225
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101

;---------------------------------------------------------------------------
;Standing Hard Kick
[State -1]
type = ChangeState
value = 230
triggerall = command = "b"
triggerall = var(9) = 0
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101

;---------------------------------------------------------------------------
;Crouching Weak punch
[State -1]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = var(9) = 0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 200 && time = [7,8]
trigger4 = stateno = 205 && time = [5,6]
trigger5 = stateno = 400 && time = [5,6]
trigger6 = stateno = 410 && time = [5,6]

;---------------------------------------------------------------------------
;Crouching weak Kick
[State -1]
type = ChangeState
value = 410
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = var(9) = 0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 200 && time = [7,8]
trigger4 = stateno = 205 && time = [5,6]
trigger5 = stateno = 400 && time = [5,6]
trigger6 = stateno = 410 && time = [5,6]

;---------------------------------------------------------------------------
;Crouching hard punch
[State -1]
type = ChangeState
value = 420
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 101

;---------------------------------------------------------------------------
;Crouching hard kick
[State -1]
type = ChangeState
value = 430
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 101
;---------------------------------------------------------------------------
;Jumping Weak punch
[State -1]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jumping Kick
[State -1]
type = ChangeState
value = 610
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jumping strong punch
[State -1]
type = ChangeState
value = 620
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Vel X = 0

;Jumping strong punch
[State -1]
type = ChangeState
value = 625
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;Jumping strong Kick
[State -1]
type = ChangeState
value = 630
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;-------------------------------------------------------
;----------------------------AI-------------------------
;-------------------------------------------------------
;HSDM
[State -1,]
type = ChangeState
value = 2200
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = power >= 3000
triggerall = ctrl
trigger1 = statetype != A
trigger1 = p2statetype != A
trigger1 = p2bodydist x < 30
trigger2 = stateno = 225 && movehit
trigger3 = stateno = 245 && movehit

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
value = 630
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
value = 3000
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = p2bodydist x <= 50
triggerall = random <= 800
trigger1 = p2statetype = A
trigger1 = p2movetype != H
trigger1 = statetype != A
trigger1 = ctrl = 1

;WAVE SMASH (strong)
[State -1,]
type = ChangeState
value = 1205
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = p2bodydist x = [100,190]
triggerall = random <= 200
trigger1 = statetype != A
trigger1 = ctrl = 1

;GROUND FIRE
[State -1,]
type = ChangeState
value = 1105
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = p2bodydist x = [191,200]
triggerall = random <= 400
trigger1 = statetype != A
trigger1 = ctrl = 1

; Dodge forward
[State -1]
type = ChangeState
value = 361
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = p2movetype = A
triggerall = random <= 20
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
triggerall = random <= 10
trigger1 = statetype != A
trigger1 = ctrl

;RANDOM CLOSE ATTACK
[State -1]
type = ChangeState
value = 3001
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

;Crouching weak punch
[State -1]
type = ChangeState
value = 400
triggerall = roundstate = 2
triggerall = var(9) = 1
trigger1 = statetype != A
trigger1 = random < 800
trigger1 = stateno = 410 && movecontact && time = [5,12]

;DP+Kick
[State -1]
type = ChangeState
value = 1300
triggerall = roundstate = 2
triggerall = var(9) = 1
trigger1 = statetype != A
trigger1 = random < 100
trigger1 = stateno = 400 && movehit

;yamibarai
[State -1]
type = ChangeState
value = 1100
triggerall = roundstate = 2
triggerall = var(9) = 1
trigger1 = statetype != A
trigger1 = random < 100
trigger1 = stateno = 400 && movecontact

;Standing Forward + B
[State -1,]
type = ChangeState
value = 245
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = random < 500
trigger1 = stateno = 225 && movecontact
trigger2 = stateno = 420 && movecontact

;Standing Forward + B
[State -1,]
type = ChangeState
value = 240
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = random < 200
trigger1 = p2statetype = C
trigger1 = ctrl
trigger1 = statetype != A

;Standing Forward + B
[State -1,]
type = ChangeState
value = 250
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = random < 200
trigger1 = p2statetype = C
trigger1 = ctrl
trigger1 = statetype != A

;RANDOM SPECIAL DURING A COMBO
[State -1,]
type = ChangeState
value = 3002
triggerall = roundstate = 2
triggerall = var(9) = 1
trigger1 = random < 100
trigger1 = stateno = 205 && movecontact
trigger2 = random < 100
trigger2 = stateno = 215 && movecontact
trigger3 = random < 100
trigger3 = stateno = 225 && movecontact
trigger4 = random < 100
trigger4 = stateno = 420 && movecontact
trigger5 = random < 400
trigger5 = stateno = 245 && movecontact

;Counter
[State -1]
type = ChangeState
value = 305
triggerall = roundstate = 2
triggerall = var(9) = 1
trigger1 = (stateno = 150 || stateno = 151) && power >= 1000
trigger1 = random <= 40

;Serpent Wave 2 super cancel
[State -1,]
type = ChangeState
value = 2013
triggerall = power >= 2000
triggerall = var(9) = 1
trigger1 = stateno = 1402 && movehit
trigger2 = stateno = 1407 && movehit
