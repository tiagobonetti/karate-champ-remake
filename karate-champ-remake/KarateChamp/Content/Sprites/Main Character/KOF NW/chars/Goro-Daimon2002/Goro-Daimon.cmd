
;================================
;Goro Daimon X CMD FILE [HARD AI]
;================================

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
name = "s"
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

;-| Hold Button |----------------------------------------------------------

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
name = "holds"
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
name = "s2"
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
name = "holds2"
command = /s
time = 1

[Command]
name = "recovery2"
command = x+a
time = 1

;-| Other stuff |--------------------------------------

[Command]
name = "taunt"
command = s
time = 1

[Command]
name = "striker"
command = a+y
time = 1


;=================[Hyper Moves]======================

[Command]
name = "HiddenMax"
command = F,D,DF,B,D,DB, a+y
time = 40

[Command]
name = "HiddenMax"
command = z+c
time = 40

[Command]
name = "chain3"
command = ~D, F, D, F, a
time = 30

[Command]
name = "chain3"
command = ~D, F, D, F, b
time = 30

[Command]
name = "chain2"
command = ~D, F, D, F, a
time = 30

[Command]
name = "chain2"
command = ~D, F, D, F, b
time = 30

[Command]
name = "chainx"
command = ~D, F, D, F, a+b
time = 60

[Command]
name = "chain"
command = ~D, F, D, F, a
time = 60

[Command]
name = "chain"
command = ~D, F, D, F, b
time = 60

[Command]
name = "earthx"
command = ~D, B, D, B, x+y
time = 60

[Command]
name = "earth"
command = ~D, B, D, B, x
time = 60

[Command]
name = "earth"
command = ~D, B, D, B, y
time = 60



;=================[Special Moves]====================

[Command]
name = "rungrab"
command = ~D,DF,F, c
time = 30

[Command]
name = "rungrab"
command = ~DF, B, F, a
time = 30

[Command]
name = "rungrab"
command = ~DF, B, F, b
time = 30

[Command]
name = "leg"
command = ~F, D, DF, a
time = 25

[Command]
name = "leg"
command = ~F, D, DF, b
time = 25

[Command]
name = "double"
command = ~DF, B, F, x
time = 30

[Command]
name = "double"
command = ~DF, B, F, y
time = 30

[Command]
name = "reversal"
command = ~D,DF,F, a
time = 25

[Command]
name = "reversal"
command = ~D,DF,F, b
time = 25

[Command]
name = "hgrab"
command = ~D,DF,F, x
time = 25


[Command]
name = "lowgrab"
command = ~D,DF,F, y
time = 20

[Command]
name = "crunch"
command = ~B, DB, D, DF, F,B, DB, D, DF, F,B, DB, D, DF, F,x+z+c+s
time = 25

[Command]
name = "crunch"
command = ~B, DB, D, DF, F,B, DB, D, DF, F,B, DB, D, DF, F,x+z+c+s
time = 25

[Command]
name = "quake1"
command = ~D,DB,B, x
time = 25

[Command]
name = "quake2"
command = ~D,DB,B, y
time = 25

[Command]
name = "evade1"
command = ~DB, B, a
time = 20


[Command]
name = "evade2"
command = ~DB, B, a
time = 20


[Command]
name = "swing"
command = /DF, y
time = 5

;=================[Special Moves]==================

;--------------------------------------------
;RUN 
[Command]
name = "FF"
command = F, F
time = 15

;Back
[Command]
name = "BB"
command = B, B
time = 10

;-|Button Combination|-----------------------------------------------

[Command]
name = "max"
command = x+y+a
time = 1

[Command]
name = "longjump"
command = D, $U
time = 18

[Command]
name = "recovery"
command = x+a
time = 1

[Command]
name = "dodge"
command = x+y
time = 1

[Command]
name = "knockdown"
command = y+b
time = 1

[Command]
name = "roll"
command = x+a
time = 1

[Command]
name = "schange"
command = x+b
time = 1

[Command]
name = "ac"
command = a+c
time = 1

[Command]
name = "bc"
command = b+c
time = 1

[Command]
name = "abc"
command = a+b+c
time = 1

[Command]
name = "yb"
command = y+b
time = 1

[Command]
name = "xa"
command = x+a
time = 1

[Command]
name = "ab"
command = a+b
time = 1

[Command]
name = "xz"
command = x+z
time = 1

[Command]
name = "yz"
command = y+z
time = 1

;POWER UP
[Command]
name = "xyz"
command = x+y+z
time = 1

[Command]
name = "armor"
command = a+b+y
time = 1

[Command]
name = "counter"
command = x+y+b
time = 1

;------------------------------------------------------------------------------
;HOLD BUTTONS

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
name = "hold_s"
command = /$s
time = 1

;==================================================================================
;DIR

[Command]
name = "fwd"
command = F
time = 1

[Command]
name = "back"
command = B
time = 1

;==================================================================================
;HOLD DIR

[Command]
name = "/DB"
command = /DB
time = 1

;+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;HOLD DIR + BUTTON

[Command]
name = "holdfwd_x"
command = /$F, x
time = 1

[Command]
name = "holdfwd_y"
command = /$F, y
time = 1

[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_x"
command = /F,x

[Command]
name = "fwd_z"
command = /F,z

[Command]
name = "back_z"
command = /B,z

[Command]
name = "back_a"
command = /B,a

[Command]
name = "back_x"
command = /B,x

[Command]
name = "fwd_y"
command = /F,y

[Command]
name = "back_y"
command = /B,y

[Command]
name = "down_y"
command = /D, y

[Command]
name = "down_b"
command = /D, b

[Command]
name = "down_z"
command = /D, z

;=========================================================
; -----------------<> COMMAND CODES <>------------------
;=========================================================

[Statedef -1]

[State -1, AI Helper Check]
type = ChangeState
trigger1 = IsHelper(9741)
value = 9741

[State -1, AI Helper Check 2]
type = ChangeState
trigger1 = IsHelper(9742)
value = 9742

;=========================
; COMBO VAR 
;=========================

;========================================
[State -1, Combo1]
type = Varset
trigger1 = 1
var(39) = 0

[State -1, Combo2]
type = Varset
trigger1 = stateno = 210 && animelemtime(2) > 1 && animelemtime(3) < 0
trigger2 = stateno = 230 && animelemtime(3) > 1 && animelemtime(4) < 0
trigger3 = stateno = 250 && animelemtime(3) > 1 && animelemtime(4) < 0
trigger4 = stateno = 270 && animelemtime(3) > 1 && animelemtime(4) < 0
trigger5 = stateno = 400 && animelemtime(2) > 1 && animelemtime(3) < 0
trigger6 = stateno = 460 && animelemtime(2) > 1 && animelemtime(3) < 0
trigger7 = stateno = 470 && animelemtime(2) > 1 && animelemtime(5) < 0 && movecontact
trigger8 = stateno = 280 && animelemtime(4) > 1 && animelemtime(6) < 0
trigger9 = stateno = 703 && animelemtime(5) > 1 && animelemtime(7) < 0 
ignorehitpause = 1
var(39) = var(39) | 1

;======================
;COUNTER MODE COMBO VAR
;======================

[State -1, C.Combo1]
type = Varset
trigger1 = 1
var(42) = 0

[State -1, C.Combo3]
type = Varset
triggerall = var(40) > 0 || 1
trigger1 = stateno = 1020 && animelemtime(12) > 0 
trigger2 = stateno = 1025 && animelemtime(12) > 0
ignorehitpause = 1
var(42) = var(42) | 1

[State -1, KOF2K1 Special Cancel]
type = Varset
trigger1 = var(42) = 1
ignorehitpause = 1
var(45) = var(45)|1

[State -1, KOF2K1 Special Cancel]
type = Varset
trigger1 = var(42) = 0
var(45) = 0

;==============================================================================
;------|HIDDEN MOVES|-----
;==============================================================================

[State -1, Hidden Move]
type = ChangeState
value = 3500
triggerall = command = "HiddenMax"
triggerall = Power>=Ifelse(life<=Const(data.life)/2,2000,3000)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(39) = 1
trigger3 = var(40) > 0 && var(42) = 1
trigger4 = var(42) = 1

;==============================================================================
;------|HYPER MOVES|-----
;==============================================================================

;CHAIN SLAM SDM
[State -1, CHAIN SLAM]
type = ChangeState
value = 3000
ctrl = 0
triggerall = var(9) != 1
triggerall = command = "chainx"
trigger1 = power >= 2000
trigger1 = statetype != A && ctrl
trigger2 = power >= 2000
trigger2 = var(39) = 1
trigger3 = var(42) = 1 && power >= 3000

;CHAIN SLAM
[State -1, CHAIN SLAM]
type = ChangeState
value = 2790
ctrl = 0
triggerall = var(9) != 1
triggerall = command = "chain"
trigger1 = power >= 1000 || var(40) > 0
trigger1 = statetype != A && ctrl
trigger2 = power >= 1000 || var(40) > 0
trigger2 = var(39) = 1
trigger3 = var(40) > 0 && var(42) = 1
trigger4 = var(42) = 1 && power >= 2000

;HYPER EARTH THROW (SDM)
[State -1, HYPEREARTH]
type = ChangeState
value = 2690
ctrl = 0
triggerall = var(9) != 1
triggerall = command = "earthx"
trigger1 = power >= 2000
trigger1 = statetype != A && ctrl
trigger2 = power >= 2000
trigger2 = var(39) = 1
trigger3 = var(42) = 1 && power >= 3000

;SUPER EARTH THROW
[State -1, SUPEREARTH]
type = ChangeState
value = 2590
ctrl = 0
triggerall = var(9) != 1
triggerall = command = "earth"
trigger1 = power >= 1000 || var(40) > 0
trigger1 = statetype != A && ctrl
trigger2 = power >= 1000 || var(40) > 0
trigger2 = var(39) = 1
trigger3 = var(40) > 0 && var(42) = 1
trigger4 = var(42) = 1 && power >= 2000

;====================================================================================
;---|SPECIAL MOVES|----
;====================================================================================
;Crunchy
[State -1, Crunch]
type = ChangeState
value = 4000
ctrl = 0
triggerall = var(9) != 1
triggerall = command = "crunch"
trigger1 = statetype != A && ctrl
trigger2 = var(39) = 1

;Running Grab
[State -1, Running Grab]
type = ChangeState
value = 2500
ctrl = 0
triggerall = var(9) != 1
triggerall = command = "rungrab"
trigger1 = statetype != A && ctrl
trigger2 = var(39) = 1

;Leg Tackle
[State -1, Leg Tackle]
type = ChangeState
value = 2400
ctrl = 0
triggerall = var(9) != 1
triggerall = command = "leg"
trigger1 = statetype != A && ctrl
trigger2 = var(39) = 1

;Double Throw
[State -1, Double Throw]
type = ChangeState
value = 2300
ctrl = 0
triggerall = var(9) != 1
triggerall = command = "double"
trigger1 = statetype != A && ctrl
trigger2 = var(39) = 1

;Reversal
[State -1, Reversal Grab]
type = ChangeState
value = 2200
ctrl = 0
triggerall = var(9) != 1
triggerall = command = "reversal"
trigger1 = statetype != A && ctrl
trigger2 = var(39) = 1

;High Grab
[State -1, HighGrab]
type = ChangeState
value = 2100
ctrl = 0
triggerall = var(9) != 1
triggerall = command = "hgrab"
trigger1 = statetype != A && ctrl
trigger2 = var(39) = 1

;Low Grab
[State -1, LowGrab]
type = ChangeState
value = 2000
ctrl = 0
triggerall = var(9) != 1
triggerall = command = "lowgrab"
trigger1 = statetype != A && ctrl
trigger2 = var(39) = 1
 
;Earth Quake 1
[State -1, Quake1]
type = ChangeState
value = 1000
ctrl = 0
triggerall = var(9) != 1
triggerall = command = "quake1"
trigger1 = statetype != A && ctrl
trigger2 = var(39) = 1

;Earth Quake 2
[State -1, Quake2]
type = ChangeState
value = 1010
ctrl = 0
triggerall = var(9) != 1
triggerall = command = "quake2"
trigger1 = statetype != A && ctrl
trigger2 = var(39) = 1
 
;Evade 1
[State -1, Evade1]
type = ChangeState
value = 1020
ctrl = 0
triggerall = var(9) != 1
triggerall = command = "evade1"
trigger1 = statetype != A && ctrl
trigger2 = var(39) = 1
 
;Evade 2
[State -1, Evade2]
type = ChangeState
value = 1025
ctrl = 0
triggerall = var(9) != 1
triggerall = command = "evade2"
trigger1 = statetype != A && ctrl
trigger2 = var(39) = 1
 
;========================
; GROOVE CMDS
;========================

;COUNTER
[State -1]
type = ChangeState
value = 4850
;triggerall = var(9) != 1
triggerall = command = "holdx" && command = "holdy" && command = "holda"
triggerall = numhelper(4805) <= 0 && power >= 3000
triggerall = var(40) <= 0
trigger1 = (stateno = [0,12]) && ctrl

;ARMOR
[State -1]
type = ChangeState
value = 4800
;triggerall = var(9) != 1
triggerall = command = "holdy" && command = "holdb" && command = "holda"
triggerall = numhelper(4705) <= 0 && power >= 3000
triggerall = var(40) <= 0
trigger1 = (stateno = [0,12]) && ctrl

[State -1, Charge]
type = ChangeState
value = 704
triggerall = var(9) != 1
triggerall = command = "hold_x" && command = "hold_y"
triggerall = life > 0 && statetype != A
triggerall = Power < Const(data.Power) && var(40) <= 0 && var(37) <= 0
trigger1 = ctrl

;---------------------------------
[State -1,rollB Counter]
type = ChangeState
value = 710
triggerall = var(9) != 1
triggerall = command = "roll" && command = "holdback"
triggerall = power >= 1000 && life > 0 && statetype != A
trigger1 = stateno = 150 
trigger2 = stateno = 152 

[State -1,RollF counter]
type = ChangeState
value = 711
triggerall = var(9) != 1
triggerall = command = "roll" && command = "holdfwd"
triggerall = power >= 1000 && life > 0 && statetype != A
trigger1 = stateno = 150 
trigger2 = stateno = 152 

[State -1,CD counter]
type = ChangeState
value = 712
triggerall = var(9) != 1
triggerall = command = "knockdown"
triggerall = power >= 1000 && life > 0 && statetype != A
trigger1 = stateno = 150 
trigger2 = stateno = 152 

[State -1,rollB]
type = ChangeState
value = 701
triggerall = var(9) != 1
triggerall = command = "roll" && command = "holdback"
triggerall = life > 0 && statetype != A
trigger1 = ctrl

[State -1,RollF] 
type = ChangeState
value = 700
triggerall = var(9) != 1
triggerall = command = "roll" && command = "holdfwd"
triggerall = life > 0 && statetype != A
trigger1 = ctrl

[State -1, Sidestep] 
type = ChangeState
value = 702
;triggerall = var(9) != 1
triggerall = command = "roll"
triggerall = life > 0 && statetype != A
trigger1 = ctrl

;=============================================================================
;-------------[Throws]------------------------
;===========================================================================
;GrabY
[State -1, GrabY 1]
type = ChangeState
value = 320
triggerall = command = "y"
triggerall = statetype = S && ctrl && stateno != 100
trigger1 = command = "holdfwd" && p2bodydist X < 3 && p2movetype != H
trigger1 = (p2statetype = S) || (p2statetype = C)

;GrabY
[State -1, GrabY 2]
type = ChangeState
value = 300
triggerall = command = "y"
triggerall = statetype = S && ctrl && stateno != 100
trigger1 = command = "holdback" && p2bodydist X < 5 && p2movetype != H
trigger12 = (p2statetype = S) || (p2statetype = C)
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;GrabB
[State -1, GrabB ]
type = ChangeState
value = 310
triggerall = command = "b"
triggerall = statetype = S && ctrl && stateno != 100
trigger1 = command = "holdfwd" && p2bodydist X < 3 && p2movetype != H
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger2 = command = "holdback" && p2bodydist X < 5 && p2movetype != H
trigger2 = (p2statetype = S) || (p2statetype = C)
;===========================================================================

[State -1,Knockdown]
type = ChangeState
value = 280
;triggerall = var(9) != 1
triggerall = command = "knockdown" 
trigger1 = statetype = S && ctrl 
;-------------------------------------------
[State -1,JCD]
type = ChangeState
value = 660
;triggerall = var(9) != 1
triggerall = command = "knockdown"
trigger1 = statetype = A && ctrl
;-------------------------------------------

;========================[BASIC ATTACKS ]==================================

[State -1,CFHP]
type = ChangeState
value = 470
triggerall = var(9) != 1
triggerall = command = "swing" || (command = "y" && command = "holdfwd") 
trigger1 = statetype = C && ctrl
trigger2 = stateno = 210 && animelemtime(2) > 1 && animelemtime(3) < 0 && command = "holddown"
trigger3 = stateno = 230 && animelemtime(3) > 1 && animelemtime(4) < 0 && command = "holddown"
trigger4 = stateno = 250 && animelemtime(3) > 1 && animelemtime(4) < 0 && command = "holddown"
trigger5 = stateno = 270 && animelemtime(3) > 1 && animelemtime(4) < 0 && command = "holddown"
trigger6 = stateno = 400 && animelemtime(2) > 1 && animelemtime(3) < 0 && command = "holddown"
trigger7 = stateno = 460 && animelemtime(2) > 1 && animelemtime(3) < 0 && command = "holddown"

;Smash
[State -1, Smash]
type = ChangeState
value = 215
triggerall = var(9) != 1
triggerall = command = "x" && command = "holdfwd"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 210 && animelemtime(2) > 1 && animelemtime(3) < 0
trigger3 = stateno = 230 && animelemtime(3) > 1 && animelemtime(4) < 0
trigger4 = stateno = 250 && animelemtime(3) > 1 && animelemtime(4) < 0
trigger5 = stateno = 270 && animelemtime(3) > 1 && animelemtime(4) < 0
trigger6 = stateno = 400 && animelemtime(2) > 1 && animelemtime(3) < 0
trigger7 = stateno = 460 && animelemtime(2) > 1 && animelemtime(3) < 0

;Lp Close
[State -1,Low Punch CLose]
type = ChangeState
value = 210
triggerall = var(9) != 1
triggerall = command = "x"
triggerall = p2bodydist x < 15
trigger1 = statetype = S && ctrl

;Lp
[State -1,Lowpunch]
type = ChangeState
value = 200
triggerall = var(9) != 1
triggerall = command = "x"
triggerall = p2bodydist x >= 15
trigger1 = statetype = S && ctrl

;lk close
[State -1,LKClose]
type = ChangeState
value = 230
triggerall = var(9) != 1
triggerall = command = "a"
triggerall = p2bodydist x <= 22
trigger1 = statetype = S && ctrl

;lk
[State -1,LK]
type = ChangeState
value = 220
triggerall = var(9) != 1
triggerall = command = "a"
triggerall = p2bodydist x > 20
trigger1 = statetype = S && ctrl

;Hp close
[State -1,HPClose]
type = ChangeState
value = 250
triggerall = var(9) != 1
triggerall = command = "y"
triggerall = p2bodydist x <= 30
trigger1 = statetype = S && ctrl

;Hp 
[State -1,HP]
type = ChangeState
value = 240
triggerall = var(9) != 1
triggerall = command = "y"
triggerall = p2bodydist x > 30
triggerall = stateno != 250 && stateno != 240
trigger1 = statetype = S && ctrl

;Hk close
[State -1,HKClose]
type = ChangeState
value = 270
triggerall = var(9) != 1
triggerall = command = "b"
triggerall = p2bodydist x <= 25
trigger1 = statetype = S && ctrl

;Hk 
[State -1,HK]
type = ChangeState
value = 260
triggerall = var(9) != 1
triggerall = command = "b"
trigger1 = statetype = S && ctrl

[State -1,CLP]
type = ChangeState
value = 400
triggerall = var(9) != 1
triggerall = command = "x"
trigger1 = statetype = C && ctrl

[State -1,CLK]
type = ChangeState
value = 420
triggerall = var(9) != 1
triggerall = command = "a"
trigger1 = statetype = C && ctrl

[State -1,CHP]
type = ChangeState
value = 440
triggerall = var(9) != 1
triggerall = command = "y"
trigger1 = statetype = C && ctrl

[State -1,CHK]
type = ChangeState
value = 460
triggerall = var(9) != 1
triggerall = command = "b"
trigger1 = statetype = C && ctrl

;----------------------------------------

[State -1,JLP]
type = ChangeState
value = 600
triggerall = var(9) != 1
triggerall = command = "x"
trigger1 = statetype = A && ctrl

[State -1,JLK]
type = ChangeState
value = 610
triggerall = var(9) != 1
triggerall = command = "a"
trigger1 = statetype = A && ctrl

[State -1,JHP]
type = ChangeState
value = 630
triggerall = var(9) != 1
triggerall = command = "y"
trigger1 = statetype = A && ctrl

[State -1,JHK]
type = ChangeState
value = 640
triggerall = var(9) != 1
triggerall = command = "b"
trigger1 = statetype = A && ctrl

[State -1,TAUNT]
type = ChangeState
value = 195
triggerall = var(9) != 1
trigger1 = command = "taunt"
trigger1 = statetype != A && stateno != 805 && ctrl

[State -1,RUN]
type = ChangeState
value = 100
triggerall = var(9) != 1
triggerall = command = "FF"
trigger1 = statetype = S && ctrl

[State -1,HOPBACK]
type = ChangeState
value = 105
triggerall = var(9) != 1
trigger1 = command = "BB"
trigger1 = statetype = S && ctrl

;=====================================================================================
;-----[ AI MODIFICATION ]-----
;=====================================================================================

[State -1,CFHP]
type = ChangeState
value = 470
triggerall = var(9) = 1
trigger1 = p2bodydist x <= 15 && stateno = 250 && animelemtime(3) > 0 && animelemtime(4) < 0 && movehit && p2statetype != A
trigger2 = p2bodydist x <= 15 && stateno = 270 && animelemtime(3) > 0 && animelemtime(4) < 0 && movehit && p2statetype != A
trigger3 = (p2bodydist x = [-10,20]) && p2statetype = A && ctrl && statetype != A
trigger3 = ifelse(var(16) > 0, p2movetype = H, p2movetype != H)

;Hyper Earth Throw SDM
[State -1, HET]
type = ChangeState
value = 2690
ctrl = 0
triggerall = var(9) = 1
triggerall = (power >= 2000 && statetype != A) 
trigger1 = p2bodydist x <= 15 && p2statetype != A && p2statetype != L
trigger1 = statetype != A && ctrl && var(5) <= 0
trigger2 = p2statetype != A && p2statetype != L
trigger2 = stateno = 470 && animelemtime(2) > 0 && animelemtime(5) < 0 && movehit
trigger3 = p2bodydist x <= 15 && p2statetype != A && p2statetype != L
trigger3 = stateno = 250 && animelemtime(3) > 0 && animelemtime(4) < 0 && movehit
trigger4 = p2bodydist x <= 20 && p2statetype != A && p2statetype != L
trigger4 = stateno = 270 && animelemtime(3) > 0 && animelemtime(4) < 0 && movehit

;Super Earth Throw
[State -1, SET]
type = ChangeState
value = 2590
ctrl = 0
triggerall = var(9) = 1
triggerall = ((power >= 1000 || var(40) >0) && statetype != A) 
trigger1 = p2bodydist x <= 15 && p2statetype != A && p2statetype != L
trigger1 = statetype != A && ctrl && var(5) <= 0
trigger2 = p2statetype != A && p2statetype != L
trigger2 = stateno = 470 && animelemtime(2) > 0 && animelemtime(5) < 0 && movehit
trigger3 = p2bodydist x <= 30 && p2statetype != A && p2statetype != L
trigger3 = stateno = 250 && animelemtime(3) > 0 && animelemtime(4) < 0 && movehit
trigger4 = p2bodydist x <= 30 && p2statetype != A && p2statetype != L
trigger4 = stateno = 270 && animelemtime(3) > 0 && animelemtime(4) < 0 && movehit

;Hyper Chain Grab SDM
[State -1, CGSDM]
type = ChangeState
value = 3000
ctrl = 0
triggerall = var(9) = 1
triggerall = (power >= 2000 && statetype != A) 
trigger1 = p2bodydist x <= 35 && p2statetype != A && p2statetype != L
trigger1 = statetype != A && ctrl && var(5) <= 0 && p2movetype = A

;Super Chain Grab 
[State -1, CG]
type = ChangeState
value = 2790
ctrl = 0
triggerall = var(9) = 1
triggerall = ((power >= 1000 || var(40) >0) && statetype != A) 
trigger1 = p2bodydist x <= 35 && p2statetype != A && p2statetype != L
trigger1 = statetype != A && ctrl && var(5) <= 0 && p2movetype = A

;Double Throw
[State -1, Double Throw]
type = ChangeState
value = 2300
ctrl = 0
triggerall = var(9) = 1
trigger1 = p2bodydist x <= 15 && p2statetype != A && p2statetype != L
trigger1 = statetype != A && ctrl && var(5) <= 0
trigger2 = p2statetype != A && p2statetype != L
trigger2 = stateno = 470 && animelemtime(2) > 0 && animelemtime(5) < 0 && movehit
trigger3 = p2bodydist x <= 30 && p2statetype != A && p2statetype != L
trigger3 = stateno = 250 && animelemtime(3) > 0 && animelemtime(4) < 0 && movehit
trigger4 = p2bodydist x <= 30 && p2statetype != A && p2statetype != L
trigger4 = stateno = 270 && animelemtime(3) > 0 && animelemtime(4) < 0 && movehit

;Low Grab
[State -1, LowGrab]
type = ChangeState
value = 2000
ctrl = 0
triggerall = var(9) = 1
triggerall = p2statetype = L && (p2bodydist x = [-5,70]) && var(13) = 0 && p2stateno = [1320,1330]
trigger1 = statetype != A && ctrl && var(25) <= 0

;Earth Quake 1
[State -1, Quake1]
type = ChangeState
value = 1000
ctrl = 0
triggerall = var(9) = 1
trigger1 = var(13) = 1 && (p2stateno = [1325,1330]) && p2movetype = H
trigger1 = statetype != A && ctrl
trigger2 = var(13) = 2 && p2stateno = 1330 && p2movetype = H
trigger2 = p2bodydist x <= 5 && statetype != A && ctrl
trigger3 = p2bodydist x >= 190 && statetype != A && ctrl && p2statetype = S && random <= 700

;Leg Tackle
[State -1, Leg Tackle]
type = ChangeState
value = 2400
ctrl = 0
triggerall = var(9) = 1
triggerall = p2bodydist x <= 40 && statetype != A && ctrl
trigger1 = p2movetype = A && p2statetype != A && random <= 700

;High Grab
[State -1, HighGrab]
type = ChangeState
value = 2100
ctrl = 0
triggerall = var(9) = 1
trigger1 = (p2bodydist x = [20,45]) && p2statetype = A && ctrl && statetype != A
trigger1 = statetype != A && ctrl && (ifelse(p2stateno = 132,1,random <= 200)) 
trigger1 = var(13) <= 0 && p2statetype != L && (p2stateno != [1320,1330])

;---------------------------------------------------------------------------
; High percent air guard
[State -1]
type = ChangeState
value = 132
triggerall = p2movetype = A;access only when opponent attack
triggerall = P2bodydist X <= 40;access only when near
triggerall = P2life != 0;don't player when opponent had die
triggerall = statetype = A;perform when in air
triggerall = random <= 500;high percent
triggerall = var(9) = 1;only AI can access
triggerall = ctrl;make sure AI had control
triggerall = stateno != 132
trigger1 = p2statetype = A

;-----------------------------------------------------------
; High percent stand guard
[State -1]
type = ChangeState
value = 130
triggerall = p2movetype = A;access only when opponent attack
triggerall = P2bodydist X <= 40;access only when near
triggerall = random <= 700;high percent
triggerall = statetype != A;perform when not in air
triggerall = var(9) = 1;only AI can access
triggerall = ctrl;make sure AI had control
triggerall = stateno != 120
trigger1 = p2statetype = S

[State -1]
type = ChangeState
value = 130
triggerall = p2movetype = A;access only when opponent attack
triggerall = P2bodydist X <= 40;access only when near
triggerall = random <= 700;high percent
triggerall = statetype != A;perform when not in air
triggerall = var(9) = 1;only AI can access
triggerall = ctrl;make sure AI had control
triggerall = stateno != 130
trigger1 = p2statetype = A

;---------------------------------------------------------------------------
; High percent crouch guard
[State -1]
type = ChangeState
value = 131
triggerall = p2movetype = A;access only when opponent attack
triggerall = P2bodydist X <= 40;access only when near
triggerall = statetype != A;perform when not in air
triggerall = random <= 700;high percent
triggerall = var(9) = 1;only AI can access
triggerall = ctrl;make sure AI had control
triggerall = stateno != 131
trigger1 = p2statetype = C
;---------------------------------------------------------------------------

[State -1, RollFWD]
type = ChangeState
value = 700
triggerall = var(9) = 1
triggerall = statetype != A && ctrl 
trigger1 = p2movetype = A && P2bodydist X >= 100 && random <= 400 && (p2stateno != [120,152])
trigger2 = p2movetype = A && (p2bodydist x = [40,70]) && random <= 400 

[State -1,ROLL BACK]
type = ChangeState
value = 701
triggerall = var(9) = 1
trigger1 = statetype != A && ctrl && var(13) = 0
trigger1 = p2bodydist x <= 40 && p2statetype = L && backedgebodydist > 60 && random <= 500

[State -1, JUMP]
type = ChangeState
value = 40
triggerall = var(9) = 1
triggerall = statetype != A && ctrl && p2movetype != H
trigger1 = (p2bodydist x = [0,85]) && p2statetype = C && p2movetype != A && random <= 100

[State -1,RUN]
type = ChangeState
value = 100
triggerall = var(9) = 1
triggerall = stateno != 100 && statetype = S && ctrl
trigger1 = p2bodydist x > 10 &&  p2movetype != A && random < 500
trigger2 = var(13) = 2

[State -1, HPClose]
type = ChangeState
value = 250
triggerall = var(9) = 1
trigger1 = (p2bodydist x = [10,20]) && p2statetype != A && p2movetype != A
trigger1 = random <= 700 && p2statetype != L
trigger1 = statetype = S && ctrl

;Hk close
[State -1,HKClose]
type = ChangeState
value = 270
triggerall = var(9) = 1
trigger1 = (p2bodydist x = [0,25]) && p2movetype != A && p2statetype != A
trigger1 = random <= 900 && p2statetype != L
trigger1 = statetype = S && ctrl

[State -1,JHKD/JHPD]
type = ChangeState
value = ifelse(random <=500,630,640)
triggerall = var(9) = 1
triggerall = random <= 500 && statetype = A
triggerall = p2bodydist x <= 30
trigger1 = vel y > 0 && ctrl
trigger2 = vel y > .45 && stateno = 201 && ctrl

[State -1,JLK]
type = ChangeState
value = ifelse(random <=700,600,610)
triggerall = var(9) = 1
triggerall = random <= 200 && statetype = A
triggerall = p2bodydist x <= 30 && p2movetype = A && p2statetype = A
trigger1 = vel y > 0 && ctrl
trigger2 = vel y > .45 && stateno = 201 && ctrl

[State -1,CD counter]
type = ChangeState
value = 712
triggerall = var(9) = 1
triggerall = backedgebodydist <= 50
triggerall = power >= 1000 && life > 0 && statetype != A
trigger1 = stateno = 150 
trigger2 = stateno = 152 

[State -1,CrHK]
type = ChangeState
value = 460
triggerall = var(9) = 1
trigger1 = (p2bodydist x = [20,45]) && random <= 900
trigger1 = p2statetype = S && p2movetype != A 
trigger1 = statetype != A && ctrl

;LK
[State -1,LK]
type = ChangeState
value = 220
triggerall = var(9) = 1
trigger1 = random <= 500 && (p2bodydist x = [65,85]) && p2statetype = S 
trigger1 = statetype != A && ctrl && (p2stateno = 100 || (p2stateno = [20,21]))

;Hk 
[State -1,HK]
type = ChangeState
value = 260
triggerall = var(9) = 1
trigger1 = random <= 200 && (p2bodydist x = [45,55]) && p2statetype = S 
trigger1 = statetype != A && ctrl 
trigger1 = (p2stateno = 100 || p2stateno = 20) || p2statetype = A

;Evade 1
[State -1, Evade1]
type = ChangeState
value = 1020
ctrl = 0
triggerall = var(9) = 1
triggerall = statetype != A && p2statetype = A
trigger1 = stateno = 280 && animelemtime(4) > 1 && animelemtime(6) < 0 && movehit
trigger2 = stateno = 470 && animelemtime(2) > 1 && animelemtime(5) < 0 && movehit
 
;Evade 2
[State -1, Evade2]
type = ChangeState
value = 1025
ctrl = 0
triggerall = var(9) = 1
triggerall = stateno = 460 && animelemtime(2) > 1 && animelemtime(3) < 0 && movehit
trigger1 = statetype != A

[State -1,Groundrecover]
type = ChangeState
value = 5201
triggerall = var(9) = 1  && canrecover
trigger1 = Vel Y > 0 && Pos Y >= 0 && life >0 && random <= 100 && (stateno = [5050,5060])

;Charge
[State -1, Charge]
type = ChangeState
value = 704
ctrl = 0
triggerall = var(9) = 1
trigger1 = p2movetype = H && var(25) = 1
trigger1 = statetype != A && ctrl && stateno != 704
trigger1 = random <= 700 && Power < (Const(data.Power)) && var(40) <= 0

;Crunch
[State -1, Reversal Grab]
type = ChangeState
value = 4000
ctrl = 0
triggerall = var(9) = 1
triggerall = p2movetype = A && p2bodydist x = [10,40]
trigger1 = random <= 600 && statetype != A && ctrl

;Reversal
[State -1, Reversal]
type = ChangeState
value = 2200
ctrl = 0
triggerall = var(9) = 1
triggerall = p2movetype = A && (p2stateno = [200,999]) && p2statetype = S
trigger1 = random <= 100 && statetype != A && ctrl && p2bodydist x = [20,60]

;Running Grab
[State -1, Running Grab]
type = ChangeState
value = 2500
ctrl = 0
triggerall = var(9) = 1
triggerall = p2statetype != A && p2movetype != A && random <= 100
trigger1 = stateno = 470 && animelemtime(2) > 0 && animelemtime(5) < 0 && moveguarded
trigger2 = stateno = 250 && animelemtime(3) > 0 && animelemtime(4) < 0 && moveguarded
trigger3 = stateno = 270 && animelemtime(3) > 0 && animelemtime(4) < 0 && moveguarded
