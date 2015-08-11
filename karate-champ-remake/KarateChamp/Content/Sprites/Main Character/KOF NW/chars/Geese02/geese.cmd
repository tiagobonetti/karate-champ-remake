
;-| CPU |--------------------------------------------------------------

[Command]
name = "cpu0"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu1"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu2"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu3"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu4"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu5"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu6"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu7"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu8"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu9"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

; Add more as desired.  The greater the number of uniquely-named CPU-only
; commands you use, the faster the AI will tend to activate.  Mugen allows up
; to 128 total unique command names.
; Note that the command input strings do not need to be unique, but the command
; names do.  Having 32 commands named "cpu" won't make the computer any more
; likely to choose one of them than having a single "cpu" command would.





;-| Super Motions |--------------------------------------------------------
[Command]
name =  "Max_Rashomon"
command = a+b
time = 40

[Command]
name = "Rashomon"
command = c
time = 40

[Command]
name = "Max_Raising_Storm"
command = x+y
time = 40

[Command]
name = "Raising_Storm"
command = z
time = 40

[Command]
name = "Deadly_Rave" 
command = b+x
time = 30

[Command]
name = "Thunder_Break" 
command =  a+y
time = 30

;-| Special Motions |------------------------------------------------------
[Command]
name = "JaeiKen"
command = ~D, F, a 
time = 20

[Command]
name = "Flying_Solar_Slash"
command = ~F, D, DF, y 
time = 17

[Command]
name = "FlyingSolarSlash"
command = ~F, D, DF, x 
time = 17

[Command]
name = "Double_Reppuken" 
command = ~D,  F, y 
time = 15

[Command]
name = "Reppuken" 
command = ~D,  F, x 
time = 15

[Command]
name = "AtemiNageJoudan"
command = ~D, B , a
time = 30

[Command]
name = "AtemiNageChuudan"
command = ~D, B, b
time = 30

[Command]
name = "AtemiNageGedan"
command = ~D, B, x
time = 30

[Command]
name = "JaeiKenstrong"
command = ~D, F, b
time = 15
;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 15

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 15

[Command]
name = "bx"
command = b+x
time = 1

[Command]
name = "z1"
command = /a+b+c
time = 1

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+a
time = 1

[Command]
name = "Knock-Down"
command = b+y
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
command = ;c
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
name = "z1"
command = /z
time = 1

[Command]
name = "start"
command = s
time = 1


[Command]
name = "holdfwdb"
command = /F
time = 1

[Command]
name = "holdbackb"
command = /B
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
name = "longjump"
command = D, $U
time = 18

[Command]
name = "U"
command = U
time = 1

[Command]
name = "D"
command = D
time = 1

[Command]
name = "F"
command = F
time = 1

[Command]
name = "B"
command = B
time = 1



; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================
; The main purpose of having these next two controllers here at the top of
; StateDef -1 is to make sure the AI helper never changes to a different state,
; nor encounters any VarSets within State -1.
; But they also improve efficiency by preventing Mugen from wasting time
; processing the entire State -1 for the helper.
[State -1, AI Helper Check]
type = ChangeState
trigger1 = IsHelper(9741)
value = 9741

[State -1, AI Helper Check 2]
type = ChangeState
trigger1 = IsHelper(9742)
value = 9742


;---------------------------------------------------------------------------
;Thunder Break
[State -1, Thunder Break]
type = ChangeState
value = 3650
triggerall = var(58) != 1
triggerall = command = "Thunder_Break"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 240 && MoveContact
trigger3 = stateno = 250 && MoveContact
trigger4 = stateno = 260 && MoveContact
trigger5 = stateno = 270 && animelem = 5, < 0
trigger6 = stateno = 400 && MoveContact
trigger7 = stateno = 410 && MoveContact
trigger8 = stateno = 420 && MoveContact
trigger9 = stateno = 430 && MoveContact
trigger10 = stateno = 290
trigger11 = stateno = 517 && MoveContact
trigger12 = stateno = 280 && MoveContact

;---------------------------------------------------------------------------
;Deadly Rave
[State -1, Deadly Rave]
type = ChangeState
value = 3200
triggerall = var(58) != 1
triggerall = command = "Deadly_Rave" 
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 240 && MoveContact
trigger3 = stateno = 250 && MoveContact
trigger4 = stateno = 260 && MoveContact
trigger5 = stateno = 270 && animelem = 5, < 0
trigger6 = stateno = 400 && MoveContact
trigger7 = stateno = 410 && MoveContact
trigger8 = stateno = 420 && MoveContact
trigger9 = stateno = 430 && MoveContact
trigger10 = stateno = 290
trigger11 = stateno = 280 && MoveContact

;MAX 2 KOF state 3203
[State -1]
type = ChangeState
value = 3203
triggerall = var(58) != 1
triggerall = command = "x"
trigger1 = stateno = 3202 && MoveContact

;MAX 2 KOF state 3204
[State -1]
type = ChangeState
value = 3204
triggerall = var(58) != 1
triggerall = command = "x"
trigger1 = stateno = 3203 && MoveContact

;MAX 2 KOF state 3205
[State -1]
type = ChangeState
value = 3205
triggerall = var(58) != 1
triggerall = command = "x"
trigger1 = stateno = 3204 && MoveContact

;MAX 2 KOF state 3206
[State -1]
type = ChangeState
value = 3206
triggerall = var(58) != 1
triggerall = command = "x"
trigger1 = stateno = 3205 && MoveContact


;MAX 2 KOF state 3207
[State -1]
type = ChangeState
value = 3207
triggerall = var(58) != 1
triggerall = command = "x"
trigger1 = stateno = 3206 && MoveContact


;MAX 2 KOF state 3208
[State -1]
type = ChangeState
value = 3208
triggerall = var(58) != 1
triggerall = command = "x"
trigger1 = stateno = 3207 && MoveContact


;MAX 2 KOF state 3209
[State -1]
type = ChangeState
value = 3209
triggerall = var(58) != 1
triggerall = command = "x"
trigger1 = stateno = 3208 && MoveContact


;MAX 2 KOF state 3210
[State -1]
type = ChangeState
value = 3210
triggerall = var(58) != 1
triggerall = command = "x"
trigger1 = stateno = 3209 && MoveContact


;MAX 2 KOF state 3211
[State -1]
type = ChangeState
value = 3211
triggerall = var(58) != 1
triggerall = command = "x"
trigger1 = stateno = 3210 && MoveContact

;---------------------------------------------------------------------------
;Max Rashomon
[State -1, Max Rashomon]
type = ChangeState
value = 3150
triggerall = var(58) != 1
triggerall = command = "Max_Rashomon"
triggerall = statetype != A
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 240 && MoveContact
trigger3 = stateno = 250 && MoveContact
trigger4 = stateno = 260 && MoveContact
trigger5 = stateno = 270 && animelem = 5, < 0
trigger6 = stateno = 400 && MoveContact
trigger7 = stateno = 410 && MoveContact
trigger8 = stateno = 420 && MoveContact
trigger9 = stateno = 430 && MoveContact
trigger10 = stateno = 290
trigger11 = stateno = 280 && MoveContact
trigger12 = var(2) = 2
trigger13 = var(3) = 3
trigger14 = var(31) > 0

;---------------------------------------------------------------------------
;Rashomon
[State -1, Rashomon]
type = ChangeState
value = 3100
triggerall = var(58) != 1
triggerall = command = "Rashomon"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 240 && MoveContact
trigger3 = stateno = 250 && MoveContact
trigger4 = stateno = 260 && MoveContact
trigger5 = stateno = 270 && animelem = 5, < 0
trigger6 = stateno = 400 && MoveContact
trigger7 = stateno = 410 && MoveContact
trigger8 = stateno = 420 && MoveContact
trigger9 = stateno = 430 && MoveContact
trigger10 = stateno = 290
trigger11 = stateno = 280 && MoveContact
;---------------------------------------------------------------------------
;Max Raising Storm
[State -1, Max Raising Storm]
type = ChangeState
value = 3050
triggerall = var(58) != 1
triggerall = command = "Max_Raising_Storm"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 240 && MoveContact
trigger3 = stateno = 250 && MoveContact
trigger4 = stateno = 260 && MoveContact
trigger5 = stateno = 270 && animelem = 5, < 0
trigger6 = stateno = 400 && MoveContact
trigger7 = stateno = 410 && MoveContact
trigger8 = stateno = 420 && MoveContact
trigger9 = stateno = 430 && MoveContact
trigger10 = stateno = 290
trigger11 = stateno = 280 && MoveContact

;---------------------------------------------------------------------------
;Raising Storm
[State -1, Raising Storm]
type = ChangeState
value = 3000
triggerall = var(58) != 1
triggerall = command = "Raising_Storm"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 240 && MoveContact
trigger3 = stateno = 250 && MoveContact
trigger4 = stateno = 260 && MoveContact
trigger5 = stateno = 270 && animelem = 5, < 0
trigger6 = stateno = 400 && MoveContact
trigger7 = stateno = 410 && MoveContact
trigger8 = stateno = 420 && MoveContact
trigger9 = stateno = 430 && MoveContact
trigger10 = stateno = 290
trigger11 = stateno = 280 && MoveContact

;===========================================================================
;---------------------------------------------------------------------------
;Double Reppuken
[State -1, Double Reppuken]
type = ChangeState
value = 1610
triggerall = var(58) != 1
triggerall = command = "Double_Reppuken" 
triggerall = p2bodydist X > 40
triggerall = NumProjID(1610) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 240 && MoveContact
trigger3 = stateno = 250 && MoveContact
trigger4 = stateno = 260 && MoveContact
trigger5 = stateno = 270 && animelem = 5, < 0
trigger6 = stateno = 400 && MoveContact
trigger7 = stateno = 410 && MoveContact
trigger8 = stateno = 420 && MoveContact
trigger9 = stateno = 430 && MoveContact
trigger10 = stateno = 290 && movecontact && p2bodydist X > 50
trigger11 = stateno = 517 && MoveContact
trigger12 = stateno = 280 && MoveContact

;---------------------------------------------------------------------------
;Reppuken
[State -1, Reppuken]
type = ChangeState
value = 1600
triggerall = var(58) != 1
triggerall = command = "Reppuken" 
triggerall = p2bodydist X > 40
triggerall = NumProjID(1600) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 240 && MoveContact
trigger3 = stateno = 250 && MoveContact
trigger4 = stateno = 260 && MoveContact
trigger5 = stateno = 270 && animelem = 5, < 0
trigger6 = stateno = 400 && MoveContact
trigger7 = stateno = 410 && MoveContact
trigger8 = stateno = 420 && MoveContact
trigger9 = stateno = 430 && MoveContact
trigger10 = stateno = 290 && movecontact && p2bodydist X > 50
trigger11 = stateno = 517 && MoveContact
trigger12 = stateno = 280 && MoveContact

;---------------------------------------------------------------------------
;RB烈風拳
[State -1, Reppuken near opponent ]
type = ChangeState
value = 1620
triggerall = var(58) != 1
triggerall = command = "Reppuken" 
triggerall = p2bodydist X <= 40
triggerall = NumProjID(1612) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 400 && movecontact 
trigger3 = stateno = 1103 && movecontact 
trigger4 = stateno = 1153 && movecontact 
trigger5 = stateno = 290 && movecontact && p2bodydist X <= 50

;---------------------------------------------------------------------------
;Gale Fist
[State -1, Gale Fist]
type = ChangeState
value = 1500
triggerall = var(58) != 1
triggerall = command = "y"
triggerall = p2bodydist x <= 16
triggerall = p2statetype = L
trigger1 = statetype = C
trigger1 = ctrl
trigger1 = command = "holddown"
trigger2 = stateno = 290

;---------------------------------------------------------------------------
;RB烈風拳
[State -1, Double Reppuken Near Opponent]
type = ChangeState
value = 1630
triggerall = command = "Double_Reppuken" 
triggerall = p2bodydist X <= 40
triggerall = NumProjID(1600) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1103 && movecontact 
trigger3 = stateno = 1153 && movecontact 


;---------------------------------------------------------------------------
;Flying Solar Slash
[State -1, Flying Solar Slash Strong]
type = ChangeState
value = 1450
triggerall = var(58) != 1
triggerall = command = "Flying_Solar_Slash"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 240 && MoveContact
trigger3 = stateno = 250 && MoveContact
trigger4 = stateno = 260 && MoveContact
trigger5 = stateno = 270 && animelem = 5, < 0
trigger6 = stateno = 400 && MoveContact
trigger7 = stateno = 410 && MoveContact
trigger8 = stateno = 420 && MoveContact
trigger9 = stateno = 430 && MoveContact
trigger10 = stateno = 290
trigger11 = stateno = 517 && MoveContact
trigger12 = stateno = 350 && MoveContact
trigger13 = stateno = 351 && MoveContact
trigger14 = stateno = 354 && MoveContact
trigger15 = stateno = 355 && MoveContact
trigger16 = stateno = 356 && MoveContact
trigger17 = stateno = 357 && MoveContact
trigger18 = stateno = 358 && MoveContact
trigger19 = stateno = 359 && MoveContact
trigger20 = stateno = 360 && MoveContact
trigger21 = stateno = 361 && MoveContact
trigger22 = stateno = 1200 && movecontact
trigger23 = stateno = 1103 && movecontact 
trigger24 = stateno = 1153 && movecontact 

;---------------------------------------------------------------------------
;Flying Solar Slash Weak
[State -1, Flying Solar Slash Weak]
type = ChangeState
value = 1400
triggerall = var(58) != 1
triggerall = command = "FlyingSolarSlash"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 240 && MoveContact
trigger3 = stateno = 250 && MoveContact
trigger4 = stateno = 260 && MoveContact
trigger5 = stateno = 270 && animelem = 5, < 0
trigger6 = stateno = 400 && MoveContact
trigger7 = stateno = 410 && MoveContact
trigger8 = stateno = 420 && MoveContact
trigger9 = stateno = 430 && MoveContact
trigger10 = stateno = 290
trigger11 = stateno = 517 && MoveContact
trigger12 = stateno = 280 && MoveContact
trigger13 = stateno = 1200 && MoveContact
trigger14 = stateno = 1103 && movecontact 
trigger15 = stateno = 1153 && movecontact 

;---------------------------------------------------------------------------
;Atemi Nage Gedan
[State -1, Atemi Nage Gedan]
type = ChangeState
value = 1320
triggerall = var(58) != 1
triggerall = command = "AtemiNageGedan"
triggerall = var(2) != 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 240 && MoveContact
trigger3 = stateno = 250 && MoveContact
trigger4 = stateno = 260 && MoveContact
trigger5 = stateno = 270 && animelem = 5, < 0
trigger6 = stateno = 400 && MoveContact
trigger7 = stateno = 410 && MoveContact
trigger8 = stateno = 420 && MoveContact
trigger9 = stateno = 430 && MoveContact
trigger10 = stateno = 290
trigger11 = stateno = 517 && MoveContact
trigger12 = stateno = 280 && MoveContact

;---------------------------------------------------------------------------
;Atemi Nage Chuudan
[State -1, Atemi Nage Chuudan]
type = ChangeState
value = 1310
triggerall = var(58) != 1
triggerall = command = "AtemiNageChuudan"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 240 && MoveContact
trigger3 = stateno = 250 && MoveContact
trigger4 = stateno = 260 && MoveContact
trigger5 = stateno = 270 && animelem = 5, < 0
trigger6 = stateno = 400 && MoveContact
trigger7 = stateno = 410 && MoveContact
trigger8 = stateno = 420 && MoveContact
trigger9 = stateno = 430 && MoveContact
trigger10 = stateno = 290
trigger11 = stateno = 517 && MoveContact
trigger12 = stateno = 280 && MoveContact

;---------------------------------------------------------------------------
;Atemi Nage Joudan
[State -1, Atemi Nage Joudan]
type = ChangeState
value = 1300
triggerall = var(58) != 1
triggerall = command = "AtemiNageJoudan"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 240 && MoveContact
trigger3 = stateno = 250 && MoveContact
trigger4 = stateno = 260 && MoveContact
trigger5 = stateno = 270 && animelem = 5, < 0
trigger6 = stateno = 400 && MoveContact
trigger7 = stateno = 410 && MoveContact
trigger8 = stateno = 420 && MoveContact
trigger9 = stateno = 430 && MoveContact
trigger10 = stateno = 290
trigger11 = stateno = 517 && MoveContact
trigger12 = stateno = 280 && MoveContact

;---------------------------------------------------------------------------
;Shippuken
[State -1, Shippuken - In Air]
type = ChangeState
value = 1200
triggerall = var(58) != 1
triggerall = NumProjID(1211) = 0
triggerall = stateno != 1200
triggerall = command = "Reppuken" |command = "Double_Reppuken" 
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 105
trigger3 = stateno = 101
trigger4 = stateno = 1403 && movecontact
trigger5 = stateno = 1453 && movecontact

;---------------------------------------------------------------------------
;Jaei Ken Weak
[State -1, Jaei Ken Weak]
type = ChangeState
value = 1100
triggerall = var(58) != 1
triggerall = command = "JaeiKen"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 240 && MoveContact
trigger3 = stateno = 250 && MoveContact
trigger4 = stateno = 260 && MoveContact
trigger5 = stateno = 270 && animelem = 5, < 0
trigger6 = stateno = 400 && MoveContact
trigger7 = stateno = 410 && MoveContact
trigger8 = stateno = 420 && MoveContact
trigger9 = stateno = 430 && MoveContact
trigger10 = stateno = 290
trigger11 = stateno = 517 && MoveContact
trigger12 = stateno = 280 && MoveContact

;---------------------------------------------------------------------------
;Jaei Ken strong
[State -1, Jaei Ken strong]
type = ChangeState
value = 1150
triggerall = var(58) != 1
triggerall = command = "JaeiKenstrong"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 240 && MoveContact
trigger3 = stateno = 250 && MoveContact
trigger4 = stateno = 260 && MoveContact
trigger5 = stateno = 270 && animelem = 5, < 0
trigger6 = stateno = 400 && MoveContact
trigger7 = stateno = 410 && MoveContact
trigger8 = stateno = 420 && MoveContact
trigger9 = stateno = 430 && MoveContact
trigger10 = stateno = 290 && MoveContact
trigger11 = stateno = 517 && MoveContact
trigger12 = stateno = 280 && MoveContact

;---------------------------------------------------------------------------
;Roll Backward
[State -1, Roll Backward]
type=Changestate
value = 511
triggerall = var(58) != 1
triggerall = Command = "holdback"
triggerall = command = "c"|command = "recovery"
triggerall = command != "holddown"
triggerall = var(3) != 2
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 150 || stateno = 151) && power >= 1000

;---------------------------------------------------------------------------
;Roll Forward
[State -1, Roll Forward]
type=Changestate
value = 510
triggerall = var(58) != 1
triggerall = command = "c"||command = "recovery"
triggerall = command != "holddown"
triggerall = var(3) != 2
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 150 || stateno = 151) && power >= 1000

;---------------------------------------------------------------------------
;Knock-Down
[State -1, Knock-Down]
type = ChangeState
value = 280
triggerall = var(58) != 1
triggerall = command = "x"  || command = "Knock-Down"
triggerall = command = "holdfwd" || command = "Knock-Down"                         
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Flying-Kick
[State -1, Flying-Kick]
type = ChangeState
value = 290
triggerall = var(58) != 1
triggerall = command = "holdfwd" 
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 240 && MoveContact
trigger3 = stateno = 250 && MoveContact
trigger4 = stateno = 260 && MoveContact
trigger5 = stateno = 270 && animelem = 5, < 0
trigger6 = stateno = 400 && MoveContact
trigger7 = stateno = 410 && MoveContact
trigger8 = stateno = 420 && MoveContact
trigger9 = stateno = 430 && MoveContact
trigger10 = stateno = 1103 && MoveContact
trigger11 = stateno = 1153 && MoveContact

;---------------------------------------------------------------------------
;Grab
[State -1, Grab]
type = ChangeState
value = 800
triggerall = var(58) != 1
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

;---------------------------------------------------------------------------
;KOF CD投げ
[State -1]
type = ChangeState
value = 830
triggerall = var(58) != 1
triggerall = command = "b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

;---------------------------------------------------------------------------
;ステップ
[State -1, Run Fwd]
type = ChangeState
value = 101
triggerall = var(58) != 1
triggerall = var(3) = 2
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = stateno != 101
trigger1 = stateno != 102

;---------------------------------------------------------------------------
;KOFダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(3) != 2
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl


;-------------------------------------------------------------------------
;遠距離立ち弱パンチ
[State -1]
type = ChangeState
value = 200
triggerall = var(58) != 1
triggerall = p2bodydist x >= 15
triggerall = command = "x"
triggerall = command != "holdfwd" 
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact

;---------------------------------------------------------------------------
;近距離立ち弱パンチ
[State -1,Lowpunch]
type = ChangeState
value = 240
triggerall = var(58) != 1
triggerall = p2bodydist x <= 15
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact

;---------------------------------------------------------------------------
;近距離立ち弱キック
[State -1]
type = ChangeState
value = 250
triggerall = var(58) != 1
triggerall = command = "a"
triggerall = p2bodydist x <= 18
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno =240
trigger4 = movecontact

;---------------------------------------------------------------------------
;立ち弱キック
[State -1]
type = ChangeState
value = 210
triggerall = var(58) != 1
triggerall = p2bodydist x > 18
triggerall = command = "a"
triggerall = command != "holdfwd" 
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact

;---------------------------------------------------------------------------
;近距離立ち強パンチ
[State -1,19]
type = ChangeState
value = 260
triggerall = var(58) != 1
triggerall = command = "y"
triggerall = p2bodydist x <= 18
triggerall = ctrl
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact

;---------------------------------------------------------------------------
;立ち強パンチ 
[State -1,20]
type = ChangeState
value = 220
triggerall = var(58) != 1
triggerall = p2bodydist x > 18
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact

;---------------------------------------------------------------------------
;近距離立ち強キック
[State -1,21]
type = ChangeState
value = 270
triggerall = var(58) != 1
triggerall = command = "b"
triggerall = p2bodydist x <= 14
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;立ち強キック
[State -1,22]
type = ChangeState
value = 230
triggerall = var(58) != 1
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(58) != 1
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && movecontact 

;---------------------------------------------------------------------------
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = var(58) != 1
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 410
triggerall = var(58) != 1
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 430
triggerall = var(58) != 1
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;Knock-Down Air
[State -1, Knock-Down Air]
type = ChangeState
value = 680
triggerall = var(58) != 1
triggerall = command = "Knock-Down"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;垂直ジャンプ弱パンチ
[State -1]
type = ChangeState
value = 600
triggerall = var(58) != 1
triggerall = Vel X = 0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;垂直ジャンプ弱キック
[State -1]
type = ChangeState
value = 610
triggerall = var(58) != 1
triggerall = Vel X = 0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;垂直ジャンプ強パンチ
[State -1]
type = ChangeState
value = 620
triggerall = var(58) != 1
triggerall = Vel X = 0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;垂直ジャンプ強キック
[State -1]
type = ChangeState
value = 630
triggerall = var(58) != 1
triggerall = Vel X = 0
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;斜めジャンプ弱パンチ
[State -1]
type = ChangeState
value = 640
triggerall = var(58) != 1
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;斜めジャンプ強パンチ
[State -1]
type = ChangeState
value = 660
triggerall = var(58) != 1
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;斜めジャンプ弱キック
[State -1]
type = ChangeState
value = 650
triggerall = var(58) != 1
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;斜めジャンプ強キック
[State -1]
type = ChangeState
value = 670
triggerall = var(58) != 1
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl



;-|AI outine|----------------------------------------------------------------
;--------------------------------------------------------------------------
;normal moves
[State -1, 250]
type = ChangeState
value = ifelse(random <=500,260,260)
triggerall = var(58) = 1 && p2statetype != L && statetype != A && P2Life != 0 && ctrl
trigger1 = (p2bodydist x <= 25) && p2statetype = S 

[State -1, 290]
type = ChangeState
value = 290
triggerall = var(58) = 1 
trigger1 = stateno = 260 && movecontact

[State -1, 250]
type = ChangeState
value = ifelse(random <=500,670,660)
triggerall = var(58) = 1 && p2statetype != L && statetype = A && P2Life != 0 && ctrl
trigger1 = (p2bodydist x <= 100) && p2statetype = S 

[State -1, 680]
type = ChangeState
value = 680
triggerall = var(58) = 1 && p2statetype != L && statetype = A && P2Life != 0 && ctrl
trigger1 = (p2bodydist x <= 100) && p2statetype = A

[State -1, 280]
type = ChangeState
value = 280
triggerall = var(58) = 1 && p2statetype != L && statetype != A && P2Life != 0 && ctrl
trigger1 = (p2bodydist x <= 100) && p2statetype = S && random <= 100
trigger2 = random <= 100

;--------------------------------------------------------------------------
;specials moves
[State -1, 1620]
type = ChangeState
value = ifelse(power >= 1000 && power <= 1999 && frontedgebodydist > 60,3100,ifelse(power >= 2000 && frontedgebodydist > 60,3150,1620))
triggerall = var(58) = 1 
trigger1 = stateno = 290 && movecontact

[State -1, 1400]
type = ChangeState
value = 1400
triggerall = var(58) = 1 
trigger1 = p2stateno = 5050 && frontedgebodydist < 100 && time > 25 && statetype != A && ctrl

[State -1, 1200]
type = ChangeState
value = 1200
triggerall = var(58) = 1 && statetype = A
trigger1 = stateno = 1403 && movecontact 
trigger2 = p2statetype = S && P2Life != 0 && ctrl && random <= 500

[State -1, 1500]
type = ChangeState
value = 1500
triggerall = var(58) = 1 && statetype != A && P2Life != 0 && ctrl
trigger1 = p2statetype = L  && P2bodydist X <= 40

;-----------------------------------------------------
[State -1, 1320]
type = ChangeState
value = 1320
triggerall = var(58) = 1 && p2statetype != L && statetype != A && P2Life != 0 && ctrl
trigger1 = (p2bodydist x <= 60) && p2statetype = C && p2movetype = A  
trigger2 = (p2bodydist x <= 60) && p2statetype = C && random <= 100

;-----------------------------------------------------
[State -1, 1300]
type = ChangeState
value = 1300
triggerall = var(58) = 1 && p2statetype != L && statetype != A && P2Life != 0 && ctrl
trigger1 = (p2bodydist x <= 100) && p2statetype = A && p2movetype = A
trigger2 = (p2bodydist x <= 100) && p2statetype = A && random <= 50

;-----------------------------------------------------
[State -1, 1310]
type = ChangeState
value = 1310
triggerall = var(58) = 1 && p2statetype != L && statetype != A && P2Life != 0 && ctrl
trigger1 = (p2bodydist x <= 100) && p2statetype = S && p2movetype = A 
trigger2 = (p2bodydist x <= 100) && p2statetype = S && random <= 100

;-----------------------------------------------------
[State -1, 1600]
type = ChangeState
value = ifelse(random <=700,1600,1610)
triggerall = var(58) = 1 && p2statetype != L && statetype != A && P2Life != 0 && ctrl
trigger1 = p2movetype != H && random <= 500
trigger2 = (p2bodydist x >= 100) && p2movetype != H && random <= 500
trigger3 = enemy,numproj = 1 && random <= 100
trigger4 = random <= 50

;-----------------------------------------------------
[State -1, 1100]
type = ChangeState
value = ifelse(random <=700,1100,1450)
triggerall = var(58) = 1 && p2statetype != L && statetype != A && P2Life != 0 && ctrl
trigger1 = (p2bodydist x <= 100) && p2statetype = S && random <= 100
trigger2 = (p2bodydist x <= 100) && random <= 100

[State -1, 1150]
type = ChangeState
value = 1150
triggerall = var(58) = 1 && p2statetype != L && statetype != A && P2Life != 0 && ctrl
trigger1 = (p2bodydist x = [101, 200]) && p2statetype = S && random <= 500
trigger2 = (p2bodydist x = [101, 200]) && random <= 100

;--------------------------------------------------------------------------
;specials moves
[State -1, 3000]
type = ChangeState
value = 3000
triggerall = var(58) = 1 && p2statetype != L && statetype != A && P2Life != 0 && power >= 1000 && ctrl
trigger1 = (p2bodydist x <= 100) && p2statetype = A && random <= 100
trigger2 = (p2bodydist x <= 100) && p2stateno = 5050
trigger3 = (p2bodydist x <= 100) && enemy,stateno = 5050
trigger4 = random <= 50

[State -1, 3050]
type = ChangeState
value = 3050
triggerall = var(58) = 1 && p2statetype != L && statetype != A && P2Life != 0 && power >= 2000 && ctrl
trigger1 = (p2bodydist x <= 100) && p2statetype = A && random <= 100
trigger2 = (p2bodydist x <= 100) && p2stateno = 5050
trigger3 = (p2bodydist x <= 100) && enemy,stateno = 5050
trigger4 = random <= 100

[State -1, 3650]
type = ChangeState
value = 3650
triggerall = var(58) = 1 && p2statetype != L && statetype != A && P2Life != 0 && power >= 2000 && ctrl
trigger1 = (p2bodydist x >= 150) && p2statetype = S && random <= 100
trigger2 = (p2bodydist x >= 150) && random <= 200
trigger3 = (p2bodydist x >= 150) && enemy,numproj = 1 && random <= 100
trigger4 = random <= 100


[State -1, 3200]
type = ChangeState
value = 3200
triggerall = var(58) = 1 && p2statetype != L && statetype != A && P2Life != 0 && power >= 2000 && ctrl
trigger1 = (p2bodydist x >= 150) && p2statetype = S && random <= 500
trigger2 = (p2bodydist x >= 150) && random <= 500
trigger3 = (p2bodydist x >= 150) && p2movetype != H && random <= 100
trigger4 = (p2bodydist x >= 100) && random <= 800

;--------------------------------------------------------------------------
;defence moves
[State -1, 510]
type = ChangeState
value = 510
triggerall = var(58) = 1 && p2statetype != L && statetype != A && P2Life != 0 && ctrl
triggerall = p2stateno != 5050
trigger1 = (p2bodydist x >= 200) && p2movetype = A
trigger2 = enemy,numproj = 1
trigger3 = p2movetype = A && random <= 100

; ==========================
; AI Standing Guard
; ==========================
[State -1]
type = ChangeState
triggerall = var(58) = 1 ;AI trigger used
triggerall = Statetype != A ;Player is not in the air
triggerall = P2statetype != C ;Player is not crouching
triggerall = Statetype = S ;Player is currently standing
triggerall = P2Movetype = A ;Opponent is attacking
triggerall = Pos Y != [-1,-999]
triggerall = ctrl = 1
trigger1 = random <= 800 ;triggers at 80% probability
value = 130 ;Default standing guard state

; =============================
; AI Stand to Crouch Guard Transition
; =============================
[State -1]
type = ChangeState
triggerall = var(58) = 1
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
trigger1 = stateno = 150
trigger1 = 1
value = 152

; =============================
; AI Crouching Guard
; =============================
[State -1]
type = ChangeState
value = 131
triggerall = var(58) = 1 && StateType != A 
triggerall = stateno != [10,5999]
trigger1 = P2statetype = C && p2movetype = A && random <= 500
trigger2 = P2Movetype = A && random <= 100
trigger3 = enemy,numproj >= 1 
trigger4 = enemy,numhelper >= 1
trigger5 = p2stateno = [2000,4999]
trigger6 = enemy,stateno = [2000,4999]
trigger7 = random <= 100 && p2movetype = A
trigger8 = p2movetype = A && random >= 800
trigger9 = enemy,numproj = 1 && random <= 100
trigger10 = enemy,numproj >= 1 && random <= 800
trigger11 = enemy,numproj >= 1 && random >= 500
trigger12 = numenemy = 1 && enemy,movetype = A 
trigger13 = numenemy = 1 && enemy,numproj >= 1

; =============================
; AI Crouch to Stand Guard Transition
; =============================
[State -1]
type = ChangeState
triggerall = var(58) = 1
triggerall = Statetype != A
triggerall = P2statetype != C
triggerall = P2Movetype = A
trigger1 = 1
trigger1 = stateno = 152
value = 150

; =============================
; AI Aerial Guard
; =============================
[State -1]
type = ChangeState
triggerall = var(58) = 1
triggerall = Statetype = A
triggerall = P2Movetype = A
triggerall = ctrl = 1
trigger1 = random <= 800
value = 132


;--------------------------------------------------------------------------
;misc moves
; =============================
; AI Auto Taunt
; =============================
[State -1, 195]
type = ChangeState
value = 195
triggerall = var(58) = 1 && (p2bodydist x >= 100) && statetype != A && P2Life != 0 && ctrl
trigger1 = p2movetype != A && random <= 100
trigger2 = p2movetype = I && random <= 100
trigger3 = p2statetype = L && random <= 50

; Do Jumping      ﾁ｡ﾇﾁ
[state -2]
type = ChangeState
value = 40
triggerall = var(58) = 1 && statetype != A && p2statetype != L && p2stateno != 5050 && ctrl
trigger1 = p2statetype != L && random <= 2 && p2statetype = A
trigger2 = p2statetype != L && random <= 3 && p2statetype = S && p2bodydist X >= 60
trigger3 = p2statetype != L && p2statetype != A && p2bodydist X >= 50 && p2bodydist X <= 100 && (random <= 4)
trigger4 = p2statetype != L && random <= 20 && p2statetype != A && p2bodydist X <= 20
trigger5 = p2statetype != L && p2statetype != A && p2bodydist X > 100 && p2bodydist X <= 225 && (random <= 50)
trigger6 = p2statetype != L && p2statetype != A && p2bodydist X > 225 && (random <= 140)
trigger7 = p2stateno = 5120 && p2bodydist X <= 25 && p2movetype != H && (random <= 200)
trigger8 = (p2bodydist Y < -80 && p2bodydist Y > -125 && p2bodydist X <= 15 && p2bodydist X >= -30) && (random < 20)
trigger9 = p2bodydist Y < -80 && p2bodydist Y > -125 && p2bodydist X <= 15 && p2bodydist X >= -30
trigger10 = random < 20
trigger11 = stateno != 100 || (stateno = 100 && random < 3)
trigger12 = p2bodydist x <= 90 && p2statetype !=A && random <= 100 
trigger13 = (p2bodydist x = [90,180]) && p2movetype !=H && random <= 50 
trigger14 = p2bodydist x <= 90 && p2statetype != A && backedgebodydist <= 70 && random <= 100 
trigger15 = p2bodydist x <= 40 && p2statetype = L && p2stateno = 5120 && random <= 100 
trigger16 =  p2bodydist x <= 90 && p2statetype = C && p2movetype != A
trigger17 = stateno != 100 || (stateno = 100 && random <= 50)

[State -1,Run]
type = ChangeState
value = 100
triggerall = var(58) = 1
triggerall = p2bodydist x > 180 && p2movetype != A && random <= 100
trigger1 = stateno != 100 && statetype = S && ctrl
