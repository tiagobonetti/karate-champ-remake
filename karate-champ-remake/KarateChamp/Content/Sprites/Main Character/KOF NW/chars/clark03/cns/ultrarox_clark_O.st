;==========================================================================================================================
; CLARK STEEL (KOF 2002)
;==========================================================================================================================
; CONVERTED BY OROCHIKOF97
;==========================================================================================================================
; VERSION 1.0c (APRIL 5TH 2005)
;==========================================================================================================================
;
;==========================================================================================================================
; ORIGINAL STUFF
;==========================================================================================================================
; Striker SDM   : V-Slasher
; Striker SDM   : Umanori Galactica Phantom
;--------------------------------------------------------------------------------------------------------------------------

;--------------------------------------------------------------------------------------------------------------------------
; Striker SDM : V-Slasher
;--------------------------------------------------------------------------------------------------------------------------

;--------------------
; Clark calling Leona
;--------------------

[Statedef 8800]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 8800

[State 8800, Snd]
type = PlaySnd
trigger1 = time = 9
value = 0,12
channel = 0

[State 8800, Leona]
type = Helper
trigger1 = numhelper(8810) <= 0
trigger1 = time = 16
helpertype = normal
stateno = 8810
id = 8810
name = "Leona"
postype = back
pos = -20,-80
keyctrl = 0
ownpal = 1

[State 8800, Grab Miss]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------
; Leona Entrance
;---------------

[Statedef 8810]
type = A
physics = N
movetype = A
velset = 7,-3
anim = 8810
ctrl = 0

[State 8810, Override]
type = HitOverride
trigger1 = Time = 0
attr = SCA, AA, AP, AT
slot = 0
stateno = 8888
time = -1

[State 8810, SDM]
type = ChangeState
trigger1 = time = 5
value = 8815

;------------------------
; Leona V-Slasher Attempt
;------------------------

[Statedef 8815]
type    = A
movetype= A
physics = A
juggle  = 0
velset = 0,0
ctrl = 0
anim = 8815

[State 8815, Invincible]
type = NotHitBy
trigger1 = 1
value = SCA

[State 8815, AfterImage]
type = AfterImage
trigger1 = time = 1
time = 50
trans = add1
timegap = 2
framegap = 1
length = 4
palinvertall = 0
palbright = 50,50,50
palcontrast = 110,110,210
palpostbright = 3,5,7

[State 8815, PosFreeze]
type = PosFreeze
trigger1 = time < 34

[State 8800, SuperPause]
type = SuperPause
trigger1 = Time = 0
pos = 5,-45
unhittable = 1
anim = -1
time = 27
darken = 0
movetime = 27
poweradd = -2000
ignorehitpause = 1

[State 8800, SSDM Explod 1]
type = Explod
trigger1 = time = 3
anim = 8410
pos = 10, -75
postype = p1
bindtime = 1
sprpriority = 2
removeongethit = 1
ontop = 1
ownpal = 1
supermove = 1
ignorehitpause = 1

[State 8800, SSDM Explod 2]
type = Explod
trigger1 = time = 0
anim = 8400
pos = 0, 0
postype = back
bindtime = 1
sprpriority = -3
removeongethit = 1
scale = 1.075,1.075
supermove = 1
ownpal = 1
ignorehitpause = 1

[State 8800, BG]
type = AssertSpecial
trigger1 = time = [0,19]
flag = noFG
flag2 = noBG
ignorehitpause = 1

[State 8800, SSDM SND]
type = Playsnd
trigger1 = time = 1
value = 1,24
channel = 1

[State 8815, Down Vel]
type = VelSet
trigger1 = time >= 34
x = 11
y = 5

[State 8815, Gravity]
type = VelAdd
trigger1 = time >=35
y = .5

[State 8815, Hitdef]
type = HitDef
triggerall = p2stateno != [154,155]
trigger1 = AnimElem = 4
attr = A, HA
animtype = HARD
damage = 0,0
hitflag = MAF
guardflag = M
pausetime = 1,1
sparkno = S7025
guard.sparkno = S7005
sparkxy = -10,-35
hitsound = S2,6
guardsound = S1,7
ground.type = low
ground.velocity = -8,-7.5
air.velocity = -8,-7.5
air.hittime = 35
down.velocity = -6,-5.5
guard.velocity = -2
yaccel = .53
p1stateno = 8840
p2stateno = 8850
fall = 1
fall.recover = 0

[State 8815, Land]
type = Changestate
trigger1 = time = 51
value = 8820

;---------------------------------
; Leona - V-Slasher Miss : Landing
;---------------------------------

[Statedef 8820]
type = S
physics = N
movetype = A
anim = 8820
ctrl = 0

[State 8820, Ground]
type = PosSet
trigger1 = time = 0
y = 0

[State 8820, Override]
type = HitOverride
trigger1 = Time = 0
attr = SCA, AA, AP, AT
slot = 0
stateno = 8888
time = -1

[State 8820, Friction]
type = VelSet
trigger1 = Time = [0,4]
x = 4

[State 8820, Friction]
type = VelSet
trigger1 = Time = [5,8]
x = 3

[State 8820, Friction]
type = VelSet
trigger1 = Time = [9,13]
x = 2

[State 8820, Friction]
type = VelSet
trigger1 = Time = [14,18]
x = 1

[State 8820, Friction]
type = VelSet
trigger1 = Time >= 19
x = 0

[State 8820, Friction]
type = VelSet
trigger1 = 1
y = 0

[State 8820, Floor]
type = PosSet
trigger1 = Time = 0
y = 0

[State 8820, Land]
type = PlaySnd
trigger1 = Time = 0
value = 1,5
channel = 13
volume = 60

[State 8820, Taunt]
type = ChangeState
trigger1 = AnimTime = 0
value = 8825
ctrl = 0

;------------------------------
; Leona - V-Slasher End - Taunt
;------------------------------

[Statedef 8825]
type = S
physics = S
movetype = I
velset = 0,0
anim = 8825
ctrl = 0

[State 8830, Jump Out]
type = ChangeState
trigger1 = animtime = 0
value = 8830
ctrl = 0

;---------------------------------------
; Leona - V-Slasher End - Jump Out Start
;---------------------------------------

[Statedef 8830]
type = S
physics = S
movetype = I
velset = 0,0
anim = 8830
ctrl = 0

[State 8830, Winpose]
type = ChangeState
trigger1 = win && roundstate = 3
value = 9462

[State 8830, Push]
type = PlayerPush
trigger1 = 1
value = 0

[State 8830, END]
type = ChangeState
trigger1 = animtime = 0
value = 8835
ctrl = 0

;---------------------------------
; Leona - V-Slasher End - Jump Out
;---------------------------------

[Statedef 8835]
type = A
physics = N
movetype = A
velset = 0,0
anim = 8835
ctrl = 0

[State 8835, Push]
type = PlayerPush
trigger1 = 1
value = 0

[State 8835, JumpSND]
type = PlaySnd
trigger1 = time = 1
value = 1,4
volume = 0

[State 8835, Vel]
type = velset
trigger1 = time = 0
x = 9
y = -11

[State 8835, END]
type = DestroySelf
trigger1 = time = 30

;---------------------------------
; Leona - Gets Hit while on screen
;---------------------------------

[Statedef 8888]
type = A
movetype = H
physics = N
ctrl = 0
anim = 8888
velset = 0,0

[State 8888, Fall]
type = changestate
trigger1 = hitshakeover
value = 8889

;-----------------
; Falling from Hit
;-----------------

[Statedef 8889]
type = A
movetype = H
physics = N
ctrl = 0
anim = 8889
facep2 = 1
velset = 0

[State 8889, Gravity]
type = VelAdd
trigger1 = 1
y = .5

[State 8889, Vel]
type = VelSet
trigger1 = Time = 0
x = -4
y = -6

[State 8889, Land]
type = changestate
trigger1 = pos y >= 0 && vel y > 0
value = 8890

;-------------------------
; Hitting Ground from Fall
;-------------------------

[Statedef 8890]
type = L
movetype = H
physics = N
ctrl = 0
anim = 8890
velset = 0,0

[State 8890, Floor] 
type = posset 
trigger1 = Time = 0
y = 0

[State 8890, Ground Wave]
type = Explod
trigger1 = time = 0
anim = 7030
pos = 0,0
postype = p1
bindtime = 1
ontop = 0
ownpal = 1

[State 8890, Snd]
type = PlaySnd
trigger1 = Time = 1
value = 1,19

[State 8890, Bounce]
type = changestate
trigger1 = animtime = 0
value = 8891

;---------------------
; Bouncing From Ground
;---------------------

[Statedef 8891]
type = L
movetype = H
physics = N
ctrl = 0
anim = 8891
velset = -3.5,-3

[State 8891, Gravity]
type = VelAdd
trigger1 = time >= 0
y = .5

[State 8891, LieDown]
type = ChangeState
trigger1 = pos y >= 0 && vel y > 0
value = 8892

;------------------------
; Lying Down & Getting Up
;------------------------

[Statedef 8892]
type = L
movetype = I
physics = N
ctrl = 0
anim = 8892
velset = 0,0

[State 8892, Floor] 
type = PosSet 
trigger1 = Time = 0
y = 0

[State 8892, Ground Wave]
type = Explod
trigger1 = time = 0
anim = 7030
pos = 0,0
postype = p1
bindtime = 1
ontop = 0
ownpal = 1

[State 8892, Snd]
type = PlaySnd
trigger1 = Time = 1
value = 1,19

[State 8892, Jump Off]
type = ChangeState
trigger1 = animtime = 0
value = 8830

;--------------------------------------------------------------------------------------------------------------------------

;-------------------------------------------------
; V-Slasher Success - Leona "drawing" the V letter
;-------------------------------------------------

[Statedef 8840]
type    = S
physics = S
movetype= A
anim = 8201
ctrl = 0
velset = 0,0

[State 8840, Flash]
type = EnvColor
trigger1 = time = 0
trigger2 = time = 31
trigger3 = time = 80
col = 248,248,248
under = 1

[State 8840, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 79
trans = add1
timegap = 2
framegap = 1
length = 4
palinvertall = 0
palbright = 50,50,50
palcontrast = 110,110,210
palpostbright = 3,5,7

[State 8840, Push]
type = PlayerPush
trigger1 = 1
value = 0

[State 8840, Floor]
type = PosSet
trigger1 = p2statetype = S
y = 0

[State 8840, V 1st]
type = Explod
trigger1 = time = 0
anim = 8202
pos = 0,0
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
id = 8840
sprpriority = 4
ignorehitpause = 1

[State 8840, V Full]
type = Explod
trigger1 = time = 56
anim = 8203
pos = 0,0
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
id = 8841
sprpriority = 4
ignorehitpause = 1

[State 8840, Explosion]
type = Explod
trigger1 = time = 80
anim = 7400
pos = 0,0
postype = p2
bindtime = 1
ontop = 1
ownpal = 1
id = 8841
sprpriority = 4
ignorehitpause = 1

[State 8840, Damage]
type = TargetLifeAdd
trigger1 = time = 80
value = -412

[State 8840, Snd] ; 1st Snd
type = PlaySnd
trigger1 = time = 30
value = 3,2

[State 8840, Snd] ; 2nd Snd
type = PlaySnd
trigger1 = time = 58
value = 3,0
channel = 1

[State 8840, Snd] ; 3rd Snd
type = PlaySnd
trigger1 = time = 80
value = 3,1

[State 8840, BtoT]
type = BindToTarget
trigger1 = animelem = 1, >=0
trigger1 = animelem = 3, < 0
pos = 30,0

[State 8840, BtoT2]
type = BindToTarget
trigger1 = animelem = 3, >=0
trigger1 = animelem = 4, < 0
pos = 25,0

[State 8840, Freeze]
type = PosFreeze
trigger1 = statetype = A
trigger1 = p2statetype = A

[State 8840, Vel]
type = VelSet
trigger1 = time >= 60
x = 3

[State 8840, Vel]
type = VelSet
trigger1 = time = 60
y = -10

[State 8840, VelAdd]
type = VelAdd
trigger1 = time >=61
y = .5

[State 8840,Var]
type = VarSet
trigger1 = time = 80
v = 1
value = 20

[State 8840, CountDown]
type = VarAdd
trigger1 = var(1) > 0
v = 1
value = -1

[State 8840, Slowdown]
type = Pause
triggerall = var(1) > 10
trigger1 = gametime%2 = 0
time = 1
ignorehitpause = 1

[State 8840, Slowdown]
type = Pause
triggerall = var(1) = [1,10]
trigger1 = gametime%3 = 0
time = 1
ignorehitpause = 1

[State 8840, Shake It Baby]
type = Envshake
trigger1 = time = 80
time = 20
freq = 70
ampl = -8

[State 8840, End]
type = ChangeState
trigger1 = time > 65
trigger1 = pos y >= 0 && vel y > 0
value = 8845

;---------------------------------------
; Leona - V-Slasher End - Jump Out Start
;---------------------------------------

[Statedef 8845]
type = S
physics = S
movetype = I
velset = 0,0
anim = 8845
ctrl = 0

[State 8830, Winpose]
type = ChangeState
trigger1 = win && roundstate = 3
value = 9462

[State 8845, Push]
type = PlayerPush
trigger1 = 1
value = 0

[State 8840, Land]
type = PlaySnd
trigger1 = Time = 0
value = 1,5

[State 8845, END]
type = ChangeState
trigger1 = animtime = 0
value = 8830
ctrl = 0

;------------------------------------------
; V-Slasher Success - Opponent Hit by Leona
;------------------------------------------

[Statedef 8850]
type    = A
physics = N
movetype= H
ctrl = 0
facep2 = 1

[State 8850, Anim]
type = Changeanim2
trigger1 = time = 0
value = 8850

[State 8850, SPRPRIORITY]
type = sprpriority
trigger1 = 1
value = -1

[State 8850, WIDTH]
type = Width
trigger1 = 1
value = -30,-30

[State 8850, Burn]
type = PalFX
trigger1 = time = 79
time = 20
add = 40,-70,-200
sinadd = 40,30,0,10
color = 0
invertall = 1

[State 8850, End]
type = SelfState
trigger1 = AnimTime = 0
value = 5030

; Leona Winpose

[Statedef 9462]
type = S
physics = S
movetype = I
velset = 0,0
anim = 9462
ctrl = 0

[State 9462, Ground]
type = PosSet
trigger1 = time = 0
y = 0

[State 9462, Enter]
type = ChangeState
trigger1 = win && roundstate = 4
trigger1 = (parent, anim = 180) || (parent, anim = 181)
value = 9463

[Statedef 9463]
type = S
physics = S
movetype = I
velset = 0,0
anim = 9463
ctrl = 0

[State 9463, Winpose]
type = AssertSpecial
trigger1 = time = [0,450]
flag = roundnotover

[State 9463, Snd]
type = PlaySnd
trigger1 = AnimElem = 8,=1
value = 10,0
channel = 4

[State 9463, Snd2]
type = PlaySnd
trigger1 = AnimElem = 12,=1
value = 10,1
channel = 4

;--------------------------------------------------------------------------------------------------------------------------
;--------------------------------------------------------------------------------------------------------------------------

;----------------------------------------------------------------------------------------------------------------------------
; Striker SDM : Umanori Galactica Phantom
;----------------------------------------------------------------------------------------------------------------------------

;-------------------
; Clark calling Ralf
;-------------------

[Statedef 8900]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 8800

[State 8900, Snd]
type = PlaySnd
trigger1 = time = 9
value = 0,12
channel = 0

[State 8900, Ralf]
type = Helper
trigger1 = numhelper(9440) <= 0
trigger1 = time = 16
helpertype = normal
stateno = 9440
id = 9440
name = "Ralf"
postype = back
pos = -30,0
keyctrl = 0
ownpal = 1

[State 8900, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------
; Ralf Entrance
;--------------

[Statedef 9440]
type = A
physics = N
movetype = A
velset = 6,0
anim = 9444
ctrl = 0

[State 9440, Stop]
type = VelSet
trigger1 = time = 6
x = 0

[State 9440, Ralf SND]
type = PlaySnd
trigger1 = time = 7
value = 4,0
channel = 0

[State 9440, Run SND]
type = PlaySnd
trigger1 = time = 43
value = 1,2
channel = 3
loop = 1

[State 9440, Run]
type = VelSet
trigger1 = time >= 43
x = 7.5

[State 8815, AfterImage]
type = AfterImage
trigger1 = time = 43
time = 20
trans = add1
timegap = 2
framegap = 1
length = 4
palinvertall = 0
palbright = 50,50,50
palcontrast = 110,110,210
palpostbright = 3,5,7


[State 9440, Change]
type = ChangeAnim
trigger1 = time = 6
value = 9440

[State 9440, SuperPause]
type = SuperPause
trigger1 = Time = 7
pos = 5,-45
unhittable = 1
anim = -1
time = 27
darken = 0
movetime = 27
poweradd = -2000
ignorehitpause = 1

[State 9440, SSDM Explod 1]
type = Explod
trigger1 = time = 10
anim = 8410
pos = 22, -138
postype = p1
bindtime = 1
sprpriority = 2
removeongethit = 1
ontop = 1
ownpal = 1
supermove = 1
ignorehitpause = 1

[State 9440, SSDM Explod 2]
type = Explod
trigger1 = time = 7
anim = 8400
pos = 0, 0
postype = back
bindtime = 1
sprpriority = -3
removeongethit = 1
scale = 1.075,1.075
supermove = 1
ownpal = 1
ignorehitpause = 1

[State 9440, BG]
type = AssertSpecial
trigger1 = time = [7,26]
flag = noFG
flag2 = noBG
ignorehitpause = 1

[State 9440, SSDM SND]
type = Playsnd
trigger1 = time = 8
value = 1,24
channel = 1

[State 9440, Override]
type = HitOverride
trigger1 = Time = 0
attr = SCA, AA, AP, AT
slot = 0
stateno = 9474
time = -1

[State 9440, Dive] ; Mount Tackle Attempt
type = ChangeAnim
trigger1 = (p2bodydist x <= 50) && (time < 73)
value = 9441

[State 9440, Grab Attempt]
type = Hitdef
trigger1 = Anim = 9441
trigger1 = AnimElem = 1
attr = S, HT
hitflag = MA
guardflag = M
guard.pausetime = 2,12
priority = 5,miss
sparkno = S7025
sprpriority = 2
p2facing = 1
p1stateno = 9442
p2stateno = 9450
guard.sparkno = S7005
sparkxy = 10,-77
hitsound = S2,0
guardsound = S1,7
guard.slidetime = 18
guard.hittime = 19
guard.ctrltime = 15
guard.velocity = -10.8
guard.cornerpush.veloff = 18
getpower = 121,121
givepower = 21,21
persistent = 0

[State 9440, Land]
type = Changestate
trigger1 = time > 76 && !movehit
value = 9453

[State 9440, Stop]
type = ChangeState
trigger1 = time > 60 && moveguarded > 0
value = 9453

;----------------------------
; Ralf - Mount Tackle Success
;----------------------------

[Statedef 9442]
type = S
physics = N
movetype = A
juggle = 15
anim = 9442
ctrl = 0

[State 9442, Stop]
type = StopSnd
trigger1 = time = 0
channel = 3

[State 9442, Wind]
type = PlaySnd
trigger1 = time = 10
value = 1,14
channel = 1

[State 9442, Ralf SND]
type = PlaySnd
trigger1 = time = 37
value = 4,1
channel = 2

[State 9442, Ralf SND 2]
type = PlaySnd
trigger1 = time = 84
value = 4,2
channel = 2

[State 9442, BOOM] ; Explosion Sound
type = PlaySnd
trigger1 = time = 104
value = 3,1
channel = 1

[State 9442, WIDTH]
type = Width
trigger1 = time >= 0
edge = 20,20

[State 9442, TBind 1]
type = TargetBind
trigger1 = time = [0,1]
pos = 25,-53

[State 9442, TBind 2]
type = TargetBind
trigger1 = time = [2,4]
pos = 13,-45

[State 9442, TBind 3]
type = TargetBind
trigger1 = time = [5,9]
pos = 15,-22

[State 9442, TBind 4]
type = TargetBind
trigger1 = time = [10,14]
pos = 15,-17

[State 9442, TBind 5]
type = TargetBind
trigger1 = time = [15,34]
pos = 12,0

[State 9442, TBind 6]
type = TargetBind
trigger1 = time = [35,102]
pos = -5,0

[State 9442, Ground Friction]
type = Veladd
trigger1 = vel x > 0
x = -.2

[State 9442, Stop]
type = VelSet
trigger1 = vel x <= 0
x = 0

[State 9442, Land]
type = PlaySnd
trigger1 = Time = 0
value = 1,5
channel = 13
volume = 60

[State 9442, Dust Explosion]
type = Explod
trigger1 = time = 102
anim = 7405
pos = 15, 0
postype = p1
bindtime = 1
sprpriority = 4
ontop = 1
ownpal = 1
supermove = 1
ignorehitpause = 1

[State 9442, Shake It Baby]
type = Envshake
trigger1 = time = 102
time = 30
freq = 70
ampl = -9

[State 9450, Bound]
type = ScreenBound
trigger1 = time < 50
value = 1

[State 9442, Taunt]
type = ChangeState
trigger1 = AnimTime = 0
value = 9443
ctrl = 0

;---------------------------------------------
; Ralf - Umanori Galactica Phantom End - Taunt
;---------------------------------------------

[Statedef 9443]
type = S
physics = S
movetype = I
velset = 0,0
anim = 9443
ctrl = 0

[State 9443, Turn]
type = Turn
trigger1 = facing = (parent, facing)
persistent = 0
ignorehitpause = 1

[State 9440, Override]
type = HitOverride
trigger1 = Time = 0
attr = SCA, AA, AP, AT
slot = 0
stateno = 9474
time = -1

[State 8830, Winpose]
type = ChangeState
trigger1 = win && roundstate = 3
value = 9464

[State 9443, Run Out]
type = ChangeState
trigger1 = animtime = 0
value = 9444
ctrl = 0

;---------------
; Ralf - Winpose
;---------------

[Statedef 9464]
type = S
physics = S
movetype = I
velset = 0,0
anim = 9460
ctrl = 0

[State 9464, Enter]
type = ChangeState
trigger1 = win && roundstate = 4
trigger1 = (parent, anim = 180) || (parent, anim = 181)
value = 9465

[Statedef 9465]
type = S
physics = S
movetype = I
velset = 0,0
anim = 9461
ctrl = 0

[State 9463, Winpose]
type = AssertSpecial
trigger1 = time = [0,450]
flag = roundnotover

[State 9465, Snd]
type = PlaySnd
trigger1 = AnimElem = 10,=1
value = 10,2
channel = 4

;-----------------------------------------------
; Ralf - Umanori Galactica Phantom End - Run Out
;-----------------------------------------------

[Statedef 9444]
type = S
physics = S
movetype = I
velset = 0,0
anim = 9444
ctrl = 0

[State 9444, Invincible]
type = NotHitBy
trigger1 = 1
value = SCA

[State 9444, Run SND]
type = PlaySnd
trigger1 = time = 4
value = 1,2
channel = 3
loop = 1

[State 9444, Vel]
type = VelSet
trigger1 = time >= 4
x = 8

[State 9444, Stop SND]
type = StopSND
trigger1 = time = 50
channel = 3

[State 9444, End]
type = DestroySelf
trigger1 = time = 80

;--------------------------------
; Ralf - Gets Hit while on screen
;--------------------------------

[Statedef 9474]
type = A
movetype = H
physics = N
ctrl = 0
anim = 9474
velset = 0,0

[State 9474, Stop]
type = StopSnd
trigger1 = time = 0
channel = 3

[State 9474, Fall]
type = changestate
trigger1 = hitshakeover
value = 9475

;------------------------
; Ralf - Falling from Hit
;------------------------

[Statedef 9475]
type = A
movetype = H
physics = N
ctrl = 0
anim = 9475
facep2 = 1
velset = 0

[State 9475, Gravity]
type = VelAdd
trigger1 = 1
y = .5

[State 9475, Vel]
type = VelSet
trigger1 = Time = 0
x = -4
y = -6

[State 9475, Land]
type = changestate
trigger1 = pos y >= 0 && vel y > 0
value = 9476

;--------------------------------
; Ralf - Hitting Ground from Fall
;--------------------------------

[Statedef 9476]
type = L
movetype = H
physics = N
ctrl = 0
anim = 9476
velset = 0,0

[State 9476, Floor] 
type = posset 
trigger1 = Time = 0
y = 0

[State 9476, Ground Wave]
type = Explod
trigger1 = time = 0
anim = 7030
pos = 0,0
postype = p1
bindtime = 1
ontop = 0
ownpal = 1

[State 9476, Snd]
type = PlaySnd
trigger1 = Time = 1
value = 1,19

[State 9476, Bounce]
type = changestate
trigger1 = animtime = 0
value = 9477

;----------------------------
; Ralf - Bouncing From Ground
;----------------------------

[Statedef 9477]
type = L
movetype = H
physics = N
ctrl = 0
anim = 9477
velset = -3.5,-3

[State 9477, Gravity]
type = VelAdd
trigger1 = time >= 0
y = .5

[State 9477, LieDown]
type = ChangeState
trigger1 = pos y >= 0 && vel y > 0
value = 9478

;-------------------------------
; Ralf - Lying Down & Getting Up
;-------------------------------

[Statedef 9478]
type = L
movetype = I
physics = N
ctrl = 0
anim = 9478
velset = 0,0

[State 9478, Floor] 
type = PosSet 
trigger1 = Time = 0
y = 0

[State 9478, Ground Wave]
type = Explod
trigger1 = time = 0
anim = 7030
pos = 0,0
postype = p1
bindtime = 1
ontop = 0
ownpal = 1

[State 9478, Snd]
type = PlaySnd
trigger1 = Time = 1
value = 1,19

[State 9478, Turn]
type = Turn
trigger1 = AnimTime = 0
trigger1 = facing = (parent, facing)
persistent = 0

[State 9478, Run Off]
type = ChangeState
trigger1 = animtime = 0
value = 9444

;--------------------------------------------------------------------------------------------------------------------------

;-------------------------------------------
; Enemy grabbed by Umanori Galactica Phantom
;-------------------------------------------

[Statedef 9450]
type    = S
physics = S
movetype= H
ctrl = 0
velset = 0,0

[State 9450, Custom]
type = Changeanim2
trigger1 = time = 0
value = 9451

[State 9450, 2]
type = Width
trigger1 = 1
value = -30,-30

[State 9450, Swing]
type = ChangeAnim2
trigger1 = time = 102
value = 9452

[State 1600, Air]
type = StateTypeSet
trigger1 = time >=102
statetype = A

[State 9450, Fly]
type = VelSet
trigger1 = time = 102
y = -30

[State 9450, Damage]
type = LifeAdd
trigger1 = time = 102
value = -492

[State 9450, Gravity]
type = VelAdd
trigger1 = time >=160
y = 0.5

[State 9450, Get Down]
type = VelSet
trigger1 = time > 130 
trigger1 = vel y > 0
y = 30

[State 9450, Camera]
type = ScreenBound
trigger1 = time > 102
value = 1

[State 9450, Invincible]
type = NotHitBy
trigger1 = 1
value = SCA

[State 9450, End]
type = SelfState
trigger1 = time > 303
trigger1 = vel y > 0
value = 5050

;-------------------------
; Ralf - Mount Tackle Miss
;-------------------------

[Statedef 9453]
type    = S
physics = N
movetype= A
anim = 9453
ctrl = 0
velset = 0,0

[State 9453, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 9453, Turn]
type = Turn
trigger1 = AnimTime = 0
trigger1 = facing = (parent, facing)
persistent = 0

[State 9453, End]
type = ChangeState
trigger1 = animtime = 0
value = 9444