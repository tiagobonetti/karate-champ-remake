[Command]
name = "storm2"
command = ~DB, F, DF, D, DB, B, DF, x+y
time = 40

[Command]
name = "storm2"
command = ~B, F, D, B, F, x+y
time = 40

[Command]
name = "storm"
command = ~DB, F, DF, D, DB, B, DF, x
time = 40

[Command]
name = "storm"
command = ~B, F, D, B, F, x
time = 40

[Command]
name = "storm"
command = ~DB, F, DF, D, DB, B, DF, y
time = 40

[Command]
name = "storm"
command = ~B, F, D, B, F, y
time = 40

[Command]
name = "rave"
command = ~D, DB, B, F, x
time = 30

[Command]
name = "rave"
command = ~D, DB, B, F, y
time = 30

[Command]
name = "joudan"
command = ~F, DF, D, DB, B, a
time = 20

[Command]
name = "joudan"
command = ~F, D, B, a
time = 20

[Command]
name = "chuudan"
command = ~F, DF, D, DB, B, b
time = 20

[Command]
name = "chuudan"
command = ~F, D, B, b
time = 20

[Command]
name = "explosion"
command = ~B, DB, D, DF, F, a
time = 20

[Command]
name = "explosion"
command = ~B, D, F, a
time = 20

[Command]
name = "jaei"
command = ~B, DB, D, DF, F, b
time = 20

[Command]
name = "jaei"
command = ~B, D, F, b
time = 20

[Command]
name = "hisho1"
command = ~F, D, DF, x
time = 15

[Command]
name = "hisho2"
command = ~F, D, DF, y
time = 15

[Command]
name = "repu1"
command = ~D, DF, F, x
time = 15

[Command]
name = "repu2"
command = ~D, DF, F, y
time = 15

[Command]
name = "ship"
command = ~D, DB, B, x
time = 15

[Command]
name = "ship"
command = ~D, DB, B, y
time = 15

[Command]
name = "slide"
command = /DF,a
time = 10

[Command]
name = "df_x"
command = /DF,x
time = 3

[Command]
name = "evade1"
command = F,x+a
time = 2

[Command]
name = "evade2"
command = x+a
time = 2

[Command]
name = "CD"
command = y+b
time = 2

[Command]
name = "max"
command = y+a
time = 2

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

[Command]
name = "hop"
command = D,D
time = 10

[Command]
name = "highjump"
command = ~$D, $U
time = 4

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery"
command = x+y
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

[Command]
name = "for_y"
command = /$F,y
time = 1

[Command]
name = "for_z"
command = /$F,z
time = 1

[Command]
name = "for_a"
command = /$F,a
time = 1

[Command]
name = "for_b"
command = /$F,b
time = 1

[Command]
name = "back_z"
command = /$B,z
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "tapup" 
command =  U, >~U
time = 6

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

;===========================================================================
[Statedef -1]
;Thunder Break SDM
[State -1, storm]
type = ChangeState
value = 722
trigger1 = command = "storm2" && statetype = S && var(45) != 0 && ctrl && power >= 1000 && PalNo >= 7

;Raising Storm
[State -1, storm]
type = ChangeState
value = 700
trigger1 = command = "storm" && statetype = S && power >= 2000 && ctrl && PalNo <= 6

;Alt Raising Storm
[State -1, storm]
type = ChangeState
value = 720
trigger1 = command = "storm" && statetype = S && power >= 1000 && ctrl && PalNo >= 7
trigger2 = command = "storm" && statetype = S && var(45) != 0 && ctrl && PalNo >= 7
;---------------------------------------------------------------------------
;Deadly Rave
[State -1, storm]
type = ChangeState
value = 710
trigger1 = command = "rave" && statetype = S && power >= 1000 && ctrl
trigger2 = command = "rave" && statetype = S && var(45) != 0 && ctrl
;---------------------------------------------------------------------------
;Chuudan Atemi Nage
[State -1, nage]
type = ChangeState
value = 630
trigger1 = command = "chuudan" && statetype = S && ctrl && PalNo >= 7

;Joudan Atemi Nage
[State -1, nage]
type = ChangeState
value = 633
trigger1 = command = "joudan" && statetype = S && ctrl && PalNo >= 7

;---------------------------------------------------------------------------
;Explosion Ball
[State -1, Explosion]
type = ChangeState
value = 610
trigger1 = command = "explosion" && statetype = S && ctrl && PalNo <= 6

;Jaei Ken
[State -1, Jaei]
type = ChangeState
value = 650
trigger1 = command = "jaei" &&  PalNo >= 7 && statetype = S && ctrl
trigger2 = command = "explosion" && PalNo >= 7 && statetype = S && ctrl
;---------------------------------------------------------------------------
;Hishou Nichirin Zan
[State -1, repu1]
type = ChangeState
value = 620
trigger1 = command = "hisho1" && statetype = S && ctrl && PalNo <= 6

;Hishou Nichirin Zan 2
[State -1, repu1]
type = ChangeState
value = 622
trigger1 = command = "hisho2" && statetype = S && ctrl && PalNo <= 6

;Hishou Nichirin Zan alt
[State -1, repu1]
type = ChangeState
value = 660
trigger1 = command = "hisho1" && statetype = S && ctrl && PalNo >= 7

;Hishou Nichirin Zan alt 2
[State -1, repu1]
type = ChangeState
value = 663
trigger1 = command = "hisho2" && statetype = S && ctrl && PalNo >= 7

;---------------------------------------------------------------------------
;Reppuken
[State -1, repu1]
type = ChangeState
value = 600
trigger1 = command = "repu1" && statetype = S && NumHelper(6) = 0 && ctrl && PalNo <= 6

;Reppuken
[State -1, repu1]
type = ChangeState
value = 605
trigger1 = command = "repu2" && statetype = S && NumHelper(7) = 0 && ctrl && PalNo <= 6

;Reppuken Alt
[State -1, repu1]
type = ChangeState
value = 602
trigger1 = command = "repu1" && statetype = S && NumHelper = 0 && ctrl && PalNo >= 7

;Double Reppuken
[State -1, repu1]
type = ChangeState
value = 604
trigger1 = command = "repu2" && statetype = S && NumHelper = 0 && ctrl && PalNo >= 7

;Shippuken
[State -1, ship1]
type = ChangeState
value = 640
trigger1 = command = "ship" && statetype = A && ctrl && PalNo >= 7

;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF" && statetype = S && ctrl

;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB" && statetype = S && ctrl

;---------------------------------------------------------------------------
;Roll B
[State -1, Roll]
type = ChangeState
value = 500
trigger1 = command = "evade2" && statetype = S && ctrl && Command = "holdback"

;Roll F
[State -1, Roll]
type = ChangeState
value = 501
trigger1 = command = "evade2" && statetype = S && ctrl && Command != "holdback"

;Move Cancel
[State -1, Cancel]
type = ChangeState
trigger1 = stateno = [200,331] 
trigger1 = Movecontact && command = "evade2" && power >= 1000
value = 502

;CD Attack
[State -1, a]
type = ChangeState
value = 520
trigger1 = command = "CD" && statetype = S && ctrl

;CD Attack air
[State -1, a]
type = ChangeState
value = 525
trigger1 = command = "CD" && statetype = A && ctrl

;GC Counter
[State -1, a]
type = ChangeState
trigger1 = power >= 1000
trigger1 = stateno = 150 && command = "CD"
value = 137

;Max mode start
[State -1, taunt]
type = ChangeState
value = 530
trigger1 = command = "max" && statetype = S && ctrl && Var(45) = 0 && power >=1000 && palno >= 7

;Slide
[State -1, a]
type = ChangeState
value = 321
trigger1 = command = "slide" && statetype = C && ctrl

;Throw
[State -1, throw]
type = ChangeState
value = 510
trigger1 = command = "for_y" && p2bodydist x<= 15 && statetype = S && ctrl && StateNo != 100 && p2movetype != H
trigger2 = command = "for_b" && p2bodydist x<= 15 && statetype = S && ctrl && StateNo != 100 && p2movetype != H

;Command A
[State -1, x]
type = ChangeState
value = 301
trigger1 = command = "df_x" && statetype = C && ctrl

;Command C
[State -1, a]
type = ChangeState
value = 222
trigger1 = command = "for_a" && statetype = S && ctrl

;---------------------------------------------------------------------------
;Stand A
[State -1, x]
type = ChangeState
value = 200
trigger1 = command = "x" && statetype = S && ctrl&& p2bodydist x >= 16

;Stand A
[State -1, x]
type = ChangeState
value = 201
trigger1 = command = "x" && statetype = S && ctrl&& p2bodydist x<= 15

;Crouch A
[State -1, x]
type = ChangeState
value = 300
trigger1 = command = "x" && statetype = C && ctrl

;Air A
[State -1, x]
type = ChangeState
value = 400
trigger1 = command = "x" && statetype = A && ctrl

;---------------------------------------------------------------------------
;Stand B
[State -1, y]
type = ChangeState
value = 210
trigger1 = command = "y" && statetype = S && ctrl && p2bodydist x<= 15

;Stand B2
[State -1, y]
type = ChangeState
value = 211
trigger1 = command = "y" && statetype = S && ctrl && p2bodydist x>= 16

;Crouch B
[State -1, y]
type = ChangeState
value = 310
trigger1 = command = "y" && statetype = C && ctrl

;Air B
[State -1, y]
type = ChangeState
value = 410
trigger1 = command = "y" && statetype = A && ctrl && PalNo <=6

;Air B2
[State -1, y]
type = ChangeState
value = 411
trigger1 = command = "y"  && statetype = A && ctrl && PalNo >=7

;---------------------------------------------------------------------------
;Stand C
[State -1, a]
type = ChangeState
value = 220
trigger1 = command = "a" && statetype = S && ctrl && p2bodydist x<= 20

;Stand C2
[State -1, a]
type = ChangeState
value = 221
trigger1 = command = "a" && statetype = S && ctrl && p2bodydist x>= 21

;Crouch C
[State -1, a]
type = ChangeState
value = 320
trigger1 = command = "a" && statetype = C && ctrl

;Air C
[State -1, a]
type = ChangeState
value = 420
trigger1 = command = "a" && statetype = A && ctrl

;---------------------------------------------------------------------------
;Stand D
[State -1, b]
type = ChangeState
value = 230
trigger1 = command = "b" && statetype = S && ctrl && p2bodydist x>= 15

;Stand D2
[State -1, b]
type = ChangeState
value = 231
trigger1 = command = "b" && statetype = S && ctrl && p2bodydist x<= 14

;Crouch D
[State -1, b]
type = ChangeState
value = 330
trigger1 = command = "b" && statetype = C && ctrl

;Air D
[State -1, b]
type = ChangeState
value = 430
trigger1 = command = "b" && statetype = A && ctrl

;---------------------------------------------------------------------------
;Taunt
[State -1, taunt]
type = ChangeState
value = 195
trigger1 = command = "start" && statetype = S && ctrl && Stateno != 195

;;Taunt
;[State -1, taunt]
;type = ChangeState
;value = 722
;trigger1 = command = "z" && statetype = S && ctrl && Stateno != 195
