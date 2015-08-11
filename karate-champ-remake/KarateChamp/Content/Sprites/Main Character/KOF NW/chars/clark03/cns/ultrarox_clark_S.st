;==========================================================================================================================
; CLARK STEEL (KOF 2002)
;==========================================================================================================================
; CONVERTED BY OROCHIKOF97
;==========================================================================================================================
; VERSION 1.0c (APRIL 5TH 2005)
;==========================================================================================================================
;
;==========================================================================================================================
; SPECIAL MOVES & NORMAL THROWS
;==========================================================================================================================
; Super Argentina Backbreaker
; Frankensteiner
; Napalm Stretch
; Mount Tackle | Clark Lift | Super Lift [D.D.T] | Rolling Cradle
; Flash Elbow
; Gatling
; Shining Wizard
; Counter : High
; Counter : Low
;--------------------------------------------------------------------------------------------------------------------------
; Slamming German
; Fisherman Buster
; Death Lake Drive
;--------------------------------------------------------------------------------------------------------------------------

;--------------------------------------------------------------------------------------------------------------------------
; Super Argentina Backbreaker
;--------------------------------------------------------------------------------------------------------------------------
;-------------
; Grab Attempt
;-------------

[Statedef 900]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 900

;--------------------------

[State 900, Cancel Blink] ; Neowave Super Cancel Style
type = PalFX
trigger1 = (prevstateno = 1500) && (time = 0)
trigger2 = (prevstateno = 2001) && (time = 0)
add = 60,60,60
sinadd = 100,100,100,4
time = 20
ignorehitpause = 1

[State 900, PowerLoss] ; Neowave Super Cancel Style
type = PowerAdd
trigger1 = prevstateno = 1500
trigger2 = prevstateno = 2001
value = -1000
persistent = 0
ignorehitpause = 1

;--------------------------

[State 900, No Guard]
type = AssertSpecial
trigger1 = 1
flag = nostandguard
flag2 = nocrouchguard

[State 211, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 900, Grab Attempt]
type = HitDef
triggerall = prevstateno != (3001 || 3101 || 4501)
trigger1 = AnimElem = 1 && (var(14) <= 0) ; Throw Limiter
trigger1 = P2StateNo != [130,132]
trigger1 = P2StateNo != 140 && P2StateNo != [150,155]
trigger3 = p2stateno != [40,52]
attr = S, ST
hitflag = M
priority = 4, Dodge
sparkno = -1         
sprpriority = 1
p2facing = 1
p1stateno = 901
p2stateno = 910
numhits = 0
ID = 900
guard.dist = 50
getpower = 121,121
givepower = 21,0

[State 900, Grab Miss]
type = ChangeState
trigger1 = !Animtime
value = 0
ctrl = 1

;-------------------------------------------
; Super Argentina BackBreaker - Grab Success
;-------------------------------------------

[Statedef 901]
type    = S
physics = S
movetype= A
anim = 901
ctrl = 0
velset = 0,0

[State 211, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 901, Width]
type = Width
trigger1 = 1
edge = 55,0

[State 901, TBind 1]
type = TargetBind
trigger1 = AnimElem = 1, >=0
trigger1 = AnimElem = 2, < 0
pos = 27,0

[State 901, TBind 2]
type = TargetBind
trigger1 = AnimElem = 2, >=0
trigger1 = AnimElem = 3, < 0
pos = 35,0

[State 901, TBind 3]
type = TargetBind
trigger1 = AnimElem = 3, >=0
trigger1 = AnimElem = 4, < 0
pos = 30,0

[State 901, TBind 4]
type = TargetBind
trigger1 = AnimElem = 4,>=0
trigger1 = AnimElem = 5,< 0
pos = 37,-87

[State 901, TBind 5]
type = TargetBind
trigger1 = AnimElem = 5,>=0
trigger1 = AnimElem = 6,< 0
pos = 21,-113

[State 901, TBind 6]
type = TargetBind
trigger1 = time = 34
pos = 9,-167

[State 901, Reception]
type = Hitdef
trigger1 = animelem = 8
attr = S, ST
hitflag = A
priority = 7,Hit
sparkno = -1
sprpriority = 2
p2facing = 1
p1stateno = 902
p2stateno = 912
p2getp1state = 1
ID = 901
ChainID = 900
numhits = 0

[State 901, Clark SND]
type = Playsnd
trigger1 = Animelem = 2, =1
value = 0,9
channel = 0

[State 901, Grab SND]
type = Playsnd
trigger1 = Animelem = 3, =1
value = 1,9
channel = 1

[State 901, Wind SND]
type = Playsnd
trigger1 = Animelem = 5, =1
trigger1 = Random <= 800
value = 1,10
channel = 1

[State 901, End]
type = ChangeState
trigger1 = !Animtime
value = 0
ctrl = 0

[State 901, Special Throw Spark]
type = Explod
trigger1 = animelem = 3
anim = 7020
pos = 45,-52
postype = p1
bindtime = 1
ontop = 0
sprpriority = 1
ownpal = 1

;---------------------------------------------------------------------
; Super Argentina BackBreaker succeed - Clark is backbreaking opponent
;---------------------------------------------------------------------

[Statedef 902]
type    = S
physics = S
movetype= A
anim = 902
ctrl = 0
velset = 0,0

[State 902, SPRPRIORITY]
type = sprpriority
trigger1 = 1
value = 1

[State 902, TBind 1]
type = TargetBind
trigger1 = animelem = 1, >=0
trigger1 = animelem = 2, < 0
pos = 0,-85 ; 7,-85

[State 902, TBind 2]
type = TargetBind
trigger1 = animelem = 2
pos = 0,-97 ; 7, -100

[State 902, Screen Shaking]
type = Envshake
trigger1 = !time
time = 20
freq = 70
ampl = -4

[State 902, Width]
type = Width
trigger1 = !time
edge = 0,20

[State 902, Goto Next State]
type = ChangeState
trigger1 = !Animtime
value = 903

[State 902, Special Move Spark]
type = Explod
trigger1 = !time
anim = 7025
pos = 0,-85
postype = p1
bindtime = 1
ontop = 1
ownpal = 1

[State 902, Ground Wave]
type = Explod
trigger1 = !time
anim = 7030
pos = 2,5
postype = p1
bindtime = 1
ontop = 0
ownpal = 1

[State 902, Bone Crush SND]
type = Playsnd
trigger1 = AnimElem = 1, =1
value = 1,11
volume = -50

[State 902, Land SND]
type = Playsnd
trigger1 = AnimElem = 1, =3
value = 1,12
volume = -50

;---------------------------------------------------------------
; Super Argentina BackBreaker - Clark throws enemy to the ground
;---------------------------------------------------------------

[Statedef 903]
type    = S
physics = S
movetype= A
anim = 903
ctrl = 0
velset = 0,0

[State 903, Auto Turn]
type = turn
trigger1 = !time

[State 903, SPRPRIORITY]
type = sprpriority
trigger1 = 1
value = 1

[State 903, TBind 1]
type = TargetBind
trigger1 = AnimElem = 1, >= 0
trigger1 = AnimElem = 2, < 0
pos = 10,-113

[State 903, TBind 2]
type = TargetBind
trigger1 = AnimElem = 2, >= 0
trigger1 = AnimElem = 3, < 0
pos = 21,-81

[State 903, TBind 3]
type = TargetBind
trigger1 = time = 14
pos = 73,-9

[State 903, Shake It Baby]; Screen Shaking
type = Envshake
trigger1 = p2stateno = 914
time = 25
ampl = -2
freq = 30
persistent = 0

[State 903, Width]
type = Width
trigger1 = !time
edge = 30,0

[State 903, Finished]
type = ChangeState
trigger1 = !Animtime
value = 0
ctrl = 1

[State 903, CommandCheck] ; Flash Elbow Followup Activation
type = Varset
trigger1 = command = "felbow"
trigger1 = time = [8,39]
trigger2 = command = "ifelbow"
trigger2 = time = [8,39]
var(7) = 1

[State 903, ChangeState]
type = ChangeState
trigger1 = var(7) = 1
trigger1 = time >= 19
value = 950

[State 903, Ouia SND];"Ouia !"
type = Playsnd
trigger1 = AnimElem = 2, =1
value = 0,10
channel = 0

[State 903, Drop SND];Drop Sound
type = Playsnd
trigger1 = p2stateno = 914
value = 1,12
channel = 1
volume = -50
persistent = 0

[State 903, Drop SND 2]; Drop Sound 2
type = Playsnd
trigger1 = p2stateno = 915
value = 1,19
channel = 1
volume = -50
persistent = 0

[State 903, Explod];Strong Ground Wave - Background
type = Explod
trigger1 = time = 17
anim = 7035
pos = 0,5
postype = p2
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = -1

[State 903, Explod 2];Strong Ground Wave - Foreground
type = Explod
trigger1 = time = 17
anim = 7036
pos = 0,5
postype = p2
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = 3

;-----------------------------------------------------------
; Enemy thrown by Super Argentina BackBreaker - fly upwards
;-----------------------------------------------------------

[Statedef 910]
type    = A
physics = N
movetype= H
ctrl = 0
velset = 0,0

[State 910, Camera]
type = ScreenBound
trigger1 = time >=0
value = 1

[State 910, Fly Upwards]
type = Changeanim2
trigger1 = !time
value = 910

[State 910, Velocity]
type = Velset
trigger1 = time = [28,57] ;[0,57]
y = -12

[State 910, Gravity]
type = VelAdd
trigger1 = 1
y = 0.55

[State 910, Stop]
type = Velset
trigger1 = time = 63
y = 0

[State 810, 3]
type = sprpriority
trigger1 = time >= 28
value = 2

[State 910, 4]
type = Nothitby
trigger1 = 1
value = SCA

[State 910, 6]
type = Width
trigger1 = 1
value = -30,-30

[State 910, Goto next state]
type = ChangeState
trigger1 = time = 64
value = 911

;-----------------------------------------------------------
; Enemy thrown by Super Argentina BackBreaker - coming down
;-----------------------------------------------------------


[Statedef 911]
type    = A
physics = A
movetype= H
ctrl = 0

[State 910, Camera]
type = ScreenBound
trigger1 = time >=0
value = 1

[State 911, Please come back]
type = Velset
trigger1 = 1
y = 12

[State 911, 2]
type = sprpriority
trigger1 = time >= 0
value = 1

[State 911, HITBY] ; So Clark can continue the grab
type = Hitby
trigger1 = 1
value = S, ST

[State 811, WIDTH]
type = Width
trigger1 = 1
value = -30,-30

;-------------------------------------------------------------------
; Enemy thrown by Super Argentina BackBreaker - Currently backbreak
;-------------------------------------------------------------------

[Statedef 912]
type    = A
physics = N
movetype= H
ctrl = 0

[State 912, Camera]
type = ScreenBound
trigger1 = time >=0
value = 1

[State 912, In my arms please]
type = Changeanim2
trigger1 = !time
value = 912

[State 912, SPRPRIORITY]
type = sprpriority
trigger1 = 1
value = 2

[State 912, Backbreak damage]
type = lifeadd
trigger1 = !time
value = -(98 + (24*(enemy,var(21)>0)))
kill = 0

[State 912, WIDTH]
type = Width
trigger1 = 1
value = -30,-30

[State 912, Goto next state]
type = ChangeState
trigger1 = !Animtime
value = 913

;----------------------------------------------------------------------
; Enemy thrown by Super Argentina BackBreaker - Being thrown on ground
;----------------------------------------------------------------------

[Statedef 913]
type    = A
physics = N
movetype= H
ctrl = 0

[State 913, Camera]
type = ScreenBound
trigger1 = time >=0
value = 1

[State 913, Veladd]
type = VelAdd
trigger1 = time >= 9
x = 3 ;1.5
y = 3

[State 913, Get down !]
type = Changeanim2
trigger1 = !time
value = 913

[State 913, SPRPRIORITY]
type = sprpriority
trigger1 = 1
value = 2

[State 913, SCREENBOUND]
type = ScreenBound
trigger1 = 1
value = 1

[State 913, WIDTH]
type = Width
trigger1 = 1
value = -30,-30

[State 913, Goto next]
type = ChangeState
trigger1 = time > 9
trigger1 = vel y > 0 
trigger1 = pos y >= -ceil(vel y)
value = 914

;--------------------------------------------------------------------
; Enemy thrown by Super Argentina BackBreaker - bouncing from ground
;--------------------------------------------------------------------

[Statedef 914]
type    = L
physics = N
movetype= H
ctrl = 0
velset = 2,-3.5

[State 914, Boing !]
type = Changeanim2
trigger1 = !time
value = 914

[State 914, Some VELADD]
type = Veladd
trigger1 = time > 0
y = .5 

[State 914, POSSET]
type = posset
trigger1 = !time
y = 0

[State 914, TURN] 
type = turn
trigger1 = !time

[State 914, Land damage]
type = lifeadd
trigger1 = !time
value = -(88 + (24*(enemy,var(21)>0)))

[State 914, Continue]
type = ChangeState
trigger1 = time > 11
trigger1 = vel y > 0 
trigger1 = pos y >= -ceil(vel y) 
value = 915

;-------------------------------------------------------
; Enemy Thrown by Super Argentina BackBreaker - LieDown
;-------------------------------------------------------

[Statedef 915]
type    = L
physics = N
movetype= H
ctrl = 0
velset = 0,0

[State 915, Keep lying]
type = Changeanim2
trigger1 = !time
value = 915

[State 915, POSSET]
type = posset
trigger1 = !time
y = 0

[State 915, If p2 is dead]
type = SelfState
triggerall = !alive
trigger1 = p2stateno = 803
trigger1 = !time
trigger2 = Time = 17
value = 5150

[State 915, if p2 is still alive]
type = SelfState
triggerall = alive
trigger1 = Time = 17
value = 5120

;--------------------------------------------------------------------------------------------------------------------------
; Frankensteiner
;
; There are 2 special binds using the "BindToTarget" SCtrl. Because those 2 binds aim opponent's head, they may give 
; strange results if opponent doesn't have the right head.pos coordinates in his constants. Be advised that this is not 
; an error coming from Clark. 
;--------------------------------------------------------------------------------------------------------------------------

;-----------------------
; Frankensteiner - Light
;-----------------------

[Statedef 999]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 999

[State 999, Cancel Blink] ; Neowave Super Cancel Style
type = PalFX
trigger1 = (prevstateno = 1500) && (time = 0)
trigger2 = (prevstateno = 2001) && (time = 0)
add = 60,60,60
sinadd = 100,100,100,4
time = 20
ignorehitpause = 1

[State 900, PowerLoss] ; Neowave Super Cancel Style
type = PowerAdd
trigger1 = prevstateno = 1500
trigger2 = prevstateno = 2001
value = -1000
persistent = 0
ignorehitpause = 1

[State 999, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 999, No Guard]
type = AssertSpecial
trigger1 = 1
flag = nostandguard
flag2 = nocrouchguard

[State 999, Grab Attempt]
type = HitDef
trigger1 = AnimElem = 3, =3
trigger1 = var(14) <= 0 ; Throw Limiter
trigger1 = P2StateNo != [130,132]
trigger1 = P2StateNo != 140 && P2StateNo != [150,155]
trigger1 = p2stateno != [40,52]
attr = S, ST
hitflag = M
priority = 4, Dodge
sparkno = -1         
sprpriority = 1
p2facing = 1
p1stateno = 1001
p2stateno = 1010
ground.velocity = 4,-3
fall = 1
fall.recover = 0
fall.xvelocity = 3.5
fall.yvelocity = -3.6
numhits = 0
getpower = 121,121
givepower = 21,0

[State 999, Invincibility]
type = NotHitBy
trigger1 = time = [0,16]
value = SCA,NA,SA,HA,AP

[State 999, can be thrown]
type = HitBy
trigger1 = time = [0,16]
value = S, AT

[State 999, Normal Hit Return]
type = HitBy
trigger1 = time >=17
value = SCA,AA,AT,AP

[State 999, Clark Voice]
type = Playsnd
trigger1 = Animelem = 1, =2
value = 0,11
channel = 0

[State 999, Grab Miss]
type = ChangeState
trigger1 = !Animtime
value = 0
ctrl = 1

;------------------------
; Frankensteiner - Strong
;------------------------

;-------------
; Grab Attempt
;-------------

[Statedef 1000]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 1000

[State 1000, Cancel Blink] ; Neowave Super Cancel Style
type = PalFX
trigger1 = (prevstateno = 1500) && (time = 0)
trigger2 = (prevstateno = 2001) && (time = 0)
add = 60,60,60
sinadd = 100,100,100,4
time = 20
ignorehitpause = 1

[State 900, PowerLoss] ; Neowave Super Cancel Style
type = PowerAdd
trigger1 = prevstateno = 1500
trigger2 = prevstateno = 2001
value = -1000
persistent = 0
ignorehitpause = 1

[State 1000, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 1000, No Guard]
type = AssertSpecial
trigger1 = time >= 0
flag = nostandguard
flag2 = nocrouchguard

[State 1000, Grab Attempt]
type = HitDef
trigger1 = AnimElem = 3, =3
trigger1 = var(14) <= 0 ; Throw Limiter
trigger1 = P2StateNo != [130,132]
trigger1 = P2StateNo != 140 && P2StateNo != [150,155]
trigger1 = p2stateno != [40,52]
attr = S, ST
hitflag = M
priority = 5, Dodge
sparkno = -1         
sprpriority = 1
p2facing = 1
p1stateno = 1001
p2stateno = 1010
ground.velocity = 4,-3
fall = 1
fall.recover = 0
fall.xvelocity = 3.5
fall.yvelocity = -3.6
numhits = 0
getpower = 121,121
givepower = 21,0

[State 1000, Invincibility]
type = NotHitBy
trigger1 = time = [0,16]
value = SCA,NA,SA,HA,AP

[State 1000, Can Be Thrown]
type = HitBy
trigger1 = time = [0,16]
value = S, AT

[State 1000, Normal Hit Return]
type = HitBy
trigger1 = time >=17
value = SCA,AA,AT,AP

[State 1000, Clark Voice]
type = Playsnd
trigger1 = Animelem = 1, =2
value = 0,11
channel = 0

[State 1000, Grab Miss]
type = ChangeState
trigger1 = !Animtime
value = 0
ctrl = 1

;------------------------------
; Frankensteiner - Grab Success
;------------------------------

[Statedef 1001]
type    = S
physics = S
movetype= A
anim = 1001
ctrl = 0
velset = 0,0

[State 211, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 1001, WIDTH]
type = Width
trigger1 = time <= 46
edge = 50,70

[State 1001, BindToT 1]
type = BindToTarget
trigger1 = AnimElem = 1, >=0
trigger1 = AnimElem = 2, < 0
pos = 22,65,head

[State 1001, BindToT 2]
type = BindToTarget
trigger1 = AnimElem = 2, >=0
trigger1 = AnimElem = 5, < 0
pos = 25,65,head

[State 1001, TBind 1]
type = Targetbind
trigger1 = AnimElem = 5, >=0
trigger1 = AnimElem = 6, < 0
pos = -25,-85

[State 1001, TBind 2]
type = Targetbind
trigger1 = AnimElem = 6, >=0
trigger1 = AnimElem = 7, < 0
pos = -35,-85

[State 1001, TBind 3]
type = Targetbind
trigger1 = AnimElem = 7, >=0
trigger1 = AnimElem = 8, < 0
pos = -68,-10

[State 1001, TBind 3]
type = Targetbind
trigger1 = time = 45
pos = -68,10
time = 1

[State 1001, Position]
type = PosAdd
trigger1 = AnimElem = 8
x = - 25

[State 1001, Floor PosSet]
type = Posset
trigger1 = time = 26
y = 0

[State 1001, Auto Turn]
type = turn
trigger1 = !Animtime
value = 1

[State 1001, Fix Camera]
type = ScreenBound
trigger1 = time <= 34
value = 1

[State 1001, Explod 1] ; Special Grab Spark
type = Explod
trigger1 = animelem = 2
anim = 7020
pos = 22,-54
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = 1

[State 1001, Explod 2] ; Strong Ground Wave - Background
type = Explod
trigger1 = time = 34
anim = 7035
pos = 0,5
postype = p2
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = -1

[State 1001, Explod 3]; Strong Ground Wave - Foreground
type = Explod
trigger1 = time = 34
anim = 7036
pos = 0,5
postype = p2
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = 3

[State 1001, Shake It Baby]
type = Envshake
trigger1 = AnimElem = 7
time = 20
freq = 70
ampl = ifelse(var(20)=1,-8,-4)

[State 1001, CommandCheck]
type = Varset
trigger1 = time = [30,55]
trigger1 = command = "felbow"
trigger2 = time = [30,55]
trigger2 = command = "ifelbow"
var(7) = 3

[State 1001, Goto Elbow]
type = ChangeState
triggerall = var(7) = 3
trigger1 = time >= 46
value = 950

[State 1001, SND 1]
type = Playsnd
trigger1 = Animelem = 10, =2
value = 0,12
channel = 0

[State 1001, SND 2]
type = Playsnd
trigger1 = Animelem = 5, =1
value = 1,15
channel = 1

[State 1001, SND 3]
type = Playsnd
trigger1 = Animelem = 7
value = 1,12
channel = 1

[State 1001, SND 4]
type = Playsnd
trigger1 = Animelem = 1
value = 1,9
channel = 1

[State 1001, End]
type = ChangeState
trigger1 = !Animtime
value = 0
ctrl = 1

;----------------------------------
; Opponent Thrown By Frankensteiner
;----------------------------------

[Statedef 1010]
type    = A
physics = N
movetype= H
ctrl = 0
velset = 0,0

[State 1010, ChangeAnim]
type = Changeanim2
trigger1 = !time
value = 1010

[State 1010, Slam damage]
type = Lifeadd
trigger1 = time = 35
value = -(176 + (42*(enemy,var(21)>0)))

[State 1010, ChangeState]
type = ChangeState
trigger1 = !Animtime
value = 5530

;---------------------------------------------------
; Overriding for Linux / Windows MUGEN compatibility
;---------------------------------------------------
;5030 -> 5530
;5035 -> 5535
;5040 -> 5540
;5050 -> 5550
;5100 -> 5600

;---------------------------------------------------------------------------
; HITA_UP (initial going up)
[Statedef 5530]
type    = A
movetype= H
physics = N
ctrl = 0

[State 5530, 1]
type = VelAdd;Gravity
trigger1 = 1
y = GetHitVar(yaccel)

[State 5530, 2]
type = HitVelSet
trigger1 = !time
x = 1
y = 1

[State 5530, 3]
type = ChangeState
triggerall = !HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0    ;Hit ground
trigger2 = Pos Y >= 10  ;.
value = 5540 ;HITA_RECOV

[State 5530, 4]
type = ChangeState
triggerall = HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0    ;Hit ground
trigger2 = Pos Y >= 10  ;.
value = 5550 ;HITA_FALL

[State 5530, 5]
type = ChangeState
trigger1 = !Animtime
value = 5535 ;HITA_UP (transition)


;---------------------------------------------------------------------------


; HITA_UP_T (transition)
[Statedef 5535]
type    = A
movetype= H
physics = N

[State 5535, 1]
type = ChangeAnim
trigger1 = !time
trigger1 = SelfAnimExist(5035)
trigger1 = Anim != [5051,5059] ;Not if in hit up anim
trigger1 = Anim != 5090 ;Not if hit off ground anim
value = 5535

[State 5535, 2]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5535, 3]
type = ChangeState
triggerall = !HitFall
trigger1 = HitOver  ;Hit is over
trigger2 = !Animtime ;Animation over
trigger3 = Vel Y > 0    ;Hit ground
trigger3 = Pos Y >= 10  ;.
trigger4 = !time     ;No transition anim
trigger4 = Anim != 5035 ;.
value = 5540 ;HITA_RECOV

[State 5535, 4]
type = ChangeState
triggerall = HitFall
trigger1 = HitOver  ;Hit is over
trigger2 = !Animtime ;Anim is over
trigger3 = Vel Y > 0    ;Hit ground
trigger3 = Pos Y >= 10  ;.
trigger4 = !time     ;No transition anim
trigger4 = Anim != 5035 ;.
value = 5550 ;HITA_FALL


;---------------------------------------------------------------------------
; HITA_RECOV (recovering in air, not falling)
[Statedef 5540]
type    = A
movetype= H
physics = N

[State 5540, 1]
type = ChangeState
trigger1 = !Alive
value = 5550

[State 5540, 2]
type = ChangeAnim
trigger1 = !Animtime
trigger1 = Anim != 5040
trigger2 = !time
trigger2 = Anim != 5035
value = 5040

[State 5540, 3]
type = CtrlSet
trigger1 = HitOver
value = 1

[State 5540, 4]
type = StateTypeSet
trigger1 = HitOver
movetype = I

[State 5540, 5]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5540, 6]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 52 ;JUMPLAND

;---------------------------------------------------------------------------
; HITA_FALL (knocked up, falling)
[Statedef 5550]
type    = A
movetype= H
physics = N

[State 5550, 1] ;Change anim when done with transition
type = ChangeAnim
trigger1 = !Animtime
trigger1 = Anim = 5035
trigger2 = !time     ;If no transition anim
trigger2 = Anim != 5035
trigger2 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2 = Anim != 5090 ;Not if hit off ground anim
value = 5050

[State 5550, 2] ;Coming down anim
type = ChangeAnim
trigger1 = anim = [5050,5059]
trigger1 = Vel Y >= ifelse(anim = 5050, 1, -2)
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0

[State 5550, 3] ;Gravity
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5550, 4] ;Recover near ground
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 5550, 5]; Recover in mid air
type = ChangeState
triggerall = Vel Y > -1
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;HITFALL_AIRRECOVER

[State 5550, 6]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, 25)
value = 5600 ;HIT_BOUNCE


;---------------------------------------------------------------------------
; HIT_BOUNCE (hit ground)
[Statedef 5600]
type    = L
movetype= H
physics = N

[State 5600, 1]
type = VelSet
trigger1 = !time
trigger1 = GetHitVar(fall.yvel) = 0
trigger1 = vel x > 1
x = 1

[State 5600, EnvShake]
type = FallEnvShake
trigger1 = !time

[State 5600, Var] ;Save fall velocity
type = VarSet
trigger1 = !time
sysvar(1) = floor(vel y)

[State 5600, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = !time
trigger1 = (anim != [5051,5059]) && (anim != [5061,5069])
trigger2 = !SelfAnimExist(5100 + (anim % 10))
value = 5100

[State 5600, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
trigger1 = !time
trigger1 = (anim = [5051,5059]) || (anim = [5061,5069])
trigger1 = SelfAnimExist(5100 + (anim % 10))
value = 5100 + (anim % 10)

[State 5600, 4]
type = PosSet
trigger1 = !time
y = 0

[State 5600, 5]
type = VelSet
trigger1 = !time
y = 0

[State 5600, 6] ;Reduce speed
type = VelMul
trigger1 = !time
x = 0.75

[State 5600, 7]
type = ChangeState
trigger1 = !time
trigger1 = GetHitVar(fall.yvel) = 0
value = 5110 ;HIT_LIEDOWN

[State 5600, 8]
type = GameMakeAnim
trigger1 = Time = 1
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 14

[State 5600, 9]
type = HitFallDamage
trigger1 = Time = 3

[State 5600, 10]
type = PlaySnd
trigger1 = Time = 1
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 5600, 11]
type = PosFreeze
trigger1 = 1

[State 5600, 12]
type = ChangeState
trigger1 = !Animtime
value = 5601

[State 5600, 13]
type = ForceFeedback
trigger1 = !time
waveform = sinesquare
ampl = 128,-3,-.2,.005
time = 20


;---------------------------------------------------------------------------
; HIT_BOUNCE (bounce into air)
[Statedef 5601]
type    = L
movetype= H
physics = N

[State 5601, 1] ;Coming hit ground anim (normal)
type = ChangeAnim
triggerall = !time
trigger1 = anim != [5101,5109]
trigger2 = !SelfAnimExist(5160 + (anim % 10))
value = 5160

[State 5601, 2] ;Coming hit ground anim (for hit up)
type = ChangeAnim
triggerall = !time
trigger1 = anim = [5101,5109]
trigger1 = SelfAnimExist(5160 + (anim % 10))
value = 5160 + (anim % 10)

[State 5601, 3]
type = HitFallVel
trigger1 = !time

[State 5601, 4]
type = PosSet
trigger1 = !time
y = 20

[State 5601, 5] ;Acceleration
type = VelAdd
trigger1 = 1
y = .4

[State 5601, 6] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 12
type = ChangeState
value = 5610


;---------------------------------------------------------------------------
; HIT_LIEDOWN
[Statedef 5610]
type    = L
movetype= H
physics = N

[State 5610, EnvShake]
type = FallEnvShake
trigger1 = !time

[State 5610, 1] ;For hit up/up-diag type (from state 5081)
type = ChangeAnim
persistent = 0
trigger1 = SelfAnimExist(5110 + (anim % 10))
trigger1 = anim = [5081,5089]
value = 5110 + (anim % 10)

[State 5610, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = !time
triggerall = anim != [5110,5119] ;Not already changed anim
trigger1 = anim != [5161,5169]
trigger2 = !SelfAnimExist(5170 + (anim % 10))
value = 5170

[State 5610, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
triggerall = !time
triggerall = anim != [5110,5119] ;Not already changed anim
trigger1 = anim = [5161,5169]
trigger1 = SelfAnimExist(5170 + (anim % 10))
value = 5170 + (anim % 10)

[State 5610, 4]
type = HitFallDamage
trigger1 = !time

[State 5610, 5]
type = PosSet
trigger1 = !time
y = 0

[State 5610, Var] ;Get fall velocity
type = VarSet
trigger1 = !time
trigger1 = GetHitVar(fall.yvel) != 0
sysvar(1) = floor(vel y)

[State 5610, 6]
type = PlaySnd
trigger1 = !time
trigger1 = !SysVar(0)
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 5610, 7]
type = GameMakeAnim
trigger1 = !time
trigger1 = !SysVar(0)
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 14

[State 5610, 8]
type = VelSet
trigger1 = !time
y = 0

[State 5610, 9] ;For hit up type
type = ChangeAnim
persistent = 0
triggerall = anim = [5171,5179]
triggerall = SelfAnimExist(5110 + (anim % 10))
trigger1 = !Animtime
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground anim
value = 5110 + (anim % 10)

[State 5610, 10] ;For normal
type = ChangeAnim
persistent = 0
triggerall = Anim != [5111,5119]
trigger1 = !Animtime
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
value = 5110

[State 5610, 11] ;If just died
type = ChangeState
triggerall = !alive
trigger1 = !Animtime
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
trigger3 = Anim = [5110,5119]
value = 5150

[State 5610, 12]
type = VarSet
trigger1 = SysVar(0)
trigger1 = !time
sysvar(0) = 0

[State 5610, 13] ;Friction
type = VelMul
trigger1 = 1
x = 0.85

[State 5610, 14]
type = ForceFeedback
trigger1 = alive
trigger1 = !time
time = 8
ampl = 240
waveform = sine

[State 5610, 15]
type = ForceFeedback
trigger1 = !alive
trigger1 = !time
ampl = 200, 7, -.467
time = 30
waveform = sine

[State 5610, 16]
type = SelfState
triggerall = alive
trigger1 = time >= 40
;trigger2 = Anim = [5110,5119]
value = 5120

;--------------------------------------------------------------------------------------------------------------------------
; Napalm Stretch
;--------------------------------------------------------------------------------------------------------------------------

;-------------
; Grab Attempt
;-------------

[Statedef 1050]
type    = A
physics = N
movetype= A
anim = 1050
ctrl = 0
velset = 0,0
;facep2 = 1
juggle = 4

[State 1050, Guard] ; No Guard In Air
type = AssertSpecial
trigger1 = 1
flag = noairguard 

[State 211, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 1050, Camera]
type = ScreenBound
trigger1 = time >=0
value = 1

[State 1050, Wind SND]
type = Playsnd
trigger1 = Animelem = 2
value = 1,4

[State 1050, GRAB]
type = Hitdef
trigger1 = animelem = 5
attr = A, ST
hitflag = AF
priority = 4, Miss
sparkno = -1
sprpriority = 2
p2facing = 1
p1stateno = 1052
p2stateno = 1060
air.velocity = -4,-3
ground.velocity = 4,-3
fall = 1
fall.xvelocity = -3.5
fall.yvelocity = -3.6
fall.recover = 0
getpower = 121,121
givepower = 21,0

[State 1050, PosAdd]
type = PosAdd
trigger1 = time = 7
x = 0
y = -18

[State 1050, PosAdd]
type = PosAdd
trigger1 = time = 8
x = 3
y = -9

[State 1050, PosAdd]
type = PosAdd
trigger1 = time = 9
x = 2
y = -9

[State 1050, PosAdd]
type = PosAdd
trigger1 = time = 10
x = 2
y = -8

[State 1050, PosAdd]
type = PosAdd
trigger1 = time = 11
x = 2
y = -7

[State 1050, PosAdd]
type = PosAdd
trigger1 = time = 12
x = 3
y = -7

[State 1050, PosAdd]
type = PosAdd
trigger1 = time = 13
x = 2
y = -7

[State 1050, PosAdd]
type = PosAdd
trigger1 = time = 14
x = 3
y = -6

[State 1050, PosAdd]
type = PosAdd
trigger1 = time = 15
x = 2
y = -5

[State 1050, PosAdd]
type = PosAdd
trigger1 = time = 16
x = 2
y = -5

[State 1050, PosAdd]
type = PosAdd
trigger1 = time = 17
x = 2
y = -5

[State 1050, PosAdd]
type = PosAdd
trigger1 = time = 18
x = 3
y = -4

[State 1050, PosAdd]
type = PosAdd
trigger1 = time = 19
x = 2
y = -3

[State 1050, PosAdd]
type = PosAdd
trigger1 = time = 20
x = 3
y = -3

[State 1050, PosAdd]
type = PosAdd
trigger1 = time = 21
x = 2
y = -3

[State 1050, PosAdd]
type = PosAdd
trigger1 = time = 22
x = 3
y = -2

[State 1050, PosAdd]
type = PosAdd
trigger1 = time = 23
x = 2
y = -1

[State 1050, PosAdd]
type = PosAdd
trigger1 = time = 24
x = 3
y = -1

[State 1050, PosAdd]
type = PosAdd
trigger1 = time = 25 ; Maximum Y Position
x = 2
y = -1

[State 1050, PosAdd]
type = PosAdd
trigger1 = time = 26
x = 5
y = 1

[State 1050, PosAdd]
type = PosAdd
trigger1 = time = 27
x = 3
y = 1

[State 1050, PosAdd]
type = PosAdd
trigger1 = time = 28
x = 2
y = 1

[State 1050, PosAdd]
type = PosAdd
trigger1 = time = 29
x = 2
y = 2

[State 1050, PosAdd]
type = PosAdd
trigger1 = time = 30
x = 2
y = 3

[State 1050, PosAdd]
type = PosAdd
trigger1 = time = 31
x = 3
y = 3

[State 1050, PosAdd]
type = PosAdd
trigger1 = time = 32
x = 2
y = 3

[State 1050, PosAdd]
type = PosAdd
trigger1 = time = 33
x = 3
y = 4

[State 1050, PosAdd]
type = PosAdd
trigger1 = time = 34
x = 2
y = 5

[State 1050, PosAdd]
type = PosAdd
trigger1 = time = 35
x = 3
y = 5

[State 1050, PosAdd]
type = PosAdd
trigger1 = time = 36
x = 3
y = 6

[State 1050, PosAdd]
type = PosAdd
trigger1 = time = 37
x = 2
y = 7

[State 1050, PosAdd]
type = PosAdd
trigger1 = time = 38
x = 3
y = 7

[State 1050, PosAdd]
type = PosAdd
trigger1 = time = 39
x = 2
y = 7

[State 1050, PosAdd]
type = PosAdd
trigger1 = time = 40
x = 3
y = 8

[State 1050, PosAdd]
type = PosAdd
trigger1 = time = 41
x = 2
y = 9

[State 1050, PosAdd]
type = PosAdd
trigger1 = time = 42
x = 3
y = 9

[State 1050, PosAdd]
type = PosAdd
trigger1 = time >= 43
x = 2
y = 9

[State 1050, ChangeState]
type = ChangeState
trigger1 = time > 10
trigger1 = Pos y >= 0
value = 1051

;-------------------------------
; Napalm Stretch - Clark Landing
;-------------------------------

[Statedef 1051]
type    = S
physics = S
movetype= I
anim = 1051
ctrl = 0
velset = 0,0

[State 1051, Land Sound]
type = PlaySnd
trigger1 = Time = 1
value = 1,5

[State 1051, Floor PosSet]
type = PosSet
trigger1 = !time
y = 0

[State 1051, End]
type = ChangeState
trigger1 = !Animtime
value = 0
ctrl = 1

;------------------------------
; Napalm Stretch - Grab Success
;------------------------------

[Statedef 1052]
type    = A
physics = N
movetype= A
anim = 1052
ctrl = 0

[State 211, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 1052, Elbow Limiter]
type = VarSet
trigger1 = FrontEdgeBodyDist < 50
v = 12
value = 1

[State 1052, WIDTH]
type = Width
trigger1 = 1
edge = 45,45

[State 1052, 2] ; Special Move Spark
type = Explod
trigger1 = !time
anim = 7025
pos = 10,-83
postype = p1
bindtime = 1
ontop = 1
ownpal = 1

[State 1052, TBind 1]
type = TargetBind
trigger1 = AnimElem = 1, >=0
trigger1 = AnimElem = 2, < 0
pos = 10,-68

[State 1052, TBind 2]
type = TargetBind
trigger1 = AnimElem = 2, >=0
trigger1 = AnimElem = 3, < 0
pos = -6,-80

[State 1052, TBind 3]
type = TargetBind
trigger1 = AnimElem = 3, >=0
trigger1 = AnimElem = 4, < 0
pos = -14,-59

[State 1052, TBind 4]
type = TargetBind
trigger1 = AnimElem = 4
pos = 3,-54
time = 5

[State 1052, Stretch SND] ; "Napalm Stretch !"
type = Playsnd
trigger1 = !time
value = 0,14
channel = 0

[State 1052, Grab SND]
type = Playsnd
trigger1 = !time
value = 1,9
channel = 1

[State 1052, PosAdd]
type = PosAdd
trigger1 = !time
x = 3
y = -4

[State 1052, PosAdd]
type = PosAdd
trigger1 = time = 1
x = 2
y = -3

[State 1052, PosAdd]
type = PosAdd
trigger1 = time = 2
x = 3
y = -4

[State 1052, PosAdd]
type = PosAdd
trigger1 = time = 3
x = 2
y = -4

[State 1052, PosAdd]
type = PosAdd
trigger1 = time = 4
x = 3
y = -3

[State 1052, PosAdd]
type = PosAdd
trigger1 = time = 5
x = 2
y = -3

[State 1052, PosAdd]
type = PosAdd
trigger1 = time = 6
x = 3
y = -3

[State 1052, PosAdd]
type = PosAdd
trigger1 = time = 7
x = 2
y = -2

[State 1052, PosAdd]
type = PosAdd
trigger1 = time = 8
x = 3
y = -1

[State 1052, PosAdd]
type = PosAdd
trigger1 = time = 9
x = 2
y = -1

[State 1052, PosAdd]
type = PosAdd
trigger1 = time = 10
x = 3
y = -1

[State 1052, PosAdd]
type = PosAdd
trigger1 = time = 11
x = 2
y = 0

[State 1052, PosAdd]
type = PosAdd
trigger1 = time = 12
x = 3
y = 1

[State 1052, PosAdd]
type = PosAdd
trigger1 = time = 13
x = 2
y = 1

[State 1052, PosAdd]
type = PosAdd
trigger1 = time = 14
x = 3
y = 1

[State 1052, PosAdd]
type = PosAdd
trigger1 = time = 15
x = 2
y = 2

[State 1052, PosAdd]
type = PosAdd
trigger1 = time = 16
x = 3
y = 3

[State 1052, PosAdd]
type = PosAdd
trigger1 = time = 17
x = 2
y = 3

[State 1052, PosAdd]
type = PosAdd
trigger1 = time = 18
x = 3
y = 3

[State 1052, PosAdd]
type = PosAdd
trigger1 = time = 19
x = 5
y = 3

[State 1052, PosAdd]
type = PosAdd
trigger1 = time = 20
x = 2
y = 3

[State 1052, PosAdd]
type = PosAdd
trigger1 = time = 21
x = 3
y = 4

[State 1052, PosAdd]
type = PosAdd
trigger1 = time = 22
x = 2
y = 5

[State 1052, PosAdd]
type = PosAdd
trigger1 = time = 23
x = 3
y = 5

[State 1052, PosAdd]
type = PosAdd
trigger1 = time = 24
x = 2
y = 5

[State 1052, PosAdd]
type = PosAdd
trigger1 = time = 25
x = 3
y = 5

[State 1052, PosAdd]
type = PosAdd
trigger1 = time = 26
x = 2
y = 6

[State 1052, PosAdd]
type = PosAdd
trigger1 = time = 27
x = 3
y = 7

[State 1052, PosAdd]
type = PosAdd
trigger1 = time = 28
x = 2
y = 6

[State 1052, PosAdd]
type = PosAdd
trigger1 = time >= 29
x = 3
y = 7

[State 1052, Knee Press]
type = ChangeState
trigger1 = pos y >= -ceil(vel y) 
value = 1053

[State 1052, Roll]
type = ChangeState
trigger1 = pos y >= -ceil(vel y) 
value = 1054

[State 1052, Flash Elbow]
type = varset
trigger1 = command = "felbow"
trigger1 = time >= 8
trigger2 = command = "ifelbow"
trigger2 = time >= 8
var(7) = 1

;---------------------------------------
; Napalm Stretch - Reaching ground level
;---------------------------------------

[Statedef 1053]
type    = S
physics = N
movetype= A
anim = 1053
ctrl = 0
velset = 0,0

[State 211, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 1053, WIDTH]
type = Width
trigger1 = 1
edge = 20,20

[State 1053, Slam Sound]
type = Playsnd
trigger1 = !time
value = 1,12
channel = 1

[State 1053, Floor PosSet]
type = Posset
trigger1 = !time
y = 0

[State 1053, TBind]
type = TargetBind
trigger1 = !time
pos = 9,-8
time = 10

[State 1053, Explod];Strong Ground Wave - Background
type = Explod
trigger1 = !time
anim = 7035
pos = 0,5
postype = p2
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = -1

[State 1053, Explod 2];Strong Ground Wave - Foreground
type = Explod
trigger1 = !time
anim = 7036
pos = 0,5
postype = p2
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = 3

[State 1053, p2LifeAdd]
type = TargetLifeAdd
trigger1 = !time
value = -(127 + (31*(var(21)>0)))

[State 1053, Bounce SND]
type = PlaySnd
trigger1 = p2stateno = 1062
trigger2 = p2stateno = 1063
value = 1,19
channel = 1

[State 1053, End] ; Normal Ending
type = ChangeState
trigger1 = !Animtime
value = 1054

[State 1053, Elbow Command]
type = varset
trigger1 = command = "felbow"
trigger2 = command = "ifelbow"
var(7) = 1

;----------------------
; Napalm Stretch - Roll
;----------------------

[Statedef 1054]
type    = S
physics = N
movetype= A
anim = 1054
ctrl = 0

[State 211, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 1053, Velocity]
type = VelSet
trigger1 = time >= 0
x = ifelse(var(7)=1,0,-3)

[State 1053, Elbow Command]
type = varset
triggerall = time = [0,10]
trigger1 = command = "felbow"
trigger2 = command = "ifelbow"
var(7) = 1

[State 1053, Goto Elbow] ; If Flash Elbow is performed
type = ChangeState
trigger1 = var(7) = 1 && time >= 6
value = 950

[State 1054, Stop Rolling]
type = velset
trigger1 = time = 20
x = 0

[State 1054, Drop Sound]
type = Playsnd
trigger1 = p2stateno = 1222
value = 1,12
persistent = 0

[State 1054, Explod]; Small Ground wave
type = Explod
trigger1 = p2stateno = 1062
anim = 7030
pos = 12,5
postype = p2
bindtime = 1
ontop = 0
ownpal = 1
persistent = 0

[State 1054, Explod 2]; Dust
type = Explod
trigger1 = p2stateno = 1062
anim = 8150
pos = -10,-8
postype = p2
bindtime = 1
ontop = 1
ownpal = 1
persistent = 0

[State 1054, 6]
type = ChangeState
trigger1 = !Animtime
value = 0
ctrl = 1

;------------------------------
; Napalm Stretch - Enemy Thrown
;------------------------------

[Statedef 1060]
type    = A
physics = N
movetype= H
ctrl = 0

[State 1060, Air Grabbed Anim]
type = Changeanim2
trigger1 = !time
value = 1060

[State 1060, WIDTH]
type = Width
trigger1 = 1
value = -40,-40

[State 1060, Next]
type = ChangeState
trigger1 = p2stateno = 1503
trigger2 = Pos y >= -12
value = 1061

;-------------------------------------------------
; Enemy Thrown by Napalm Stretch - Reaching ground
;-------------------------------------------------

[Statedef 1061]
type    = A
physics = N
movetype= H
ctrl = 0

[State 1061, Crushed Down]
type = Changeanim2
trigger1 = !time
value = 1061

[State 1061, WIDTH]
type = Width
trigger1 = 1
value = -30,-30

[State 1061, Screen Shaking]
type = Envshake
trigger1 = !time
time = 20
freq = 70
ampl = -4

[State 1061, End]
type = SelfState
trigger1 = !Animtime
value = 5030

;--------------------------------------------------------------------------------------------------------------------------
; Mount Tackle A
;--------------------------------------------------------------------------------------------------------------------------

[Statedef 2505]
type    = S
physics = S
movetype= I
anim = 13
ctrl = 0
velset = 0
;facep2 = 1

[State 2505, Cancel Blink] ; Neowave Super Cancel Style
type = PalFX
trigger1 = (prevstateno = 1500) && (time = 0)
add = 60,60,60
sinadd = 100,100,100,4
time = 20
ignorehitpause = 1

[State 2505, PowerLoss] ; Neowave Super Cancel Style
type = PowerAdd
trigger1 = prevstateno = 1500
trigger2 = prevstateno = 2001
value = -1000
persistent = 0
ignorehitpause = 1

[State 2505, Clark Voice]
type = PlaySnd
trigger1 = time = 1
value = 0,15
channel = 0

[State 2505, Run]
type = ChangeState
trigger1 = !Animtime
value = 2506


;-----------------------------
; Mount Tackle A Attempt - Run
;-----------------------------

[Statedef 2506]
type    = S
physics = S
movetype= I
anim = 101
ctrl = 0
velset = 0
;facep2 = 1

[State 2506, PosAdd]
type = PosAdd
trigger1 = prevstateno = 203
trigger1 = AnimElem = 1, = 1
x = -25

[State 2506, Running Speed]
type = VelSet
triggerall = time >= 0
trigger1 = AnimElem = 1, >=0
trigger1 = FrontEdgeDist >= 20
x = const(velocity.run.fwd.x)+ 3.2 ; 8.5

[State 2500, Run SND]
type = PlaySnd
trigger1 = Timemod = 70,4
value = 1,2
channel = 3

[State 2500, Tackle Anim]
type = ChangeAnim
trigger1 = p2BodyDist X <= 40
trigger1 = time <= 20
value = 2500

[State 2500, Next]
type = ChangeState
trigger1 = P2BodyDist X <= 40
trigger1 = time <= 20
value = 2502

[State 2500, End]
type = ChangeState
trigger1 = time > 20
value = 2507
ctrl = 0

;---------------
; End if too far
;---------------

[Statedef 2507]
type    = S
physics = S
movetype= I
anim = 13
ctrl = 0
velset = 6

[State 2507, Friction]
type = veladd
trigger1 = time >=0
x = .55

[State 2507, Wind]
type = PlaySnd
trigger1 = time = 1
value = 1,14
channel = 1

[State 2507, End]
type = ChangeState
trigger1 = !Animtime
value = 0
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------
; Mount Tackle C
;--------------------------------------------------------------------------------------------------------------------------

[Statedef 2500]
type    = S
physics = S
movetype= I
anim = 13
ctrl = 0
velset = 0
;facep2 = 1

[State 2500, Cancel Blink] ; Neowave Super Cancel Style
type = PalFX
trigger1 = (prevstateno = 1500) && (time = 0)
trigger2 = prevstateno = 2001 && time = 0
add = 60,60,60
sinadd = 100,100,100,4
time = 20
ignorehitpause = 1

[State 900, PowerLoss] ; Neowave Super Cancel Style
type = PowerAdd
trigger1 = prevstateno = 1500
trigger2 = prevstateno = 2001
value = -1000
persistent = 0
ignorehitpause = 1

[State 2500, Clark Voice]
type = PlaySnd
trigger1 = time = 1
value = 0,15
channel = 0

[State 2500, Run]
type = ChangeState
trigger1 = !Animtime
value = 2501

;-----------------------------
; Mount Tackle C Attempt - Run
;-----------------------------

[Statedef 2501]
type    = S
physics = S
movetype= I
anim = 101
ctrl = 0
velset = 0
;facep2 = 1

[State 2500, PosAdd]
type = PosAdd
trigger1 = prevstateno = 203
trigger1 = AnimElem = 1, = 1
x = -25

[State 2500, Running Speed]
type = VelSet
triggerall = time >= 0
trigger1 = AnimElem = 1, >=0
trigger1 = FrontEdgeDist >= 20
x = const(velocity.run.fwd.x)+ 3.2 ; 8.5

[State 2500, Run SND]
type = PlaySnd
trigger1 = Timemod = 70,4
value = 1,2
channel = 3

[State 2500, Tackle Anim]
type = ChangeAnim
trigger1 = p2BodyDist X <= 50
trigger1 = time <= 30
value = 2500

[State 2500, Next]
type = ChangeState
trigger1 = P2BodyDist X <= 50
trigger1 = time <= 30
value = 2502

[State 2500, End]
type = ChangeState
trigger1 = time > 30
value = 2507
ctrl = 0

;-------------
; Grab Attempt
;-------------

[Statedef 2502]
type    = S
physics = N
movetype= A
anim = 2500
ctrl = 0
velset = 7

[State 2502, Snd]
type = StopSnd
trigger1 = 1
channel = 3

[State 2501, Grab Attempt]
type = Hitdef
trigger1 = AnimElem = 1
trigger1 = var(14) <= 0 ; Throw Limiter
attr = S, ST
hitflag = MA
guardflag = M
guard.pausetime = 2,20
priority = 4,hit
sparkno = -1
sprpriority = 2
p2facing = 1
p1stateno = 2504
p2stateno = 2513
p2getp1state = 1
guard.sparkno = S7005
sparkxy = 10, -77
guardsound = S1, 7
guard.slidetime = 18
guard.hittime = 19
guard.ctrltime = 20
guard.velocity = -10.8
guard.cornerpush.veloff = 18
getpower = 121,121
givepower = 21,21

[State 2501, Miss]
type = Velset
trigger1 = time = 10
trigger2 = moveguarded
x = 0

[State 2501, Getup]
type = ChangeState
trigger1 = !Animtime
value = 2503

;---------------------------
; Mount Tackle Miss - Get Up
;---------------------------

[Statedef 2503]
type    = S
physics = N
movetype= A
anim = 2502
ctrl = 0
velset = 0,0

[State 211, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 2502, POSADD]
type = Posadd
trigger1 = time = 5
x = 5

[State 2502, End]
type = ChangeState
trigger1 = !Animtime
value = 0
ctrl = 1

;---------------------------------------------------
; Mount Tackle Success - Holding enemy on the ground
;---------------------------------------------------

[Statedef 2504]
type    = S
physics = N
movetype= A
anim = 2503
ctrl = 0

[State 211, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 2503, 1]
type = Width
trigger1 = 1
edge = 40,30

[State 2503, 2]
type = Explod
trigger1 = time = 1
anim = 7025
pos = 41,-84
postype = p1
bindtime = 1
ontop = 1
ownpal = 1

[State 2503, Hit]
type = playsnd
trigger1 = !time
value = 2,6

[State 2503, Wind]
type = PlaySnd
trigger1 = time = 10
value = 1,14
channel = 1

[State 2503, TBind 1]
type = TargetBind
trigger1 = time = [0,1]
pos = 25,-53

[State 2503, TBind 2]
type = TargetBind
trigger1 = time = [2,6]
pos = 13,-45

[State 2503, TBind 3]
type = TargetBind
trigger1 = time = [7,12]
pos = 15,-22

[State 2503, TBind 4]
type = TargetBind
trigger1 = time = [13,19]
pos = 15,-17

[State 2503, TBind 5]
type = TargetBind
trigger1 = time = [20,40]
pos = 12,-17

[State 2503, TBind 6]
type = TargetBind
trigger1 = time = [41,56]
pos = 12,0

[State 2503, Ground Friction]
type = Veladd
trigger1 = vel x > 0
x = -.2

[State 2503, Stop]
type = VelSet
trigger1 = vel x <= 0
x = 0

[State 2503, 6]
type = ChangeState
trigger1 = !Animtime
value = 2503

[State 2503, Perform Clark Lift]
type = Varset
trigger1 = command = "clift" && time = [20,45]
var(8) = 1

[State 2503, Perform Super Lift DDT]
type = Varset
trigger1 = command = "slift" && time = [20,45]
var(8) = 2

[State 2503, Perform Rolling Cradle]
type = Varset
trigger1 = command = "rcradle" && time = [20,45]
var(8) = 3

[State 2503, Perform Twisted Wrestle DM]
type = Varset
trigger1 = command = "TW" && time = [20,45]
var(8) = 4

[State 2503, Perform Twisted Wrestle SDM]
type = Varset
trigger1 = command = "TWSDM" && time = [20,45]
var(8) = 5

[State 2503, Clark Lift]
type = Hitdef
triggerall = time = 51
trigger1 = var(8) = 1
attr = S, ST
hitflag = D
sparkno = -1
sprpriority = 2
p2facing = 1
p1stateno = 2600
p2stateno = 2610
p2getp1state = 1
numhits = 0

[State 2503, Super Lift]
type = Hitdef
triggerall = time = 51
trigger1 = var(8) = 2
attr = S, ST
hitflag = D
sparkno = -1
sprpriority = 2
p2facing = 1
p1stateno = 2700
p2stateno = 2710
p2getp1state = 1
numhits = 0

[State 2503, Rolling Cradle]
type = Hitdef
triggerall = time = 51
trigger1 = var(8) = 3
attr = S, ST
hitflag = D
sparkno = -1
sprpriority = 2
p2facing = 1
p1stateno = 2800
p2stateno = 2810
p2getp1state = 1
fall = 1
air.velocity = -4,-3
fall.xvelocity = 3.5
fall.yvelocity = -3.6
fall.recover = 0
down.bounce = 1
numhits = 0

[State 2503, Twisted Wrestle DM]
type = Hitdef
triggerall = time = 51
trigger1 = var(8) = 4
trigger1 = power >= 1000
attr = S, HT
hitflag = D
sparkno = -1
sprpriority = 2
p2facing = 1
p1stateno = 7901
p2stateno = 7910
p2getp1state = 1
fall = 1
ground.velocity = -4,-3
air.velocity = -4,-3
fall.xvelocity = 3.5
fall.yvelocity = -3.6
fall.recover = 0
down.bounce = 1
numhits = 0

[State 2503, Twisted Wrestle SDM]
type = Hitdef
triggerall = time = 51
trigger1 = var(8) = 5
trigger1 = power >= 2000
attr = S, HT
hitflag = D
sparkno = -1
sprpriority = 2
p2facing = 1
p1stateno = 7950
p2stateno = 7960
p2getp1state = 1
numhits = 0

;------------------------------
; Enemy grabbed by Mount Tackle
;------------------------------

[Statedef 2513]
type    = S
physics = S
movetype= H
ctrl = 0
velset = 0,0

[State 2513, 1]
type = Changeanim2
trigger1 = !time
value = 2513

[State 2513, 2]
type = Width
trigger1 = 1
value = -30,-30

[State 2513, Floor PosSet]
type = Posset
trigger1 = time = 80
y = 0

[State 2513, NOTHITBY]
type = Nothitby
trigger1 = time <= 50
trigger2 = time >= 52
value = SCA

[State 2513, LIEDOWN]
type = StateTypeSet
trigger1 = time = 40
value = L ; used to be grabbed if clark performs a followup

[State 2513, If alive]
type = SelfState
trigger1 = alive
trigger1 = time = 80
value = 5120

;--------------------------------------
; Mount Tackle followup #1 - Clark Lift
;--------------------------------------

[Statedef 2600]
type    = S
physics = N
movetype= A
anim = 2600
ctrl = 0
velset = 0,0

[State 2600, PowerAdd]
type = PowerAdd
trigger1 = !time
value = 150

[State 211, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 2600, 1]
type = Width
trigger1 = time <= 70
edge = 30,30

[State 2600, SPRPRIORITY]
type = sprpriority
trigger1 = AnimElem = 1, >=0
trigger1 = AnimElem = 3, < 0
trigger2 = AnimElem = 9, >=0
value = 2

[State 2600, SPRPRIORITY 2]
type = sprpriority
trigger1 = AnimElem = 3, >=0
trigger1 = AnimElem = 9, < 0
value = 1

[State 2600, TBind 1]
type = TargetBind
trigger1 = AnimElem = 1, >=0
trigger1 = AnimElem = 3, < 0
pos = 0,0

[State 2600, TBind 2]
type = TargetBind
trigger1 = AnimElem = 3, >=0
trigger1 = AnimElem = 4, < 0
pos = 0,-40

[State 2600, TBind 3]
type = TargetBind
trigger1 = AnimElem = 4, >=0
trigger1 = AnimElem = 5, < 0
pos = 20,-20

[State 2600, TBind 4]
type = TargetBind
trigger1 = AnimElem = 5, >=0
trigger1 = AnimElem = 6, < 0
pos = 20,-30

[State 2600, TBind 5]
type = TargetBind
trigger1 = AnimElem = 6, >=0
trigger1 = AnimElem = 7, < 0
pos = 20,-110

[State 2600, TBind 6]
type = TargetBind
trigger1 = AnimElem = 7, >=0
trigger1 = AnimElem = 8, < 0
pos = 10,-112

[State 2600, TBind 7]
type = TargetBind
trigger1 = AnimElem = 8, >=0
trigger1 = AnimElem = 9, < 0
pos = 20,-87

[State 2600, TBind 8]
type = TargetBind
trigger1 = AnimElem = 9, >=0
trigger1 = AnimElem = 10,< 0 
pos = -14,-85

[State 2600, TBind 9]
type = TargetBind
trigger1 = AnimElem = 10, >=0
trigger1 = AnimElem = 11, < 0
pos = -35,-85

[State 2600, TBind 10]
type = TargetBind
trigger1 = AnimElem = 11, >=0
trigger1 = AnimElem = 12, < 0
pos = -40,-85

[State 2600, TBind 11]
type = TargetBind
trigger1 = AnimElem = 12
pos = -55,-76

[State 2600, Spark] ; Grab Spark
type = Explod
trigger1 = animelem = 3
anim = 7020
pos = 21,-10
postype = p1
bindtime = 1
ontop = 1
ownpal = 1

[State 2600, Explod] ; Strong Ground Wave - Background
type = Explod
trigger1 = time = 78
anim = 7035
pos = 0,5
postype = p2
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = -1

[State 2600, Explod 2]; Strong Ground Wave - Foreground
type = Explod
trigger1 = time = 78
anim = 7036
pos = 0,5
postype = p2
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = 3

[State 902, Ground Wave]
type = Explod
trigger1 = p2stateno = 2612
anim = 7030
pos = 2,5
postype = p2
bindtime = 1
ontop = 0
ownpal = 1

[State 2600, Grab SND]
type = PlaySnd
trigger1 = Animelem = 2, =1
value = 1,9
channel = 1

[State 2600, Clark Voice]
type = PlaySnd
trigger1 = time = 45
value = 0,16
channel = 0

[State 260, SND 2]
type = Playsnd
trigger1 = Animelem = 12, =1
value = 1,15
channel = 1

[State 903, Drop SND];Drop Sound
type = Playsnd
trigger1 = p2stateno = 2611
value = 1,12
channel = 1
volume = -50
persistent = 0

[State 2600, End]
type = ChangeState
trigger1 = !Animtime
value = 2503

;-----------------------------------------------------
; Mount Tackle followup #1 - Clark Lift - Enemy Thrown
;-----------------------------------------------------

[Statedef 2610]
type    = A
physics = N
movetype= H
ctrl = 0
velset = 0,0

[State 2610, Anim]
type = Changeanim2
trigger1 = !time
value = 2610

[State 2610, SPRPRIORITY]
type = sprpriority
trigger1 = AnimElem = 1, >=0
trigger1 = AnimElem = 3, < 0
trigger2 = AnimElem = 9, >=0
value = 1

[State 2610, SPRPRIORITY 2]
type = sprpriority
trigger1 = time = [10,19]
trigger2 = AnimElem = 3, >=0
trigger2 = AnimElem = 9, < 0
value = 2

[State 2610, VELSET]
type = Velset
trigger1 = time = 70
x = 8
y = 9

[State 2610, WIDTH]
type = Width
trigger1 = time <= 70
value = -30,-30

[State 2610, 5]
type = ChangeState
trigger1 = time >= 72
trigger1 = vel y > 0 
trigger1 = pos y >= -20
value = 2611

;------------------------------------------------
; Mount Tackle followup #1 - Clark Lift - Bounce
;------------------------------------------------

[Statedef 2611]
type    = A
physics = N
movetype= H
ctrl = 0
velset = 0,-6

[State 2611, Anim]
type = Changeanim2
trigger1 = !time
value = 2611

[State 902, Screen Shaking]
type = Envshake
trigger1 = !time
time = 20
freq = 70
ampl = -4

[State 2611, LifeAdd]
type = Lifeadd
trigger1 = !time
value = -(176 + (45*(enemy,var(21)>0)))

[State 2611, VELADD]
type = Veladd
trigger1 = time >= 3
y = .5

[State 2611, Freeze]
type = posfreeze
trigger1 = time = [0,3]

[State 2611, 6]
type = posset
trigger1 = !time
y = 0

[State 2611, Change]
type = ChangeState
trigger1 = time >= 4
trigger1 = vel y > 0 
trigger1 = pos y >= -20 
value = 2612

;------------------------------------------------
; Mount Tackle followup #1 - Clark Lift - Liedown
;------------------------------------------------


[Statedef 2612]
type    = L
physics = N
movetype= H
ctrl = 0
velset = 0,0

[State 2612, Change]
type = Changeanim2
trigger1 = !time
value = 2612

[State 2612, 2]
type = posset
trigger1 = !time
y = 0

[State 2612, Dead ?]
type = SelfState
triggerall = !alive
trigger1 = !time
value = 5150

[State 2612, or Alive ?]
type = SelfState
triggerall = alive
trigger1 = Time = 20
value = 5120

;----------------------------------------------
; Mount Tackle followup #2 - Super Lift [D.D.T]
;----------------------------------------------

[Statedef 2700]
type    = S
physics = N
movetype= A
anim = 2700
ctrl = 0
velset = 0,0

[State 2700, Power]
type = PowerAdd
trigger1 = !time
value = 150

[State 211, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 2700, 1]
type = Width
trigger1 = 1
edge = 40,30

[State 2700, SPRPRIORITY]
type = sprpriority
trigger1 = AnimElem = 1, >=0
trigger1 = AnimElem = 3, < 0
trigger2 = AnimElem = 6, >=0
trigger2 = AnimElem = 10, <0
value = 2

[State 2700, SPRPRIORITY 2]
type = sprpriority
trigger1 = AnimElem = 4, >=0
trigger1 = AnimElem = 6, < 0
trigger2 = AnimElem = 10
trigger3 = AnimElem = 11
value = 1

[State 2700, TBind 1]
type = TargetBind
trigger1 = AnimElem = 1, >=0
trigger1 = AnimElem = 3, < 0
pos = 0,0

[State 2700, TBind 2]
type = TargetBind
trigger1 = AnimElem = 3, >=0
trigger1 = AnimElem = 4, < 0
pos = 0,-40

[State 2700, TBind 3]
type = TargetBind
trigger1 = AnimElem = 4, >=0
trigger1 = AnimElem = 5, < 0
pos = 20,-40

[State 2600, TBind 4]
type = TargetBind
trigger1 = AnimElem = 5, >=0
trigger1 = AnimElem = 6, < 0
pos = 30,-40

[State 2700, TBind 5]
type = TargetBind
trigger1 = AnimElem = 6, >=0
trigger1 = AnimElem = 7, < 0
pos = 16,0

[State 2700, TBind 6]
type = TargetBind
trigger1 = AnimElem = 7, >=0
trigger1 = AnimElem = 8, < 0
pos = 20,0

[State 2700, TBind 7]
type = TargetBind
trigger1 = AnimElem = 8, >=0
trigger1 = AnimElem = 9, < 0
pos = 30,-27

[State 2700, TBind 8]
type = TargetBind
trigger1 = AnimElem = 9, >=0
trigger1 = AnimElem = 10,< 0 
pos = 3,13

[State 2700, TBind 9]
type = TargetBind
trigger1 = AnimElem = 10, >=0
trigger1 = AnimElem = 11, < 0
pos = -40,-87

[State 2700, Grab Spark]
type = Explod
trigger1 = animelem = 2
anim = 7020
pos = 21,-10
postype = p1
bindtime = 1
ontop = 1
ownpal = 1

[State 2700, Grab SND]
type = Playsnd
trigger1 = Animelem = 2
value = 1,9
channel = 1

[State 2700, Clark SND]
type = Playsnd
trigger1 = AnimElem = 7, =1
value = 0,18
channel = 0

[State 903, Drop SND]
type = Playsnd
trigger1 = AnimElem = 10
value = 1,12
channel = 1
volume = -50
persistent = 0

[State 2700, Explod]; Strong Ground Wave - Background
type = Explod
trigger1 = AnimElem = 10
anim = 7035
pos = -2,85
postype = p2
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = -1

[State 2700, Explod 2]; Strong Ground Wave - Foreground
type = Explod
trigger1 = AnimElem = 10
anim = 7036
pos = -2,85
postype = p2
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = 3

[State 2700, End] ; Get Up if no Flash Elbow
type = ChangeState
trigger1 = !Animtime
value = 2503

[State 2700, Flash Elbow]
type = Varset
triggerall = time > 25
trigger1 = command = "felbow"
trigger2 = command = "ifelbow"
var(7) = 3

[State 2700, Elbow] ; Flash Elbow Followup
type = ChangeState
triggerall = time = 73 ;68
trigger1 = var(7) = 3
value = 950

;-------------------------------------------------------------
; Mount Tackle followup #2 - Super Lift [D.D.T] - Enemy Thrown
;-------------------------------------------------------------

[Statedef 2710]
type    = A
physics = N
movetype= H
ctrl = 0

[State 2710, PowerAdd]
type = PowerAdd
trigger1 = !time
value = 75

[State 2710, 1]
type = Changeanim2
trigger1 = !time
value = 2710

[State 2700, SPRPRIORITY]
type = sprpriority
trigger1 = AnimElem = 1, >=0
trigger1 = AnimElem = 3, < 0
trigger2 = AnimElem = 6, >=0
trigger2 = AnimElem = 9, <0
value = 1

[State 2700, SPRPRIORITY 2]
type = sprpriority
trigger1 = AnimElem = 4, >=0
trigger1 = AnimElem = 6, < 0
trigger2 = AnimElem = 9
trigger3 = AnimElem = 10
trigger4 = AnimElem = 11
value = 2

[State 2710, 6]
type = Width
trigger1 = time <= 78
value = -30,-30

[State 2710, 7]
type = LifeAdd
trigger1 = enemy, AnimElem = 10
value = -(186 + (46*(enemy,var(21)>0)))

[State 2710, 8]
type = Envshake
trigger1 = enemy, AnimElem = 10
time = 20
freq = 70
ampl = -4

[State 2710, VelSet]
type = VelSet
trigger1 = enemy, AnimElem = 11
x = 2.5
y = -5

[State 2710, VelAdd]
type = Gravity
trigger1 = 1

[State 2711, PlayerPush]
type = PlayerPush
trigger1 = time >= 65
value = 1

[State 2710, 9]
type = Statetypeset
trigger1 = time = 55
value = L

[State 2710, 10]
type = ChangeState
trigger1 = time >= 70
trigger1 = pos y >= -80 ; -ceil(vel y) 
value = 2711

;-----------------------------------------------------------------------
; Mount Tackle Followup #2 - Super Lift [D.D.T] - Enemy Thrown - Liedown
;-----------------------------------------------------------------------

[Statedef 2711]
type    = L
physics = N
movetype= H
ctrl = 0
velset = 0,0

[State 2711, PlayerPush]
type = PlayerPush
trigger1 = time >= 0
value = 1

[State 2711, 1]
type = Changeanim2
trigger1 = !time
value = 2711

[State 2711, 2]
type = posset
trigger1 = !time
y = 0

[State 2711, Dead ?]
type = SelfState
triggerall = !alive
trigger1 = !time
value = 5150

[State 2711, Alive ?]
type = SelfState
triggerall = alive
trigger1 = Time = 40
value = 5120

;------------------------------------------
; Mount Tackle Followup #3 - Rolling Cradle
;------------------------------------------

[Statedef 2800]
type    = S
physics = N
movetype= A
anim = 2800
ctrl = 0
velset = 0,0

[State 2800, Power]
type = PowerAdd
trigger1 = !time
value = 150

[State 211, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 2800, 1]
type = Width
trigger1 = 1
edge = 20,20

[State 2800, SPRPRIORITY]
type = sprpriority
trigger1 = AnimElem = 1, >=0
trigger1 = AnimElem = 10, < 0
trigger2 = AnimElem = 11, >=0
trigger2 = AnimElem = 20, < 0
trigger3 = AnimElem = 21
value = 2

[State 2800, SPRPRIORITY 2]
type = sprpriority
trigger1 = AnimElem = 10
trigger2 = AnimElem = 20
value = 1

[State 2800, TBind 1]
type = TargetBind
trigger1 = time = [0,3]
pos = 23,0

[State 2800, TBind 2]
type = TargetBind
trigger1 = time = [4,10]
pos = 2,0

[State 2800, TBind 3]
type = TargetBind
trigger1 = AnimElem = 2, >=0 
trigger1 = AnimElem = 3, < 0
pos = -15,0

[State 2800, TBind 4]
type = TargetBind
trigger1 = AnimElem = 3, >=0
trigger1 = AnimElem = 4, < 0
pos = 0,0

[State 2800, TBind 5] 
type = TargetBind
trigger1 = AnimElem = 4, >=0
trigger1 = AnimElem = 5, < 0
pos = 9,0

[State 2800, TBind 6]
type = TargetBind
trigger1 = AnimElem = 5, >=0 
trigger1 = AnimElem = 6, < 0
trigger2 = AnimElem = 15, >=0 
trigger2 = AnimElem = 16, < 0
trigger3 = AnimElem = 25, >=0 
trigger3 = AnimElem = 26, < 0 
pos = 0,-37

[State 2800, TBind 7]
type = TargetBind
trigger1 = AnimElem = 6, >=0 
trigger1 = AnimElem = 7, < 0 
trigger2 = AnimElem = 16, >=0
trigger2 = AnimElem = 17, < 0
trigger3 = AnimElem = 26, >=0 
trigger3 = AnimElem = 27, < 0
pos = 0,-41

[State 2800, TBind 8]
type = TargetBind
trigger1 = AnimElem = 7, >=0
trigger1 = AnimElem = 8, < 0
trigger2 = AnimElem = 17, >= 0 
trigger2 = AnimElem = 18, < 0
trigger3 = AnimElem = 27, >= 0 
trigger3 = AnimElem = 28, < 0 
pos = 15,-40

[State 2800, TBind 9]
type = TargetBind
trigger1 = AnimElem = 8, >=0
trigger1 = AnimElem = 9, < 0
trigger2 = AnimElem = 18, >=0
trigger2 = AnimElem = 19, < 0
pos = 3,-25

[State 2800, TBind 10]
type = TargetBind
trigger1 = AnimElem = 9, >=0
trigger1 = AnimElem = 10, < 0
trigger2 = AnimElem = 13, >=0
trigger2 = AnimElem = 14, < 0
trigger3 = AnimElem = 19, >=0 
trigger3 = AnimElem = 20, < 0
trigger4 = AnimElem = 23, >=0
trigger4 = AnimElem = 24, < 0
pos = 5,-13

[State 2800, TBind 11]
type = TargetBind
trigger1 = AnimElem = 10, >=0
trigger1 = AnimElem = 11, < 0
trigger2 = AnimElem = 20, >=0
trigger2 = AnimElem = 21, < 0
pos = 2,-20

[State 2800, TBind 12]
type = TargetBind
trigger1 = AnimElem = 11, >=0
trigger1 = AnimElem = 12, < 0
trigger2 = AnimElem = 21, >=0
trigger2 = AnimElem = 22, < 0
pos = 0,-15

[State 2800, TBind 13]
type = TargetBind
trigger1 = AnimElem = 12, >=0
trigger1 = AnimElem = 13, < 0
trigger2 = AnimElem = 22, >=0
trigger2 = AnimElem = 23, < 0 
pos = 8,-23

[State 2800, TBind 14]
type = TargetBind
trigger1 = AnimElem = 14, >=0
trigger1 = AnimElem = 15, < 0 
trigger2 = AnimElem = 24, >=0
trigger2 = AnimElem = 25, >=0 
pos = 13,-28

[State 2800, TBind 15]
type = TargetBind
trigger1 = AnimElem = 28, >=0
pos = -9,-54
time = 3

[State 2810, Final Damage]
type = TargetLifeAdd
trigger1 = time = 98
value = -(49 + (12*(var(21)>0)))
kill = 0

[State 2810, Final Damage]
type = TargetLifeAdd
trigger1 = time = 101
value = -(59 + (15*(var(21)>0)))

[State 2800, Grab Spark]
type = Explod
trigger1 = animelem = 1
anim = 7020
pos = -52,-87
postype = p1
bindtime = 1
ontop = 1
ownpal = 1

[State 2800, 5.1];play catch snd
type = Playsnd
trigger1 = !time
value = 1,9
volume = -80

[State 2800, Clark SND] ; "Yaaaa !"
type = Playsnd
trigger1 = !time
value = 0,1
channel = 0

[State 2800, Yawn] ; "Yoaaaaaaaaaa !"
type = Playsnd
trigger1 = animelem = 6
value = 0,17
channel = 0

[State 2800, Wind Sound]
type = Playsnd
trigger1 = p2stateno = 2811
value = 1,12
persistent = 0

[State 2800, Drop Sounds]
type = PlaySnd
trigger1 = animelem = 9
trigger2 = animelem = 14
trigger3 = animelem = 19
trigger4 = animelem = 24
value = 1,12

[State 2800, Slam Sound]
type = Playsnd
trigger1 = animelem = 29
value = 1,12
volume = 50

[State 2800, Roll Speed]
type = Velset
trigger1 = animelem = 6
x = -2.5

[State 2800, Stop Roll]
type = Velset
trigger1 = animelem = 29
x = 0

[State 2800, Auto Turn]
type = turn
trigger1 = !time

[State 2800, Explod]; Small Ground Wave
type = Explod
trigger1 = AnimElem = 9
trigger2 = AnimElem = 14
trigger3 = AnimElem = 19
trigger4 = AnimElem = 24
trigger5 = AnimElem = 29
anim = 7030
pos = 0,5
postype = p1
bindtime = 1
ontop = 0
ownpal = 1

[State 2800, Slam Down]
type = ChangeState
trigger1 = !Animtime
value = 2801

;---------------------------
; Rolling Cradle - Slam Down
;---------------------------

[Statedef 2801]
type    = S
physics = N
movetype= A
anim = 2801
ctrl = 0
velset = 0,0

[State 2800, TBind 16]
type = TargetBind
trigger1 = AnimElem = 1, >=0
trigger1 = AnimElem = 2, < 0
pos = -46,0

[State 2800, Slam Sound]
type = Playsnd
trigger1 = !time
value = 1,12
volume = 50

[State 2800, Explod]; Small Ground Wave
type = Explod
trigger1 = !time
anim = 7030
pos = 0,5
postype = p1
bindtime = 1
ontop = 0
ownpal = 1

[State 2800, Auto Turn]
type = turn
trigger1 = !Animtime

[State 2800, End]
type = ChangeState
trigger1 = !Animtime
value = 0
ctrl = 1

;---------------------------------------------------------------
; Mount Tackle Followup #3 - Rolling Cradle - Enemy Grabbed Down
;---------------------------------------------------------------


[Statedef 2810]
type    = S
physics = N
movetype= H
ctrl = 0
velset = 0,0

[State 2810, Power]
type = PowerAdd
trigger1 = !time
value = 75

[State 2810, Roll Anim]
type = Changeanim2
trigger1 = !time
value = 2810

[State 2810, SPRPRIORITY]
type = SprPriority
trigger1 = enemy, AnimElem = 1, >=0
trigger1 = enemy, AnimElem = 10, < 0
trigger2 = enemy, AnimElem = 11, >=0
trigger2 = enemy, AnimElem = 20, < 0
trigger3 = enemy, AnimElem = 21
value = 1

[State 2810, SPRPRIORITY 2]
type = SprPriority
trigger1 = enemy, AnimElem = 10
trigger2 = enemy, AnimElem = 20
value = 2

[State 2810, WIDTH]
type = Width
trigger1 = time <= 104
value = -30,-30

[State 2810, Damage]
type = LifeAdd
triggerall = anim = 2810
trigger1 = animelem = 9
trigger2 = animelem = 14
trigger3 = animelem = 19
trigger4 = animelem = 24
value = -(19 + (24*(enemy,var(21)>0)))
kill = 0

[State 2810, Screen Shake]
type = Envshake
trigger1 = animelem = 9
trigger2 = animelem = 14
trigger3 = animelem = 19
trigger4 = animelem = 24
trigger5 = time = 101
time = 20
freq = 70
ampl = -4

[State 2810, Floor PosSet]
type = Posset
trigger1 = !Animtime
y = -1

[State 2810, ChangeState]
type = ChangeState
trigger1 = p2stateno = 2801
value = 2811

;------------------------------
; Rolling Cradle - Slammed Down
;------------------------------

[Statedef 2811]
type    = S
physics = N
movetype= H
ctrl = 0

[State 2811, Anim]
type = ChangeAnim2
trigger1 = !time
value = 2811

[State 2811, Facing]
type = Turn
trigger1 = time >=5

[State 2811, Fall]
type = SelfState
trigger1 = !Animtime
value = 5030

;--------------------------------------------------------------------------------------------------------------------------
; Clark Special Moves
;
; Flash Elbow (Special FollowUp)
; Gatling Attack (KOF 99-2001)
; Shining Wizard (KOF 2002)
;--------------------------------------------------------------------------------------------------------------------------

;--------------------------------------------------------------------------------------------------------------------------
; Flash Elbow
;--------------------------------------------------------------------------------------------------------------------------

;------------------
; Flash Elbow - Run
;------------------

[Statedef 950]
type    = S
physics = S
movetype= I
anim = 101
ctrl = 0
facep2 = 1

[State 950, Invincible] ; Simul Mode purposes.
type = NotHitBy
trigger1 = time >= 0
value = SCA

[State 950, PosAdd] ; Frankensteiner Success PosAdd
type = PosAdd
trigger1 = prevstateno = 1001
trigger1 = AnimElem = 1, =0
x = -35

[State 950, Push]
type = PlayerPush
trigger1 = var(7) = 3
trigger1 = var(8) = 2
value = 1

[State 950, Running Speed]
type = VelSet
trigger1 = AnimElem = 1, >=0
x = const(velocity.run.fwd.x) + 1.2 ; 6.5

[State 950, Goto Elbow Hit]
type = ChangeState
trigger1 = p2stateno = 914 && p2dist X < 50 		         		     ; Super Argentina Backbreaker
trigger2 = p2stateno = 915 && (enemy, time <=6) && p2dist X < 60 	           ; Super Argentina Backbreaker 2
trigger3 = p2stateno = 5601 && p2dist X < 46    		   		     ; Early Frankensteiner Command Cancel
trigger4 = p2stateno = 5610 && p2dist X < 46    		   		     ; Late Frankensteiner Command Cancel
trigger5 = p2stateno = 5550 && FrontEdgeBodyDist < 50 && var(12) != 1        ; Corner Frankensteiner
trigger6 = p2stateno = 1062  						   		     ; Napalm Stretch
trigger7 = p2stateno = 5050 && FrontEdgeBodyDist < 50 && var(12) = 1 && p2bodydist X < 5 ; Corner Napalm Stretch
trigger8 = p2stateno = 2711  				 		   		     ; Super Lift D.D.T.
trigger9 = p2stateno = 5050 && FrontEdgeBodyDist >= 50 && var(12) != 1 && (enemy, time >= 18) && p2bodydist X < 15 
trigger10 = p2stateno = 5050 && time >= 17
trigger11 = var(12) = 1 && FrontEdgeBodyDist < 80
value = 951

[State 100, 2]
type = PlaySnd
trigger1 = !time
value = 1,2
channel = 3
loop = 1

[State 950, Misc.]
type = ChangeState
trigger1 = time = 30
value = 0
ctrl = 1

;------------------------
; Flash Elbow - Elbow Hit
;------------------------

[Statedef 951]
type    = S
physics = N
movetype= A
anim = 950
ctrl = 0
velset = 3

[State 951, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 951, Ouia SND];"Ouia !"
type = Playsnd
trigger1 = AnimElem = 9, =1
value = 0,10
channel = 0
ignorehitpause = 1
persistent = 0

[State 951, Elbow Hit]
type = Hitdef
trigger1 = animelemtime(9)>= 0 && animelemtime(10) < 0 && var(12) != 1 ; Corner Napalm Stretch
trigger1 = p2stateno !=[5600,5601]
trigger1 = p2stateno !=5101
attr = S, SA
hitflag = MADF ;HMADF
damage = 19 + (24*(var(21)>0)),0
priority = 7,Hit
hitsound = S1,11
pausetime = 12,11
sprpriority = 2
sparkno = S7025
p2stateno = 962
getpower = 121,121
givepower = 21,21
numhits = 0
persistent = 0

[State 951, Drop SND]
type = Playsnd
triggerall = movecontact = 0
trigger1 = AnimElem = 9, =2
value = 1,12
channel = 1
ignorehitpause = 1
persistent = 0

[State 951, Ground Wave]; Small ground wave
type = Explod
trigger1 = AnimElem = 9
anim = 7030
pos = 2,5
postype = p1
bindtime = 1
ontop = 0
ownpal = 1

[State 951, Explod];Strong Ground Wave - Background
type = Explod
trigger1 = AnimElem = 9
anim = 7035
pos = 50,5
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = -1

[State 951, Explod 2];Strong Ground Wave - Foreground
type = Explod
trigger1 = AnimElem = 9
anim = 7036
pos = 50,5
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = 3

[State 951, NoPush]
type = PlayerPush
trigger1 = time = [0,14]
value = 0

[State 951, Push]
type = PlayerPush
trigger1 = time >= 15
value = 1

[State 951, Next]
type = ChangeState
trigger1 = !Animtime
value = 952

;----------------------------
; Flash Elbow - Miscellaneous
;----------------------------

[Statedef 952]
type    = S
physics = N
movetype= I
ctrl = 0
velset = 1
anim = 952

[State 952, Explod]; Small Ground Wave
type = Explod
trigger1 = p2stateno = 963
anim = 7030
pos = -10,5
postype = p2
bindtime = 1
ontop = 0
ownpal = 1
persistent = 0

[State 952, Drop SND];Drop Sound 1
type = Playsnd
trigger1 = p2stateno = 963
value = 1,12
channel = 1
volume = -50
persistent = 0

[State 952, End]
type = ChangeState
trigger1 = !Animtime
value = 0
ctrl = 1

;---------------------------
; Flash Elbow - Opponent Hit
;---------------------------

[Statedef 962]
type    = L
physics = N
movetype= H
ctrl = 0
velset = 0,0

[State 962, Screen Shaking]
type = Envshake
trigger1 = !time
time = 20
freq = 70
ampl = -4

[State 962, VelSet]
type = VelSet
trigger1 = time = 9
x = IfElse((enemy,var(7)=3),2,-2)
y = -2.3

[State 962, Gravity]
type = Veladd
trigger1 = time >= 17
y = .5

[State 962, Hit Anim]
type = Changeanim2
trigger1 = !time
value = 962

[State 962, Next]
type = ChangeState
trigger1 = time > 10
trigger1 = vel y > 0 
trigger1 = pos y >= -ceil(vel y) 
value = 963

;---------------------------------
; Flash Elbow - Opponent bouncing
;---------------------------------

[Statedef 963]
type    = L
physics = N
movetype= H
ctrl = 0
anim = 5100

[State 963, PosFreeze]
type = PosFreeze
trigger1 = time = [0,4]

[State 963, Floor PosSet]
type = PosSet
trigger1 = !time
y = 0

[State 963, VelSet]
type = VelSet
trigger1 = !time
x = IfElse((enemy,var(7)=3),2,-2)
y = -2.3

[State 963, Friction]
type = VelAdd
trigger1 = vel x > 0
x = .3

[State 963, Opposite Friction] ; Frankensteiner Followup
type = VelAdd
trigger1 = enemy, var(7) = 3
x = -.3

[State 963, Gravity]
type = Veladd
trigger1 = time >= 4
y = .4

[State 963, Bounce Anim]
type = Changeanim2
trigger1 = !Animtime
value = 963

[State 963, Next]
type = ChangeState
trigger1 = time > 8 && vel y > 0 
trigger1 = pos y >= -ceil(vel y) 
value = 964

;--------------------------------
; Flash Elbow - Opponent LieDown
;--------------------------------

[Statedef 964]
type    = L
physics = N
movetype= H
ctrl = 0
velset = 0,0

[State 964, LieDown Anim]
type = ChangeAnim2
trigger1 = !time
value = 915

[State 964, Floor PosSet]
type = PosSet
trigger1 = !time
y = 0

[State 964, if Dead]
type = SelfState
triggerall = !alive
trigger1 = !time
value = 5150

[State 964, if alive] 
type = SelfState
triggerall = alive
trigger1 = Time = 10
value = 5120

;--------------------------------------------------------------------------------------------------------------------------
; Gatling - Light Version
;--------------------------------------------------------------------------------------------------------------------------

[Statedef 1490]
type    = S
physics = S
movetype= A
anim = 1500
ctrl = 0
velset = 0,0
juggle = 11
;facep2 = 1

[State 1490, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 1490, 1st Hit]
type = Hitdef
trigger1 = animelem = 4
trigger1 = p2stateno != [5020,5040]
trigger1 = p2stateno != [154,155]
trigger1 = p2stateno != [5070,5071]
attr = S, SA
hitflag = MA
guardflag = M
animtype = Hard
air.animtype = Back
fall.animtype = Back
priority = 5,Hit
damage = 60, 5
pausetime = 9, 12
guard.pausetime = 6, 15
sparkno = S7025
guard.sparkno = S7005
sparkxy = 18, -87
hitsound = S2, var(4)
guardsound = S1,7
ground.type = High
air.type = Trip
ground.slidetime = 18
guard.slidetime = 18
ground.hittime = 19
guard.hittime = 19
air.hittime = 0
guard.ctrltime = 15
ground.velocity = -7.5
guard.velocity = -6
air.velocity = -3.5, -6
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
sprpriority = 1
getpower = 121,121
givepower = 21,21
air.juggle = 15
down.bounce = 1
yaccel = 0.56

[State 1490, 2nd Hit]
type = Hitdef
trigger1 = animelem = 10
trigger1 = p2stateno != [5020,5040]
trigger1 = p2stateno != [154,155]
trigger1 = p2stateno != [5070,5071]
attr = S, SA
hitflag = MAF
animtype = Back
guardflag = M
priority = 5,Hit
pausetime = 9,12
damage = 38, 5
sparkno = S7025
guard.sparkno = S7005
sparkxy = 8, -79
hitsound = S2, var(4)
guardsound = S1,7
air.type = High
guard.slidetime = 18
guard.hittime = 19
guard.ctrltime = 15
guard.velocity = -12
guard.cornerpush.veloff = -15
ground.velocity = -2,-10
sprpriority = 2
getpower = 61,61
givepower = 11,11
fall = 1
yaccel = .5

[State 1490, PlaySND]
type = PlaySnd
trigger1 = AnimElem = 1, =1
value = 0,13
channel = 0

[State 1490, PosAdd]
type = PosAdd
trigger1 = time = 10
trigger2 = time = [13,14]
trigger3 = time = [16,18]
trigger4 = time = [20,21]
trigger5 = time = 24
trigger6 = time = [26,42]
trigger7 = time = [44,50]
trigger8 = time = [52,55]
trigger9 = time = [56,59]
trigger10 = time >= 60
x = 0

[State 1490, PosAdd]
type = PosAdd
trigger1 = time = 7
trigger2 = time = 9
trigger3 = time = 11
trigger4 = time = 23
x = 1

[State 1490, PosAdd]
type = PosAdd
trigger1 = time = 6
trigger2 = time = 8
x = 2

[State 1490, PosAdd]
type = PosAdd
trigger1 = time = 4
x = 3

[State 1490, PosAdd]
type = PosAdd
trigger1 = time = 3
x = 4

[State 1490, PosAdd]
type = PosAdd
trigger1 = time = [1,2]
x = 6

[State 1490, PosAdd]
type = PosAdd
trigger1 = !time
trigger2 = time = 19
trigger3 = time = 22
trigger4 = time = 25
trigger5 = time = 43
x = 8

[State 1490, PosAdd]
type = PosAdd
trigger1 = time = 12
trigger2 = time = 15
x = 9

[State 1490, PosAdd]
type = PosAdd
trigger1 = time = 5
x = 11

[State 1490, End]
type = ChangeState
trigger1 = !Animtime
value = 0
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------
; Gatling - Strong Version
;--------------------------------------------------------------------------------------------------------------------------

[Statedef 1500]
type    = S
physics = S
movetype= A
anim = 1500
ctrl = 0
velset = 0,0
juggle = 11 ;15
;facep2 = 1

[State 211, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 1500, 1st Hit]
type = Hitdef
trigger1 = animelem = 4
trigger1 = p2stateno != [5020,5040]
trigger1 = p2stateno != [154,155]
trigger1 = p2stateno != [5070,5071]
attr = S, SA
hitflag = MA
guardflag = M
animtype = Hard
air.animtype = Back
fall.animtype = Back
priority = 5,Hit
damage = 60, 5
pausetime = 7, 12
guard.pausetime = 6, 15
sparkno = S7025
guard.sparkno = S7005
sparkxy = 18, -87
hitsound = S2, var(4)
guardsound = S1,7
ground.type = High
air.type = Trip
ground.slidetime = 18
guard.slidetime = 18
ground.hittime = 19
guard.hittime = 19
air.hittime = 0
down.bounce = 1
guard.ctrltime = 15
ground.velocity = -6.5
guard.velocity = -6
air.velocity = -3.5, -6
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.juggle = 15
sprpriority = 1
getpower = 121,121
givepower = 21,21
yaccel = 0.57

[State 1500, 2nd Hit]
type = Hitdef
trigger1 = animelem = 9
trigger1 = p2stateno != [5020,5040]
trigger1 = p2stateno != [154,155]
trigger1 = p2stateno != [5070,5071]
attr = S, SA
hitflag = MA
guardflag = M
air.type = Trip
animtype = Hard
air.animtype = Back
fall.animtype = Back
priority = 4,Hit
damage = 65, 5
pausetime = 8,12
guard.pausetime = 6, 12
sparkno = S7025
guard.sparkno = S7005
sparkxy = 8, -60
hitsound = S2, var(4)
guardsound = S1,7
ground.type = High
guard.slidetime = 18
guard.hittime = 19
air.hittime = 0
ground.hittime = 19
guard.velocity = -12
air.velocity = -3.5, -6
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -15
air.juggle = 14
sprpriority = 1
getpower = 61,61
givepower = 11,11

[State 1500, 3rd Hit]
type = Hitdef
trigger1 = animelem = 10
trigger1 = p2stateno != [5020,5040]
trigger1 = p2stateno != [154,155]
trigger1 = p2stateno != [5070,5071]
attr = S, SA
animtype = Back
air.type = Trip
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = M
priority = 5,Hit
pausetime = 8,10
damage = 38, 5
sparkno = S7025
guard.sparkno = S7005
sparkxy = 8, -79
hitsound = S2, var(4)
guardsound = S1,7
guard.slidetime = 18
guard.hittime = 19
guard.ctrltime = 15
guard.velocity = -12
guard.cornerpush.veloff = -15
ground.velocity = -2,-10
air.velocity = -3.5, -6
sprpriority = 2
getpower = 61,61
givepower = 11,11
juggle = 15
yaccel = .5
fall = 1

[State 1500, PlaySND]
type = PlaySnd
trigger1 = AnimElem = 1, =1
value = 0,13
channel = 0

[State 1500, PosAdd]
type = PosAdd
trigger1 = time = 10
trigger2 = time = [13,14]
trigger3 = time = [16,18]
trigger4 = time = [20,21]
trigger5 = time = 24
trigger6 = time = [26,42]
trigger7 = time = [44,50]
trigger8 = time = [52,55]
trigger9 = time = [56,59]
trigger10 = time >= 60
x = 0

[State 1500, PosAdd]
type = PosAdd
trigger1 = time = 7
trigger2 = time = 9
trigger3 = time = 11
trigger4 = time = 23
x = 1

[State 1500, PosAdd]
type = PosAdd
trigger1 = time = 6
x = 2

[State 1500, PosAdd]
type = PosAdd
trigger1 = time = 4
x = 3

[State 1500, PosAdd]
type = PosAdd
trigger1 = time = 3
x = 4

[State 1500, PosAdd]
type = PosAdd
trigger1 = time = [1,2]
x = 6

[State 1500, PosAdd]
type = PosAdd
trigger1 = !time
trigger2 = time = 19
trigger3 = time = 22
trigger4 = time = 25
trigger5 = time = 43
x = 8

[State 1500, PosAdd]
type = PosAdd
trigger1 = time = 12
trigger2 = time = 15
x = 9

[State 1500, PosAdd]
type = PosAdd
trigger1 = time = 5
x = 11

[State 1500, POSADD]
type = PosAdd
trigger1 = AnimElem = 14
x = 14

[State 1500, POSADD]
type = PosAdd
trigger1 = time = 8
x = 20

[State 1500, Cancel Var]
type = VarSet
trigger1 = (command = "UltraA") && power >= 2000 && animelemtime(4) >= 0 && animelemtime(5) < 0
trigger2 = (command = "UltraA") && power >= 2000 && animelemtime(9) >= 0 && animelemtime(10) < 0
v = 18
value = 1

[State 1500, Cancel Var]
type = VarSet
trigger1 = (command = "UltraASDM") && power = 3000 && animelemtime(4) >= 0 && animelemtime(5) < 0
trigger2 = (command = "UltraASDM") && power = 3000 && animelemtime(9) >= 0 && animelemtime(10) < 0
v = 18
value = 2

[State 1500, Cancel Var]
type = VarSet
trigger1 = (command = "RThree") && power >= 2000 && animelemtime(4) >= 0 && animelemtime(5) < 0
trigger2 = (command = "RThree") && power >= 2000 && animelemtime(9) >= 0 && animelemtime(10) < 0
v = 18
value = 3

[State 1500, Cancel Var]
type = VarSet
trigger1 = (command = "RThreeSDM") && power >= 2000 && animelemtime(4) >= 0 && animelemtime(5) < 0
trigger1 = (command = "RThreeSDM") && power >= 2000 && animelemtime(9) >= 0 && animelemtime(10) < 0
v = 18
value = 4

[State 1500, SCancel]
type = ChangeState
trigger1 = var(18) = 1
value = 6000
ctrl = 0

[State 1500, SCancel]
type = ChangeState
trigger1 = var(18) = 2
value = 6100
ctrl = 0

[State 1500, SCancel]
type = ChangeState
trigger1 = var(18) = 3
value = 3000
ctrl = 0

[State 1500, SCancel]
type = ChangeState
trigger1 = var(18) = 4
value = 3100
ctrl = 0

[State 1500, End]
type = ChangeState
trigger1 = !Animtime
value = 0
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------
; Shining Wizard (Light)
;
; The new KOF 2002 move that replaced Gatling. Not really useful, but at least there are new sprites. 
; Will only hit if opponent is in a crouching state. 
;--------------------------------------------------------------------------------------------------------------------------

[Statedef 1999]
type    = S
physics = S
movetype= I
anim = 101
ctrl = 0
velset = 0
;facep2 = 1

[State 1999, Cancel Blink] ; Neowave Super Cancel Style
type = PalFX
trigger1 = (prevstateno = 1500) && (time = 0)
add = 60,60,60
sinadd = 100,100,100,4
time = 20
ignorehitpause = 1

[State 1999, PowerLoss] ; Neowave Super Cancel Style
type = PowerAdd
trigger1 = prevstateno = 1500
value = -1000
persistent = 0
ignorehitpause = 1

[State 1999, Running Speed]
type = VelSet
trigger1 = AnimElem = 1, >=0
trigger1 = time = [0,23]
x = const(velocity.run.fwd.x) + 1.7

[State 100, 2]
type = PlaySnd
trigger1 = !time
value = 1,2
channel = 3
loop = 1

[State 1999, Continue]
type = ChangeState
triggerall = var(14) <= 0 ; Throw Limitation Var. Works the same for that move.
trigger1 = p2BodyDist X < 15
trigger1 = p2StateType = C
value = 2001

[State 1999, Stop Run] ; Stop if opponent is not crouching
type = ChangeState
trigger1 = time > 24 && p2StateType != C
trigger2 = p2BodyDist X < 15 && p2stateType !=C
trigger3 = time > 24 && p2StateType = C && p2BodyDist X > 15
value = 2005
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------
; Shining Wizard (Strong)
;--------------------------------------------------------------------------------------------------------------------------

[Statedef 2000] 
type    = S
physics = S
movetype= I
anim = 101
ctrl = 0
velset = 0
;facep2 = 1

[State 2000, Cancel Blink] ; Neowave Super Cancel Style
type = PalFX
trigger1 = (prevstateno = 1500) && (time = 0)
add = 60,60,60
sinadd = 100,100,100,4
time = 20
ignorehitpause = 1

[State 2000, PowerLoss] ; Neowave Super Cancel Style
type = PowerAdd
trigger1 = prevstateno = 1500
value = -1000
persistent = 0
ignorehitpause = 1

[State 2000, Run]
type = PlaySnd
trigger1 = !time
value = 1,2
channel = 3
loop = 1

[State 2000, Running Speed]
type = VelSet
trigger1 = AnimElem = 1, >=0
trigger1 = time = [0,34]
x = const(velocity.run.fwd.x) + 1.7

[State 2000, Continue]
type = ChangeState
triggerall = var(14) <= 0 ; Throw Limitation Var. Works the same for that move.
trigger1 = p2BodyDist X < 15
trigger1 = p2StateType = C
value = 2001

[State 2000, Stop Run] ; Stop if opponent is not crouching
type = ChangeState
trigger1 = time > 35 && p2StateType != C
trigger2 = p2BodyDist X < 15 && p2stateType !=C
trigger3 = time > 35 && p2StateType = C && p2BodyDist X > 15
value = 2005
ctrl = 0

;---------------------
; Shining Wizard - Hit
;---------------------

[Statedef 2001]
type    = S
movetype= A
physics = S
juggle  = 9
poweradd= 0
ctrl = 0
anim = 2001
sprpriority = 2

[State 2001, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 2001, Special]
type = AssertSpecial
trigger1 = time >= 0
flag = nocrouchguard

[State 2001, Intro] ; Prevents opponent from getting up.
type = HitDef
trigger1 = AnimElem = 1
attr = S, SA
damage    = 0
hitflag = L
guardflag = A
priority  = 7, Hit
pausetime = 0,2
numhits = 0
sparkno = -1

[State 2001, 1st Hit]
type = HitDef
trigger1 = AnimElem = 2
attr = S, SA
damage    = 88+30*(var(21)>0)
animtype  = Hard
hitflag = L
guardflag = A
priority  = 4, Hit
pausetime = 6,12
sparkno = S7020                  
guard.sparkno = S7005          
sparkxy = -10,-55
hitsound   = S2,var(4)
ground.cornerpush.veloff = -5
ground.type = Low
ground.hittime  = 20
getpower = 121,121
givepower = 21,0
numhits = 0

[State 2001, 2nd Hit]
type = HitDef
trigger1 = AnimElem = 5
attr = S, SA
damage    = 88+30*(var(21)>0)
animtype  = Back
hitflag = L
guardflag = D
priority  = 7, Hit
pausetime = 15,13
sparkno = S7025                  
guard.sparkno = S7005          
sparkxy = -10,-55
hitsound   = S2,var(4)
ground.cornerpush.veloff = -18
ground.velocity = -4,-6
yaccel = 0.54
getpower = 41,41
givepower = 21,0
fall = 1

[State 2001, 2]
type = PlaySnd
trigger1 = AnimElem = 4, =1
value = 0,9
channel = 0

[State 2001, Explod];Strong Ground Wave - Foreground
type = Explod
trigger1 = animelem = 10, =2
anim = 7036
pos = 0,0
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = 3

[State 2001, 3]
type = ChangeState
trigger1 = !Animtime
value = 0
ctrl = 1

;-------------------------------
; Shining Wizard - Miss Recovery
;-------------------------------

[Statedef 2005]
type    = S
physics = S
movetype= I
ctrl = 0
velset = 1
;facep2 = 1

[State 2005, Snd]
type = StopSND
trigger1 = !time
channel = 3

[State 2005, Anim]
type = ChangeAnim
trigger1 = !time
value = 2005

[State 2005, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------
; Counter : High
;--------------------------------------------------------------------------------------------------------------------------

[Statedef 4300]
type = S
physics = S
anim = 8310
movetype = A
velset = 0,0
sprpriority = 1
juggle = 14
ctrl = 0

[State 211, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 4300, Counter]
type = ReversalDef
trigger1 = AnimElem = 3
reversal.attr = SA,NA,SA,HA
hitflag = MA
numhits = 0
pausetime = 6,20
sparkno = S7020
sparkxy = 15,-30
p1stateno = 4301
hitsound = S1,9
ground.velocity = 5,-4
air.velocity = 5,-4
fall = 1
fall.recover = 0
getpower = 121,121
givepower = 21,0

[State 4300, Snd]
type = PlaySnd
trigger1 = AnimElem = 2, =1
value = 0, 1
channel = 0

[State 4300, End]
type = ChangeState
trigger1 = !Animtime
value = 0
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------
; Counter : High - Success
;--------------------------------------------------------------------------------------------------------------------------

[Statedef 4301]
type = S
physics = S
anim = 2450
movetype = A
velset = 0,0
sprpriority = 1
juggle = 14
ctrl = 0

[State 4301, Width]
type = Width
trigger1 = time >=1
value = 40,0

[State 4301, Hit]
type = Hitdef
trigger1 = AnimElem = 9
attr = S, SA
hitflag = MAF
animtype = DiagUp
air.animtype = DiagUp
fall = 1
priority = 7,Hit
damage = 146
pausetime = 13,13
guard.pausetime = 12, 12
sparkno = S7015                  
guard.sparkno = S7005          
sparkxy = 8, -50
hitsound = S1,8
guardsound = S1,7
guard.slidetime = 17
guard.hittime = 17
guard.ctrltime = 20
air.hittime = 0
guard.ctrltime = 44
ground.velocity = -7, -10
guard.velocity = -11.1
air.velocity = -7, -10
getpower = 184, 184
givepower = 21, 21
yaccel = .54

[State 4301, PosAdd]
type = PosAdd
trigger1 = !AnimTime
x = 45

[State 4301, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------
; Counter : Low
;--------------------------------------------------------------------------------------------------------------------------

[Statedef 4350]
type = S
physics = S
anim = 8300
movetype = A
velset = 0,0
juggle = 14
sprpriority = 1
ctrl = 0

[State 211, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 4350, Counter]
type = ReversalDef
trigger1 = AnimElem = 3
reversal.attr = C,NA,SA
hitflag = L
numhits = 0
pausetime = 6,20
sparkno = S7020
sparkxy = 15,-7
p1stateno = 4351
hitsound = S1,9
ground.velocity = 5,-4
air.velocity = 5,-4
fall = 1
fall.recover = 0
getpower = 121,121
givepower = 21,0

[State 4350, Snd]
type = PlaySnd
trigger1 = AnimElem = 2, =1
value = 0,1
channel = 0

[State 4350, End]
type = ChangeState
trigger1 = !Animtime
value = 0
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------
; Counter : Low - Success
;--------------------------------------------------------------------------------------------------------------------------

[Statedef 4351]
type = S
physics = S
anim = 8320
movetype = A
velset = 0,0
sprpriority = 1
juggle = 14
ctrl = 0

[State 4351, Hit]
type = Hitdef
trigger1 = AnimElem = 6
attr = S, SA
hitflag = MAF
animtype = Up
air.animtype = Up
fall = 1
priority = 7,Hit
damage = 146+(34*(var(21)>0))
pausetime = 13,13
guard.pausetime = 12, 12
sparkno = S7015                  
guard.sparkno = S7005          
sparkxy = 8, -50
hitsound = S1,8
guardsound = S1,7
guard.slidetime = 17
guard.hittime = 17
guard.ctrltime = 20
air.hittime = 0
guard.ctrltime = 44
ground.velocity = -5, -7
guard.velocity = -11.1
getpower = 184, 184
givepower = 21, 21
yaccel = .5

[State 4351, PosAdd]
type = PosAdd
trigger1 = time = 2
x = -7
y = 2
ignorehitpause = 1
persistent = 0

[State 4351, PosAdd]
type = PosAdd
trigger1 = time = 3
x = 1
ignorehitpause = 1
persistent = 0

[State 4351, PosAdd]
type = PosAdd
trigger1 = time = 4
x = 23
y = -2
ignorehitpause = 1
persistent = 0

[State 4351, PosAdd]
type = PosAdd
trigger1 = time = 6
x = -1
ignorehitpause = 1
persistent = 0

[State 4351, PosAdd]
type = PosAdd
trigger1 = time = 8
x = 9
ignorehitpause = 1
persistent = 0

[State 4351, Width]
type = Width
trigger1 = time >=1
player = 30,0

[State 4351, Snd]
type = PlaySnd
trigger1 = time = 4
value = 0,1
channel = 0

[State 4351, PosAdd]
type = PosAdd
trigger1 = !AnimTime
x = 40

[State 4351, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------
; Slamming German
;--------------------------------------------------------------------------------------------------------------------------

[Statedef 800]
type    = S
movetype= A
physics = S
juggle  = 14
velset = 0,0
ctrl = 0
anim = 800
sprpriority = 5

[State 211, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 800, Grab Attempt]
type = HitDef
Trigger1 = !time
trigger1 = var(13) <= 0 ; Throw Limiter
attr = S, NT          
hitflag = M-          
priority = 3, Miss    
sparkno = -1          
sprpriority = 1  
hitsound = -1
p2facing = 1          
p1stateno = 810       
p2stateno = 820
ground.velocity = -7,-6
air.velocity = -7,-6      
fall = 1   
yaccel = .6

[State 600, 3]
type = ChangeState
trigger1 = MoveContact = 0
trigger1 = !Animtime
value = 0
ctrl = 1

;-----------------------
;Slamming German Success
;-----------------------

[Statedef 810] 
type    = S
movetype= A
physics = S
anim = 801

[State 810, PosAdd]
type = PosAdd
trigger1 = animelem = 1
trigger2 = animelem = 4
x = 16

[State 810, PosAdd]
type = PosAdd
trigger1 = animelem = 2
trigger2 = animelem = 3
x = 17

[State 810, 1]
type = Width
trigger1 = animelem = 10, < 0
edge = 30,70

[State 810, 1]
type = Width
trigger1 = animelem = 10, >= 0
edge = 60,40

[State 810, Normal Grab Spark]
type = Explod
trigger1 = AnimElem = 2
id = 1046
anim = 1046
pos = 33,-88
sprpriority = 1
ownpal = 1
removeongethit = 1
removetime = 25

[State 810, SprPriority]
type = SprPriority
trigger1 = AnimElem = 1, >=0
trigger1 = AnimElem = 6, < 0
value = -1

[State 810, SprPriority]
type = SprPriority
trigger1 = AnimElem >= 6
value = 2

[State 810, Bind1]
type = TargetBind
trigger1 = AnimElem = 1, >=0
trigger1 = AnimElem = 2, < 0
pos = 15,0

[State 810, Bind2]
type = TargetBind
trigger1 = AnimElem = 2, >=0
trigger1 = AnimElem = 3, < 0
pos = -6,0

[State 810, Bind3]
type = TargetBind
trigger1 = AnimElem = 3, >=0
trigger1 = AnimElem = 4, < 0
pos = -23,0

[State 810, Bind4]
type = TargetBind
trigger1 = AnimElem = 4, >=0
trigger1 = AnimElem = 5, < 0
pos = -40,0

[State 810, Bind4]
type = TargetBind
trigger1 = AnimElem = 5, >=0
trigger1 = AnimElem = 6, < 0
pos = -40,0

[State 810, Bind4]
type = TargetBind
trigger1 = AnimElem = 6, >=0
trigger1 = AnimElem = 7, < 0
pos = -40,0

[State 810, Bind4]
type = TargetBind
trigger1 = AnimElem = 7, >=0
trigger1 = AnimElem = 8, < 0
pos = -50,0

[State 810, Bind4]
type = TargetBind
trigger1 = AnimElem = 8, >=0
trigger1 = AnimElem = 9, < 0
pos = -40,0

[State 810, Bind4]
type = TargetBind
trigger1 = AnimElem = 9, >=0
trigger1 = AnimElem = 10, < 0
pos = -60,0

[State 810, Bind4]
type = TargetBind
trigger1 = AnimElem = 10, >=0
trigger1 = AnimElem = 11, < 0
pos = -28,-65

[State 810, Bind4]
type = TargetBind
trigger1 = AnimElem = 11, >=0
trigger1 = AnimElem = 12, < 0
pos = -15,-67

[State 810, Bind4]
type = TargetBind
trigger1 = AnimElem = 12, >=0
trigger1 = AnimElem = 13, < 0
pos = 55,-80

[State 810, Damage]
type = targetlifeadd
Trigger1 = AnimElem = 12
value = -(146 + (36*(var(21)>0)))

[State 810, Normal Throw Spark]
type = Explod
trigger1 = animelem = 6
anim = 7019
pos = -30,-83
postype = p1
bindtime = 1
ontop = 0
sprpriority = 1
ownpal = 1

[State 810, Grab Sound]
type = PlaySnd
trigger1 = animelem = 6,=1
value = 1,23
channel = 1

[State 810, Clark Sound]
type = PlaySnd
trigger1 = animelem = 11,=1
value = 0,1
channel = 0

[State 810, Land Sound]
type = PlaySnd
trigger1 = animelem = 14,=1
value = 1,12
channel = 1

[State 810, Ground Wave]
type = Explod
trigger1 = AnimElem = 14
anim = 7030
pos = 55,0
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = -2

[State 810, End]
type = ChangeState
trigger1 = !Animtime
value = 5120
ctrl = 1

;---------------------------------
; Enemy Grabbed by Slamming German
;---------------------------------

[Statedef 820]
type    = A
movetype= H 
physics = N
ctrl = 0

[State 820, Width]
type = Width
trigger1 = time >= 0
edge = 0,0

[State 820, ScreenBound]
type = ScreenBound
Trigger1 = Time >= 0
value = 0

[State 820, Custom Anim]
type = ChangeAnim2
Trigger1 = !time
value = 810

[State 820, SprPriority]
type = SprPriority
trigger1 = enemy, AnimElem = 1, >=0
trigger1 = enemy, AnimElem = 6, < 0
value = 2

[State 820, SprPriority]
type = SprPriority
trigger1 = enemy, AnimElem >= 6
value = -1

[State 820, Hit Up Fly]
type = ChangeAnim
triggerall = time = 93
trigger1 = SelfAnimExist(5061)
value = 5061

[State 820, Normal Fly]
type = ChangeAnim
triggerall = time = 93 
trigger1 = !SelfAnimExist(5061)
value = 5050 + 10*(SelfAnimExist(5060))

[State 820, PosSet]
type = PosSet
trigger1 = time = 93
y = -40

[State 820, Fall]
type = SelfState
Trigger1 = time >=93
value = 5030

;--------------------------------------------------------------------------------------------------------------------------
; Fisherman Buster
;--------------------------------------------------------------------------------------------------------------------------

[Statedef 790]
type    = S
movetype= A
physics = S
juggle  = 14
velset = 0,0
ctrl = 0
anim = 800
sprpriority = 5

[State 211, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 790, Grab Attempt]
type = HitDef
Trigger1 = !time
trigger1 = var(13) <= 0 ; Throw Limiter
attr = S, NT          
hitflag = M-          
priority = 3, Miss    
sparkno = -1          
sprpriority = 1  
hitsound = -1
p2facing = 1          
p1stateno = 791       
p2stateno = 795
ground.velocity = 4,-5
fall = 1
fall.recover = 0
fall.xvelocity = 4
fall.yvelocity = -4.3
yaccel = .56

[State 790, 3]
type = ChangeState
trigger1 = MoveContact = 0
trigger1 = !Animtime
value = 0
ctrl = 1

;------------------------
;Fisherman Buster Success
;------------------------

[Statedef 791] 
type    = S
movetype= A
physics = S
anim = 790
sprpriority = 1

[State 791, Normal Throw Spark]
type = Explod
trigger1 = animelem = 2
anim = 7019
pos = 15,-65
postype = p1
bindtime = 1
ontop = 0
sprpriority = 1
ownpal = 1

[State 791, Grab Sound]
type = PlaySnd
trigger1 = animelem = 2,=2
value = 1,23
channel = 1

[State 791, Clark Sound]
type = PlaySnd
trigger1 = animelem = 2
value = 0,1
channel = 0

[State 791, Land Sound]
type = PlaySnd
trigger1 = animelem = 10,=1
value = 1,12
channel = 1

[State 791, 1]
type = Width
trigger1 = animelem = 10, < 0
edge = 0,0

[State 791, 1]
type = Width
trigger1 = animelem = 10, >= 0
edge = 60,20

[State 791, Bind1] ; OK
type = TargetBind
trigger1 = AnimElem = 1, >=0
trigger1 = AnimElem = 2, < 0
pos = 35,0

[State 791, Bind2] ; OK
type = TargetBind
trigger1 = AnimElem = 2, >=0
trigger1 = Animelem = 3, < 0
pos = -10,0

[State 791, Bind3] ; OK
type = TargetBind
trigger1 = AnimElem = 3, >=0
trigger1 = Animelem = 4, < 0
pos = 23,-71

[State 791, Bind4] ; OK
type = TargetBind
trigger1 = AnimElem = 4, >=0
trigger1 = Animelem = 5, < 0
pos = 13,-86

[State 791, Bind5] ; OK
type = TargetBind
trigger1 = AnimElem = 5, >=0
trigger1 = Animelem = 6, < 0
pos = -7,-99

[State 791, Bind6] ; OK
type = TargetBind
trigger1 = AnimElem = 6, >=0
trigger1 = Animelem = 7, < 0
pos = -10,-100

[State 791, Bind7] ; OK
type = TargetBind
trigger1 = AnimElem = 7, >=0
trigger1 = Animelem = 8, < 0
pos = -20,-97

[State 791, Bind8] ; OK
type = TargetBind
trigger1 = AnimElem = 8, >=0
trigger1 = Animelem = 9, < 0
pos = -22,-94

[State 791, Bind9] ; OK
type = TargetBind
trigger1 = AnimElem = 9, >=0
trigger1 = Animelem = 10, < 0
pos = -23,-87

[State 791, Bind10]
type = TargetBind
trigger1 = AnimElem = 10, >=0
trigger1 = Animelem = 12, < 0
pos = -30,0

[State 791, Damage]
type = targetlifeadd
Trigger1 = AnimElem = 12
value = -(146 + (36*(var(21)>0)))

[State 791, Roll]
type = VelSet
trigger1 = time = [79,91]
x = -4

[State 902, Ground Wave]
type = Explod
trigger1 = AnimElem = 10
anim = 7030
pos = -30,0
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = -2

[State 791, Roll]
type = VelSet
trigger1 = time = 92
x = 0

[State 791, Facing]
type = turn
trigger1 = time >=94

[State 791, End]
type = ChangeState
trigger1 = !Animtime
value = 5120

;----------------------------------
; Enemy Grabbed by Fisherman Buster
;----------------------------------

[Statedef 795]
type    = A
movetype= H 
physics = N
ctrl = 0

[State 795, Width]
type = Width
trigger1 = time >= 0
edge = 0,0

[State 795, ScreenBound]
type = ScreenBound
Trigger1 = Time >= 0
value = 0

[State 795, Custom Anim]
type = ChangeAnim2
Trigger1 = !time
value = 795

[State 795, Fall]
type = SelfState
Trigger1 = !Animtime
value = 5030

;----------------------------------------------------------------------------------------------------------------------------
;Death Lake Drive (Air throw)
;----------------------------------------------------------------------------------------------------------------------------

[Statedef 1850]
type = A
movetype = A
physics = N
anim = 1849
ctrl = 0
juggle = 15

[State 1850, Attempt]
type = HitDef
trigger1 = AnimElem = 1
attr = A, NT
priority = 4, miss
sparkno = -1
p2facing = 1
p1stateno = 1860
p2stateno = 1870

[State 820, 3]
type = CtrlSet
trigger1 = time = 1
value = 1

;-------------------------
; Death Lake Drive Success
;-------------------------

[Statedef 1860]
type = A
movetype = A
physics = N
velset = 0,0
anim = 1850
ctrl = 0

[State 1860, PosFreeze]
type = PosFreeze
trigger1 = time < 21

[State 1860, Normal Throw Spark]
type = Explod
trigger1 = animelem = 1
anim = 7019
pos = 6,-118
postype = p1
bindtime = 1
ontop = 0
sprpriority = 1
ownpal = 1

[State 1860, Grab Sound]
type = PlaySnd
trigger1 = animelem = 1,=1
value = 1,23
channel = 1

[State 1860, Wind SND]
type = Playsnd
trigger1 = time = 22
value = 1,15
channel = 1

[State 1860, Explod] ;Strong Ground Wave - Background
type = Explod
trigger1 = p2stateno = 1875
anim = 7035
pos = 0,-5
postype = p2
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = -1

[State 1860, Explod 2];Strong Ground Wave - Foreground
type = Explod
trigger1 = p2stateno = 1875
anim = 7036
pos = 0,-5
postype = p2
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = 3

[State 1860, Land SND] ;Opponent Land Sound
type = Playsnd
trigger1 = p2stateno = 1875 ;&& time = 1
value = 1,12
volume = -50

[State 1860, Bind1]
type = TargetBind
trigger1 = AnimElem = 1, >=0
trigger1 = AnimElem = 3, < 0
pos = 7,-118

[State 1860, Vel X]
type = VelSet
trigger1 = time >=24
x = 2

[State 1860, PosAdd]
type = PosAdd
trigger1 = time = 22
y = -1

[State 1860, PosAdd]
type = PosAdd
trigger1 = time = [23,25]
y = 0

[State 1860, PosAdd]
type = PosAdd
trigger1 = time = 26
y = 1

[State 1860, PosAdd]
type = PosAdd
trigger1 = time = 27
y = 8

[State 1860, PosAdd]
type = PosAdd
trigger1 = time = 28
y = 1

[State 1860, PosAdd]
type = PosAdd
trigger1 = time = 29
y = 6

[State 1860, PosAdd]
type = PosAdd
trigger1 = time = 30
y = 1

[State 1860, PosAdd]
type = PosAdd
trigger1 = time = 31
y = 7

[State 1860, PosAdd]
type = PosAdd
trigger1 = time = 32
y = 1

[State 1860, PosAdd]
type = PosAdd
trigger1 = time = 33
y = 11

[State 1860, PosAdd]
type = PosAdd
trigger1 = time = 34
y = 1

[State 1860, PosAdd]
type = PosAdd
trigger1 = time >= 35
y = 10

[State 1860, State]
type = ChangeState
trigger1 = Pos Y >= -5
value = 1865

;--------------------------
;Death Lake Drive - Landing
;--------------------------

[Statedef 1865]
type = A
movetype = I
physics = S
anim = 1869
velset = 0,0

[State 1865, Floor]
type = PosSet
trigger1 = !time
y = 0

[State 1865, Push]
type = PlayerPush
trigger1 = win
value = 0

[State 1865, State]
type = ChangeState
trigger1 = !Animtime
value = 0
ctrl = 1

;----------------------------------
; Enemy grabbed by Death Lake Drive
;----------------------------------

[Statedef 1870]
type = A
movetype = H
physics = N
ctrl = 0

[State 1870, Anim]
type = ChangeAnim2
trigger1 = !time
value = 1860

[State 1870, Vel]
type = VelSet
trigger1 = time >= 21
x = -10
y = 14.5

[State 1875, Gravity]
type = Gravity
trigger1 = time >= 21

[State 1870, Bounce]
type = ChangeState
trigger1 = pos y >=-10 && vel y >=0
value = 1875

;-------
; Bounce
;-------

[Statedef 1875]
type = C
movetype = H
physics = N
velset = -1,2

[State 1875, Shake It Baby]
type = Envshake
trigger1 = !time
time = 20
freq = 70
ampl = -8

[State 1875, Damage]
type = LifeAdd
trigger1 = !time
value = -(146 + (36*(enemy,var(21)>0)))

[State 1875, head]
type = Changeanim
trigger1 = !time
value = ifelse(SelfAnimExist(5102),5102,ifelse(SelfAnimExist(5101),5101,5100))

[State 1875, Align]
type = PosSet
trigger1 = !time
y = 0

[State 1875, Gravity]
type = Gravity
trigger1 = time >= 1

[State 1875, Dead]
type = SelfState
trigger1 = time = 1
value = 5101

;============================================
; Clark Steel 92i Special Moves - End Of File
;============================================