;------------------------------
;    Asamiya Athena by Chloe
;	   KOF2002
;-----------------------------


;==============================================================================================
;
; COMMANDS DEFINITION
;
;==============================================================================================

;----------------------------------------------------------------------------------------------
; a        -> light kick
; b        -> heavy kick
; c        -> light punch + light kick
; x        -> light punch
; y        -> heavy punch
; z        -> heavy punch + heavy kick
; start    -> taunt
;----------------------------------------------------------------------------------------------

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

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
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

;-| Hold Button |--------------------------------------------------------------

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holdstart"
command = /s
time = 1

;-| CPU |--------------------------------------------------------------
[Command]
name = "a2"
command = a
time = 1

[Command]
name = "b2"
command = b
time = 1

[Command]
name = "c2"
command = c
time = 1

[Command]
name = "x2"
command = x
time = 1

[Command]
name = "y2"
command = y
time = 1

[Command]
name = "z2"
command = z
time = 1

[Command]
name = "start2"
command = s
time = 1

[Command]
name = "holdfwd2"
command = /$F
time = 1

[Command]
name = "holdback2"
command = /$B
time = 1

[Command]
name = "holdup2"
command = /$U
time = 1

[Command]
name = "holddown2"
command = /$D
time = 1

[Command]
name = "holda2"
command = /a
time = 1

[Command]
name = "holdb2"
command = /b
time = 1

[Command]
name = "holdc2"
command = /c
time = 1

[Command]
name = "holdx2"
command = /x
time = 1

[Command]
name = "holdy2"
command = /y
time = 1

[Command]
name = "holdz2"
command = /z
time = 1

[Command]
name = "holdstart2"
command = /s
time = 1

[Command]
name = "recovery2"
command = x+y
time = 1


;-| Super Motions |----------------------------------------------------------------------------
;-(HSDM ) --------------------------------
[Command]
name = "HSDM" 
command = ~D, DF, F, a+b+x+y
time = 40

[Command]
name = "HSDM2" 
command = ~D, DF, F, c+z
time = 40

;-(Psycho 9 ) --------------------------------
[Command]
name = "P9" 
command = ~F, D, B, F, x+y
time = 60

[Command]
name = "P9" 
command = ~F, D, B, F, z
time = 60

[Command]
name = "P9_1" 
command = x
time = 1

[Command]
name = "P9_2" 
command = a
time = 1

[Command]
name = "P9_3" 
command = y
time = 1

[Command]
name = "P9_4"
command = b
time = 1

[Command]
name = "finish1"
command = ~F, D, B, a
time = 20

[Command]
name = "finish1"
command = ~F, D, B, b
time = 20

[Command]
name = "finish2"
command = ~D, DF, F, x
time = 20

[Command]
name = "finish2"
command = ~D, DF, F, y
time = 20

[Command]
name = "finish3"
command = ~F, D, DF, x
time = 20

[Command]
name = "finish3"
command = ~F, D, DF, y
time = 20

;-(Shining Crystal Bit ) --------------------
[Command]
name = "SCB_X" 
command = ~F, D, B, F, D, B, x
time = 60

[Command]
name = "SCB_Y" 
command = ~F, D, B, F, D, B, y
time = 60

[Command]
name = "SCB_SDM" 
command = ~F, D, B, F, D, B, x+y
time = 60

[Command]
name = "SCB_SDM" 
command = ~F, D, B, F, D, B, z
time = 60

;-(Crystal Shoot ) ---------------------------
[Command]
name = "CS_X" 
command = ~D, DB, B, x
time = 20

[Command]
name = "CS_Y" 
command = ~D, DB, B, y
time = 20

;-(Phoenix Fang Arrow ) in air ---------------
[Command]
name = "PFA_A" 
command = ~D, DF, F, D, DF, F, a
time = 40

[Command]
name = "PFA_B" 
command = ~D, DF, F, D, DF, F, b
time = 40

;-| Special Motions |--------------------------------------------------------------------------

;-(Psychic Teleport)-----------------------
[Command]
name = "PT_A" 
command = ~D, DF, F, a
time = 20

[Command]
name = "PT_B" 
command = ~D, DF, F, b
time = 20

;-(Psycho Ball)----------------------------
[Command]
name = "PB_X"
command = ~D, DB, B, x
time = 20

[Command]
name = "PB_Y"
command = ~D, DB, B, y
time = 20

;-(Psycho Shoot)----------------------------
[Command]
name = "PB_M"
command = ~DB, D, DF, x
time = 20

[Command]
name = "PB_M"
command = ~DB, D, DF, y
time = 20

;-(Neo Psycho Reflector)------------------------
[Command]
name = "NPR_B"
command = ~F, D, B, b
time = 20

;-(Psycho Reflector)----------------------------
[Command]
name = "PR_A"
command = ~D, DB, B, a
time = 20

[Command]
name = "PR_A"
command = ~D, DB, B, b
time = 20

;-(Psycho Sword)--------------------------------
[Command]
name = "PS_X" 
command = ~F, D, DF, x
time = 20

[Command]
name = "PS_Y" 
command = ~F, D, DF, y
time = 20

;-(Phoenix Arrow)--------------------------------
[Command]
name = "PHA_A" 
command = ~D, DB, B, a
time = 20

[Command]
name = "PHA_B" 
command = ~D, DB, B, b
time = 20

;-| Double Tap |-------------------------------------------------------------------------------

[Command]
name 	= "FF"     ; Required (do not remove)
command = F, F
time 	= 15

[Command]
name 	= "BB"     ; Required (do not remove)
command = B, B
time 	= 15

[Command]
name 	= "DU"
command = $D, $U
time 	= 10


;-| 2/3 Button Combination |-------------------------------------------------------------------

[Command]
name 	= "recovery";Required (do not remove)
command = x+y
time 	= 1

;==============================================================================================
;
; STATE ENTRY
;
;==============================================================================================

[Statedef -1]

;=================
; Supers / Hypers
;=================

; Shining Crystal Bit
;---------------------
[State -1, Shining Crystal Bit Jump SDM]
type = ChangeState
value = 3800
triggerall = var(50) != 1 && (StateType = A) && power >= 3000 && command = "SCB_SDM"
trigger1 = ctrl 
trigger2 = (StateNo = 520 || StateNo = 550) && MoveContact

; Shining Crystal Bit
;---------------------
[State -1, Shining Crystal Bit Jump X]
type = ChangeState
value = 3500
triggerall = var(50) != 1 && (StateType = A) && power >= 1000 && command = "SCB_X"
trigger1 = ctrl
trigger2 = (StateNo = 520 || StateNo = 550) && MoveContact

; Shining Crystal Bit
;---------------------
[State -1, Shining Crystal Bit Jump Y]
type = ChangeState
value = 3700
triggerall = var(50) != 1 && (StateType = A) && power >= 2000 && command = "SCB_Y"
trigger1 = ctrl
trigger2 = (StateNo = 520 || StateNo = 550) && MoveContact

; Shining Crystal Bit
;---------------------
[State -1, Shining Crystal Bit Stance SDM]
type = ChangeState
value = 3300
triggerall = var(50) != 1 && (StateType != A) && power >= 3000 && command = "SCB_SDM"
trigger1 = ctrl
trigger2 = (StateNo = 500 || StateNo = 510 || StateNo = 540) && MoveContact
trigger3 = ctrl && StateNo = [100, 101]

; Shining Crystal Bit
;---------------------
[State -1, Shining Crystal Bit Stance X]
type = ChangeState
value = 3000
triggerall = var(50) != 1 && (StateType != A) && power >= 1000 && command = "SCB_X"
trigger1 = ctrl
trigger2 = (StateNo = 500 || StateNo = 510 || StateNo = 540) && MoveContact
trigger3 = ctrl && StateNo = [100, 101]

; Shining Crystal Bit
;---------------------
[State -1, Shining Crystal Bit Stance Y]
type = ChangeState
value = 3200
triggerall = var(50) != 1 && (StateType != A) && power >= 2000 && command = "SCB_Y"
trigger1 = ctrl
trigger2 = (StateNo = 500 || StateNo = 510 || StateNo = 540) && MoveContact
trigger3 = ctrl && StateNo = [100, 101]

; HSDM
;-----
[State -1, HSDM]
type = ChangeState
value = 4500
triggerall = (command = "HSDM" || command = "HSDM2") && statetype != A && var(50) != 1
triggerall = Life <= 500 && power >= 3000 
trigger1 = ctrl
trigger2 = (StateNo = [200, 235]) && MoveContact && !(StateNo%5) && StateNo != 215
trigger3 = (StateNo = [300, 320]) && MoveContact && !(StateNo%10)
trigger4 = (StateNo = 500 || StateNo = 510 || StateNo = 540) && MoveContact
trigger5 = ctrl && StateNo = [100, 101]

; Psycho 9
;---------
[State -1, PSycho 9]
type = ChangeState
value = 4000
triggerall = command = "P9" && power >= 2000 && statetype != A && var(50) != 1 
trigger1 = ctrl 
trigger2 = (StateNo = [200, 235]) && MoveContact && !(StateNo%5) && StateNo != 215
trigger3 = (StateNo = [300, 320]) && MoveContact && !(StateNo%10)
trigger4 = (StateNo = 500 || StateNo = 510 || StateNo = 540) && MoveContact
trigger5 = ctrl && StateNo = [100, 101]

; Phoenix Fang Arrow
;-------------------
[State -1]
type = ChangeState
value = 2000
triggerall = command = "PFA_A" && power >= 1000 && var(50) != 1 
trigger1 = ctrl && statetype = A 
trigger2 = (StateNo = 500 || StateNo = 520 || StateNo = 550) && MoveContact

[State -1]
type = ChangeState
value = 2040
triggerall = command = "PFA_B" && power >= 2000 && var(50) != 1
trigger1 = ctrl && statetype = A
trigger2 = (StateNo = 500 || StateNo = 520 || StateNo = 550) && MoveContact

;==========
; Specials
;==========

;Psychic Teleport
;----------------
[State -1]
type = ChangeState
value = 1000
triggerall = command = "PT_A" && var(50) != 1 && StateType != A 
trigger1 = ctrl
trigger2 = (StateNo = 510 || StateNo = 540) && MoveContact
trigger3 = StateNo = [100, 101]

[State -1]
type = ChangeState
value = 1050
triggerall = command = "PT_B" && var(50) != 1 && StateType != A 
trigger1 = ctrl
trigger2 = (StateNo = 510 || StateNo = 540) && MoveContact
trigger3 = StateNo = [100, 101]

;Psychic Teleport
;----------------
[State -1]
type = ChangeState
value = 1020
triggerall = var(14) = 1  && StateType = A 
triggerall = command = "PT_A" && var(50) != 1
trigger1 = ctrl

[State -1]
type = ChangeState
value = 1080
triggerall = var(14) = 1  && StateType = A 
triggerall = command = "PT_B" && var(50) != 1
trigger1 = ctrl

;Psycho Ball
;-----------
[State -1]
type = ChangeState
value = 1100
triggerall = command = "PB_X" && NumProj = 0 && var(50) != 1
trigger1 = StateType != A && ctrl
trigger2 = (StateNo = [200, 235]) && MoveContact && !(StateNo%5) && StateNo != 215
trigger3 = (StateNo = [300, 320]) && MoveContact && !(StateNo%10)
trigger4 = (StateNo = 510 || StateNo = 540) && MoveContact

[State -1]
type = ChangeState
value = 1200
triggerall = command = "PB_Y" && NumProj = 0 && var(50) != 1
trigger1 = StateType != A && ctrl
trigger2 = (StateNo = [200, 235]) && MoveContact && !(StateNo%5) && StateNo != 215
trigger3 = (StateNo = [300, 320]) && MoveContact && !(StateNo%10)
trigger4 = (StateNo = 510 || StateNo = 540) && MoveContact

;Psycho Shoot
;----------------
[State -1]
type = ChangeState
value = 1800
triggerall = command = "PB_M" && NumProj = 0 && var(14) = 1
trigger1 = StateType != A && ctrl
trigger2 = (StateNo = [200, 235]) && MoveContact && !(StateNo%5) && StateNo != 215
trigger3 = (StateNo = [300, 320]) && MoveContact && !(StateNo%10)
trigger4 = (StateNo = 510 || StateNo = 540) && MoveContact

;Neo Psycho Reflector
;--------------------
[State -1]
type = ChangeState
value = 1600
triggerall = command = "NPR_B" && var(14) = 1
trigger1 = StateType != A && ctrl

;Psycho Reflector
;----------------
[State -1]
type = ChangeState
value = 1300
triggerall = command = "PR_A" && var(50) != 1
trigger1 = StateType != A && ctrl

;Psycho Sword
;------------
[State -1]
type = ChangeState
value = 1500
triggerall = command = "PS_X" && var(50) != 1
trigger1 = ctrl
trigger2 = (StateNo = [200, 235]) && MoveContact && !(StateNo%5) && StateNo != 215
trigger3 = (StateNo = [300, 320]) && MoveContact && !(StateNo%10)
trigger4 = StateNo = 405 && MoveContact
trigger5 = StateNo = 425 && MoveContact
trigger6 = StateNo = 500 && MoveContact && Time >= 15
trigger7 = (StateNo = 520 || StateNo = 550) && MoveContact
trigger8 = StateNo = 535 && MoveContact
trigger9 = ctrl && StateNo = [100, 101]

[State -1]
type = ChangeState
value = 1550
triggerall = command = "PS_Y" && var(50) != 1
trigger1 = ctrl
trigger2 = (StateNo = [200, 235]) && MoveContact && !(StateNo%5) && StateNo != 215
trigger3 = (StateNo = [300, 320]) && MoveContact && !(StateNo%10)
trigger4 = StateNo = 405 && MoveContact
trigger5 = StateNo = 425 && MoveContact
trigger6 = StateNo = 500 && MoveContact && Time >= 15
trigger7 = (StateNo = 520 || StateNo = 550) && MoveContact
trigger8 = StateNo = 535 && MoveContact
trigger9 = ctrl && StateNo = [100, 101]

;Phoenix Arrow
;-------------
[State -1]
type = ChangeState
value = 1400
triggerall = command = "PHA_A" && var(50) != 1
trigger1 = ctrl && StateType = A
trigger2 = StateNo = 500 && MoveContact
trigger3 = StateNo = 405 && MoveContact
trigger4 = StateNo = 425 && MoveContact
trigger5 = (StateNo = 520 || StateNo = 550) && MoveContact
trigger6 = StateNo = 535 && MoveContact
trigger7 = StateNo = 105

[State -1]
type = ChangeState
value = 1450
triggerall = command = "PHA_B" && var(50) != 1
trigger1 = ctrl && StateType = A 
trigger2 = StateNo = 500 && MoveContact
trigger3 = StateNo = 405 && MoveContact
trigger4 = StateNo = 425 && MoveContact
trigger5 = (StateNo = 520 || StateNo = 550) && MoveContact
trigger6 = StateNo = 535 && MoveContact
trigger7 = StateNo = 105



; R. Kick
;--------
[State -1, R Kick]
type = ChangeState
value = 540
triggerall = (command = "c" && command ="z") && var(14) = 1
trigger1 = StateType != A && ctrl && var(50) != 1
trigger2 = (StateNo = [100,101]) && var(50) != 1

; Blow Away Attack 2
;-------------------
[State -1, Blow Away Attack 2]
type = ChangeState
value = 550
triggerall = (command = "c" && command ="z") && var(14) = 1
trigger1 = StateType = A && ctrl && var(50) != 1

;================
; Standard Moves
;================

; Run
;----
[State -1, run]
type = ChangeState
value = 100
triggerall = command = "FF" && var(50) != 1
trigger1 = statetype != A && ctrl

; Hop Back
;---------
[State -1, hop back]
type = ChangeState
value = 105
triggerall = command = "BB" && var(50) != 1
trigger1 = statetype != A && ctrl

; Roll Back
;----------
[State -1, roll back]
type = ChangeState
value = 115
triggerall = command ="holdback" && (statetype != A) 
triggerall = (command = "x" && command ="a") || command = "c"
trigger1 = ctrl && var(50) != 1 
trigger2 = (StateNo = [200, 235]) && MoveContact && !(StateNo%5) && StateNo != 215
trigger3 = (StateNo = [300, 320]) && MoveContact && !(StateNo%10)

; Roll Forward
;-------------
[State -1, roll fwd]
type = ChangeState
value = 110
triggerall = statetype != A
triggerall = (command = "x" && command ="a") || command = "c"
trigger1 = ctrl && var(50) != 1
trigger2 = (StateNo = [200, 235]) && MoveContact && !(StateNo%5) && StateNo != 215
trigger3 = (StateNo = [300, 320]) && MoveContact && !(StateNo%10)

; Edge Jump
;----------
[State -1]
type = ChangeState
value = 107
triggerall = StateType = A && ctrl && BackEdgeDist  < 3 && var(50) != 1
trigger1 =  command = "holdfwd" && command = "holdup"

; Taunt
;------
[State -1]
type = ChangeState
value = 195
triggerall = command = "start" && ctrl && var(50) != 1
trigger1 = StateType != A

; Recover from fall
;------------------
[State -1]
type = ChangeState 
value = 5201 
triggerall = var(50) != 1 && CanRecover && command = "recovery"
trigger1 = Vel Y > 0 && Pos Y >= 0 && alive && (stateno = [5050,5060])

;====================
; Additionnal Attacks
;====================

; Chained Kick
;-------------
[State -1, Chained Kick]
type = ChangeState
value = 500
triggerall = command = "holdfwd" && command = "a" && var(50) != 1
trigger1 = StateType != A && ctrl
trigger2 = (StateNo = [100,101])
trigger3 = StateNo = 205 && MoveContact
trigger4 = StateNo = 225 && MoveContact
trigger5 = StateNo = 235 && MoveContact

; Rush
;-----
[State -1, Rush]
type = ChangeState
value = 510
triggerall = (command = "y" && command ="b") || command = "z" 
trigger1 = StateType != A && ctrl && var(50) != 1
trigger2 = (StateNo = [100,101]) && var(50) != 1

; Blow Away Attack
;-----------------
[State -1, Blow Away Attack]
type = ChangeState
value = 520
triggerall = (command = "y" && command ="b") || command = "z"
trigger1 = StateType = A && ctrl && var(50) != 1

; Phoenix Bomb
;--------------
[State -1, Phoenix Bomb]
type = ChangeState
value = 530
triggerall = command = "holddown" && command = "a" && var(50) != 1
trigger1 = StateType = A && ctrl
trigger2 = (StateNo = 520 || StateNo = 550) && MoveContact
trigger3 = StateNo = 400 && MoveContact
trigger4 = StateNo = 405 && MoveContact

;====================
; Throw attack
;====================

; Throw Forward
;--------------
[State -1]
type = ChangeState
value = 600
triggerall = command = "y" && command ="holdfwd" && P2BodyDist X <= 12 && var(50) != 1
trigger1 = StateType = S && ctrl && stateno != 100
trigger1 = P2StateType != A && P2MoveType != H 

; Throw Backward
;---------------
[State -1]
type = ChangeState
value = 620
triggerall = command = "b" && command ="holdfwd" && P2BodyDist X <= 12 && var(50) != 1
trigger1 = StateType = S && ctrl && stateno != 100
trigger1 = P2StateType != A && P2MoveType != H

; Air Throw 
;----------
[State -1]
type = ChangeState
value = 640
triggerall = (command = "y" || command = "b") && StateType = A && ctrl && var(50) != 1
triggerall = (command ="holdfwd" || command = "holddown" || command = "holdback")
triggerall = Pos Y < -66 
trigger1 = (Facing != enemynear, Facing)
trigger1 = stateno != 100 && P2StateType = A && P2MoveType != H && P2BodyDist X <= 12


;==================
; Crouching Attacks
;==================

; Crouch Light Punch
;-------------------
[State -1, crouch light punch]
type = ChangeState
value = 300
triggerall = command = "x" && var(50) != 1
trigger1 = StateType = C && ctrl
trigger2 = StateNo = 310 && MoveContact
trigger3 = StateNo = 300 && MoveContact

; Crouch Light Kick
;------------------
[State -1, crouch light kick]
type = ChangeState
value = 310
triggerall = command = "a" && HitCount <= 1 && var(50) != 1
trigger1 = StateType = C && ctrl
trigger2 = StateNo = 310 && MoveContact

; Crouch Strong Punch
;--------------------
[State -1, crouch strong punch]
type = ChangeState
value = 320
triggerall = command = "y" && var(50) != 1
trigger1 = StateType = C && ctrl

; Crouch Strong Kick
;-------------------
[State -1, crouch strong kick]
type = ChangeState
value = 330
triggerall = command = "b" && var(50) != 1
trigger1 = StateType = C && ctrl
trigger2 = StateNo = 106 && command = "holddown"

;==================
; Standing Attacks
;==================

; Stand Light Punch
;------------------
[State -1, stand light punch]
type = ChangeState
value = 200
triggerall = command = "x" && var(50) != 1
trigger1 = StateType = S && ctrl
trigger2 = (StateNo = [100,101])

; Stand Light Kick
;-----------------
[State -1, stand light kick]
type = ChangeState
value = 210
triggerall = command = "a" && var(50) != 1
trigger1 = StateType = S && ctrl
trigger2 = (StateNo = [100,101])

; Stand Strong Punch
;-------------------
[State -1, stand strong punch]
type = ChangeState
value = 220
triggerall = command = "y" && var(50) != 1
trigger1 = StateType = S && ctrl
trigger2 = (StateNo = [100,101])

; Stand Strong Kick
;------------------
[State -1, stand strong kick]
type = ChangeState
value = 230
triggerall = command = "b" && var(50) != 1
trigger1 = StateType = S && ctrl
trigger2 = (StateNo = [100,101])

;==================
; Aerial Attacks
;==================

; Air Light Punch Diag
;---------------------
[State -1, air light punch]
type = ChangeState
value = 405
triggerall = command = "x" && StateType = A && ctrl && var(50) != 1
trigger1 = Anim = 42 ^^ Anim = 43 ^^ Anim = 48

; Air Light Punch
;----------------
[State -1, air light punch]
type = ChangeState
value = 400
triggerall = command = "x" && var(50) != 1
trigger1 = StateType = A && ctrl

; Air Light Kick Diag
;--------------------
[State -1, air light kick]
type = ChangeState
value = 415
triggerall = command = "a" && StateType = A && ctrl && var(50) != 1
trigger1 = Anim = 42 ^^ Anim = 43 ^^ Anim = 48

; Air Light Kick
;---------------
[State -1, air light kick]
type = ChangeState
value = 410
triggerall = command = "a" && var(50) != 1
trigger1 = StateType = A && ctrl

; Air Fierce Punch Diag
;----------------------
[State -1, air fierce punch]
type = ChangeState
value = 425
triggerall = command = "y" && StateType = A && ctrl && var(50) != 1
trigger1 = Anim = 42 ^^ Anim = 43 ^^ Anim = 48

; Air Fierce Punch
;-----------------
[State -1, air fierce punch]
type = ChangeState
value = 420
triggerall = command = "y" && var(50) != 1
trigger1 = StateType = A && ctrl

; Air Fierce Kick Diag
;---------------------
[State -1, air fierce kick]
type = ChangeState
value = 435
triggerall = command = "b" && StateType = A && ctrl && var(50) != 1
trigger1 = Anim = 42 ^^ Anim = 43 ^^ Anim = 48

; Air Fierce Kick
;----------------
[State -1, air fierce kick]
type = ChangeState
value = 430
triggerall = command = "b" && var(50) != 1
trigger1 = StateType = A && ctrl


;=========
; AI Mode
;=========

; AI Psycho Shoot
;----------------
[State -1, AI Psycho Shoot]
type = ChangeState
value = 1800
triggerall = var(50) = 1 && var(14) = 1 && (P2Life > 0)
triggerall = (StateType != A) 
trigger1 = (enemy, numproj > 0) && (random <= 50) && (P2BodyDist x >= 220) && (ctrl)
trigger1 = (p2stateno = 100 || p2stateno = 101 || p2stateno = 20 || p2stateno = 5300)
trigger2 = (enemy, numproj = 0) && (random <= 100) && (P2BodyDist x >= 240) && (ctrl)
trigger2 = (p2stateno = 100 || p2stateno = 101 || p2stateno = 20 || p2stateno = 5300)
trigger3 = (StateNo = [200, 235]) && MoveContact && !(StateNo%5) && StateNo != 215 && (random <= 500)
trigger4 = (StateNo = [300, 320]) && MoveContact && !(StateNo%10) && (random <= 500)
trigger5 = (StateNo = 500 || StateNo = 510 || StateNo = 540) && MoveContact && (random <= 600)
trigger6 = (p2stateno = 100 || p2stateno = 101 || p2stateno = 20 || p2stateno = 5300)
trigger6 = (P2BodyDist x <= 100) && (P2BodyDist x >= 30) && (random <= 300) && (ctrl)

; AI Psycho Ball
;---------------
[State -1, AI Psycho Ball light]
type = ChangeState
value = 1100
triggerall = var(50) = 1 && (P2Life > 0)
triggerall = (StateType != A) 
trigger1 = (enemy, numproj > 0) && (random <= 150) && (P2BodyDist x >= 200) && (ctrl)
trigger1 = (p2stateno = 100 || p2stateno = 101 || p2stateno = 20 || p2stateno = 5300)
trigger2 = (enemy, numproj = 0) && (random <= 200) && (P2BodyDist x >= 220) && (ctrl)
trigger2 = (p2stateno = 100 || p2stateno = 101 || p2stateno = 20 || p2stateno = 5300)
trigger3 = (StateNo = [200, 235]) && MoveContact && !(StateNo%5) && StateNo != 215 && (random <= 500)
trigger4 = (StateNo = [300, 320]) && MoveContact && !(StateNo%10) && (random <= 500)
trigger5 = (StateNo = 500 || StateNo = 510 || StateNo = 540) && MoveContact && (random <= 600)
trigger6 = (p2stateno = 100 || p2stateno = 101 || p2stateno = 20 || p2stateno = 5300) 
trigger6 = (P2BodyDist x <= 100) && (P2BodyDist x >= 20) && (random <= 400) && (ctrl)

; AI Psycho Ball
;---------------
[State -1, AI Psycho Ball Hard]
type = ChangeState
value = 1200
triggerall = var(50) = 1 && (P2Life > 0)
triggerall = (StateType != A) 
trigger1 = (enemy, numproj > 0) && (random <= 250) && (P2BodyDist x >= 180) && (ctrl)
trigger1 = (p2stateno = 100 || p2stateno = 101 || p2stateno = 20 || p2stateno = 5300)
trigger2 = (enemy, numproj = 0) && (random <= 300) && (P2BodyDist x >= 200) && (ctrl)
trigger2 = (p2stateno = 100 || p2stateno = 101 || p2stateno = 20 || p2stateno = 5300)
trigger3 = (StateNo = [200, 235]) && MoveContact && !(StateNo%5) && StateNo != 215 && (random <= 500)
trigger4 = (StateNo = [300, 320]) && MoveContact && !(StateNo%10) && (random <= 500)
trigger5 = (StateNo = 500 || StateNo = 510 || StateNo = 540) && MoveContact && (random <= 600)
trigger6 = (p2stateno = 100 || p2stateno = 101 || p2stateno = 20 || p2stateno = 5300) 
trigger6 = (P2BodyDist x <= 100) && (P2BodyDist x >= 10) && (random <= 500) && (ctrl)

; AI Psycho Reflector
;--------------------
[State -1, AI Psycho Reflector]
type = ChangeState
value = 1300
triggerall = var(50) = 1 && (P2Life > 0)
triggerall = (StateType != A)  && (ctrl)
trigger1 = (enemy, numproj > 0) && (random <= 500) && (P2BodyDist x >= 250)
trigger2 = (P2BodyDist x <= 40) && (P2BodyDist x >= 10) && (random <= 100) && (p2stateno = 20)

; AI Neo Psycho Reflector
;------------------------
[State -1, AI Psycho Reflector]
type = ChangeState
value = 1600
triggerall = var(50) = 1 && var(14) = 1 && (P2Life > 0)
triggerall = (StateType != A) && (random <= 300) && (ctrl)
trigger1 = (enemy, numproj > 0) && (P2BodyDist x >= 220)
trigger2 = (P2BodyDist x <= 50) && (P2BodyDist x >= 20) && (random <= 100) && (p2stateno = 20)

; AI Guard
;---------
[State -1, Stand guard]
type = ChangeState
triggerall = var(50) = 1
triggerall = (StateType != A) && (P2statetype != C)
trigger1 = (facing != enemy, facing)
trigger1 = ctrl && var(16)
value = 130

[State -1, Crouch guard]
type = ChangeState
triggerall = var(50) = 1
triggerall = (StateType != A) && (P2statetype = C)
trigger1 = (facing != enemy, facing)
trigger1 = ctrl && var(16)
value = 131

[State -1, C-to-S guard]
type = ChangeState
triggerall = var(50) = 1 && (P2Movetype = A)
triggerall = (StateType != A) && (P2statetype != C)
trigger1 = (facing != enemy, facing)
trigger1 = stateno = 152
value = 150

[State -1, S-to-C guard]
type = ChangeState
triggerall = var(50)= 1 && (P2Movetype = A)
triggerall = (StateType != A) && (P2statetype = C)
trigger1 = (facing != enemy, facing)
trigger1 = stateno = 150
value = 152

; AI Roll Forward
;----------------
[State -1, Roll Forward]
type = ChangeState
value = 110
triggerall = var(50) = 1 && P2Movetype = A && (StateType != A) && p2bodydist x <= 30 
triggerall = ctrl && random <= 100
trigger1 = p2bodydist x >= 10 
trigger2 = BackEdgeDist < 10

; AI Roll Backward
;-----------------
[State -1, Roll Backward]
type = ChangeState
value = 115
triggerall = var(50) = 1 && P2Movetype = A && (StateType != A) && p2bodydist x <= 30 
triggerall = ctrl && random <= 200
trigger1 = p2bodydist x >= 10
trigger2 = FrontEdgeDist < 70

; AI Run
;-------
[State -1,run]
type = ChangeState
value = 100
triggerall = var(50) = 1 && roundstate = 2
triggerall = p2bodydist x > 160 && p2movetype = H && random <= 400
trigger1 = statetype = S && ctrl

; AI Psychic Teleport close
;--------------------------
[State -1,teleport]
type = ChangeState
value = 1000
triggerall = var(50) = 1 && roundstate = 2 && Life > 200 && ctrl
triggerall = p2bodydist x > 100 && random <= 300 && statetype = S 
trigger1 = enemy, numproj > 0
trigger2 = p2movetype = A 

; AI Psychic Teleport far
;------------------------
[State -1,teleport2]
type = ChangeState
value = 1050
triggerall = var(50) = 1 && roundstate = 2 && Life > 200 && ctrl
triggerall = p2bodydist x > 200 && random <= 400 && statetype = S 
trigger1 = enemy, numproj > 0 
trigger2 = p2movetype = A

; AI Psychic Teleport close
;--------------------------
[State -1,teleport air]
type = ChangeState
value = 1020
triggerall = var(50) = 1 && var(14) = 1 && roundstate = 2 && Life > 200 && ctrl
triggerall = p2bodydist x > 100 && random <= 200 && statetype = A
trigger1 = enemy, numproj > 0 
trigger2 = p2movetype = A

; AI Psychic Teleport far
;------------------------
[State -1,teleport air]
type = ChangeState
value = 1080
triggerall = var(50) = 1 && var(14) = 1 && roundstate = 2 && Life > 200 && ctrl
triggerall = p2bodydist x > 200 && random <= 200 && statetype = A
trigger1 = enemy, numproj > 0 
trigger2 = p2movetype = A

; AI Recover from fall
;---------------------
[State -1, Recovery]
type = ChangeState 
value = 5201 
triggerall = var(50) = 1 && CanRecover
trigger1 = Vel Y > 0 && Pos Y >= 0 && alive && (stateno = [5050,5060])

; AI Forward jump
;----------------
[State -1, jump fwd]
type = ChangeState
value = 39
triggerall = var(50) = 1 && roundstate = 2 && p2bodydist x = [75,90]
triggerall = random <= 200 && p2statetype != A
trigger1 = statetype != A
trigger1 = ctrl

; AI Long jump
;-------------
[State -1, long jump]
type = ChangeState
value = 38
triggerall = var(50) = 1 && roundstate = 2 && p2bodydist x >= 150
triggerall = random <= 100 && p2statetype != A
trigger1 = statetype != A
trigger1 = ctrl

; AI Edge Bounce
;---------------
[State -1, BEB]
type = ChangeState
value = 107
ctrl = 0
triggerall = var(50) = 1 && statetype = A 
triggerall = ctrl && Pos Y < -50 && stateno != 107
trigger1 = backEdgeDist < 4 && random <= 300

; AI Dash BWD
;------------
[State -1,hop back]
type = ChangeState
value = 106
triggerall = var(50) = 1 && roundstate = 2 && (P2StateNo = [100,101]) && ctrl
triggerall = p2bodydist x < 60 && statetype = S && (enemy, NumProj = 0) && random <= 300 && backEdgeDist > 60 
trigger1 = p2movetype = A

; AI Standing Weak Punch
;-----------------------
[State -1, SWP]
type = ChangeState
value = 200
ctrl = 0
triggerall = var(50) = 1 && statetype = S && ctrl && p2movetype != A && random <= 300 
trigger1 = (p2bodydist x <= 60) && (p2bodydist y >= -40) && p2statetype = A && p2movetype != H
trigger2 = (p2bodydist x <= 40) && (p2stateno = 100 || p2stateno = 20 || p2stateno = 0)

; AI Standing Hard Punch
;-----------------------
[State -1, SHP]
type = ChangeState
value = 220
ctrl = 0
triggerall = var(50) = 1 && statetype = S && ctrl && (p2bodydist x >= 35) && p2movetype != A && random <= 300 
trigger1 = (p2bodydist x <= 70) && (p2bodydist y >= -40) && p2statetype = A && p2movetype != H
trigger2 = (p2bodydist x <= 40) && (p2stateno = 100 || p2stateno = 20 || p2stateno = 0)

; AI Standing Weak kick
;----------------------
[State -1, SWK]
type = ChangeState
value = 210
ctrl = 0
triggerall = var(50) = 1 && statetype = S && p2movetype != A && random <= 300 
trigger1 = stateno = 200 && movehit = 1
trigger2 = stateno = 205 && movehit = 1 
trigger3 = ctrl && (p2bodydist x <= 40)

; AI Standing Hard kick
;----------------------
[State -1, SHK]
type = ChangeState
value = 230
ctrl = 0
triggerall = var(50) = 1 && statetype = S && p2movetype != A && random <= 300 && ctrl
trigger1 = (p2bodydist x <= 70) && (p2bodydist y >= -40) && p2statetype = A && p2movetype != H
trigger2 = (p2bodydist x <= 40) && (p2stateno = 100 || p2stateno = 20 || p2stateno = 0)

; AI Crouch Weak Punch
;---------------------
[State -1, CWP]
type = ChangeState
value = 300
ctrl = 0
triggerall = var(50) = 1 && statetype != A && p2movetype != A
triggerall = random <= 300 && (p2stateno = 100 || p2stateno = 20 || p2stateno = 0)
trigger1 = stateno = 300 && movehit = 1
trigger2 = ctrl && (p2bodydist x <= 30)

; AI Crouch Hard Punch
;---------------------
[State -1, CHP]
type = ChangeState
value = 320
ctrl = 0
triggerall = var(50) = 1 && statetype != A && ctrl && p2movetype != A
trigger1 = (p2bodydist x <= 40) && random <= 300 && (p2stateno = 100 || p2stateno = 20 || p2stateno = 0)

; AI Crouch Weak Kick
;--------------------
[State -1, CWK]
type = ChangeState
value = 310
ctrl = 0
triggerall = var(50) = 1 && statetype != A && p2movetype != A 
triggerall = random <= 300 && (p2stateno = 100 || p2stateno = 20 || p2stateno = 0)
trigger1 = stateno = 310 && movehit = 1
trigger2 = ctrl && (p2bodydist x <= 40)

; AI Crouch Hard Kick
;--------------------
[State -1, CHK]
type = ChangeState
value = 330
ctrl = 0
triggerall = var(50) = 1 && statetype != A && ctrl && p2movetype != A && random <= 300
trigger1 = (p2bodydist x <= 60) && (p2stateno = 100 || p2stateno = 20 || p2stateno = 0)
trigger2 = stateno = 230 && movehit = 1
trigger3 = stateno = 235 && movehit = 1

; AI Jump Weak Punch
;-------------------
[State -1, JWP]
type = ChangeState
value = 400
ctrl = 0
triggerall = var(50) = 1 && statetype = A
triggerall = ctrl && (p2bodydist x <= 70) && random <= 300 
trigger1 = (p2stateno = 100 || p2stateno = 20 || p2stateno = 0)

; AI Jump Weak Punch
;-------------------
[State -1, JWP2]
type = ChangeState
value = 405
ctrl = 0
triggerall = var(50) = 1 && statetype = A
triggerall = ctrl && (Anim = 42 ^^ Anim = 43 ^^ Anim = 48)
trigger1 = (p2bodydist x <= 70) && random <= 300 && (p2stateno = 100 || p2stateno = 20 || p2stateno = 0)

; AI Jump Weak Kick
;------------------
[State -1, JWK]
type = ChangeState
value = 410
ctrl = 0
triggerall = var(50) = 1 && statetype = A 
triggerall = ctrl
trigger1 = (p2bodydist x <= 70) && random <= 300 && (p2stateno = 100 || p2stateno = 20 || p2stateno = 0)

; AI Jump Weak Kick
;------------------
[State -1, JWK2]
type = ChangeState
value = 415
ctrl = 0
triggerall = var(50) = 1 && statetype = A 
triggerall = ctrl && (Anim = 42 ^^ Anim = 43 ^^ Anim = 48)
trigger1 = (p2bodydist x <= 70) && random <= 300 && (p2stateno = 100 || p2stateno = 20 || p2stateno = 0)

; AI Jump Hard Punch
;-------------------
[State -1, JHP]
type = ChangeState
value = 420
ctrl = 0
triggerall = var(50) = 1 && statetype = A 
triggerall = ctrl
trigger1 = (p2bodydist x <= 70) && random <= 300 && (p2stateno = 100 || p2stateno = 20 || p2stateno = 0)

; AI Jump Hard Punch
;-------------------
[State -1, JHP2]
type = ChangeState
value = 425
ctrl = 0
triggerall = var(50) = 1 && statetype = A 
triggerall = ctrl && (Anim = 42 ^^ Anim = 43 ^^ Anim = 48)
trigger1 = (p2bodydist x <= 70) && random <= 300 && (p2stateno = 100 || p2stateno = 20 || p2stateno = 0)

; AI Jump Hard Kick
;------------------
[State -1, JHK]
type = ChangeState
value = 430
ctrl = 0
triggerall = var(50) = 1 && statetype = A 
triggerall = ctrl
trigger1 = (p2bodydist x <= 70) && random <= 300 && (p2stateno = 100 || p2stateno = 20 || p2stateno = 0)

; AI Jump Hard Kick
;------------------
[State -1, JHK2]
type = ChangeState
value = 435
ctrl = 0
triggerall = var(50) = 1 && statetype = A 
triggerall = ctrl && (Anim = 42 ^^ Anim = 43 ^^ Anim = 48)
trigger1 = (p2bodydist x <= 70) && random <= 300 && (p2stateno = 100 || p2stateno = 20 || p2stateno = 0)

; AI Phoenix Bomb
;----------------
[State -1, AI Psycho Bomb]
type = ChangeState
value = 530
triggerall = var(50) = 1
triggerall = (P2BodyDist x <= 30) && (P2Life > 0)
triggerall = (StateType = A) && Pos Y < -80
trigger1 = StateNo != 530 && ctrl
trigger1 = (enemy, numproj = 0)
trigger2 = StateNo = 400 && MoveContact
trigger3 = StateNo = 405 && MoveContact
trigger4 = (StateNo = 520 || StateNo = 550) && MoveContact

; Chained Kick
;-------------
[State -1, AI Chained Kick]
type = ChangeState
value = 500
triggerall = var(50) = 1 && (P2Life > 0) && (P2BodyDist x <= 40) && (StateType != A)
trigger1 = ctrl && (P2BodyDist x >= 10) && (random <= 100) 
trigger2 = StateNo = 205 && MoveContact && (random <= 500) 
trigger3 = StateNo = 225 && MoveContact && (random <= 500) 
trigger4 = StateNo = 235 && MoveContact && (random <= 500) 

; KnockDown
;----------
[State -1, AI KnockDown]
type = ChangeState
value = 510
triggerall = var(50) = 1 && (P2Life > 0) && (P2BodyDist x <= 30) && (StateType != A)
trigger1 = ctrl && (P2BodyDist x >= 10) && (random <= 200) 
trigger2 = StateNo = 205 && MoveContact && (random <= 500) 
trigger3 = StateNo = 225 && MoveContact && (random <= 500) 
trigger4 = StateNo = 235 && MoveContact && (random <= 500) 

; KnockDown
;----------
[State -1, AI KnockDown 2]
type = ChangeState
value = 540
triggerall = var(50) = 1 && var(14) = 1 && (P2Life > 0) && (P2BodyDist x <= 30) && (StateType != A)
trigger1 = ctrl && (P2BodyDist x >= 10) && (random <= 200) 
trigger2 = StateNo = 205 && MoveContact && (random <= 500) 
trigger3 = StateNo = 225 && MoveContact && (random <= 500) 
trigger4 = StateNo = 235 && MoveContact && (random <= 500) 

; KnockDown air
;--------------
[State -1, AI KnockDown air]
type = ChangeState
value = 520
triggerall = var(50) = 1 && (P2Life > 0) && (P2BodyDist x <= 60) && (StateType = A)
trigger1 = ctrl && (P2BodyDist x >= 10) && Pos Y < -60 && (random <= 500) 

; KnockDown air
;--------------
[State -1, AI KnockDown air 2]
type = ChangeState
value = 550
triggerall = var(50) = 1 && var(14) = 1 && (P2Life > 0) && (P2BodyDist x <= 60) && (StateType = A)
trigger1 = ctrl && (P2BodyDist x >= 10) && Pos Y < -60 && (random <= 500) 

; Throw 1
;--------
[State -1, Throw1]
type = ChangeState
value = 600
ctrl = 0
triggerall = var(50) = 1 && statetype = S && ctrl && p2statetype = S 
trigger1 = (p2bodydist x <= 20) && random <= 600 && (p2stateno = 150 || p2stateno = 100 || p2stateno = 20 || p2stateno = 0)

; Throw 2
;--------
[State -1, Throw2]
type = ChangeState
value = 620
ctrl = 0
triggerall = var(50) = 1 && statetype = S && ctrl && p2statetype = S 
trigger1 = (p2bodydist x <= 20) && random <= 600 && (p2stateno = 150 || p2stateno = 100 || p2stateno = 20 || p2stateno = 0)

; Air Throw
;----------
[State -1, Air Throw]
type = ChangeState
value = 640
ctrl = 0
triggerall = var(50) = 1 && statetype = A && ctrl
triggerall = Pos Y < -66 
trigger1 = (Facing != enemynear, Facing)
trigger1 = (p2bodydist x <= 20) && random <= 600 && p2statetype = A

; AI Psycho Sword
;----------------
[State -1, AI Psycho Sword light]
type = ChangeState
value = 1500
triggerall = var(50) = 1 && (P2Life > 0)
triggerall = (StateType != A) && (enemy, numproj = 0)
trigger1 = (p2bodydist x <= 50) && (p2bodydist x >= 0) && (p2bodydist y <= -30) && random <= 300 && p2statetype = A && p2movetype != H && ctrl
trigger2 = (StateNo = [200, 235]) && MoveContact && !(StateNo%5) && StateNo != 215 && (random <= 400)
trigger3 = (StateNo = [300, 320]) && MoveContact && !(StateNo%10) && (random <= 400)
trigger4 = StateNo = 500 && MoveContact && Time >= 15 && (random <= 500)
trigger5 = (StateNo = 520 || StateNo = 550) && MoveContact && (random <= 500)

; AI Psycho Sword
;----------------
[State -1, AI Psycho Sword hard]
type = ChangeState
value = 1550
triggerall = var(50) = 1 && (P2Life > 0)
triggerall = (StateType != A) && (enemy, numproj = 0)
trigger1 = (p2bodydist x <= 60) && (p2bodydist x >= 0) && (p2bodydist y <= -30) && random <= 500 && p2statetype = A && p2movetype != H && ctrl
trigger2 = (StateNo = [200, 235]) && MoveContact && !(StateNo%5) && StateNo != 215 && (random <= 500)
trigger3 = (StateNo = [300, 320]) && MoveContact && !(StateNo%10) && (random <= 500)
trigger4 = StateNo = 500 && MoveContact && Time >= 15 && (random <= 600)
trigger5 = (StateNo = 520 || StateNo = 550) && MoveContact && (random <= 600)

; AI Psycho Sword
;----------------
[State -1, AI Psycho Sword light]
type = ChangeState
value = 1500
triggerall = var(50) = 1 && (P2Life > 0) && Pos Y < -60
triggerall = (StateType = A) && (enemy, numproj = 0) && (p2bodydist x >= 20)
trigger1 = (p2bodydist x <= 30) && (p2bodydist x >= 10) && random <= 400 && p2statetype = A && p2movetype != H && ctrl
trigger2 = StateNo = 405 && MoveContact && random <= 400 && p2statetype = A
trigger3 = StateNo = 435 && MoveContact && random <= 400 && p2statetype = A

; AI Psycho Sword
;----------------
[State -1, AI Psycho Sword hard]
type = ChangeState
value = 1550
triggerall = var(50) = 1 && (P2Life > 0) && Pos Y < -60
triggerall = (StateType = A) && (p2bodydist x >= 20)
trigger1 = (enemy, numproj = 0) && random <= 500 
trigger1 = (p2bodydist x <= 30) && (p2bodydist x >= 10) && p2statetype = A && p2movetype != H && ctrl
trigger2 = StateNo = 405 && MoveContact && random <= 500 && p2statetype = A
trigger3 = StateNo = 435 && MoveContact && random <= 500 && p2statetype = A

; AI Phoenix Arrow
;-----------------
[State -1, AI Phoenix Arrow light]
type = ChangeState
value = 1400
triggerall = var(50) = 1 && (P2Life > 0) && random <= 400
trigger1 = (enemy, numproj = 0) && (StateType = A) && ctrl 
trigger1 = (p2bodydist x <= 90) && (p2bodydist x >= 20) && Pos Y < -100 && p2statetype != A
trigger2 = StateNo = 500 && AnimElem = 6 && MoveContact 

; AI Phoenix Arrow
;-----------------
[State -1, AI Phoenix Arrow hard]
type = ChangeState
value = 1450
triggerall = var(50) = 1 && (P2Life > 0) && random <= 500
trigger1 = (enemy, numproj = 0) && (StateType = A) && ctrl
trigger1 = (p2bodydist x <= 180) && (p2bodydist x >= 60) && Pos Y < -100 && p2statetype != A
trigger2 = StateNo = 500 && AnimElem = 6 && MoveContact 

; AI Phoenix Fang Arrow
;----------------------
[State -1, AI Phoenix Fang Arrow light]
type = ChangeState
value = 2000
triggerall = var(50) = 1 && (P2Life > 0) && power >= 1000 && random <= 500 
triggerall = Pos Y < -80 && Pos Y > -180 && p2statetype != A 
triggerall = (p2stateno = 0 || p2stateno = 100 || p2stateno = 101 || p2stateno = 20 || p2stateno = 5300)
trigger1 = (enemy, numproj = 0) && ctrl && Life < P2Life
trigger1 = (p2bodydist x <= 150) && (p2bodydist x >= 60) && (StateType = A)
trigger2 = StateNo = 500 && MoveContact && animelem >= 6

; AI Phoenix Fang Arrow
;----------------------
[State -1, AI Phoenix Fang Arrow hard]
type = ChangeState
value = 2040
triggerall = var(50) = 1 && (P2Life > 0) && power >= 2000 && random <= 500 
triggerall = Pos Y < -80 && Pos Y > -200 && p2statetype != A 
triggerall = (p2stateno = 0 || p2stateno = 100 || p2stateno = 101 || p2stateno = 20 || p2stateno = 5300)
trigger1 = (enemy, numproj = 0) && ctrl
trigger1 = (p2bodydist x <= 160) && (p2bodydist x >= 60) && (StateType = A)
trigger2 = StateNo = 500 && MoveContact

; Shining Crystal Bit
;---------------------
[State -1, AI Shining Crystal Bit Stance X]
type = ChangeState
value = 3000
triggerall = var(50) = 1 && (P2Life > 0) && Life < P2Life
triggerall = (StateType != A) && power >= 1000 && (p2bodydist x <= 80) 
triggerall = (p2stateno != 150 || p2stateno != 152 || p2stateno != 130 || p2stateno != 131)
trigger1 = ctrl && p2movetype != H && random <= 500 && (p2stateno = 100 || p2stateno = 101 || p2stateno = 20 || p2stateno = 5300)
trigger2 = (StateNo = 510 || StateNo = 540) && MoveContact
trigger3 = ctrl && (P2StateType = A) && (p2bodydist x <= 80) 

; Shining Crystal Bit
;---------------------
[State -1, AI Shining Crystal Bit Stance Y]
type = ChangeState
value = 3200
triggerall = var(50) = 1 && (P2Life > 0) && (P2Life < 270) && Life < P2Life
triggerall = (StateType != A) && power >= 2000 && (p2bodydist x <= 80) 
triggerall = (p2stateno != 150 || p2stateno != 152 || p2stateno != 130 || p2stateno != 131)
trigger1 = ctrl && p2movetype != H && random <= 500 && (p2stateno = 100 || p2stateno = 101 || p2stateno = 20 || p2stateno = 5300)
trigger2 = (StateNo = 510 || StateNo = 540) && MoveContact
trigger3 = ctrl && (P2StateType = A) && (p2bodydist x <= 80) 

; Shining Crystal Bit
;---------------------
[State -1, AI Shining Crystal Bit Stance SDM]
type = ChangeState
value = 3300
triggerall = var(50) = 1 && (P2Life > 0)
triggerall = (StateType != A) && power >= 3000 && (p2bodydist x <= 80) 
triggerall = (p2stateno != 150 || p2stateno != 152 || p2stateno != 130 || p2stateno != 131)
trigger1 = ctrl && p2movetype != H && random <= 500 && (p2stateno = 100 || p2stateno = 101 || p2stateno = 20 || p2stateno = 5300)
trigger2 = (StateNo = 510 || StateNo = 540) && MoveContact
trigger3 = ctrl && (P2StateType = A) && (p2bodydist x <= 80) 

; Crystal Shot
;-------------
[State -1, AI Crystal Shot X]
type = ChangeState
value = 3100
triggerall = var(50) = 1 && (P2Life > 0) && p2movetype != H
triggerall = (StateType != A) && p2statetype != A && (p2bodydist x >= 110)
trigger1 = StateNo = 3010 && random <= 500
trigger2 = StateNo = 3015 && random <= 500

; Crystal Shot
;-------------
[State -1, AI Crystal Shot Y]
type = ChangeState
value = 3150
triggerall = var(50) = 1 && (P2Life > 0) && p2movetype != H
triggerall = (StateType != A) && p2statetype = A && (p2bodydist x >= 110)
trigger1 = StateNo = 3010 && random <= 500
trigger2 = StateNo = 3015 && random <= 500

; Crystal Shot
;-------------
[State -1, AI Crystal Shot X]
type = ChangeState
value = 3120
triggerall = var(50) = 1 && (P2Life > 0) && p2movetype != H
triggerall = (StateType != A) && p2statetype != A && random <= 500
trigger1 = StateNo = 3110 && (P2StateNo = 20) 
trigger2 = StateNo = 3110 && ((P2StateNo = [100,101]) || P2StateNo = 110 )
trigger3 = StateNo = 3110 && (p2bodydist x <= 120)

; Crystal Shot
;-------------
[State -1, AI Crystal Shot Y]
type = ChangeState
value = 3170
triggerall = var(50) = 1 && (P2Life > 0) && p2movetype != H
triggerall = (StateType != A) && p2statetype = A && random <= 500
trigger1 = StateNo = 3160 && (P2StateNo = 20) 
trigger2 = StateNo = 3160 && ((P2StateNo = [100,101]) || P2StateNo = 110 )
trigger3 = StateNo = 3160 && (p2bodydist x <= 120)

; Shining Crystal Bit
;---------------------
[State -1, AI Shining Crystal Bit Jump X]
type = ChangeState
value = 3500
triggerall = var(50) = 1 && (P2Life > 0) && Life < P2Life && Pos Y > -160  && (p2bodydist x <= 80) 
triggerall = (StateType = A) && power >= 1000 && Pos Y < -40 && p2movetype != H
trigger1 = ctrl && random <= 500 && ((P2StateNo = [100,101]) || P2StateNo = 20)
trigger2 = ctrl && (P2StateType = A) && (p2bodydist x <= 80) 

; Shining Crystal Bit
;---------------------
[State -1, AI Shining Crystal Bit Jump Y]
type = ChangeState
value = 3700
triggerall = var(50) = 1 && (P2Life > 0) && (P2Life < 270) && Life < P2Life && Pos Y > -160 && (p2bodydist x <= 80) 
triggerall = (StateType = A) && power >= 2000 && Pos Y < -40 && p2movetype != H  
trigger1 = ctrl && random <= 500 && ((P2StateNo = [100,101]) || P2StateNo = 20)
trigger2 = ctrl && (P2StateType = A)

; Shining Crystal Bit
;---------------------
[State -1, AI Shining Crystal Bit Jump SDM]
type = ChangeState
value = 3800
triggerall = var(50) = 1 && (P2Life > 0) && Pos Y > -160 && (p2bodydist x <= 80) 
triggerall = (StateType = A) && power >= 3000 && Pos Y < -40 && p2movetype != H 
trigger1 = ctrl && random <= 500 && ((P2StateNo = [100,101]) || P2StateNo = 20)
trigger2 = ctrl && (P2StateType = A)

; Crystal Shot
;-------------
[State -1, AI Crystal Shot X]
type = ChangeState
value = 3600
triggerall = var(50) = 1 && (P2Life > 0) && (p2bodydist x >= 110)
triggerall =  (StateType = A) && p2movetype != H
trigger1 = StateNo = 3510 && random <= 500
trigger2 = StateNo = 3515 && random <= 500

; Crystal Shot
;-------------
[State -1, AI Crystal Shot Y]
type = ChangeState
value = 3650
triggerall = var(50) = 1 && (P2Life > 0) && (p2bodydist x >= 110)
triggerall =  (StateType = A) && p2movetype != H
trigger1 = StateNo = 3510 && random <= 500
trigger2 = StateNo = 3515 && random <= 500

; Crystal Shot
;-------------
[State -1, AI Crystal Shot X]
type = ChangeState
value = 3620
triggerall = var(50) = 1 && (P2Life > 0) && random <= 500
triggerall =  (StateType = A) && p2movetype != H
trigger1 = StateNo = 3610 && (P2StateNo = 20) 
trigger2 = StateNo = 3610 && ((P2StateNo = [100,101]) || P2StateNo = 110 )
trigger3 = StateNo = 3610 && p2statetype = A 
trigger4 = StateNo = 3610 && (p2bodydist x <= 120)

; Crystal Shot
;-------------
[State -1, AI Crystal Shot Y]
type = ChangeState
value = 3670
triggerall = var(50) = 1 && (P2Life > 0) && random <= 500
triggerall =  (StateType = A) && p2movetype != H
trigger1 = StateNo = 3660 && (P2StateNo = 20) 
trigger2 = StateNo = 3610 && ((P2StateNo = [100,101]) || P2StateNo = 110 )
trigger3 = StateNo = 3610 && p2statetype = A 
trigger4 = StateNo = 3610 && (p2bodydist x <= 120)

; Psycho9
;--------
[State -1, AI Psycho9]
type = ChangeState
value = 4000
triggerall = var(50) = 1 && (P2Life > 0) && p2statetype != A
triggerall = (StateType != A) && power >= 2000
trigger1 = ctrl && (p2bodydist x <= 90) && (p2bodydist x >= 10) && (random <= 400)
trigger1 = (p2stateno = 100 || p2stateno = 20 || p2stateno = 5300) && (p2stateno != 150 || p2stateno != 152 || p2stateno != 130 || p2stateno != 131)
trigger2 = (StateNo = [200, 235]) && MoveContact && !(StateNo%5)
trigger3 = (StateNo = [300, 320]) && MoveContact && !(StateNo%10)
trigger4 = (StateNo = 500 || StateNo = 510 || StateNo = 540) && MoveContact

; Psycho9
;--------
[State -1, AI Psycho9 Hit1]
type = ChangeState
value = 4030
triggerall = var(50) = 1 && StateNo = 4020
trigger1 = Time <= 20 && MoveHit && (random <= 600)

; Psycho9
;--------
[State -1, AI Psycho9 Hit2]
type = ChangeState
value = 4040
triggerall = var(50) = 1 && StateNo = 4030
trigger1 = Time <= 12 && MoveContact && (random <= 600)

; Psycho9
;--------
[State -1, AI Psycho9 Hit3]
type = ChangeState
value = 4050
triggerall = var(50) = 1 && StateNo = 4040
trigger1 = Time <= 11 && MoveContact && (random <= 600)

; Psycho9
;--------
[State -1, AI Psycho9 Hit4]
type = ChangeState
value = 4060
triggerall = var(50) = 1 && StateNo = 4050
trigger1 = Time <= 19 && MoveContact && (random <= 600)

; Psycho9
;--------
[State -1, AI Psycho9 Hit5]
type = ChangeState
value = 4070
triggerall = var(50) = 1 && StateNo = 4060
trigger1 = Time <= 18 && MoveContact && (random <= 600)

; Psycho9
;--------
[State -1, AI Psycho9 Hit6]
type = ChangeState
value = 4080
triggerall = var(50) = 1 && StateNo = 4070
trigger1 = Time <= 16 && MoveContact && (random <= 600)

; Psycho9
;--------
[State -1, AI Psycho9 Hit3]
type = ChangeState
value = 4090
triggerall = var(50) = 1 && StateNo = 4080
trigger1 = Time <= 13 && MoveContact && (random <= 600)

; Psycho9
;--------
[State -1, AI Psycho9 Finish1]
type = ChangeState
value = 4095
triggerall = var(50) = 1 && StateNo = 4090
trigger1 = Time <= 25 && MoveContact && (random <= 600)

; Psycho9
;--------
[State -1, AI Psycho9 Finish2]
type = ChangeState
value = 4096
triggerall = var(50) = 1 && StateNo = 4090
trigger1 = Time <= 25 && MoveContact && (random <= 600)

; Psycho9
;--------
[State -1, AI Psycho9 Finish3]
type = ChangeState
value = 4097
triggerall = var(50) = 1 && StateNo = 4090
trigger1 = Time <= 25 && MoveContact && (random <= 600)

; HSDM
;-----
[State -1]
type = ChangeState
value = 4500
triggerall = statetype != A && var(50) = 1 && Life <= 500 
triggerall =  power >= 3000 && (random <= 500)
trigger1 = ctrl && (p2bodydist x <= 170) && (p2bodydist x >= 20) 
trigger2 = (StateNo = [200, 235]) && MoveContact && !(StateNo%5)
trigger3 = (StateNo = [300, 320]) && MoveContact && !(StateNo%10)
trigger4 = (StateNo = 500 || StateNo = 510 || StateNo = 540) && MoveContact

; AI Taunt
;---------
[State -1,Taunt]
type = ChangeState
value = 195
triggerall = var(50) = 1
trigger1 = p2movetype = H && (p2bodydist x >= 160) && (P2Life > 0)
trigger1 = stateno != 195 && statetype = S && ctrl && (random <= 500)
