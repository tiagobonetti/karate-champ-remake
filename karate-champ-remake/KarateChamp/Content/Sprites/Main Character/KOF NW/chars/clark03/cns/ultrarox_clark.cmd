;============================================================================================================================
; CLARK STEEL (KOF 2002)
;============================================================================================================================
; CONVERTED BY OROCHIKOF97
;============================================================================================================================
; VERSION 1.0b (APRIL 5TH 2005)
;============================================================================================================================ 
;
;============================================================================================================================
; COMMAND FILE (WITH AI)
;============================================================================================================================

;-| Single Button |----------------------------------------------------------------------------------------------------------

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

;-| Hold Dir |---------------------------------------------------------------------------------------------------------------

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
name = "F"
command = F
time = 1

[Command]
name = "B"
command = B
time = 1

[Command]
name = "U"
command = U
time = 1

[Command]
name = "D"
command = D
time = 1

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
name = "F2"
command = F
time = 1

[Command]
name = "B2"
command = B
time = 1

[Command]
name = "U2"
command = U
time = 1

[Command]
name = "D2"
command = D
time = 1

[Command]
name = "recovery2"
command = x+a
time = 1

[Command]
name = "knockdown2"
command = b+y
time = 1


;-|DMs/SDMs/HSDMs|-----------------------------------------------------------------------------------------------------------

;------------
; Hyper Moves

[Command]
name = "SHSDM"
command = ~D,F,$D,B,a+b
time = 30

[Command]
name = "vslasher"
command = ~D,F,$D,B,x+y
time = 30

[Command]
name = "UltraASDM"
command = ~F,$D,B,F,$D,B,x+y
time = 45

[Command]
name = "UltraA"
command = ~F,$D,B,F,$D,B,x
time = 45

[Command]
name = "UltraA"
command = ~F,$D,B,F,$D,B,y
time = 45

[Command]
name = "RThreeSDM"
command = ~B,$D,F,B,$D,F,a+b
time = 45

[Command]
name = "RThree"
command = ~B,$D,F,B,$D,F,a
time = 45

[Command]
name = "RThree"
command = ~B,$D,F,B,$D,F,b
time = 45

[Command]
name = "HSDM"
command = ~F,$D,B,F,$D,B,a+b
time = 45

[Command]
name = "TWSDM"
command = ~D,F,$D,B,a+b
time = 45

[Command]
name = "TW"
command = ~D,F,$D,B,a
time = 40

[Command]
name = "TW"
command = ~D,F,$D,B,b
time = 40

;-|Special Moves|------------------------------------------------------------------------------------------------------------

;-------------------
; Ralf Mode commands

[Command]
name = "baribariSDM"
command = D,F,$D,B,x+y
Time = 45

[Command]
name = "baribariSDM"
command = D,F,$D,B,x+y
Time = 45

[Command]
name = "baribari"
command = D,F,$D,B,x
Time = 45

[Command]
name = "baribari"
command = D,F,$D,B,y
Time = 45

[Command]
name = "GPhantomSDM"
command = ~D,F,D,F,x+y
time = 45

[Command]
name = "GPhantom"
command = ~D,F,D,F,x
time = 45

[Command]
name = "GPhantom"
command = ~D,F,D,F,y
time = 45

[Command]
name = "SuperA"
command = ~B,$D,F,a
time = 30

[Command]
name = "SuperA"
command = ~B,$D,F,b
time = 30

[Command]
name = "frankensteiner_a"
command = ~F,D,DF,a
time = 20

[Command]
name = "frankensteiner_b"
command = ~F,D,DF,b
time = 20

[Command]
name = "felbow"
command = ~D,DF,F,x
time = 15

[Command]
name = "felbow"
command = ~D,DF,F,y
time = 15

[Command] ; Inversed Flash Elbow Command - MUGEN has a bug with player facing.
name = "ifelbow"
command = ~D,DB,B,x
time = 15

[Command]
name = "ifelbow"
command = ~D,DB,B,y
time = 15

[Command]
name = "napalm_x"
command = ~F,D,DF,x
time = 15

[Command]
name = "napalm_x"
command = ~F,D,DF,y
time = 15

[Command]
name = "gatling_x"
command = ~20$B,F,x
time = 10

[Command]
name = "gatling_y"
command = ~20$B,F,y
time = 10

[Command]
name = "shining_x"
command = ~F,$D,B,x
time = 30

[Command]
name = "shining_y"
command = ~F,$D,B,y
time = 30

[Command]
name = "mtackle_x"
command = ~B,$D,F,x
time = 30

[Command]
name = "mtackle_y"
command = ~B,$D,F,y
time = 30

[Command]
name = "slift"
command = ~D,D,y
time = 20

[Command]
name = "clift"
command = ~D,D,x
time = 20

[Command]
name = "rcradle"
command = ~D,D,a
time = 20

[Command]
name = "rcradle"
command = ~D,D,b
time = 20

[Command]
name = "longjump"
command = D,$U
time = 11

[Command]
name = "counterH"
command = ~D,D,a
time = 20

[Command]
name = "counterL"
command = ~D,D,b
time = 20

;-|2/3 Button Combination|---------------------------------------------------------------------------------------------------

[Command]
name = "recovery" ; No air recovery in KOF though.
command = x+a
time = 1

[Command]
name = "knockdown"
command = b+y
time = 1

[Command]
name = "roll"
command = x+a
time = 1

;-|Double Tap|---------------------------------------------------------------------------------------------------------------

[Command]
name = "FF"     ;Required (do not remove)
command = ~F,F
time = 8

[Command]
name = "BB"     ;Required (do not remove)
command = ~B,B
time = 8

;-|Dir + Button|-------------------------------------------------------------------------------------------------------------

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Statedef -1]

[State -1, AI Helper Check]
type = ChangeState
trigger1 = IsHelper(9741)
value = 9741

[State -1, AI Helper Check 2]
type = ChangeState
trigger1 = IsHelper(9742)
value = 9742

;============================================================================================================================
; ARTIFICIAL INTELLIGENCE
;============================================================================================================================
; CURRENT LEVEL : DEFINE IT YOURSELF.
;============================================================================================================================
; FIRST OF ALL, I DID NOT WANT TO BUILD A "OMG HE CAN BEAT EVERYTHING" AI LIKE SOME RELEASED CHARACTERS HAVE. I WANTED TO 
; GIVE CLARK VARIABLE BEHAVIOURS IN A HUMAN WAY INSTEAD OF ALWAYS RELYING ON A SAME SET OF MOVES LIKE MANY OTHER CHARACTERS 
; OUT THERE, BECAUSE KOF GRAPPLERS (MORE THAN OTHER CHARACTERS) CAN'T REALLY RECEIVE A STATIC AI SINCE THEIR MIND GAMES ARE 
; MOSTLY BASED ON COMMAND BUFFERING & OPPONENT BEHAVIOUR).
; THE CURRENT LEVEL ISN'T HARD AS CLARK IS COMPLETELY BEATABLE AND WAS NOT MEANT TO BE A KILLING MACHINE WHO CAN GUESS
; ABSOLUTELY EVERYTHING, BUT IT IS STRONG ENOUGH FOR A GOOD CHALLENGE IF YOU PLAY AGAINST HIM. THAT'S HOW I SEE HIM.
;============================================================================================================================

;============================================================================================================================
; INTELLIGENCE ARTIFICIELLE
;============================================================================================================================
; NIVEAU ACTUEL : DEFINISSEZ-LE VOUS-MÊME.
;============================================================================================================================
; TOUT D'ABORD, JE N'AI PAS CONCU CET AI EN TANT QUE "OH PUNAISE IL A REPONSE A TOUT CE PERSONNAGE !" COMME ON PEUT LE 
; CONSTATER CHEZ NOMBRE DE PERSONNAGES DISPONIBLES A CE JOUR. JE VOULAIS QUE CLARK SE COMPORTE DE DIFFERENTES MANIERES ET NON 
; PAS EN UTILISANT TOUJOURS 2 OU 3 COUPS, SUREMENT PARCE QUE LES CHOPEURS (ET NOTAMMENT CEUX DE KOF) SE BASENT SUR UNE
; PRESSION PSYCHOLOGIQUE ET UN JEU DE FEINTES ENTRE HUMAINS QUI NE SONT PAS REPRODUCTIBLES POUR UN ORDINATEUR.
; LE NIVEAU ACTUEL QUE J'AI DONNE A CLARK N'EST PAS EXCESSIF PUISQU'IL EST COMPLETEMENT BATTABLE ET N'EST PAS PREVU POUR ETRE 
; UNE MACHINE A TUER TOUT CE QUI BOUGE MAIS EST SUFFISAMENT INTELLIGENT POUR VOUS OFFRIR UN CHALLENGE DE QUALITE, DU MOINS
; C'EST AINSI QUE JE LE PERCOIS. 
;============================================================================================================================

[State -1, Guard Var] ; Before any ChangeStates.
type = VarSet
trigger1 = P2MoveType = A && random <= 700
trigger2 = NumEnemy
trigger2 = (enemy, numproj > 0) && random <= 700
trigger3 = P2MoveType != A
trigger3 = (enemy, numproj = 0)
trigger3 = var(23):=0
var(23) = 1

;============================================================================================================================
; AI - Generic Behaviour
;============================================================================================================================

;----------------------------------------------------------------------------------------------------------------------------
;Baby Bonnie Hood's modified AI Guard Code

[State -1, Stand guard]
type = ChangeState
triggerall = var(33) = 1 && p2bodydist x <= 50 && random <= 600
triggerall = StateType != A && P2statetype != C
triggerall = P2Movetype = A
triggerall = enemy, NumProj > 0
trigger1 = ctrl && var(23)
value = 130

[State -1, Crouch guard]
type = ChangeState
triggerall = var(33) = 1 && p2bodydist x <= 50 && random <= 600
triggerall = StateType != A && P2statetype = C
triggerall = P2Movetype = A
triggerall = enemy, NumProj > 0
trigger1 = ctrl && var(23)
value = 131
;----------------------------------------------------------------------------------------------------------------------------

;============================================================================================================================
; AI - Hyper Attacks
;============================================================================================================================
;----------------------------------------------------------------------------------------------------------------------------
; Striker SDM : V-Slasher
; Trigger1 = Launch it without any reason at all >:P
; Trigger2 = Launch it if performing last part of Twisted Wrestle SDM
; Trigger3 = Launch it while running (confuses opponent with UAB/SAB)

[State -1, SSDM]
type = ChangeState
value = 8800
triggerall = p2stateno != 5040
triggerall = var(33) =1 && statetype !=A
triggerall = power >= 2000 && numhelper(8810) <=0 && numhelper(9440) <=0
triggerall = p2statetype != C && p2movetype != H && random <= 400 && p2bodydist x >=120
trigger1 = ctrl
trigger2 = stateno = 7954
trigger3 = (stateno = 100||stateno=101)
;----------------------------------------------------------------------------------------------------------------------------
;----------------------------------------------------------------------------------------------------------------------------
; Striker HSDM : Umanori Galactica Phantom
; Trigger1 = Launch it without any reason at all >:P
; Trigger2 = Launch it if performing last part of Twisted Wrestle SDM
; Trigger3 = Launch it while running (confuses opponent with UAB/SAB)

[State -1, SSDM]
type = ChangeState
value = 8900
triggerall = p2stateno != 5040
triggerall = var(33) =1 && statetype !=A
triggerall = power >= 2000 && numhelper(9440) <=0 && p2bodydist x >=120
triggerall = p2statetype != A && p2movetype != H && random <= 400
trigger1 = ctrl
trigger2 = stateno = 7954
trigger3 = (stateno = 100||stateno = 101)
;----------------------------------------------------------------------------------------------------------------------------
;----------------------------------------------------------------------------------------------------------------------------
; Ultra Argentina Backbreaker SDM
; Trigger1 = Regular SDM Attempt
; Trigger2 = Perform if 1st hit of Standing Strong Punch (close) hits successfully
; Trigger3 = Perform if Crouching Light Punch hits successfully
; Trigger4 = Running SDM Attempt if opponents runs.

[State -1, UAB SDM]
type = ChangeState
value = 6100
triggerall = p2stateno != 5040
triggerall = var(33) = 1 && var(14) <= 0 && p2statetype != A
triggerall = statetype != A && power >= 2000
trigger1 = p2bodydist x <= 30 && p2statetype != A && p2statetype != L && statetype != A && p2stateno != 5201 && ctrl && random <= 100
trigger2 = stateno = 211 && animelemtime(3) > 0 && animelemtime(4) < 0 && movehit && p2statetype !=A && random <= 100
trigger3 = stateno = 400 && animelemtime(2) > 0 && animelemtime(3) < 0 && movehit && random <= 100
trigger4 = p2bodydist x <= 50 && p2statetype != A && p2statetype != L && statetype != A && p2stateno = 100 && stateno = 100 && random <= 200
;----------------------------------------------------------------------------------------------------------------------------
;----------------------------------------------------------------------------------------------------------------------------
; Ultra Argentina Backbreaker DM
; Trigger1 = Regular DM Attempt
; Trigger2 = Perform if 1st hit of Standing Strong Punch (close) hits successfully
; Trigger3 = Perform if Crouching Light Punch hits successfully
; Trigger4 = Running DM Attempt if opponents runs.

[State -1, UAB DM]
type = ChangeState
value = 6000
triggerall = p2stateno != 5040
triggerall = var(33) = 1 && var(14) <= 0 && p2statetype != A
triggerall = statetype != A && power >= 1000
trigger1 = p2bodydist x <= 30 && p2statetype != A && p2statetype != L && statetype != A && p2stateno != 5201 && ctrl && random <= 100
trigger2 = stateno = 211 && animelemtime(3) > 0 && animelemtime(4) < 0 && movehit && p2statetype !=A && random <= 100
trigger3 = stateno = 400 && animelemtime(2) > 0 && animelemtime(3) < 0 && movehit && random <= 100
trigger4 = p2bodydist x <= 50 && p2statetype != A && p2statetype != L && statetype != A && p2stateno = 100 && stateno = 100 && random <= 200
;----------------------------------------------------------------------------------------------------------------------------
;----------------------------------------------------------------------------------------------------------------------------
; Mega Running Spark HSDM
; Trigger1 = Trying to make opponent attack active time perform during Clark's starting invincibility time

[State -1, HSDM]
type = ChangeState
value = 4500
triggerall = p2stateno != 5040
triggerall = var(33) = 1 && ctrl
triggerall = statetype != A && power >= 3000 
trigger1 = p2bodydist x <= 80 && p2statetype != A && p2statetype != L && p2movetype = A && random <= 200
;----------------------------------------------------------------------------------------------------------------------------
;----------------------------------------------------------------------------------------------------------------------------
; Running Three SDM
; Trigger1 = Trying to make opponent attack active time perform during Clark's starting invincibility time

[State -1, R3SDM]
type = ChangeState
value = 3100
triggerall = p2stateno != 5040
triggerall = var(33) = 1 && ctrl
triggerall = statetype != A && power >= 2000
trigger1 = p2bodydist x <= 80 && p2statetype != A && p2movetype = A && p2statetype != L && random <= 200 ;&& p2stateno != 5201
;----------------------------------------------------------------------------------------------------------------------------
;----------------------------------------------------------------------------------------------------------------------------
; Running Three DM
; Trigger1 = Trying to make opponent attack active time perform during Clark's starting invincibility time

[State -1, R3DM]
type = ChangeState
value = 3000
triggerall = p2stateno != 5040
triggerall = var(33) = 1 && ctrl
triggerall = statetype != A && power >= 1000
trigger1 = p2bodydist x <= 75 && p2statetype != A && p2movetype = A && p2statetype != L && random <= 200
;----------------------------------------------------------------------------------------------------------------------------
;----------------------------------------------------------------------------------------------------------------------------
; Frankensteiner (B version)
; Trigger1 = Jump Attack Reception Attempt
; Trigger2 = Standing Attack Attempt

[State -1, Frankensteiner]
type = ChangeState
value = 1000
triggerall = p2stateno != 5040
triggerall = var(33) = 1 && p2stateno != 5201 
triggerall = statetype != A && ctrl
trigger1 = enemy, vel y > 0
trigger1 = p2bodydist x <= 60 && p2bodydist y >= -85 && p2statetype = A && p2movetype !=H && random <= 200
trigger2 = p2bodydist x <= 35 && p2statetype !=A && p2movetype = A && random <= 200
trigger3 = stateno = 1500 && animelemtime(9) >= 0 && animelemtime(10) < 0 && movehit = 1 && power >= 1000 && random <= 500 ; KOF NW Style
trigger4 = stateno = 2001 && animelemtime(2) >= 0 && animelemtime(3) < 0 && movehit && power >= 1000 ; KOF NW Style
;----------------------------------------------------------------------------------------------------------------------------
;----------------------------------------------------------------------------------------------------------------------------
; Super Argentina Backbreaker
; Trigger1 = Regular Throw Attempt
; Trigger2 = Perform if 1st hit of Standing Strong Punch (close) hits successfully
; Trigger3 = Perform if Crouching Light Punch hits successfully
; Trigger4 = Running Throw Attempt if opponents runs.

[State -1, SAB]
type = ChangeState
value = 900
triggerall = p2stateno != 5040
triggerall = var(33) = 1 && var(14) <= 0 && statetype != A
trigger1 = p2bodydist x <= 30 && p2statetype != A && p2statetype != L && statetype != A && p2stateno != 5201 && ctrl && random <= 600
trigger2 = stateno = 211 && animelemtime(3) > 0 && animelemtime(4) < 0 && movehit && p2statetype !=A && random <= 200
trigger3 = stateno = 400 && animelemtime(2) > 0 && animelemtime(3) < 0 && movehit
trigger4 = p2bodydist x <= 50 && p2statetype != A && p2statetype != L && statetype != A && p2stateno = 100 && stateno = 100 && random <= 400
trigger5 = stateno = 1500 && animelemtime(9) >= 0 && animelemtime(10) < 0 && movehit = 1 && power >= 1000 && random <= 500 ; KOF NW Style
trigger6 = stateno = 2001 && animelemtime(2) >= 0 && animelemtime(3) < 0 && movehit && power >= 1000 ; KOF NW Style
;----------------------------------------------------------------------------------------------------------------------------
;----------------------------------------------------------------------------------------------------------------------------
; Shining Wizard
; Trigger1 = Regular Attempt if opponent is crouching (confuses opponent along with the Crouching Strong Kick)
; Trigger2 = Perform it if 1st hit of Standing Strong Punch (close) hits AND opponent is still in a crouching [gethit] state

[State -1, SWizard]
type = ChangeState
value = 2000
triggerall = p2stateno != 5040
triggerall = var(33) = 1 && var(14) <=0
triggerall = statetype != A && ctrl
trigger1 = p2bodydist x <= 60 && p2statetype = C && p2movetype !=A && random <= 200
trigger2 = stateno = 211 && animelemtime(3) > 0 && animelemtime(4) < 0 && movehit && p2statetype = C && p2movetype = H && random <= 400
trigger3 = stateno = 1500 && animelemtime(9) >= 0 && animelemtime(10) < 0 && movehit = 1 && power >= 1000 && p2statetype = C ; KOF NW Style
;----------------------------------------------------------------------------------------------------------------------------
;----------------------------------------------------------------------------------------------------------------------------
; Crouching Strong Kick
; Trigger1 = Try it if opponent is close enough.
; Trigger2 = Try it if opponent is close enough AND runs.

[State -1, CSK]
type = ChangeState
value = 440
ctrl = 0
triggerall = p2stateno != 5040
triggerall = var(33) = 1 && statetype != A && ctrl
trigger1 = (p2bodydist x = [40,60]) && random <= 200 && p2statetype != A && p2movetype != H && random <= 200
trigger2 = (p2bodydist x = [40,70]) && (p2stateno = 100 || p2stateno = 20) && random <= 300
;----------------------------------------------------------------------------------------------------------------------------
;----------------------------------------------------------------------------------------------------------------------------
; Standing Strong Punch (close)
; Trigger1 = Regular Attempt
; Trigger2 = Try it if Standing Light Kick (close) hits succesfully
; Trigger3 = Try it while running (confuses with SAB/UAB)
; Trigger4 = Try it as a late juggle (for "Counter!")

[State -1, CSSP]
type = ChangeState
value = 211
ctrl = 0
triggerall = p2stateno != 5040
triggerall = var(33) = 1 && statetype = S
triggerall = p2stateno != 5120
trigger1 = (p2bodydist x <= 25) && random <= 500 && p2statetype != L && p2statetype != A && ctrl
trigger2 = stateno = 202 && animelemtime(3) > 0 && animelemtime(4) < 0 && movehit
trigger3 = stateno = 100 && p2bodydist x <= 25 && random <= 100
trigger4 = p2bodydist x < 20 && p2bodydist y > -80 && p2movetype = H && var(10) > 0 && ctrl ; Seeking "Counter !" free juggle
;----------------------------------------------------------------------------------------------------------------------------
;----------------------------------------------------------------------------------------------------------------------------
; Standing Strong Kick (far)
; Trigger1 = Try it as a regular poke.

[State -1, SSK]
type = ChangeState
value = 240
ctrl = 0
triggerall = p2stateno != 5040
triggerall = var(33) = 1 && statetype = S
triggerall = p2stateno != 5120 && ctrl && p2statetype != A
trigger1 = (p2bodydist x=[26,70]) && p2movetype != H && random <= 100 
;----------------------------------------------------------------------------------------------------------------------------
;----------------------------------------------------------------------------------------------------------------------------
; Standing Strong Kick (close)
; Trigger1 = Try it as an anti-air.

[State -1, SSK]
type = ChangeState
value = 241
ctrl = 0
triggerall = p2stateno != 5040
triggerall = var(33) = 1 && statetype = S
triggerall = p2stateno != 5120 && ctrl
trigger1 = p2bodydist x <= 25 && (p2bodydist y >=-90) && p2statetype != A && p2movetype != H && random <= 100 
;----------------------------------------------------------------------------------------------------------------------------

;============================================================================================================================
; AI - Basic Attacks
;============================================================================================================================

;----------------------------------------------------------------------------------------------------------------------------
; Standing Weak Punch
; Trigger1 = Try as an anti-air move (check CLSNs to understand)
; Trigger2 = Try as a regular poke.

[State -1, SWP]
type = ChangeState
value = 200
ctrl = 0
triggerall = p2stateno != 5040
triggerall = var(33) = 1 && statetype = S && ctrl
trigger1 = (p2bodydist x = [10,45]) && (p2bodydist y >= -40) && random <= 200 && p2statetype = A && p2movetype != H ; Anti-air
trigger2 = (p2bodydist x = [25,45]) && (p2stateno = 100 || p2stateno = 20) && random <= 200
;----------------------------------------------------------------------------------------------------------------------------
;----------------------------------------------------------------------------------------------------------------------------
; Stomping
; Trigger1 = Only perform it as a followup of Standing Strong Punch (close) 1st hit.

[State -1, Stomping]
type = ChangeState
value = 203
ctrl = 0
triggerall = p2stateno != 5040
triggerall = var(33) = 1 && statetype = S
trigger1 = stateno = 211 && animelemtime(3) > 0 && animelemtime(4) < 0 && movecontact && p2statetype != A && (p2bodydist x <= 100) && random <= 450
;----------------------------------------------------------------------------------------------------------------------------
;----------------------------------------------------------------------------------------------------------------------------
; Standing Weak Kick (close)
; Trigger1 = try it as a regular poke.

[State -1, SWK]
type = ChangeState
value = 202
triggerall = p2stateno != 5040
triggerall = var(33) = 1 && statetype = S && ctrl
trigger1 = (p2bodydist x <= 20) && p2statetype != A && p2movetype != H && p2movetype != A && p2statetype !=L && random <= 300
;----------------------------------------------------------------------------------------------------------------------------
;----------------------------------------------------------------------------------------------------------------------------
; Standing Strong Punch
; Trigger1 = Try it against crouching attacks
; Trigger2 = Try it as a regular poke
; Trigger3 = Try it for the free "Counter !" juggle

[State -1, SSP]
type = ChangeState
value = 210
ctrl = 0
triggerall = p2stateno != 5040
triggerall = var(33) = 1 && (p2bodydist x = [25,60])
triggerall = statetype = S && ctrl
trigger1 = random <= 200 && p2statetype = C && p2movetype != A
trigger2 = random <= 100 && p2statetype = S && p2movetype != H && p2movetype != A
trigger3 = p2bodydist x < 50 && p2bodydist y > -75 && p2movetype = H && var(10) > 0; Seeking "Counter !" free juggle
;----------------------------------------------------------------------------------------------------------------------------
;----------------------------------------------------------------------------------------------------------------------------
; Crouching light punch
; Trigger1 = Try it as a regular poke
; Trigger2 = Perform it if Standing Light Kick (close) hits successfully

[State -1, CLP]
type = ChangeState
value = 400
triggerall = p2stateno != 5040 && p2stateno != 5120
triggerall = var(33) = 1 && statetype != A && (p2stateno != [5201,5210])
trigger1 = (p2bodydist x <= 35) && p2statetype != A && p2movetype != H && random <= 100 && ctrl
trigger2 = stateno = 202 && animelemtime(3) > 0 && animelemtime(3) < 2 && movehit
;----------------------------------------------------------------------------------------------------------------------------
;----------------------------------------------------------------------------------------------------------------------------
; Crouching Light Kick
; Trigger1 = Try it as a regular poke
[State -1, CLK]
type = ChangeState
value = 430
triggerall = p2stateno != 5040
triggerall = var(33) = 1 && statetype != A && ctrl && p2movetype != H && stateno != 430
trigger1 = p2statetype = S && random <= 100 && p2bodydist x <= 30
;----------------------------------------------------------------------------------------------------------------------------
;----------------------------------------------------------------------------------------------------------------------------
; Crouching Strong Punch
; Trigger1 = Try it as a regular poke.
; Trigger2 = Try it as an anti-air move
; Trigger3 = Try it against running opponents

[State -1, CSP]
type = ChangeState
value = 410
ctrl = 0
triggerall = p2stateno != 5040
triggerall = var(33) = 1 && (p2bodydist x <= 60)
triggerall = statetype !=A && ctrl && p2movetype != A
trigger1 = p2statetype != A && p2statetype != L && random <= 100
trigger2 = (p2stateno = 100 || p2stateno = 20) && random <= 200
;----------------------------------------------------------------------------------------------------------------------------
;----------------------------------------------------------------------------------------------------------------------------
; Jumping Light Punch
; Trigger1 = Try it as a regular poke against ground opponents.
; Trigger2 = Try it against jumping opponents

[State -1, JLP]
type = ChangeState
value = 601
triggerall = p2stateno != 5040
triggerall = var(33) = 1 && statetype = A && ctrl
trigger1 = vel y > 0 && p2statetype != A && (p2bodydist x <= 30) && random <= 500
trigger2 = p2bodydist x <= 40 && (p2bodydist y = [-15,15]) && random <= 100
;----------------------------------------------------------------------------------------------------------------------------
;----------------------------------------------------------------------------------------------------------------------------
; Jumping Strong Kick
; Trigger1 = Try it as a poke against ground opponents.
; Trigger2 = Try it against jumping opponents

[State -1, JSK]
type = ChangeState
value = 641
triggerall = p2stateno != 5040
triggerall = var(33) = 1 && random <= 400 && vel x != 0
triggerall = statetype = A && ctrl
trigger1 = p2statetype = S && vel y > -1 && (p2bodydist x <= 55) && (p2bodydist y <= 35)
trigger2 = p2statetype = A && (p2bodydist y >= -70) && (p2bodydist x <= 70) && p2movetype !=H
;----------------------------------------------------------------------------------------------------------------------------
;----------------------------------------------------------------------------------------------------------------------------
; Jumping CD
; Trigger1 = Try it against ground opponents
; Trigger2 = Try it against crouching opponents
; Trigger3 = Try it against jumping opponents

[State -1, JCD]
type = ChangeState
value = 300
triggerall = p2stateno != 5040
triggerall = var(33) = 1 && random <= 500
triggerall = statetype = A && ctrl
trigger1 = p2statetype = S && (p2bodydist x <= 80) ;&& (p2bodydist y <= 40) && vel y > -1
trigger2 = p2statetype = C && vel y > -1 && (p2bodydist x <= 30) && (p2bodydist y <= 40)
trigger3 = p2statetype = A && p2bodydist x <= 130 && (p2bodydist y > 0) && p2movetype !=H
;----------------------------------------------------------------------------------------------------------------------------

;============================================================================================================================
; AI - Special Attacks
;============================================================================================================================

;----------------------------------------------------------------------------------------------------------------------------
; Counter : High
; Trigger1 = Try it against air opponents
; Trigger2 = Try it against ground opponents

[State -1, CounterH]
type = ChangeState
value = 4300
triggerall = p2stateno != 5040
triggerall = var(33) = 1 && statetype != A && ctrl && (p2bodydist x = [40,70])
trigger1 = (p2bodydist y <= -80) && p2statetype != L && p2statetype != C && p2movetype = A && random <= 200
trigger2 = p2statetype = S && p2movetype = A && random <= 100
;----------------------------------------------------------------------------------------------------------------------------
;----------------------------------------------------------------------------------------------------------------------------
; Counter : Low
; Trigger1 = Try it against crouching opponents

[State -1, CounterL]
type = ChangeState
value = 4350
triggerall = p2stateno != 5040
triggerall = var(33) = 1 && statetype != A && ctrl
trigger1 = (p2bodydist x = [40,70]) && p2statetype = C && p2movetype = A && random <= 300
;----------------------------------------------------------------------------------------------------------------------------
;----------------------------------------------------------------------------------------------------------------------------
; Gatling (Y version)
; Trigger1 = Try it if Standing Strong Punch (close) 1st hit connects

[State -1, Gatling]
type = ChangeState
value = 1500
triggerall = p2stateno != 5040
triggerall = var(33) = 1 && statetype = S && p2movetype != A
trigger1 = stateno = 211 && animelemtime(3) > 0 && animelemtime(4) < 0 && movehit && p2statetype != A
trigger2 = stateno = 400 && animelemtime(2) > 0 && animelemtime(3) < 0 && movehit && random <= 700
;----------------------------------------------------------------------------------------------------------------------------
;----------------------------------------------------------------------------------------------------------------------------
; Napalm Stretch
; Trigger1 = Try it as a regular poke.
; Trigger2 = Perform it if Gatling hits.

[State -1, NStretch]
type = ChangeState
value = 1050
ctrl = 0
triggerall = p2stateno != 5040
triggerall = var(33) = 1 && statetype = S
trigger1 = (p2bodydist x <= 25) && (p2bodydist y >= -80) && (enemy, vel y < 0) && p2statetype = A && p2movetype != H && random <= 200 && ctrl
trigger2 = stateno = 1500 && animelemtime(11) >=0 && movehit && p2statetype = A
;----------------------------------------------------------------------------------------------------------------------------
;----------------------------------------------------------------------------------------------------------------------------
; Flash Elbow (always perform it)

[State -1, Elbow]
type = VarSet
triggerall = p2stateno != 5040
triggerall = var(33) = 1 && roundstate = 2
triggerall = !var(12)
trigger1 = stateno = 903
trigger2 = stateno = 1053
v = 7
value = 1

[State -1, Elbow 2]
type = VarSet
triggerall = p2stateno != 5040
triggerall = var(33) = 1 && roundstate = 2
triggerall = !var(12)
trigger1 = stateno = 1001
trigger2 = stateno = 2700
v = 7
value = 3
;----------------------------------------------------------------------------------------------------------------------------
;----------------------------------------------------------------------------------------------------------------------------
; Mount Tackle
; Trigger1 = Perform it if Stomping connects
; Trigger2 = Perform it if Standing Strong Punch (close) connects
; Trigger3 = Try it as a regular poke

[State -1, MTackle]
type = ChangeState
value = 2500
ctrl = 0
triggerall = p2stateno != 5040
triggerall = var(33) = 1 && statetype = S && stateno != 2500 && p2movetype !=A && p2stateno != 5120 && p2stateno != [5201,5210]
trigger1 = stateno = 203 && animelemtime(5) >=0 && animelemtime(6) < 0 && movehit && p2statetype !=A && p2bodydist x <= 75
trigger2 = stateno = 211 && animelemtime(3) > 0 && animelemtime(4) < 0 && movehit && p2statetype != A && random <= 100
trigger3 = p2bodydist x <= 120 && p2statetype !=A && random <= 100 && p2movetype != H && p2movetype = A && ctrl
trigger4 = stateno = 1500 && animelemtime(9) >= 0 && animelemtime(10) < 0 && movehit = 1 && power >= 1000 && random <= 400 ; KOF NW Style
trigger5 = stateno = 2001 && animelemtime(2) >= 0 && animelemtime(3) < 0 && movehit && power >= 1000 ; KOF NW Style

; Mount Tackle followup random choice

[State -1, MTF]
type = VarRandom
triggerall = var(33) = 1
trigger1 = stateno = 2504
v = 8
range = 1,3

; Choose Twisted Wrestle DM if available

[State -1, TWDM]
type = VarSet
triggerall = var(33) = 1 && (power >= 1000) && random <= 300
trigger1 = stateno = 2504
v = 8
value = 4

; Choose Twisted Wrestle SDM if available

[State -1, TWSDM]
type = VarSet
triggerall = var(33) = 1 && (power >= 2000) && random <= 300
trigger1 = stateno = 2504
v = 8
value = 5
;----------------------------------------------------------------------------------------------------------------------------
;----------------------------------------------------------------------------------------------------------------------------
; Recover from fall.

[State -1, Recovery]
type = ChangeState 
value = 5201 
triggerall = var(33) = 1 && CanRecover
trigger1 = Vel Y > 0 && Pos Y >= 0 && alive && (stateno = [5050,5060])
;----------------------------------------------------------------------------------------------------------------------------
;----------------------------------------------------------------------------------------------------------------------------
; Run.
; Trigger1 = Run until opponent attacks (stops at a distance)
; Trigger2 = Run if opponent doesn't attack (stops closer)
; Trigger3 = Run to try a free "Counter!" juggle attempt

[State -1,Run]
type = ChangeState
value = 100
triggerall = var(33) = 1 && roundstate = 2
triggerall = statetype = S && ctrl && stateno != 100
trigger1 = p2bodydist x > 80 && p2movetype = A && random <= 100
trigger2 = p2bodydist x < 50 && p2movetype != A && random <= 100
trigger3 = p2bodydist x < 80 && p2movetype = H && p2statetype = A && var(10) > 0
;----------------------------------------------------------------------------------------------------------------------------
;----------------------------------------------------------------------------------------------------------------------------
; Taunt.
; Trigger1 = Taunt opponent if Clark is at good distance and has life advantage.

[State -1,Taunt]
type = ChangeState
value = 195
triggerall = var(33) = 1 && p2movetype != A && p2bodydist x > 150 && random <= 50
trigger1 = stateno != 100 && statetype = S && ctrl && stateno !=195
trigger1 = p2life <= (life - 200)
;----------------------------------------------------------------------------------------------------------------------------
;----------------------------------------------------------------------------------------------------------------------------
; Roll Forward.

[State -1, RollF]
type = ChangeState
value = 700
triggerall = var(33) = 1 && statetype != A && ctrl && p2movetype = A && random <= 400
trigger1 = p2bodydist x <= 90
trigger2 = stateno = 100 && p2bodydist x <= 100
;----------------------------------------------------------------------------------------------------------------------------
;----------------------------------------------------------------------------------------------------------------------------
; Roll Backward.
; Trigger1 = Try if Clark is cornered and opponents attacks.
; Not really a good idea if the attack performed by the opponent is a throw. 
; That's why I also make him dash backwards (see below).

[State -1,RollB]
type = ChangeState
value = 701
ctrl = 0
triggerall = var(33) = 1 && statetype != A && ctrl
trigger1 = p2bodydist x <= 40 && p2statetype = A && backedgebodydist < 60 && random <= 100
;----------------------------------------------------------------------------------------------------------------------------
;----------------------------------------------------------------------------------------------------------------------------
; Jump.
; Trigger1 = Short Jump Forward
; Trigger2 = Short Jump Neutral
; Trigger3 = Short Jump Backwards (defense)
; Trigger4 = Long Jump Forward

[State -1, JUMP]
type = ChangeState
value = 40
triggerall = stateno != 40 && p2life != 0 && ctrl
triggerall = statetype != A && var(33) = 1 && p2movetype != H
trigger1 = (p2bodydist x = [80,100]) && p2statetype != A && random <= 400
trigger2 = p2bodydist x <= 30 && p2stateno = 5120 && random <= 500
trigger3 = p2bodydist x <= 75 && p2bodydist y >= -80 && p2statetype = A && random <= 200
trigger4 = (p2bodydist x = [101,130]) && p2statetype != L && p2movetype != H && random <= 100

;----------------------------------------------------------------------------------------------------------------------------
;----------------------------------------------------------------------------------------------------------------------------
; Dash Back.
; Trigger1 = Try if Clark is cornered and opponents attacks.
; Not really a good idea if the attack performed by the opponent is not a throw.
; That's why I also make him roll backwards (see above).
;
; Trigger2 = Opponent wakes up (avoids throws & other Shoryuken-like moves).

[State -1, Dash]
type = ChangeState
value = 105
ctrl = 0
triggerall = var(33) = 1 && statetype !=A && ctrl
trigger1 = p2bodydist x <= 40 && p2statetype = L && backedgebodydist > 60 && random <= 100
trigger2 = p2bodydist x <= 40 && p2stateno = 5120 && random <= 500
;----------------------------------------------------------------------------------------------------------------------------
;----------------------------------------------------------------------------------------------------------------------------
; Guard Cancel Attack (CD Counter)
; Trigger1, Trigger2 = Perform while guarding (only if opponent is close enough)

[State -1,GCA]
type = ChangeState
value = 704
triggerall = var(33) = 1 && FVar(1) <= 0 && p2bodydist x <= 80
triggerall = power >= 1000 && life > 0 && statetype != A && random <= 300
trigger1 = stateno = 150 
trigger2 = stateno = 152
;----------------------------------------------------------------------------------------------------------------------------

;============================================================================================================================
; AI - Misc.
;============================================================================================================================

;----------------------------------------------------------------------------------------------------------------------------
; Death Lake Drive (air throw)
; Trigger1 = Try it if opponent is close enough

[State -1, DLake Drive]
type = ChangeState
value = 1850
triggerall = p2stateno != 5040
triggerall = var(33) = 1 && statetype = A && ctrl && pos y >= -30 ; Avoids Clark to perform it if he's not high enough.
trigger1 = P2StateType = A && P2MoveType != H && P2BodyDist X <= 10 && (p2bodydist y = [-20,20])
;----------------------------------------------------------------------------------------------------------------------------

;----------------------------------------------------------------------------------------------------------------------------
; HUMAN COMMANDS
;----------------------------------------------------------------------------------------------------------------------------

;============================================================================================================================
; Ralf Mode Enabling
;============================================================================================================================

;[State -1, RalfM]
;type = ChangeState
;value = 9500
;triggerall = power >= 1000 && FVar(1) <= 0
;triggerall = command = "z" && var(33) !=1
;trigger1 = statetype = S && ctrl

;============================================================================================================================
; Baribari Vulcan Punch SDM
;============================================================================================================================

;[State -1, BariBari SDM]
;type = ChangeState
;value = 10001
;triggerall = power >= 2000 && FVar(1) > 0 && command = "baribariSDM" && var(33) !=1
;trigger1 = statetype = S && ctrl

;============================================================================================================================
; Baribari Vulcan Punch DM
;============================================================================================================================

;[State -1, BariBari DM]
;type = ChangeState
;value = 10000
;triggerall = power >= 1000 && FVar(1) > 0 && command = "baribari" && var(33) !=1
;trigger1 = statetype = S && ctrl

;============================================================================================================================
; Galactica Phantom SDM
;============================================================================================================================

;[State -1, BariBari SDM]
;type = ChangeState
;value = 10500
;triggerall = power >= 2000 && FVar(1) > 0 && command = "GPhantomSDM" && var(33) !=1
;trigger1 = statetype = S && ctrl

;----------------------------------------------------------------------------------------------------------------------------

;============================================================================================================================
; DMs, SDMs, HSDM
;============================================================================================================================

;----------------------------------
; Ultra Argentina Backbreaker (SDM)
;----------------------------------

[State -1, UAB]
type = ChangeState
value = 6100
triggerall = command = "UltraASDM" && FVar(1) <= 0
triggerall = power >= 2000 && var(33) !=1
trigger1 = statetype != A && ctrl
trigger2 = stateno = 211 && animelemtime(3) >=0 && animelemtime(4) < 0 && movecontact
trigger3 = stateno = 202 && animelemtime(2) >=0 && animelemtime(3) < 0 && movecontact
trigger4 = stateno = 400 && animelemtime(2) >=0 && animelemtime(3) < 0 && movecontact
trigger5 = stateno = 203 && animelemtime(5) >=0 && animelemtime(6) < 0 && movecontact
trigger6 = stateno = 250 && animelemtime(7) >=0 && animelemtime(8) < 0
trigger7 = (stateno = 100||stateno=101)

;---------------------------------
; Ultra Argentina Backbreaker (DM)
;---------------------------------

[State -1, UAB]
type = ChangeState
value = 6000
triggerall = command = "UltraA" && FVar(1) <= 0
triggerall = power >= 1000 && var(33) !=1
trigger1 = statetype != A && ctrl
trigger2 = stateno = 211 && animelemtime(3) >=0 && animelemtime(4) < 0 && movecontact
trigger3 = stateno = 202 && animelemtime(2) >=0 && animelemtime(3) < 0 && movecontact
trigger4 = stateno = 400 && animelemtime(2) >=0 && animelemtime(3) < 0 && movecontact
trigger5 = stateno = 203 && animelemtime(5) >=0 && animelemtime(6) < 0 && movecontact
trigger6 = stateno = 250 && animelemtime(7) >=0 && animelemtime(8) < 0
trigger7 = (stateno = 100||stateno=101)

;------------------
; Running Three SDM
;------------------

[State -1, R3 SDM]
type = ChangeState
value = 3100
triggerall = command = "RThreeSDM" && FVar(1) <= 0
triggerall = power >= 2000 && var(33) !=1
trigger1 = statetype != A && ctrl
trigger2 = stateno = 203 && animelemtime(5) >=0 && animelemtime(6) < 0
trigger3 = stateno = 250 && animelemtime(7) >=0 && animelemtime(8) < 0
trigger4 = (stateno = 100||stateno=101)

;--------------
; Running Three
;--------------

[State -1, R3]
type = ChangeState
value = 3000
triggerall = command = "RThree" && FVar(1) <= 0
triggerall = power >= 1000 && var(33) !=1
trigger1 = statetype != A && ctrl
trigger2 = stateno = 203 && animelemtime(5) >=0 && animelemtime(6) < 0
trigger3 = stateno = 250 && animelemtime(7) >=0 && animelemtime(8) < 0
trigger4 = (stateno = 100||stateno=101)

;--------------------------
; Mega Running Spark (HSDM)
;--------------------------

[State -1, HSDM]
type = ChangeState
value = 4500
triggerall = command = "HSDM" && FVar(1) <= 0
triggerall = power >= 3000 && var(33) !=1
trigger1 = statetype != A && ctrl
trigger2 = stateno = 250 && animelemtime(7) >=0 && animelemtime(8) < 0
trigger3 = (stateno = 100||stateno=101)

;------------------------
; Striker SDM : V-Slasher
;------------------------

[State -1, SSDM]
type = ChangeState
value = 8800
triggerall = command = "vslasher" && var(33) !=1 && FVar(1) <= 0
triggerall = power >= 2000 && numhelper(8810) <=0
trigger1 = statetype != A && ctrl
trigger2 = stateno = 7954
trigger3 = stateno = 203 && animelemtime(5) >=0 && animelemtime(6) < 0
trigger4 = (stateno = 100||stateno=101)

;-----------------------------------------
; Striker HSDM : Umanori Galactica Phantom
;-----------------------------------------

[State -1, SSDM]
type = ChangeState
value = 8900
triggerall = command = "SHSDM" && var(33) !=1 && FVar(1) <= 0
triggerall = power >= 2000 && numhelper(9440) <=0
trigger1 = statetype != A && ctrl
trigger2 = stateno = 7954
trigger3 = (stateno = 100||stateno=101)

;====================
; Button Combinations
;====================

;--------------
; Roll Backward
;--------------

[State -1, Roll]
type = ChangeState
value = 701
triggerall = command = "roll" && command = "holdback" && var(33) != 1
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 100||stateno=101)
trigger3 = stateno = 21

;-------------
; Roll Forward
;-------------

[State -1, Roll]
type = ChangeState
value = 700
triggerall = command = "roll" && var(33) != 1
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 100||stateno=101)
trigger3 = stateno = 20

;-----------------
; Emergency System
;-----------------

[State -1,RollB Counter]
type = ChangeState
value = 703
triggerall = command = "roll" && command = "holdback"
triggerall = power >= 1000 && life > 0 && statetype != A
triggerall = var(33) != 1
trigger1 = stateno = 150 
trigger2 = stateno = 152 

[State -1,RollF counter]
type = ChangeState
value = 702
triggerall = command = "roll" && command = "holdfwd"
triggerall = power >= 1000 && life > 0 && statetype != A
triggerall = var(33) != 1
trigger1 = stateno = 150 
trigger2 = stateno = 152 

[State -1,CD counter]
type = ChangeState
value = 704
triggerall = command = "knockdown"
triggerall = power >= 1000 && life > 0 && statetype != A
triggerall = var(33) != 1
trigger1 = stateno = 150 
trigger2 = stateno = 152
 
[State -1,Counter CD Evasion]
type = ChangeState
value = 705
triggerall = command = "roll" && var(33) != 1
triggerall = power >= 1000 && life > 0 && statetype != A
trigger1 = stateno = 200 && animelemtime(3) >=0 && animelemtime(4) < 0
trigger2 = stateno = 201 && animelemtime(2) >=0 && animelemtime(3) < 0
trigger3 = stateno = 202 && animelemtime(2) >=0 && animelemtime(3) < 0
trigger4 = stateno = 203 && animelemtime(5) >=0 && animelemtime(6) < 0
trigger5 = stateno = 210 && animelemtime(4) >=0 && animelemtime(5) < 0
trigger6 = stateno = 211 && animelemtime(3) >=0 && animelemtime(4) < 0
trigger7 = stateno = 211 && animelemtime(4) >=0 && animelemtime(5) < 0
trigger8 = stateno = 215 && animelemtime(6) >=0 && animelemtime(7) < 0
trigger9 = stateno = 216 && animelemtime(7) >=0 && animelemtime(8) < 0
trigger10 = stateno = 220 && animelemtime(2) >=0 && animelemtime(3) < 0
trigger11 = stateno = 225 && animelemtime(2) >=0 && animelemtime(3) < 0
trigger12 = stateno = 230 && animelemtime(3) >=0 && animelemtime(4) < 0
trigger13 = stateno = 235 && animelemtime(4) >=0 && animelemtime(5) < 0
trigger14 = stateno = 240 && animelemtime(6) >=0 && animelemtime(7) < 0
trigger15 = stateno = 241 && animelemtime(7) >=0 && animelemtime(8) < 0
trigger16 = stateno = 250 && animelemtime(7) >=0 && animelemtime(8) < 0
trigger17 = stateno = 400 && animelemtime(2) >=0 && animelemtime(3) < 0
trigger18 = stateno = 410 && animelemtime(3) >=0 && animelemtime(4) < 0
trigger19 = stateno = 430 && animelemtime(2) >=0 && animelemtime(3) < 0
trigger20 = stateno = 440 && animelemtime(4) >=0 && animelemtime(5) < 0

;-----------------------
; KnockDown Attack (C+D)
;-----------------------

[State -1, KnockDown Attack]
type = ChangeState
value = 250
triggerall = command = "knockdown" && var(33) != 1 && FVar(1) <= 0
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 100||stateno=101)

;---------------------------
; Air KnockDown Attack (C+D)
;---------------------------

[State -1, KnockDown Attack]
type = ChangeState
value = 300
triggerall = command = "knockdown" && var(33) != 1 && FVar(1) <= 0
trigger1 = statetype = A && ctrl

;============================================================================================================================
; SPECIAL MOVES
;============================================================================================================================

;----------------------------
; Super Argentina Backbreaker
;----------------------------

[State -1, SAB]
type = ChangeState
value = 900
triggerall = command = "SuperA" && var(33) !=1
trigger1 = statetype != A && ctrl
trigger2 = stateno = 211 && animelemtime(3) >=0 && animelemtime(4) < 0 && movecontact
trigger3 = stateno = 202 && animelemtime(2) >=0 && animelemtime(3) < 0 && movecontact
trigger4 = stateno = 400 && animelemtime(2) >=0 && animelemtime(3) < 0 && movecontact
trigger5 = stateno = 203 && animelemtime(5) >=2 && animelemtime(6) < 0 && movecontact
trigger6 = stateno = 250 && animelemtime(7) >=0 && animelemtime(8) < 0 && movecontact
trigger7 = (stateno = 100||stateno=101)
trigger8 = stateno = 1500 && animelemtime(4) >= 0 && animelemtime(5) < 0 && power >= 1000  ; KOF NW Style
trigger9 = stateno = 1500 && animelemtime(9) >= 0 && animelemtime(10) < 0 && power >= 1000 ; KOF NW Style
trigger10 = stateno = 2001 && animelemtime(2) >= 0 && animelemtime(3) < 0 && power >= 1000 ; KOF NW Style

;------------
; Flash Elbow
;------------

[State -1, Flash Elbow]
type = ChangeState
value = 950
triggerall = command = "felbow" && var(7) = 1 && var(33) !=1 && FVar(1) <= 0
trigger1 = stateno = 903 ;Super Argentina BackBreaker
trigger1 = time = [30,50]
trigger2 = stateno = 1001 ;Frankensteiner
trigger2 = time = [40,50]

[State -1, Flash Elbow]
type = ChangeState
value = 950
triggerall = command = "ifelbow" && var(7) = 1 && var(33) !=1
trigger1 = stateno = 903
trigger1 = time = [30,50]
trigger2 = stateno = 1001
trigger2 = time = [40,50]

;---------------
; Frankensteiner
;---------------

[State -1, Frankensteiner Light]
type = ChangeState
value = 999
triggerall = command = "frankensteiner_a" && var(33) !=1 && FVar(1) <= 0
trigger1 = statetype != A && ctrl
trigger2 = stateno = 400 && animelemtime(2) >=0 && animelemtime(3) < 0 && movecontact
trigger3 = stateno = 250 && animelemtime(6) >=0 && animelemtime(8) < 0
trigger4 = (stateno = 100||stateno=101)
trigger5 = stateno = 1500 && animelemtime(4) >= 0 && animelemtime(5) < 0 && power >= 1000  ; KOF NW Style
trigger6 = stateno = 1500 && animelemtime(9) >= 0 && animelemtime(10) < 0 && power >= 1000 ; KOF NW Style
trigger7 = stateno = 2001 && animelemtime(2) >= 0 && animelemtime(3) < 0 && power >= 1000 ; KOF NW Style

[State -1, Frankensteiner Strong]
type = ChangeState
value = 1000
triggerall = command = "frankensteiner_b" && var(33) !=1 && FVar(1) <= 0
trigger1 = statetype != A && ctrl
trigger2 = stateno = 250 && animelemtime(6) >=0 && animelemtime(8) < 0
trigger3 = (stateno = 100||stateno=101)
trigger4 = stateno = 1500 && animelemtime(4) >= 0 && animelemtime(5) < 0 && power >= 1000  ; KOF NW Style
trigger5 = stateno = 1500 && animelemtime(9) >= 0 && animelemtime(10) < 0 && power >= 1000 ; KOF NW Style
trigger6 = stateno = 2001 && animelemtime(2) >= 0 && animelemtime(3) < 0 && power >= 1000 ; KOF NW Style

;---------------
; Napalm Stretch
;---------------

[State -1, Napalm Stretch]
type = ChangeState
value = 1050
triggerall = command = "napalm_x" && var(33) !=1 && FVar(1) <= 0
trigger1 = statetype !=A && ctrl
trigger2 = stateno = 203 && animelemtime(5) >=0 && animelemtime(6) < 0 && movecontact
trigger3 = stateno = 250 && animelemtime(7) >=0 && animelemtime(8) < 0
trigger4 = stateno = 1500 && animelemtime(11) >=0 && animelemtime(11) < 7
trigger5 = (stateno = 100||stateno=101)

;------------------------
; Gatling - Light Version
;------------------------

[State -1, Gatling Strong]
type = ChangeState
value = 1490
triggerall = command = "gatling_x" && var(33) !=1 && FVar(1) <= 0
trigger1 = statetype = S && ctrl
trigger2 = stateno = 211 && animelemtime(3) >=0 && animelemtime(4) < 0 && movecontact
trigger3 = stateno = 250 && animelemtime(7) >=0 && animelemtime(8) < 0
trigger4 = (stateno = 100||stateno=101)

;-------------------------
; Gatling - Strong Version
;-------------------------

[State -1, Gatling Strong]
type = ChangeState
value = 1500
triggerall = command = "gatling_y" && var(33) !=1 && FVar(1) <= 0
trigger1 = statetype = S && ctrl
trigger2 = stateno = 211 && animelemtime(3) >=0 && animelemtime(4) < 0 && movecontact
trigger3 = stateno = 250 && animelemtime(7) >=0 && animelemtime(8) < 0
trigger4 = (stateno = 100||stateno=101)

;-----------------------
; Shining Wizard - Light
;-----------------------

[State -1, SWizard Light]
type = ChangeState
value = 1999
triggerall = command = "shining_x" && var(33) !=1 && FVar(1) <= 0
trigger1 = statetype = S && ctrl
trigger2 = stateno = 211 && animelemtime(3) >=0 && animelemtime(4) < 0 && movecontact
trigger3 = stateno = 203 && animelemtime(5) >=0 && animelemtime(6) < 0 && movecontact
trigger4 = stateno = 250 && animelemtime(7) >=0 && animelemtime(8) < 0 && movecontact
trigger5 = (stateno = 100||stateno=101)
trigger6 = stateno = 1500 && animelemtime(4) >= 0 && animelemtime(5) < 0 && power >= 1000  ; KOF NW Style
trigger7 = stateno = 1500 && animelemtime(9) >= 0 && animelemtime(10) < 0 && power >= 1000 ; KOF NW Style

;------------------------
; Shining Wizard - Strong
;------------------------

[State -1, SWizard Strong]
type = ChangeState
value = 2000
triggerall = command = "shining_y" && var(33) !=1 && FVar(1) <= 0
trigger1 = statetype = S && ctrl
trigger2 = stateno = 211 && animelemtime(3) >=0 && animelemtime(4) < 0 && movecontact
trigger3 = stateno = 203 && animelemtime(5) >=0 && animelemtime(6) < 0 && movecontact
trigger4 = stateno = 250 && animelemtime(7) >=0 && animelemtime(8) < 0 && movecontact
trigger5 = (stateno = 100||stateno=101)
trigger6 = stateno = 1500 && animelemtime(4) >= 0 && animelemtime(5) < 0 && power >= 1000  ; KOF NW Style
trigger7 = stateno = 1500 && animelemtime(9) >= 0 && animelemtime(10) < 0 && power >= 1000 ; KOF NW Style

;-------------
; Mount Tackle
;-------------

[State -1, Mount Tackle Light]
type = ChangeState
value = 2505
triggerall = command = "mtackle_x" && var(33) !=1 && FVar(1) <= 0
trigger1 = statetype = S && ctrl
trigger2 = stateno = 203 && animelemtime(5) >=0 && animelemtime(6) < 0 && movecontact
trigger3 = stateno = 250 && animelemtime(7) >=0 && animelemtime(8) < 0 && movecontact
trigger4 = stateno = 211 && animelemtime(3) >=0 && animelemtime(4) < 0 && movecontact
trigger5 = (stateno = 100||stateno=101)
trigger6 = stateno = 1500 && animelemtime(4) >= 0 && animelemtime(5) < 0 && power >= 1000  ; KOF NW Style
trigger7 = stateno = 1500 && animelemtime(9) >= 0 && animelemtime(10) < 0 && power >= 1000 ; KOF NW Style
trigger8 = stateno = 2001 && animelemtime(2) >= 0 && animelemtime(3) < 0 && power >= 1000 ; KOF NW Style

[State -1, Mount Tackle Strong]
type = ChangeState
value = 2500
triggerall = command = "mtackle_y" && var(33) !=1 && FVar(1) <= 0
trigger1 = statetype = S && ctrl
trigger2 = stateno = 203 && animelemtime(5) >=0 && animelemtime(6) < 0
trigger3 = stateno = 250 && animelemtime(7) >=0 && animelemtime(8) < 0
trigger4 = stateno = 211 && animelemtime(3) >=0 && animelemtime(4) < 0 && movecontact
trigger5 = (stateno = 100||stateno=101)
trigger6 = stateno = 1500 && animelemtime(4) >= 0 && animelemtime(5) < 0 && power >= 1000  ; KOF NW Style
trigger7 = stateno = 1500 && animelemtime(9) >= 0 && animelemtime(10) < 0 && power >= 1000 ; KOF NW Style
trigger8 = stateno = 2001 && animelemtime(2) >= 0 && animelemtime(3) < 0 && power >= 1000 ; KOF NW Style

;---------------
; Counter : High
;---------------

[State -1, CounterH]
type = ChangeState
value = 4300
triggerall = command = "counterH" && var(33) !=1 && FVar(1) <= 0
trigger1 = statetype != A && ctrl
trigger2 = (stateno = 100||stateno=101)

;--------------
; Counter : Low
;--------------

[State -1, CounterL]
type = ChangeState
value = 4350
triggerall = command = "counterL" && var(33) !=1 && FVar(1) <= 0
trigger1 = statetype != A && ctrl
trigger2 = (stateno = 100||stateno=101)

;============================================================================================================================
; NORMAL THROWS
;============================================================================================================================

;----------------
; Slamming German
;----------------

[State -1, SGerman]
type = ChangeState
value = 800
triggerall = command = "y" && var(33) !=1
triggerall = statetype = S && ctrl && stateno != 100
trigger1 = command = "holdfwd" && p2bodydist X < 5 && p2movetype != H
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger2 = command = "holdback" && p2bodydist X < 5 && p2movetype != H
trigger2 = (p2statetype = S) || (p2statetype = C)

;-----------------
; Fisherman Buster
;-----------------

[State -1, Fisherman Buster]
type = ChangeState
value = 790
triggerall = command = "b" && var(33) !=1
triggerall = statetype = S && ctrl && stateno != 100
trigger1 = command = "holdfwd" && p2bodydist X < 3 && p2movetype != H
trigger1 = (p2statetype = S) || (p2statetype != A)
trigger2 = command = "holdback" && p2bodydist X < 5 && p2movetype != H
trigger2 = (p2statetype = S) || (p2statetype != A)

;-----------------------------
; Death Lake Drive (air Throw)
;-----------------------------

[State -1, DLake Drive]
type = ChangeState
value = 1850
triggerall = (command = "y" || command = "b") && StateType = A && ctrl
triggerall = (command ="holdfwd" || command = "holddown" || command = "holdback")
trigger1 = stateno != 100 && P2StateType = A && P2MoveType != H && P2BodyDist X <= 5 && (p2bodydist y = [-20,20])

;============================================================================================================================
; REQUIRED COMMANDS
;============================================================================================================================

;------------
; Run Forward
;------------

[State -1, Run Forward]
type = ChangeState
value = 100
triggerall = var(33) !=1
trigger1 = command = "FF" && statetype = S && ctrl

;---------
; Hop Back
;---------

[State -1, Hop Back]
type = ChangeState
value = 105
triggerall = var(33) !=1
trigger1 = command = "BB" && statetype = S && ctrl

;============================================================================================================================
; NORMAL MOVES
;============================================================================================================================

;------------------
; Stand Light Punch
;------------------

[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x" && command != "holddown" && var(33) != 1
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 100||stateno=101)

;---------------------------
; Stand Strong Punch (far C)
;---------------------------

[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y" && command != "holddown"
triggerall = p2bodydist x >= 28 && var(33) != 1 && FVar(1) <= 0
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 100||stateno=101)

[State -1, Close Stand Strong Punch]
type = ChangeState
value = 211
triggerall = command = "y" && command != "holddown"
triggerall = p2bodydist x < 28 && var(33) != 1 && FVar(1) <= 0
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 100||stateno=101)

;----------------
;Stand Light Kick
;----------------

[State -1, Stand Light Kick]
type = ChangeState
value = 201
triggerall = command = "a" && command != "holddown" && command != "holdfwd"
triggerall = p2bodydist x >= 10 && var(33) != 1 && FVar(1) <= 0
trigger1 = statetype = S && ctrl
trigger2 = stateno = 202 && animelemtime(2) >=0 && animelemtime(3) < 0
trigger3 = (stateno = 100||stateno=101)


[State -1, Close Stand Light Kick]
type = ChangeState
value = 202
triggerall = command = "a" && command != "holddown" && command != "holdfwd"
triggerall = p2bodydist x < 10 && var(33) != 1 && FVar(1) <= 0
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 100||stateno=101)

;--------------------------------
; Stomping (Forward + Light Kick)
;--------------------------------

[State -1, Stomping]
type = ChangeState
value = 203
triggerall = command = "a" && command = "holdfwd" && FVar(1) <= 0
triggerall = command != "holddown" && var(33) != 1
trigger1 = statetype = S && ctrl
trigger2 = stateno = 211 && animelemtime(3) >=0 && animelemtime(4) < 0 && movecontact
trigger3 = (stateno = 100||stateno=101)

;--------------------
;Standing Strong Kick
;--------------------

[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b" && command != "holddown"
triggerall = p2bodydist x >=25 && var(33) != 1 && FVar(1) <= 0
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 100||stateno=101)

[State -1, Close Stand Strong Kick]
type = ChangeState
value = 241
triggerall = command = "b" && command != "holddown"
triggerall = p2bodydist x < 25 && var(33) != 1 && FVar(1) <= 0
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 100||stateno=101)

;------
; Taunt
;------

[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start" && var(33) != 1
trigger1 = statetype != A && ctrl
trigger2 = (stateno = 100||stateno=101)

;----------------------
; Crouching Light Punch
;----------------------

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x" && command = "holddown"
triggerall = var(33) != 1
trigger1 = statetype = C && ctrl
trigger2 = stateno = 202 && animelemtime(3) >=0
trigger3 = (stateno = 100||stateno=101)

;-----------------------
; Crouching Strong Punch
;-----------------------

[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y" && command = "holddown"
triggerall = var(33) != 1 && FVar(1) <= 0
trigger1 = statetype = C && ctrl
trigger2 = (stateno = 100||stateno=101)

;---------------------
; Crouching Light Kick
;---------------------

[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a" && command = "holddown" && var(33) != 1
trigger1 = statetype = C && ctrl
trigger2 = (stateno = 100||stateno=101)

;----------------------
; Crouching Strong Kick
;----------------------

[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b" && command = "holddown" && var(33) != 1
trigger1 = statetype = C && ctrl
trigger2 = (stateno = 100||stateno=101)

;----------------------------
; Jump Light Punch (straight)
;----------------------------

[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x" && vel x = 0 && FVar(1) <= 0
triggerall = stateno != 243 && var(33) != 1
trigger1 = statetype = A && ctrl

;-----------------
; Jump Light Punch
;-----------------

[State -1, Jump Light Punch]
type = ChangeState
value = 601
triggerall = command = "x" && var(33) != 1 && FVar(1) <= 0
trigger1 = statetype = A && ctrl

;------------------
; Jump Strong Punch
;------------------

[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y" && var(33) != 1 && FVar(1) <= 0
trigger1 = statetype = A && ctrl 

;---------------------------
; Jump Light Kick (straight)
;---------------------------

[State -1, Jump Light Kick 2]
type = ChangeState
value = 635
triggerall = command = "a" && vel x = 0
triggerall = stateno != 243 && var(33) != 1
trigger1 = statetype = A && ctrl

;----------------
; Jump Light Kick
;----------------

[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a" && var(33) != 1 && FVar(1) <= 0
trigger1 = statetype = A && ctrl

;----------------------------
; Jump Strong Kick (straight)
;----------------------------

[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b" && vel x = 0
triggerall = stateno != 243 && var(33) != 1
trigger1 = statetype = A && ctrl

;-----------------
; Jump Strong Kick
;-----------------

[State -1, Jump Strong Kick]
type = ChangeState
value = 641
triggerall = command = "b" && var(33) != 1 && FVar(1) <= 0
trigger1 = statetype = A && ctrl

