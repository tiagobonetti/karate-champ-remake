;==========================================================================================================================
; CLARK STEEL (KOF 2002)
;==========================================================================================================================
; CONVERTED BY OROCHIKOF97
;==========================================================================================================================
; VERSION 1.0c (APRIL 5TH 2005)
;==========================================================================================================================
;
;==========================================================================================================================
; HYPER MOVES (DMs, SDMs, HSDM)
;==========================================================================================================================
; Ultra Argentina Backbreaker
; Running Three
; Mega Running Spark
; Twisted Wrestle
;--------------------------------------------------------------------------------------------------------------------------

;--------------------------------------------------------------------------------------------------------------------------
; Ultra Argentina Backbreaker (DM)
;--------------------------------------------------------------------------------------------------------------------------

;-------------
; Grab Attempt
;-------------

[Statedef 6000]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 6246

[State 211, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 6000, Power] ; S.Cancel Power Loss
type = PowerAdd
trigger1 = (var(18) = 1) && (!time)
value = -1000

[State 6000, Cancel]
type = VarSet
trigger1 = (!time) && (var(18) = 1)
v = 18
value = 0

[State 6000, Grab Attempt]
type = HitDef
trigger1 = AnimElem = 1 
trigger1 = var(14) <= 0 ; Throw Limiter
trigger1 = P2StateNo != [130,132]
trigger1 = P2StateNo != 140 && P2StateNo != [150,155]
trigger1 = p2stateno != [40,52]
attr = S, HT
hitflag = M
priority = 5, Dodge
sparkno = -1         
sprpriority = 2
p2facing = 1
p1stateno = 6001
p2stateno = 6010
ID = 6000
numhits = 0

[State 6000, SuperPause]
type = SuperPause
trigger1 = Time = 2
pos = 15,-85
unhittable = 1
anim = -1
time = 27
darken = 0
movetime = 27
poweradd = -1000
ignorehitpause = 1

[State 6000, DM Explod 1]
type = Explod
trigger1 = !time
anim = 7050
pos = 20, -87
postype = p1
bindtime = 1
sprpriority = 2
removeongethit = 1
ontop = 1
ownpal = 1
supermove = 1
ignorehitpause = 1

[State 6000, DM Explod 2]
type = Explod
trigger1 = !time
anim = 7051
pos = 20, -87
postype = p1
bindtime = 1
sprpriority = -3
removeongethit = 1
scale = 1.075,1.075
supermove = 1
ownpal = 1
ignorehitpause = 1

[State 6000, BG]
type = AssertSpecial
trigger1 = time = [0,27]
flag = noFG
flag2 = noBG
ignorehitpause = 1

[State 6000, DM SND]
type = Playsnd
trigger1 = Animelem = 1
value = 1,13
channel = 1

[State 6000, Grab Miss]
type = ChangeState
trigger1 = !Animtime
value = 0
ctrl = 1


;------------------------------------------------
; Ultra Argentina Backbreaker Success - 1st throw
;------------------------------------------------

[Statedef 6001]
type    = S
physics = S
movetype= A
anim = 6000
ctrl = 0
velset = 0,0

[State 211, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 6001, Camera]
type = ScreenBound
trigger1 = time >=0
value = 1

[State 6001, SuperPause]
type = SuperPause
trigger1 = Time = 1
pos = 15,-85
anim = 7050
time = 27
darken = 0
poweradd = -1000
movetime = 27
ignorehitpause = 1

[State 6001, DM Explod 2]
type = Explod
trigger1 = time = 1
anim = 7051
pos = 20, -87
postype = p1
bindtime = -1
sprpriority = -2
removeongethit = 1
scale = 1.075,1.075
supermovetime = 27
ownpal = 1
ignorehitpause = 1

[State 6001, Black BG]
type = AssertSpecial
trigger1 = time = [0,27]
flag = noFG
flag2 = noBG
ignorehitpause = 1


[State 6001, Special Spark] ; Special Throw Grab Spark
type = Explod
trigger1 = animelem = 3
anim = 7020
pos = 45,-52
postype = p1
bindtime = 1
sprpriority = 1
ownpal = 1

[State 6001, TBind 1]
type = TargetBind
trigger1 = AnimElem = 1, >=0
trigger1 = AnimElem = 2, < 0
pos = 27,0

[State 6001, TBind 2]
type = TargetBind
trigger1 = AnimElem = 2, >=0
trigger1 = AnimElem = 3, < 0
pos = 35,0

[State 6001, TBind 3]
type = TargetBind
trigger1 = AnimElem = 3, >=0
trigger1 = AnimElem = 4, < 0
pos = 30,0

[State 6001, TBind 4]
type = TargetBind
trigger1 = AnimElem = 4,>=0
trigger1 = AnimElem = 5,< 0
pos = 37,-87

[State 6001, TBind 5]
type = TargetBind
trigger1 = AnimElem = 5,>=0
trigger1 = AnimElem = 6,< 0
pos = 21,-113
time = 5

[State 6001, TBind 6]
type = TargetBind
trigger1 = time =  61 ;34
pos = 9,-167


[State 6001, Reception]
type = Hitdef
trigger1 = animelem = 8
attr = S, HT
hitflag = A
priority = 7,Hit
sparkno = -1
sprpriority = 2
p2facing = 1
p1stateno = 6002
p2stateno = 6012
p2getp1state = 1
id = 6001
chainID = 6000
numhits = 1

[State 6001, Oulia SND] ; "Oulia !!" voice sample
type = Playsnd
trigger1 = Animelem = 5, =1
value = 0,9
channel = 0

[State 6001, Grab SND];Special Grab Catch Sound
type = Playsnd
trigger1 = Animelem = 3, =1
value = 1,9
channel = 1

[State 6001, 6]
type = ChangeState
trigger1 = time = 143
value = 0
ctrl = 1

;--------------------------------------------
; Ultra Argentina Backbreaker - 1st Backbreak
;--------------------------------------------

[Statedef 6002]
type    = S
physics = S
movetype= A
anim = 902
ctrl = 0
velset = 0,0

[State 6002, Camera]
type = ScreenBound
trigger1 = time >=0
value = 1

[State 6002, TBind 1]
type = TargetBind
trigger1 = time = [0,3]
pos = 0,-85

[State 6002, TBind 2]
type = TargetBind
trigger1 = time >= 4
pos = 0,-97

[State 6002, SPRPRIORITY]
type = sprpriority
trigger1 = 1
value = 1

[State 902, Screen Shaking]
type = Envshake
trigger1 = !time
time = 20
freq = 70
ampl = -8

[State 9000, Flash]
type = Envcolor
trigger1 = !time
value = 248,248,248
time = 2
under = 1
ignorehitpause = 1

[State 6002, Width]
type = Width
trigger1 = 1
edge = 0,30

[State 6002, Goto Next State]
type = ChangeState
trigger1 = !Animtime
value = 6003

[State 6002, Special Spark]; Special Move Impact Spark
type = Explod
trigger1 = !time
anim = 7025
pos = 0,-85
postype = p1
bindtime = 1
ontop = 1
ownpal = 1

[State 6002, Ground Wave]; Small ground wave
type = Explod
trigger1 = !time
anim = 7030
pos = 2,5
postype = p1
bindtime = 1
ontop = 0
ownpal = 1

[State 902, Bone Crush SND];Bone Crush Sound
type = Playsnd
trigger1 = AnimElem = 1, =1
value = 1,11
volume = -50

[State 902, Land SND];Opponent Land Sound
type = Playsnd
trigger1 = AnimElem = 1, =3
value = 1,12
volume = -50


;----------------------------------------
; Ultra Argentina Backbreaker - 2nd throw
;----------------------------------------

[Statedef 6003]
type    = S
physics = S
movetype= A
anim = 6001
ctrl = 0
velset = 0,0

[State 6003, Camera]
type = ScreenBound
trigger1 = time >=0
value = 1

[State 6003, TBind 1]
type = TargetBind
trigger1 = AnimElem = 1, >=0
trigger1 = AnimElem = 2, < 0
pos = 30,0
time = 13

[State 6003, TBind 2]
type = TargetBind
trigger1 = AnimElem = 2,>=0
trigger1 = AnimElem = 3,< 0
pos = 37,-87
time = 8

[State 6003, TBind 3]
type = TargetBind
trigger1 = AnimElem = 3,>=0
trigger1 = AnimElem = 4,< 0
pos = 21,-113
time = 5

[State 6003, TBind 4]
type = TargetBind
trigger1 = AnimElem >= 4
pos = 9,-167

[State 6003, Reception]
type = Hitdef
trigger1 = animelem = 6
attr = S, HT
hitflag = A
priority = 7,Hit
sparkno = -1
sprpriority = 2
p2facing = 1
p1stateno = 6004
p2stateno = 6015
p2getp1state = 1
ID = 6003
chainID = 6001
numhits = 0

[State 6003, Oulia SND] ; "Oulia !!" voice sample
type = Playsnd
trigger1 = Animelem = 3, =1
value = 0,9
channel = 0

;--------------------------------------------
; Ultra Argentina Backbreaker - 2nd Backbreak
;--------------------------------------------

[Statedef 6004]
type    = S
physics = S
movetype= A
anim = 902
ctrl = 0
velset = 0,0

[State 6004, Camera]
type = ScreenBound
trigger1 = time >=0
value = 1

[State 6004, TBind 1]
type = TargetBind
trigger1 = time = [0,3]
pos = 0,-85

[State 6004, TBind 2]
type = TargetBind
trigger1 = time >= 4
pos = 0,-97

[State 6004, SPRPRIORITY]
type = sprpriority
trigger1 = 1
value = 1

[State 902, Screen Shaking]
type = Envshake
trigger1 = !time
time = 20
freq = 70
ampl = -8

[State 9000, Flash]
type = Envcolor
trigger1 = !time
value = 248,248,248
time = 2
under = 1
ignorehitpause = 1

[State 6004, Width]
type = Width
trigger1 = 1
edge = 0,30

[State 6004, Goto Next State]
type = ChangeState
trigger1 = !Animtime
value = 6005

[State 6004, Special Spark]; Special Move Impact Spark
type = Explod
trigger1 = !time
anim = 7025
pos = 0,-85
postype = p1
bindtime = 1
ontop = 1
ownpal = 1

[State 6004, Ground Wave]; Small ground wave
type = Explod
trigger1 = !time
anim = 7030
pos = 2,5
postype = p1
bindtime = 1
ontop = 0
ownpal = 1

[State 902, Bone Crush SND];Bone Crush Sound
type = Playsnd
trigger1 = AnimElem = 1, =1
value = 1,11
volume = -50

[State 902, Land SND];Opponent Land Sound
type = Playsnd
trigger1 = AnimElem = 1, =3
value = 1,12
volume = -50

;------------------------------------------
; Ultra Argentina Backbreaker - Final Throw
;------------------------------------------

[Statedef 6005]
type    = S
physics = S
movetype= A
anim = 6001
ctrl = 0
velset = 0,0

[State 910, Camera]
type = ScreenBound
trigger1 = time >=0
value = 1

[State 6005, TBind 1]
type = TargetBind
trigger1 = AnimElem = 1, >=0
trigger1 = AnimElem = 2, < 0
pos = 30,0
time = 13

[State 6005, TBind 2]
type = TargetBind
trigger1 = AnimElem = 2,>=0
trigger1 = AnimElem = 3,< 0
pos = 37,-87
time = 8

[State 6005, TBind 3]
type = TargetBind
trigger1 = AnimElem = 3,>=0
trigger1 = AnimElem = 4,< 0
pos = 21,-113
time = 5

[State 6005, TBind 4]
type = TargetBind
trigger1 = AnimElem = 4
pos = 9,-167

[State 6005, Final Reception]
type = Hitdef
trigger1 = animelem = 6
attr = S, HT
hitflag = A
priority = 7,Hit
sparkno = -1
sprpriority = 2
p2facing = 1
p1stateno = 6006
p2stateno = 6022
p2getp1state = 1
ID = 6005
chainID = 6003
ground.velocity = 5,-4
air.velocity = 5,-4
fall = 1
fall.recover = 0
fall.xvelocity = 3.5
fall.yvelocity = -3.6
numhits = 0

[State 6005, Oulia SND] ; "Oulia !!" voice sample
type = Playsnd
trigger1 = Animelem = 3, =1
value = 0,9
channel = 0

;----------------------------------------------
; Ultra Argentina Backbreaker - Final Backbreak
;----------------------------------------------

[Statedef 6006]
type    = S
physics = S
movetype= A
anim = 6006
ctrl = 0
velset = 0,0

[State 6006, Camera]
type = ScreenBound
trigger1 = time >=0
value = 1

[State 6006, TBind 1]
type = TargetBind
trigger1 = time = [0,3]
pos = 0,-85

[State 6006, TBind 2]
type = TargetBind
trigger1 = time >= 4
pos = 0,-97

[State 6006, SPRPRIORITY]
type = sprpriority
trigger1 = 1
value = 1

[State 902, Screen Shaking]
type = Envshake
trigger1 = !time
time = 20
freq = 70
ampl = -4

[State 9000, Flash]
type = Envcolor
trigger1 = !time
value = 248,248,248
time = 2
under = 1
ignorehitpause = 1

[State 6006, Width]
type = Width
trigger1 = 1
edge = 0,30

[State 6006, Goto Next State]
type = ChangeState
trigger1 = !Animtime
value = ifelse (random <= 500,6007,6008)

[State 6006, Special Spark]; Special Move Impact Spark
type = Explod
trigger1 = !time
anim = 7025
pos = 0,-85
postype = p1
bindtime = 1
ontop = 1
ownpal = 1

[State 6006, Ground Wave]; Small ground wave
type = Explod
trigger1 = !time
anim = 7030
pos = 2,5
postype = p1
bindtime = 1
ontop = 0
ownpal = 1

[State 902, Bone Crush SND];Bone Crush Sound
type = Playsnd
trigger1 = AnimElem = 1, =1
value = 1,11
volume = -50
channel = 1

[State 902, Land SND];Opponent Land Sound
type = Playsnd
trigger1 = AnimElem = 1, =3
value = 1,12
volume = -50
channel = 2

;--------------------------------------------------------------
; Ultra Argentina Backbreaker - Death Valley Bomb (KOF'02 style)
;--------------------------------------------------------------

[Statedef 6007]
type    = S
physics = S
movetype= A
anim = 6007
ctrl = 0
velset = 0,0

[State 6007, Camera]
type = ScreenBound
trigger1 = time >=0
trigger1 = prevstateno != 7902
value = 1

[State 7911, PosAdd]
type = PosAdd
trigger1 = !time
trigger1 = prevstateno = 7902
x = -75

[State 7903, SuperPause]
type = SuperPause
trigger1 = Time = 2
trigger1 = prevstateno = 7902
pos = 15,-85
anim = -1
time = 27
darken = 0

[State 7903, DM Explod 1]
type = Explod
trigger1 = !time
trigger1 = prevstateno = 7902
anim = 7050
pos = 10, -107
postype = p1
bindtime = -1
sprpriority = 2
removeongethit = 1
ontop = 1
ownpal = 1
supermove = 1

[State 7903, DM Explod 2]
type = Explod
trigger1 = !time
trigger1 = prevstateno = 7902
anim = 7051
pos = 10, -107
postype = p1
bindtime = -1
sprpriority = -2
removeongethit = 1
scale = 1.075,1.075
supermove = 1

[State 7903, DM Explod 3]
type = Explod
trigger1 = !time
trigger1 = prevstateno = 7902
anim = 7052
postype = back
pos = 0,0
bindtime = -1
sprpriority = -3
removeongethit = 1
supermove = 1

[State 7903, DM SND]
type = PlaySnd
trigger1 = !time
trigger1 = prevstateno = 7902
value = 1,13
channel = 1

[State 6007, SPRPRIORITY]
type = sprpriority
trigger1 = 1
value = 1

[State 6007, TBind 1]
type = TargetBind
trigger1 = AnimElem = 1, >=0
trigger1 = AnimElem = 2, < 0
pos = 0,-105

[State 6007, TBind 2]
type = TargetBind
trigger1 = AnimElem = 2, >=0
trigger1 = AnimElem = 3, < 0
pos = 10,-100

[State 6007, TBind 3]
type = TargetBind
trigger1 = AnimElem = 3, >=0
trigger1 = AnimElem = 4, < 0
pos = 0,-105

[State 6007, TBind 4] 
type = TargetBind
trigger1 = AnimElem = 4, >=0
trigger1 = AnimElem = 5, < 0
pos = -10,-106

[State 6007, TBind 5] 
type = TargetBind
trigger1 = AnimElem = 5, >=0
trigger1 = AnimElem = 6, < 0
pos = -15,-105

[State 6007, TBind 6] 
type = TargetBind
trigger1 = AnimElem = 6, >=0
trigger1 = AnimElem = 7, < 0
pos = -15,-105

[State 6007, TBind 7] ; Getting down
type = TargetBind
trigger1 = AnimElem = 7, >=0
trigger1 = AnimElem = 8, < 0
pos = -15,-75

[State 6007, TBind 8]
type = TargetBind
trigger1 = AnimElem = 8, >=0
trigger1 = AnimElem = 9, < 0
pos = -15,-20

[State 6007, TBind 9]
type = TargetBind
trigger1 = AnimElem = 9, >=0
trigger1 = AnimElem = 10, < 0
pos = -15,-20

[State 6007, TBind 10]
type = TargetBind
trigger1 = time = 62
pos = -15,20
time = 1

[State 6007, Shake It Baby]
type = Envshake
trigger1 = AnimElem = 8
time = 20
freq = 70
ampl = -8

[State 6007, Width]
type = Width
trigger1 = 1
edge = 60,0

[State 6007, Clark SND] ;"Death Valley Bomb !"
type = Playsnd
trigger1 = AnimElem = 3, =1
value = 0,19
channel = 0

[State 6007, Wind SND]
type = Playsnd
trigger1 = AnimElem = 5, =1
value = 1,15
channel = 1

[State 6007, Crush SND]
type = Playsnd
trigger1 = AnimElem = 8
value = 1,16
channel = 1

[State 6007, That also hurts]
type = TargetLifeAdd
trigger1 = AnimElem = 8
value = -191 - 45*(var(21)>0)

[State 9000, Flash]
type = Envcolor
trigger1 = AnimElem = 8,=1
value = 248,248,248
time = 2
under = 1
ignorehitpause = 1

[State 6007, Explod] ;Strong Ground Wave - Background
type = Explod
trigger1 = AnimElem = 8
anim = 7035
pos = 0,5
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = -1
pausemovetime = 999999999999999999

[State 6007, Explod 2];Strong Ground Wave - Foreground
type = Explod
trigger1 = AnimElem = 8
anim = 7036
pos = 0,5
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = 3
pausemovetime = 999999999999999999

[State 6007, Turn]
type = Turn
trigger1 = time >= 95

[State 6007, Finished]
type = ChangeState
trigger1 = !Animtime
value = 12
ctrl = 1

;--------------------------------------------------------------
; Ultra Argentina Backbreaker - Death Valley Bomb (KOF'01 style)
;--------------------------------------------------------------

[Statedef 6008]
type    = S
physics = S
movetype= A
anim = 6008
ctrl = 0
velset = 0,0

[State 6008, Camera]
type = ScreenBound
trigger1 = time >=0
value = 1

[State 6008, PosAdd]
type = PosAdd
trigger1 = !time
trigger1 = prevstateno = 7902
x = -75

[State 6008, SuperPause]
type = SuperPause
trigger1 = Time = 2
trigger1 = prevstateno = 7902
pos = 15,-85
anim = -1
time = 27
darken = 0

[State 6008, DM Explod 1]
type = Explod
trigger1 = !time
trigger1 = prevstateno = 7902
anim = 7050
pos = 10, -107
postype = p1
bindtime = -1
sprpriority = 2
removeongethit = 1
ontop = 1
ownpal = 1
supermove = 1

[State 6008, DM Explod 2]
type = Explod
trigger1 = !time
trigger1 = prevstateno = 7902
anim = 7051
pos = 10, -107
postype = p1
bindtime = -1
sprpriority = -2
removeongethit = 1
scale = 1.075,1.075
supermove = 1

[State 6008, DM Explod 3]
type = Explod
trigger1 = !time
trigger1 = prevstateno = 7902
anim = 7052
postype = back
pos = 0,0
bindtime = -1
sprpriority = -3
removeongethit = 1
supermove = 1

[State 6008, DM SND]
type = PlaySnd
trigger1 = !time
trigger1 = prevstateno = 7902
value = 1,13
channel = 1

[State 6008, SPRPRIORITY]
type = sprpriority
trigger1 = 1
value = 1

[State 6008, TBind 1]
type = TargetBind
trigger1 = AnimElem = 1, >=0
trigger1 = AnimElem = 2, < 0
pos = 0,-105

[State 6008, TBind 2]
type = TargetBind
trigger1 = AnimElem = 2, >=0
trigger1 = AnimElem = 3, < 0
pos = 10,-100

[State 6008, TBind 3]
type = TargetBind
trigger1 = AnimElem = 3, >=0
trigger1 = AnimElem = 4, < 0
pos = 0,-105

[State 6008, TBind 4] 
type = TargetBind
trigger1 = AnimElem = 4, >=0
trigger1 = AnimElem = 5, < 0
pos = -10,-106

[State 6008, TBind 5] 
type = TargetBind
trigger1 = AnimElem = 5, >=0
trigger1 = AnimElem = 6, < 0
pos = -15,-105

[State 6008, TBind 6] 
type = TargetBind
trigger1 = AnimElem = 6, >=0
trigger1 = AnimElem = 7, < 0
pos = -15,-105

[State 6008, TBind 7] ; Getting down
type = TargetBind
trigger1 = AnimElem = 7, >=0
trigger1 = AnimElem = 8, < 0
pos = -15,-75

[State 6008, TBind 8]
type = TargetBind
trigger1 = AnimElem = 8, >=0
trigger1 = AnimElem = 9, < 0
pos = -15,-20

[State 6008, TBind 9]
type = TargetBind
trigger1 = AnimElem = 9, >=0
trigger1 = AnimElem = 10, < 0
pos = -15,-20

[State 6008, TBind 10]
type = TargetBind
trigger1 = time = 39
pos = -15,20
time = 1

[State 6008, Shake It Baby]
type = Envshake
trigger1 = AnimElem = 8
time = 20
freq = 70
ampl = -8

[State 6008, Width]
type = Width
trigger1 = 1
edge = 60,0

[State 6008, Clark SND] ;"Death Valley Bomb !"
type = Playsnd
trigger1 = AnimElem = 3, =1
value = 0,19
channel = 0

[State 6008, Wind SND]
type = Playsnd
trigger1 = AnimElem = 5, =1
value = 1,15
channel = 1

[State 6008, Crush SND]
type = Playsnd
trigger1 = AnimElem = 8
value = 1,16
channel = 1

[State 6008, That also hurts]
type = TargetLifeAdd
trigger1 = AnimElem = 8
value = -191 - 45*(var(21)>0)

[State 6008, Flash]
type = Envcolor
trigger1 = AnimElem = 8,=1
value = 248,248,248
time = 2
under = 1
ignorehitpause = 1

[State 6008, Explod] ;Strong Ground Wave - Background
type = Explod
trigger1 = AnimElem = 8
anim = 7035
pos = 0,5
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = -1
pausemovetime = 999999999999999999

[State 6008, Explod 2];Strong Ground Wave - Foreground
type = Explod
trigger1 = AnimElem = 8
anim = 7036
pos = 0,5
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = 3
pausemovetime = 999999999999999999

[State 6008, Turn]
type = Turn
trigger1 = time >= 72

[State 6008, Finished]
type = ChangeState
trigger1 = !Animtime
value = 12
ctrl = 1


;-------------------------------------------------------------
; Ultra Argentina Backbreaker - Opponent grabbed in 1st throw
;-------------------------------------------------------------

[Statedef 6010]
type    = A
physics = N
movetype= H
ctrl = 0
velset = 0,0

[State 6010, Camera]
type = ScreenBound
trigger1 = time >=0
value = 1

[State 6010, Go To Heaven...]
type = Changeanim2
trigger1 = !time
value = 6010

[State 6010, ...Quick !]
type = Velset
trigger1 = time = [35,60]
y = -12

[State 6010, Stop !]
type = Velset
trigger1 = time = 61
y = 0

[State 6010, 3]
type = sprpriority
trigger1 = time >= 28
value = 2

[State 6010, 4]
type = Nothitby
trigger1 = 1
value = SCA

[State 6010, 6]
type = Width
trigger1 = 1
value = -30,-30

[State 6010, Goto next state]
type = Changestate
trigger1 = time = 62
value = 6011

;--------------------------------------------------------------
; Enemy thrown by Ultra Argentina BackBreaker - 1st coming down
;--------------------------------------------------------------


[Statedef 6011]
type    = A
physics = A
movetype= H
ctrl = 0

[State 6011, Camera]
type = ScreenBound
trigger1 = time >=0
value = 1

[State 6011, Please come back]
type = Velset
trigger1 = 1
y = 12

[State 6011, 2]
type = sprpriority
trigger1 = time >= 0
value = 1

[State 6011, HITBY] ; So Clark can continue the grab
type = Hitby
trigger1 = 1
value = S, HT

[State 6011, WIDTH]
type = Width
trigger1 = 1
value = -30,-30

;------------------------------------------------------------
; Enemy Thrown by Ultra Argentina BackBreaker - 1st backbreak
;------------------------------------------------------------

[Statedef 6012]
type    = A
physics = N
movetype= H
ctrl = 0

[State 6012, Camera]
type = ScreenBound
trigger1 = time >=0
value = 1

[State 6012, In my arms please]
type = Changeanim2
trigger1 = !time
value = 912

[State 6012, 2]
type = sprpriority
trigger1 = 1
value = 2

[State 6012, 6]
type = Envcolor
trigger1 = !time
value = 248,248,248
time = 1
under = 1

[State 6012, That hurts]; Remove the necessary amount of life
type = lifeadd
trigger1 = !time
value = -44 -11*(enemy, var(21)>0)
kill = 0

[State 6012, WIDTH]
type = Width
trigger1 = 1
value = -30,-30

[State 6012, Goto next state]
type = Changestate
trigger1 = !Animtime
value = 6013

;-----------------------------------------------------------
; Opponent thrown by Ultra Argentina Backbreaker - 2nd throw
;-----------------------------------------------------------

[Statedef 6013]
type    = A
physics = N
movetype= H
ctrl = 0
velset = 0,0
sprpriority = 1

[State 6013, Camera]
type = ScreenBound
trigger1 = time >=0
value = 1

[State 6013, Go To Heaven...]
type = Changeanim2
trigger1 = !time
value = 6013

[State 6013, ...Quick !]
type = Velset
trigger1 = time = [0,45]
y = -12

[State 6013, Stop !]
type = Velset
trigger1 = time = 46
y = 0

[State 6013, 3]
type = sprpriority
trigger1 = time >= 35
value = 2

[State 6013, 4]
type = Nothitby
trigger1 = 1
value = SCA

[State 6013, 6]
type = Width
trigger1 = 1
value = -30,-30

[State 6013, Goto next state]
type = Changestate
trigger1 = time = 47
value = 6014

;----------------------------------------------
; Ultra Argentina Backbreaker - 2nd Coming Down
;----------------------------------------------

[Statedef 6014]
type    = A
physics = A
movetype= H
ctrl = 0

[State 6014, Camera]
type = ScreenBound
trigger1 = time >=0
value = 1

[State 6014, Please come back]
type = Velset
trigger1 = 1
y = 12

[State 6014, 2]
type = sprpriority
trigger1 = time >= 0
value = 1

[State 6014, HITBY] ; So Clark can continue the grab
type = Hitby
trigger1 = 1
value = S, HT

[State 6014, WIDTH]
type = Width
trigger1 = 1
value = -30,-30

;---------------------------------------------------------------
; Opponent Thrown by Ultra Argentina Backbreaker - 2nd Backbreak
;---------------------------------------------------------------

[Statedef 6015]
type    = A
physics = N
movetype= H
ctrl = 0

[State 910, Camera]
type = ScreenBound
trigger1 = time >=0
value = 1

[State 6015, In my arms please]
type = Changeanim2
trigger1 = !time
value = 912

[State 6014, 2]
type = sprpriority
trigger1 = 1
value = 2

[State 6015, 6]
type = Envcolor
trigger1 = !time
value = 248,248,248
time = 1
under = 1

[State 6015, That hurts]; Remove the necessary amount of life
type = lifeadd
trigger1 = !time
value = -44 - 11*(enemy, var(21)>0)
kill = 0

[State 6015, WIDTH]
type = Width
trigger1 = 1
value = -30,-30

[State 6015, Goto next state]
type = Changestate
trigger1 = !Animtime
value = 6020

;-------------------------------------------
; Ultra Argentina Backbreaker - Final Thrown 
;-------------------------------------------


[Statedef 6020]
type    = A
physics = N
movetype= H
ctrl = 0
velset = 0,0

[State 6020, Camera]
type = ScreenBound
trigger1 = time >=0
value = 1

[State 6020, 1]
type = Changeanim2
trigger1 = !time
value = 6013

[State 6020, VELSET]
type = Velset
trigger1 = time = [0,45]
y = -12

[State 6020, VEL STOP]
type = Velset
trigger1 = time = 46
y = 0

[State 6020, SPRPRIORITY]
type = sprpriority
trigger1 = time = [0,10]
value = 1

[State 6020, SPRPRIORITY 2]
type = sprpriority
trigger1 = time >= 11
value = 2

[State 6020, 4]
type = Nothitby
trigger1 = 1
value = SCA

[State 6020, 6]
type = Width
trigger1 = 1
value = -30,-30

[State 6020, 7]
type = Changestate
trigger1 = time = 47
value = 6021

;---------------------------------------------------------------
; Opponent thrown by Ultra Argentina BackBreaker - 3rd come down
;---------------------------------------------------------------

[Statedef 6021]
type    = A
physics = A
movetype= H
ctrl = 0

[State 6021, Camera]
type = ScreenBound
trigger1 = time >=0
value = 1

[State 6021, 1]
type = Velset
trigger1 = 1
y = 12

[State 6021, 2]
type = sprpriority
trigger1 = time >= 0
value = 1

[State 6021, 3]
type = Hitby
trigger1 = 1
value = S, HT

[State 6021, 4]
type = Width
trigger1 = 1
value = -30,-30

;----------------------------------------------------------------------------
; Opponent Thrown by Ultra Argentina BackBreaker - being backbreak(face down)
;----------------------------------------------------------------------------

[Statedef 6022]
type    = A
physics = N
movetype= H
ctrl = 0

[State 910, Camera]
type = ScreenBound
trigger1 = time >=0
value = 1

[State 6022, Face]
type = ChangeAnim2
trigger1 = !time
value = 917

[State 6022, 2]
type = sprpriority
trigger1 = 1
value = 2

[State 6022, 4];damage
type = lifeadd
trigger1 = !time
value = -44 - 11*(enemy, var(21)>0)
kill = 0

[State 6022, 5]
type = Width
trigger1 = 1
value = -30,-30

[State 6022, 6]
type = Envcolor
trigger1 = !time
value = 248,248,248
time = 1
under = 1

[State 6022, 7]
type = Changestate
trigger1 = !Animtime
value = ifelse((enemy,stateno = 6007),6023,6024)


;----------------------------------------------------------------------
; Opponent Thrown By Ultra Argentina Backbreaker - Smashed Down (KOF'02)
;---------------------------------------------------------------------

[Statedef 6023]
type    = A
physics = N
movetype= H
ctrl = 0

[State 910, Camera]
type = ScreenBound
trigger1 = time >=0
value = 1

[State 6023, Get down !]
type = Changeanim2
trigger1 = !time
value = 6023

[State 6023, SPRPRIORITY]
type = sprpriority
trigger1 = 1
value = 2

[State 6023, VelAdd]
type = Veladd
trigger1 = time >= 64
y = .53

[State 6023, WIDTH]
type = Width
trigger1 = 1
value = -30,-30

[State 6023, End]
type = SelfState
trigger1 = !Animtime
value = 5030

;-----------------------------------------------------------------------
; Opponent Thrown By Ultra Argentina Backbreaker - Smashed Down (KOF'01)
;-----------------------------------------------------------------------

[Statedef 6024]
type    = A
physics = N
movetype= H
ctrl = 0

[State 910, Camera]
type = ScreenBound
trigger1 = time >=0
value = 1

[State 6024, Get down !]
type = Changeanim2
trigger1 = !time
value = 6024

[State 6024, SPRPRIORITY]
type = sprpriority
trigger1 = 1
value = 2

[State 6024, VelAdd]
type = Veladd
trigger1 = time >= 64
y = .53

[State 6024, WIDTH]
type = Width
trigger1 = 1
value = -30,-30

[State 6024, End]
type = SelfState
trigger1 = !Animtime
value = 5030


;--------------------------------------------------------------------------------------------------------------------------
; Ultra Argentina Backbreaker (SDM)
;--------------------------------------------------------------------------------------------------------------------------

;--------------
; Grab Attempt
;--------------

[Statedef 6100]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 6246

[State 211, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 6100, Power] ; S.Cancel Power Loss
type = PowerAdd
trigger1 = (var(18) = 2) && (!time)
value = -1000

[State 6100, Cancel]
type = VarSet
trigger1 = (!time) && (var(18) = 2)
v = 18
value = 0

[State 3200, SDM BG]
type = BGPalFX
trigger1 = Time >= 0
time = 1
invertall = 1
ignorehitpause = 1

[State 6100, Grab Attempt]
type = HitDef
trigger1 = AnimElem = 1 
trigger1 = var(14) <= 0 ; Throw Limiter
trigger1 = P2StateNo != [130,132]
trigger1 = P2StateNo != 140 && P2StateNo != [150,155]
trigger1 = p2stateno != [40,52]
attr = S, HT
hitflag = M
priority = 5, Dodge
sparkno = -1         
sprpriority = 2
p2facing = 1
p1stateno = 6101
p2stateno = 6110
ID = 6100
numhits = 0

[State 6100, SuperPause]
type = SuperPause
trigger1 = Time = 2
pos = 15,-85
unhittable = 1
anim = 6246
time = 27
darken = 0
movetime = 27
poweradd = -2000
ignorehitpause

[State 6100, SDM Explod 1]
type = Explod
trigger1 = !time
anim = 7061
pos = 20, -87
postype = p1
bindtime = -1
sprpriority = 2
removeongethit = 1
ontop = 1
ownpal = 1
supermove = 1
ignorehitpause = 1

[State 6100, SDM Explod 2]
type = Explod
trigger1 = !time
anim = 7062
pos = 20, -87
postype = p1
bindtime = -1
sprpriority = -3
removeongethit = 1
scale = 1.075,1.075
supermove = 1
ownpal = 1
ignorehitpause = 1

[State 6101, Black BG]
type = AssertSpecial
trigger1 = time = [0,27]
flag = noFG
flag2 = noBG
ignorehitpause = 1

[State 6100, SDM SND]
type = Playsnd
trigger1 = Animelem = 1
value = 1,17
channel = 1

[State 6100, Grab Miss]
type = ChangeState
trigger1 = !Animtime
value = 0
ctrl = 1

;------------------------------------------------
; Ultra Argentina Backbreaker Success - 1st throw
;------------------------------------------------

[Statedef 6101]
type    = S
physics = S
movetype= A
anim = 6000
ctrl = 0
velset = 0,0

[State 3200, SDM BG]
type = BGPalFX
trigger1 = Time >= 0
time = 1
invertall = 1
ignorehitpause = 1


[State 211, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 910, Camera]
type = ScreenBound
trigger1 = time >=0
value = 1

[State 6101, SuperPause]
type = SuperPause
trigger1 = Time = 1
pos = 15,-85
anim = 7061
time = 27
darken = 0
poweradd = -2000
movetime = 27

[State 6101, SDM Explod 2]
type = Explod
trigger1 = time = 1
anim = 7062
pos = 20, -87
postype = p1
bindtime = -1
sprpriority = -2
removeongethit = 1
scale = 1.075,1.075
supermovetime = 27
ownpal = 1
ignorehitpause = 1

[State 6101, Black BG]
type = AssertSpecial
trigger1 = time = [0,27]
flag = noFG
flag2 = noBG
ignorehitpause = 1

[State 6101, Special Spark] ; Special Throw Grab Spark
type = Explod
trigger1 = animelem = 3
anim = 7020
pos = 45,-52
postype = p1
bindtime = 1
sprpriority = 1
ownpal = 1

[State 6101, TBind 1]
type = TargetBind
trigger1 = AnimElem = 1, >=0
trigger1 = AnimElem = 2, < 0
pos = 27,0
time = 3

[State 6101, TBind 2]
type = TargetBind
trigger1 = AnimElem = 2, >=0
trigger1 = AnimElem = 3, < 0
pos = 35,0
time = 5

[State 6101, TBind 3]
type = TargetBind
trigger1 = AnimElem = 3, >=0
trigger1 = AnimElem = 4, < 0
pos = 30,0
time = 13

[State 6101, TBind 4]
type = TargetBind
trigger1 = AnimElem = 4,>=0
trigger1 = AnimElem = 5,< 0
pos = 37,-87
time = 8

[State 6101, TBind 5]
type = TargetBind
trigger1 = AnimElem = 5,>=0
trigger1 = AnimElem = 6,< 0
pos = 21,-113
time = 5

[State 6101, TBind 6]
type = TargetBind
trigger1 = time = 61 ;34
pos = 9,-167

[State 6101, Oulia SND] ; "Oulia !!" voice sample
type = Playsnd
trigger1 = Animelem = 5, =1
value = 0,9
channel = 0

[State 6101, Grab SND];Special Grab Catch Sound
type = Playsnd
trigger1 = Animelem = 3, =1
value = 1,9
channel = 1

;[State 6101, Wind Blow SND];"Swoosh" wind sound
;type = Playsnd
;trigger1 = Animelem = 5, =1
;value = 1,10
;channel = 1

[State 6101, Reception]
type = Hitdef
trigger1 = animelem = 8
attr = S, HT
hitflag = A
priority = 7,Hit
sparkno = -1
sprpriority = 2
p2facing = 1
p1stateno = 6102
p2stateno = 6112
ID = 6101
chainID = 6100
p2getp1state = 1
numhits = 0

[State 6101, 6]
type = ChangeState
trigger1 = time = 143
value = 0
ctrl = 1

;--------------------------------------------
; Ultra Argentina Backbreaker - 1st Backbreak
;--------------------------------------------

[Statedef 6102]
type    = S
physics = S
movetype= A
anim = 902
ctrl = 0
velset = 0,0

[State 3200, SDM BG]
type = BGPalFX
trigger1 = Time >= 0
time = 1
invertall = 1
ignorehitpause = 1


[State 910, Camera]
type = ScreenBound
trigger1 = time >=0
value = 1

[State 6102, TBind 1]
type = TargetBind
trigger1 = time = [0,3]
pos = 0,-85

[State 6102, TBind 2]
type = TargetBind
trigger1 = time >= 4
pos = 0,-97

[State 6102, SPRPRIORITY]
type = sprpriority
trigger1 = 1
value = 1

[State 902, Screen Shaking]
type = Envshake
trigger1 = !time
time = 20
freq = 70
ampl = -8

[State 9000, Flash]
type = Envcolor
trigger1 = !time
value = 248,248,248
time = 2
under = 1
ignorehitpause = 1

[State 6102, Width]
type = Width
trigger1 = 1
edge = 0,30

[State 6102, Goto Next State]
type = ChangeState
trigger1 = !Animtime
value = 6103

[State 6102, Special Spark]; Special Move Impact Spark
type = Explod
trigger1 = !time
anim = 7025
pos = 0,-85
postype = p1
bindtime = 1
ontop = 1
ownpal = 1

[State 6102, Explod];Strong Ground Wave - Background
type = Explod
trigger1 = !time
anim = 7035
pos = 5,0
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = -1

[State 6102, Explod 2];Strong Ground Wave - Foreground
type = Explod
trigger1 = !time
anim = 7036
pos = 5,0
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = 3

[State 6102, Bone Crush SND];Bone Crush Sound
type = Playsnd
trigger1 = AnimElem = 1, =1
value = 1,11

[State 6102, Land SND];Opponent Land Sound
type = Playsnd
trigger1 = AnimElem = 1, =3
value = 1,12

;----------------------------------------
; Ultra Argentina Backbreaker - 2nd throw
;----------------------------------------

[Statedef 6103]
type    = S
physics = S
movetype= A
anim = 6001
ctrl = 0
velset = 0,0

[State 3200, SDM BG]
type = BGPalFX
trigger1 = Time >= 0
time = 1
invertall = 1
ignorehitpause = 1

[State 910, Camera]
type = ScreenBound
trigger1 = time >=0
value = 1

[State 6103, TBind 1]
type = TargetBind
trigger1 = AnimElem = 1, >=0
trigger1 = AnimElem = 2, < 0
pos = 30,0
time = 13

[State 6103, TBind 2]
type = TargetBind
trigger1 = AnimElem = 2,>=0
trigger1 = AnimElem = 3,< 0
pos = 37,-87
time = 8

[State 6103, TBind 3]
type = TargetBind
trigger1 = AnimElem = 3,>=0
trigger1 = AnimElem = 4,< 0
pos = 21,-113
time = 5

[State 6103, TBind 4]
type = TargetBind
trigger1 = AnimElem >= 4
pos = 9,-167

[State 6103, Reception]
type = Hitdef
trigger1 = animelem = 6
attr = S, HT
hitflag = A
priority = 7,Hit
sparkno = -1
sprpriority = 2
p2facing = 1
p1stateno = 6104
p2stateno = 6115
p2getp1state = 1
ID = 6102
chainID = 6101
numhits = 0

[State 6103, Oulia SND] ; "Oulia !!" voice sample
type = Playsnd
trigger1 = Animelem = 3, =1
value = 0,9
channel = 0

;--------------------------------------------
; Ultra Argentina Backbreaker - 2nd Backbreak
;--------------------------------------------

[Statedef 6104]
type    = S
physics = S
movetype= A
anim = 902
ctrl = 0
velset = 0,0

[State 3200, SDM BG]
type = BGPalFX
trigger1 = Time >= 0
time = 1
invertall = 1
ignorehitpause = 1

[State 910, Camera]
type = ScreenBound
trigger1 = time >=0
value = 1

[State 6104, TBind 1]
type = TargetBind
trigger1 = time = [0,3]
pos = 0,-85

[State 6104, TBind 2]
type = TargetBind
trigger1 = time >= 4
pos = 0,-97

[State 6104, SPRPRIORITY]
type = sprpriority
trigger1 = 1
value = 1

[State 902, Screen Shaking]
type = Envshake
trigger1 = !time
time = 20
freq = 70
ampl = -8

[State 9000, Flash]
type = Envcolor
trigger1 = !time
value = 248,248,248
time = 2
under = 1
ignorehitpause = 1

[State 6104, Width]
type = Width
trigger1 = 1
edge = 0,30

[State 6104, Goto Next State]
type = ChangeState
trigger1 = !Animtime
value = ifelse(random<=500,6105,6200)

[State 6104, Special Spark]; Special Move Impact Spark
type = Explod
trigger1 = !time
anim = 7025
pos = 0,-85
postype = p1
bindtime = 1
ontop = 1
ownpal = 1

[State 6104, Explod];Strong Ground Wave - Background
type = Explod
trigger1 = !time
anim = 7035
pos = 5,0
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = -1

[State 6104, Explod 2];Strong Ground Wave - Foreground
type = Explod
trigger1 = !time
anim = 7036
pos = 5,0
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = 3

[State 6104, Bone Crush SND];Bone Crush Sound
type = Playsnd
trigger1 = AnimElem = 1, =1
value = 1,11

[State 6104, Land SND];Opponent Land Sound
type = Playsnd
trigger1 = AnimElem = 1, =3
value = 1,12

;------------------------------------------
; Ultra Argentina Backbreaker - Final Throw
;------------------------------------------

[Statedef 6105]
type    = S
physics = S
movetype= A
anim = 6050
ctrl = 0
velset = 0,0

[State 3200, SDM BG]
type = BGPalFX
trigger1 = Time >= 0
time = 1
invertall = 1
ignorehitpause = 1

[State 6105, TBind 1]
type = TargetBind
trigger1 = AnimElem = 1, >=0
trigger1 = AnimElem = 2, < 0
pos = 30,0
time = 13

[State 6105, TBind 2]
type = TargetBind
trigger1 = AnimElem = 2,>=0
trigger1 = AnimElem = 3,< 0
pos = 37,-87
time = 8

[State 6105, TBind 3]
type = TargetBind
trigger1 = AnimElem = 3,>=0
trigger1 = AnimElem = 4,< 0
pos = 21,-113
time = 5

[State 6105, TBind 4]
type = TargetBind
trigger1 = AnimElem = 4
pos = 9,-167

[State 6105, PosAdd]
type = PosAdd
trigger1 = animelem = 5
x = -7

[State 6105, PosAdd]
type = PosAdd
trigger1 = animelem = 7
x = 5

[State 6105, PosAdd]
type = PosAdd
trigger1 = time = [57,60]
y = -10

[State 6105, PosAdd]
type = PosAdd
trigger1 = time = 61
y = -9

[State 6105, PosAdd]
type = PosAdd
trigger1 = time = [62,64]
y = -8

[State 6105, PosAdd]
type = PosAdd
trigger1 = time = 65
y = -7

[State 6105, PosAdd]
type = PosAdd
trigger1 = time >= 66
y = -6

[State 6105, Air Grab Reception]
type = Hitdef
trigger1 = animelem = 12
attr = A, HT
hitflag = A
animtype = diagup
priority = 7,Hit
sparkno = S7015
hitsound = S2,var(4)
sprpriority = 2
p1stateno = 6106
p2stateno = 6122
p2getp1state = 1
ground.velocity = -4,-3
air.velocity = -4,-3
ID = 6103
chainID = 6102
fall.recover = 0
down.bounce = 1
numhits = 0

[State 6105, Oulia SND] ; "Oulia !!" voice sample
type = Playsnd
trigger1 = Animelem = 3, =1
trigger2 = AnimElem = 8, =1
value = 0,9
channel = 0

;---------------------------------------------
;Ultra Argentina Backbreaker SDM - Coming Down
;---------------------------------------------

[Statedef 6106]
type    = A
physics = N
movetype= A
anim = 6051
ctrl = 0
velset = 0,0

[State 3200, SDM BG]
type = BGPalFX
trigger1 = Time >= 0
time = 1
invertall = 1
ignorehitpause = 1

[State 9000, Flash]
type = Envcolor
trigger1 = !time
value = 248,248,248
time = 2
under = 1
ignorehitpause = 1

[State 6106, Freeze]
type = posfreeze
trigger1 = time = [0,34]

[State 6106, TBind 1]
type = TargetBind
trigger1 = AnimElem = 1, >=0
trigger1 = AnimElem = 2, < 0
pos = 26,-79

[State 6106, TBind 2]
type = TargetBind
trigger1 = AnimElem = 2, >=0
trigger1 = AnimElem = 3, < 0
pos = 15,-77

[State 6106, TBind 3]
type = TargetBind
trigger1 = AnimElem = 3, >=0
trigger1 = AnimElem = 4, < 0
pos = -2,-33

[State 6106, TBind 4]
type = TargetBind
trigger1 = AnimElem = 4, >=0
trigger1 = AnimElem = 5, < 0
pos = 10,-45

[State 6106, TBind 5]
type = TargetBind
trigger1 = AnimElem = 5, >=0
trigger1 = AnimElem = 6, < 0
pos = -37,-40

[State 6106, TBind 6]
type = TargetBind
trigger1 = AnimElem = 6, >=0
trigger1 = AnimElem = 7, < 0
pos = -35,-5

[State 6106, TBind 7]
type = TargetBind
trigger1 = AnimElem = 7, >=0
trigger1 = AnimElem = 8, < 0
pos = -35,-5

[State 6106, TBind 8]
type = TargetBind
trigger1 = AnimElem = 8
pos = -5,-17

[State 6106, PosAdd]
type = PosAdd
trigger1 = time = 42
y = -3

[State 6106, PosAdd]
type = PosAdd
trigger1 = time = [43,46]
y = -4

[State 6106, PosAdd]
type = PosAdd
trigger1 = time = 47
y = -3

[State 6106, PosAdd]
type = PosAdd
trigger1 = time = [48,50]
y = -2

[State 6106, PosAdd]
type = PosAdd
trigger1 = time = 51
y = -1

[State 6106, PosAdd]
type = PosAdd
trigger1 = time = [52,54]
y = 0

[State 6106, PosAdd]
type = PosAdd
trigger1 = time = 55
y = 1

[State 6106, PosAdd]
type = PosAdd
trigger1 = time = [56,58]
y = 2

[State 6106, PosAdd]
type = PosAdd
trigger1 = time = 59
y = 3

[State 6106, PosAdd]
type = PosAdd
trigger1 = time = [60,63]
y = 4

[State 6106, PosAdd]
type = PosAdd
trigger1 = time = [64,67]
y = 5

[State 6106, PosAdd]
type = PosAdd
trigger1 = time = [68,70]
y = 6

[State 6106, PosAdd]
type = PosAdd
trigger1 = time = [71,72]
y = 7

[State 6106, PosAdd]
type = PosAdd
trigger1 = time >= 73
y = 8

[State 6106, SPRPRIORITY]
type = sprpriority
trigger1 = 1
value = 2

[State 6106, CLARK SPARK SND]
type = PlaySnd
trigger1 = AnimElem = 6, =1
value = 0,20
channel = 0

[State 6106, WIDTH]
type = Width
trigger1 = 1
edge = 30,40

[State 6106, DOWN CRUSH]
type = ChangeState
trigger1 = pos y >= 0
value = 6107


;-------------------------------------------------------------------
; Ultra Argentina Backbreaker SDM - Pressing down opponent on ground
;-------------------------------------------------------------------

[Statedef 6107]
type    = S
physics = N
movetype= A
anim = 6052
ctrl = 0
velset = 0,0

[State 3200, SDM BG]
type = BGPalFX
trigger1 = Time >= 0
time = 1
invertall = 1
ignorehitpause = 1

[State 9000, Flash]
type = Envcolor
trigger1 = !time
value = 248,248,248
time = 2
under = 1
ignorehitpause = 1

[State 6107, WIDTH]
type = Width
trigger1 = 1
edge = 30,30

[State 6107, Slam Sound]
type = Playsnd
trigger1 = time = 1
value = 1,16
channel = 1

[State 6107, Floor PosSet]
type = Posset
trigger1 = !time
y = 0

[State 6107, TBind]
type = TargetBind
trigger1 = time = [0,21]
pos = 9,-1

[State 902, Screen Shaking]
type = Envshake
trigger1 = !time
time = 20
freq = 70
ampl = -4

[State 6107, Explod];Strong Ground Wave - Background
type = Explod
trigger1 = !time
anim = 7035
pos = 0,5
postype = p2
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = -1

[State 6107, Explod 2];Strong Ground Wave - Foreground
type = Explod
trigger1 = !time
anim = 7036
pos = 0,5
postype = p2
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = 3

[State 6107, p2LifeAdd]
type = TargetLifeAdd
trigger1 = !time
value = -157 - 36*(var(21)>0)

[State 6107, End]
type = ChangeState
trigger1 = !Animtime
value = 6108

;--------------------------------------------
; Ultra Argentina Backbreaker SDM - Jump Back
;--------------------------------------------

[Statedef 6108]
type    = S
physics = N
movetype= I
anim = 43
ctrl = 0
velset = 0,0

[State 3200, SDM BG]
type = BGPalFX
trigger1 = Time >= 0
time = 1
invertall = 1
ignorehitpause = 1

[State 910, Camera]
type = ScreenBound
trigger1 = time >=0
value = 1

[State 6108, VELBACK]
type = VelSet
trigger1 = !time
x = -3
y = -8

[State 6108, Gravity]
type = Gravity
trigger1 = 1

[State 6108, Land]
type = ChangeState
trigger1 = pos Y > -ceil(vel y)
value = 52

;--------------
; P2 states

;------------------------------------------------------------
; Ultra Argentina Backbreaker - Opponent grabbed in 1st throw
;------------------------------------------------------------

[Statedef 6110]
type    = A
physics = N
movetype= H
ctrl = 0
velset = 0,0

[State 6110, Camera]
type = ScreenBound
trigger1 = time >=0
value = 1

[State 6110, Go To Heaven...]
type = Changeanim2
trigger1 = !time
value = 6010 ;910

[State 6110, ...Quick !]
type = Velset
trigger1 = time = [0,60]
y = -12

[State 6110, Stop !]
type = Velset
trigger1 = time = 61
y = 0

[State 6110, 3]
type = sprpriority
trigger1 = time >= 28
value = 2

[State 6110, 4]
type = Nothitby
trigger1 = 1
value = SCA

[State 6110, 6]
type = Width
trigger1 = 1
value = -30,-30

[State 6110, Goto next state]
type = Changestate
trigger1 = time = 62
value = 6111

;--------------------------------------------------------------
; Enemy thrown by Ultra Argentina BackBreaker - 1st coming down
;--------------------------------------------------------------


[Statedef 6111]
type    = A
physics = A
movetype= H
ctrl = 0

[State 6111, Camera]
type = ScreenBound
trigger1 = time >=0
value = 1

[State 6111, Please come back]
type = Velset
trigger1 = 1
y = 12

[State 6111, 2]
type = sprpriority
trigger1 = time >= 0
value = 1

[State 6111, HITBY] ; So Clark can continue the grab
type = Hitby
trigger1 = 1
value = S, HT

[State 6111, WIDTH]
type = Width
trigger1 = 1
value = -30,-30

;------------------------------------------------------------
; Enemy Thrown by Ultra Argentina BackBreaker - 1st backbreak
;------------------------------------------------------------


[Statedef 6112]
type    = A
physics = N
movetype= H
ctrl = 0

[State 910, Camera]
type = ScreenBound
trigger1 = time >=0
value = 1

[State 6112, In my arms please]
type = Changeanim2
trigger1 = !time
value = 912

[State 6112, 2]
type = sprpriority
trigger1 = 1
value = 2

[State 6112, 6]
type = Envcolor
trigger1 = !time
value = 248,248,248
time = 1
under = 1

[State 6112, That hurts]; Remove the necessary amount of life
type = lifeadd
trigger1 = !time
value = -78 - 19*(enemy, var(21)>0)
kill = 0

[State 6112, WIDTH]
type = Width
trigger1 = 1
value = -30,-30

[State 6112, Goto next state]
type = Changestate
trigger1 = !Animtime
value = 6113


;-----------------------------------------------------------
; Opponent thrown by Ultra Argentina Backbreaker - 2nd throw
;-----------------------------------------------------------

[Statedef 6113]
type    = A
physics = N
movetype= H
ctrl = 0
velset = 0,0

[State 6113, Camera]
type = ScreenBound
trigger1 = time >=0
value = 1

[State 6113, Go To Heaven...]
type = Changeanim2
trigger1 = !time
value = 6013

[State 6113, ...Quick !]
type = Velset
trigger1 = time = [0,45]
y = -12

[State 6113, Stop !]
type = Velset
trigger1 = time = 46
y = 0

[State 6113, 3]
type = sprpriority
trigger1 = time >= 28
value = 2

[State 6113, 4]
type = Nothitby
trigger1 = 1
value = SCA

[State 6113, 6]
type = Width
trigger1 = 1
value = -30,-30

[State 6113, Goto next state]
type = Changestate
trigger1 = time = 47
value = 6114

;----------------------------------------------
; Ultra Argentina Backbreaker - 2nd Coming Down
;----------------------------------------------

[Statedef 6114]
type    = A
physics = A
movetype= H
ctrl = 0

[State 6114, Camera]
type = ScreenBound
trigger1 = time >=0
value = 1

[State 6114, Please come back]
type = Velset
trigger1 = 1
y = 12

[State 6114, 2]
type = sprpriority
trigger1 = time >= 0
value = 1

[State 6114, HITBY] ; So Clark can continue the grab
type = Hitby
trigger1 = 1
value = S, HT

[State 6114, WIDTH]
type = Width
trigger1 = 1
value = -30,-30

;---------------------------------------------------------------
; Opponent Thrown by Ultra Argentina Backbreaker - 2nd Backbreak
;---------------------------------------------------------------

[Statedef 6115]
type    = A
physics = N
movetype= H
ctrl = 0

[State 910, Camera]
type = ScreenBound
trigger1 = time >=0
value = 1

[State 6115, In my arms please]
type = Changeanim2
trigger1 = !time
value = 912

[State 6115, 2]
type = sprpriority
trigger1 = 1
value = 2

[State 6115, 6]
type = Envcolor
trigger1 = !time
value = 248,248,248
time = 1
under = 1

[State 6115, That hurts]; Remove the necessary amount of life
type = lifeadd
trigger1 = !time
value = -78 - 19*(enemy, var(21)>0)
kill = 0

[State 6115, WIDTH]
type = Width
trigger1 = 1
value = -30,-30

[State 6115, Goto next state]
type = Changestate
trigger1 = !Animtime
value = ifelse(enemy,stateno=6200,6150,6120)

;-------------------------------------------
; Ultra Argentina Backbreaker - Final Thrown 
;-------------------------------------------

[Statedef 6120]
type    = A
physics = N
movetype= H
ctrl = 0
velset = 0,0

[State 6120, Camera]
type = ScreenBound
trigger1 = time >=0
value = 1

[State 6120, 1]
type = Changeanim2
trigger1 = !time
value = 6013

[State 6020, VELSET]
type = Velset
trigger1 = time = [0,42]
y = -12

[State 6020, VEL STOP]
type = Velset
trigger1 = time = 48
y = 0

[State 6120, SPRPRIORITY]
type = sprpriority
trigger1 = time = [0,10]
value = 1

[State 6120, SPRPRIORITY 2]
type = sprpriority
trigger1 = time >= 11
value = 2

[State 6120, 4]
type = Nothitby
trigger1 = 1
value = SCA

[State 6120, 6]
type = Width
trigger1 = 1
value = -30,-30

[State 6120, 7]
type = Changestate
trigger1 = time = 49
value = 6121

;---------------------------------------------------------------
; Opponent thrown by Ultra Argentina BackBreaker - 3rd come down
;---------------------------------------------------------------

[Statedef 6121]
type    = A
physics = A
movetype= H
ctrl = 0

[State 6121, Camera]
type = ScreenBound
trigger1 = time >=0
value = 1

[State 6121, 1] ; Don't worry about the vel, he is off-screen and the timing is ok :)
type = Velset
trigger1 = 1
y = 20

[State 6121, 2]
type = sprpriority
trigger1 = time >= 0
value = 1

[State 6121, 3]
type = Hitby
trigger1 = 1
value = S, HT

[State 6121, 4]
type = Width
trigger1 = 1
value = -30,-30

;------------------------------------------------------------------------
; Opponent Thrown by Ultra Argentina Backbreaker SDM - Falling with Clark
;------------------------------------------------------------------------

[Statedef 6122]
type    = A
physics = N
movetype= H
ctrl = 0

[State 6122, 1]
type = Changeanim2
trigger1 = time = 1
value = 6122

[State 6122, 2]
type = sprpriority
trigger1 = 1
value = 1

[State 6122, 3]
type = ScreenBound
trigger1 = 1
value = 1

[State 6122, 4]
type = Width
trigger1 = 1
value = -30,-30

[State 6122, 5]
type = Envcolor
trigger1 = !time
value = 248,248,248
time = 1
under = 1

[State 6122, 6]
type = lifeadd
trigger1 = !time
value = -157 - 39*(enemy, var(21)>0)
absolute = 1
kill = 0

[State 6122, END]
type = Changestate
trigger1 = p2stateno = 6107
value = 6123

;---------------------------------------------------------------------
; Opponent thrown by Ultra Argentina BackBreaker SDM - being slam down
;---------------------------------------------------------------------

[Statedef 6123]
type    = A
physics = N
movetype= H
ctrl = 0

[State 6123, CUSTOM ANIM]
type = Changeanim
trigger1 = !time
value = ifelse(SelfAnimExist(5112),5112,ifelse(SelfAnimExist(5111),5111,5110))

[State 6123, CAMERA];adjust the camera
type = ScreenBound
trigger1 = time <= 22
value = 1

[State 6123, Vel]
type = VelSet
trigger1 = time = 22
x = -5
y = -6

[State 6123, Gravity]
type = VelAdd
trigger1 = time >= 22
y = 0.5

[State 6123, 2]
type = ChangeAnim
trigger1 = Time = 22
value = ifelse(SelfAnimExist(5162),5162,ifelse(SelfAnimExist(5161),5161,5160))

[State 6123, End]
type = ChangeState
trigger1 = vel y > 0
trigger1 = time = 45
value = 6124

[Statedef 6124]
type    = A
physics = N
movetype= H
ctrl = 0

[State 6124, Ground]
type = PosSet
trigger1 = !time
y = 0

[State 6124, Freeze]
type = PosFreeze
trigger1 = time = [0,3]

[State 6124, ANIM]
type = Changeanim
trigger1 = !time
value = ifelse(SelfAnimExist(5112),5112,ifelse(SelfAnimExist(5111),5111,5110))

[State 6124, CUSTOM ANIM]
type = Changeanim
trigger1 = Time = 4
value = ifelse(SelfAnimExist(5162),5162,ifelse(SelfAnimExist(5161),5161,5160))

[State 6124, Vel]
type = VelSet
trigger1 = time = 4
x = -4
y = -3

[State 6124, Gravity]
type = VelAdd
trigger1 = time >= 6
y = 0.5

[State 6124, End]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y > -10
trigger1 = time >= 10
value = 6125

[Statedef 6125]
type    = L
movetype= H
physics = N
velset = 0,0

[State 6124, Ground]
type = PosSet
trigger1 = !time
y = 0

[State 6125, CUSTOM ANIM]
type = Changeanim
trigger1 = !time
value = ifelse(SelfAnimExist(5112),5112,ifelse(SelfAnimExist(5111),5111,5110))

[State 6125, GetUp]
type = SelfState
trigger1 = time = 41 && alive
value = 5120

[State 6125,End]
type = SelfState
trigger1 = time = 40 && !alive
value = 5150

;-------------------------------------------------------
; Ultra Argentina Backbreaker SDM - Final Throw (KOF'03)
;-------------------------------------------------------

[Statedef 6200]
type    = S
physics = S
movetype= A
anim = 6050
ctrl = 0
velset = 0,0

[State 3200, SDM BG]
type = BGPalFX
trigger1 = 1
time = 1
invertall = 1
ignorehitpause = 1

[State 6200, TBind 1]
type = TargetBind
trigger1 = AnimElem = 1, >=0
trigger1 = AnimElem = 2, < 0
pos = 15,0
time = 13

[State 6200, TBind 2]
type = TargetBind
trigger1 = AnimElem = 2,>=0
trigger1 = AnimElem = 3,< 0
pos = 37,-87
time = 8

[State 6200, TBind 3]
type = TargetBind
trigger1 = AnimElem = 3,>=0
trigger1 = AnimElem = 4,< 0
pos = 21,-113
time = 5

[State 6200, TBind 4]
type = TargetBind
trigger1 = AnimElem = 4
pos = 9,-167

[State 6200, PosAdd]
type = PosAdd
trigger1 = animelem = 7
x = -7

[State 6200, PosAdd]
type = PosAdd
trigger1 = time = [57,62]
y = -10

[State 6200, PosAdd]
type = PosAdd
trigger1 = time = [63,65]
y = -9

[State 6200, PosAdd]
type = PosAdd
trigger1 = time = [66,67]
y = -8

[State 6200, PosAdd]
type = PosAdd
trigger1 = time = [68,70]
y = -7

[State 6200, PosAdd]
type = PosAdd
trigger1 = time = [71,73]
y = -6

[State 6200, PosAdd]
type = PosAdd
trigger1 = time = [74,76]
y = -5

[State 6200, PosAdd]
type = PosAdd
trigger1 = time >= 77
y = -4

[State 6200, Air Grab Reception]
type = Hitdef
trigger1 = animelem = 12
attr = A, HT
hitflag = A
priority = 7,Hit
animtype = up
sparkno = S7015
hitsound = S2,var(4)
sprpriority = 2
p2facing = 1
p1stateno = 6201
p2stateno = 6152
p2getp1state = 1
ground.velocity = -4,-6
air.velocity = -4,-6
ID = 6200
chainID = 6102
fall.recover = 0
down.bounce = 1
numhits = 1

[State 6200, Oulia SND] ; "Oulia !!" voice sample
type = Playsnd
trigger1 = Animelem = 3, =1
trigger2 = AnimElem = 8, =1
value = 0,9
channel = 0

;------------------------------------------------------------------
;Ultra Argentina Backbreaker SDM - Coming Down (KOF'03 - Arms Open)
;------------------------------------------------------------------

[Statedef 6201]
type    = A
physics = N
movetype= A
anim = 6200
ctrl = 0
velset = 0,0

[State 3200, SDM BG]
type = BGPalFX
trigger1 = 1
time = 1
invertall = 1
ignorehitpause = 1

[State 6201, Freeze]
type = posfreeze
trigger1 = time = [0,31]

[State 6201, Flash]
type = Envcolor
trigger1 = !time
value = 248,248,248
time = 2
under = 1
ignorehitpause = 1

[State 6201, VelSet]
type = VelSet
trigger1 = time = 32
y = 1

[State 6201, VelSet]
type = VelAdd
trigger1 = time >= 33
y = .52

[State 6201, TBind 1]
type = TargetBind
trigger1 = AnimElem = 1, >=0
trigger1 = AnimElem = 2, < 0
pos = 20,-65

[State 6201, TBind 2]
type = TargetBind
trigger1 = AnimElem = 2, >=0
trigger1 = AnimElem = 3, < 0
pos = 24,-65

[State 6201, TBind 3]
type = TargetBind
trigger1 = AnimElem = 3, >=0
trigger1 = AnimElem = 4, < 0
pos = 28,-85

[State 6201, TBind 4]
type = TargetBind
trigger1 = AnimElem = 4, >=0
trigger1 = AnimElem = 5, < 0
pos = 17,-120

[State 6201, TBind 5]
type = TargetBind
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
pos = 5,-130
time = 4

[State 6201, SPRPRIORITY]
type = sprpriority
trigger1 = 1
value = 2

[State 6201, WIDTH]
type = Width
trigger1 = 1
edge = 30,40

[State 6201, DOWN CRUSH]
type = ChangeState
trigger1 = pos y >= -20
value = 6202

;------------------------------------------------------------------
; Ultra Argentina Backbreaker SDM - Clark Special (KOF'03 finisher)
;------------------------------------------------------------------

[Statedef 6202]
type    = S
physics = N
movetype= A
anim = 6201
ctrl = 0
velset = 0,0

[State 3200, SDM BG]
type = BGPalFX
trigger1 = 1
time = 1
invertall = 1
ignorehitpause = 1

[State 3200, SDM BG]
type = BGPalFX
trigger1 = 1
time = 1
invertall = 1
ignorehitpause = 1

[State 6202, Floor]
type = PosSet
trigger1 = !time
y = 0

[State 6202, CLARK SPARK SND]
type = PlaySnd
trigger1 = time = 1
value = 0,20
channel = 0

[State 6202, Flash]
type = Envcolor
trigger1 = !time
value = 248,248,248
time = 2
under = 1
ignorehitpause = 1

[State 6202, WIDTH]
type = Width
trigger1 = 1
edge = 30,30

[State 6202, Slam Sound]
type = Playsnd
trigger1 = time = 1
value = 1,16
channel = 1

[State 6201, TBind 1]
type = TargetBind
trigger1 = AnimElem = 1, >=0
trigger1 = AnimElem = 2, < 0
pos = 2,-120

[State 6201, TBind 2]
type = TargetBind
trigger1 = AnimElem = 2, >=0
trigger1 = AnimElem = 3, < 0
pos = 1,-121

[State 6201, TBind 3]
type = TargetBind
trigger1 = AnimElem = 3
pos = 0,-122
time = 5

[State 6202, Screen Shaking]
type = Envshake
trigger1 = !time
time = 20
freq = 70
ampl = -4

[State 6202, Explod];Strong Ground Wave - Background
type = Explod
trigger1 = !time
anim = 7035
pos = 5,5
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = -1

[State 6202, Explod 2];Strong Ground Wave - Foreground
type = Explod
trigger1 = !time
anim = 7036
pos = 5,5
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = 3

[State 6202, Explod 2] ;HitSpark
type = Explod
trigger1 = !time
anim = 7015
pos = 0,0
postype = p2
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = 3

[State 6202, p2LifeAdd]
type = TargetLifeAdd
trigger1 = !time
value = -147 - 36*(var(21)>0)

[State 6202, End]
type = ChangeState
trigger1 = !Animtime
value = 6203

;-----------------------------------------------------
; Ultra Argentina Backbreaker SDM - Jump Back (KOF'03)
;-----------------------------------------------------

[Statedef 6203]
type    = S
physics = N
movetype= I
anim = 6202
ctrl = 0
velset = 0,0

[State 3200, SDM BG]
type = BGPalFX
trigger1 = 1
time = 1
invertall = 1
ignorehitpause = 1

[State 6203, VELBACK]
type = VelSet
trigger1 = !time
x = -9

[State 6203, Land]
type = ChangeState
trigger1 = !Animtime
value = 52

;--------------------------

;------------
; KOF'03 P2

;-------------------------------------------
; Ultra Argentina Backbreaker - Final Thrown 
;-------------------------------------------

[Statedef 6150]
type    = A
physics = N
movetype= H
ctrl = 0
velset = 0,0

[State 6150, Camera]
type = ScreenBound
trigger1 = time >=0
value = 1

[State 6150, 1]
type = Changeanim2
trigger1 = !time
value = 6013

[State 6150, VELSET]
type = Velset
trigger1 = time = [0,60]
y = -12

[State 6150, VEL STOP]
type = Velset
trigger1 = time = 61
y = 0

[State 6150, SPRPRIORITY]
type = sprpriority
trigger1 = time = [0,10]
value = 1

[State 6150, SPRPRIORITY 2]
type = sprpriority
trigger1 = time >= 11
value = 2

[State 6150, 4]
type = Nothitby
trigger1 = 1
value = SCA

[State 6150, 6]
type = Width
trigger1 = 1
value = -30,-30

[State 6150, 7]
type = Changestate
trigger1 = time = 66
value = 6151

;---------------------------------------------------------------
; Opponent thrown by Ultra Argentina BackBreaker - 3rd come down
;---------------------------------------------------------------

[Statedef 6151]
type    = A
physics = A
movetype= H
ctrl = 0

[State 6151, Camera]
type = ScreenBound
trigger1 = time >=0
value = 1

[State 6151, 1]
type = Velset
trigger1 = 1
y = 20

[State 6151, 2]
type = sprpriority
trigger1 = time >= 0
value = 1

[State 6151, 3]
type = Hitby
trigger1 = 1
value = S, HT

[State 6151, 4]
type = Width
trigger1 = 1
value = -30,-30

;------------------------------------------------------------------------
; Opponent Thrown by Ultra Argentina Backbreaker SDM - Falling with Clark
;------------------------------------------------------------------------

[Statedef 6152]
type    = A
physics = N
movetype= H
ctrl = 0

[State 6152, 1]
type = Changeanim2
trigger1 = !time
value = 6152

[State 6152, 2]
type = sprpriority
trigger1 = 1
value = 1

[State 6152, 3]
type = ScreenBound
trigger1 = 1
value = 1

[State 6152, 4]
type = Width
trigger1 = 1
value = -30,-30

[State 6152, 5]
type = Envcolor
trigger1 = !time
value = 248,248,248
time = 1
under = 1

[State 6152, 6]
type = lifeadd
trigger1 = !time
value = -157 - 39*(enemy, var(21)>0)
absolute = 1
kill = 0

[State 6152, END]
type = Changestate
trigger1 = p2stateno = 6202
value = 6153

;---------------------------------------------------------------------
; Opponent thrown by Ultra Argentina BackBreaker SDM - being slam down
;---------------------------------------------------------------------

[Statedef 6153]
type    = A
physics = N
movetype= H
ctrl = 0

[State 6152, 1]
type = Changeanim2
trigger1 = !time
value = 6153

[State 6153, CAMERA];adjust the camera
type = ScreenBound
trigger1 = time <= 22
value = 1

[State 6153, End]
type = SelfState
trigger1 = time = 35
value = 5050



;--------------------------------------------------------------------------------------------------------------------------
; Running Three (DM)
;--------------------------------------------------------------------------------------------------------------------------

;--------------
; Grab Attempt
;--------------

[Statedef 3000]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 3000

[State 3000, Invincible]
type = NotHitBy
trigger1 = 1
value = SCA

[State 6000, Power] ; S.Cancel Power Loss
type = PowerAdd
trigger1 = (var(18) = 3) && (!time)
value = -1000

[State 6000, Cancel]
type = VarSet
trigger1 = (!time) && (var(18) = 3)
v = 18
value = 0

[State 3000, SuperPause]
type = SuperPause
trigger1 = Time = 2
unhittable = 1
anim = 3000
time = 27
darken = 0
poweradd = -1000
ignorehitpause
movetime = 27

[State 3000, DM Explod 1]
type = Explod
trigger1 = !time
anim = 7050
pos = 20, -87
postype = p1
bindtime = -1
sprpriority = 2
removeongethit = 1
ontop = 1
ownpal = 1
supermove = 1

[State 3000, DM Explod 2]
type = Explod
trigger1 = !time
anim = 7051
pos = 20, -87
postype = p1
bindtime = -1
sprpriority = -3
removeongethit = 1
scale = 1.075,1.075
supermove = 1
ownpal = 1

[State 3000, BG]
type = AssertSpecial
trigger1 = time = [0,27]
flag = noFG
flag2 = noBG
ignorehitpause = 1

[State 3000, DM SND]
type = Playsnd
trigger1 = Animelem = 1
value = 1,13
channel = 1

[State 3000, Running Three SND]
type = Playsnd
trigger1 = Animelem = 1, =1
value = 0,21
channel = 0

[State 3000, Grab Miss]
type = ChangeState
trigger1 = !Animtime
value = 3001
ctrl = 1

;---------------------------------------
; Running Three - Running (obviously :P)
;---------------------------------------

[Statedef 3001]
type    = S
movetype= A
physics = S
;type    = S
;physics = S
;movetype= I
anim = 101
ctrl = 0
velset = 0
;facep2 = 1

[State 3001, Running Speed]
type = VelSet
trigger1 = AnimElem = 1, >=0
trigger1 = time = [0,33]
x = const(velocity.run.fwd.x) + 1

[State 100, 2]
type = PlaySnd
trigger1 = !time
value = 1,2
channel = 3
loop = 1

[State 3001, AfterImages]
type = AfterImage
trigger1 = Animelem = 1
palinvertall = 0
time = 33
length = 12 ;9
FrameGap = 3

[State 3001, Continue]
type = ChangeState
trigger1 = p2BodyDist X < 15
trigger1 = p2StateType = S || p2StateType = C
value = 3002

[State 3001, Stop Run]
type = ChangeState
trigger1 = time > 34
trigger2 = time > 34 && p2BodyDist X > 15
trigger3 = p2BodyDist X < 15 && (p2statetype = A || p2statetype = L)
value = 920
ctrl = 0

;--------------------------
; Running Three - Grab Miss
;--------------------------

[Statedef 920]
type    = S
physics = S
movetype= I
anim = 920
ctrl = 0
velset = 0,0

[State 211, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 920, Snd]
type = PlaySnd
trigger1 = time = 1
value = 1,14
channel = 1

[State 920, End]
type = ChangeState
trigger1 = !Animtime
value = 0
ctrl = 1

;-----------------------------
; Running Three - Grab Attempt
;-----------------------------

[Statedef 3002]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 3050

[State 211, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 3002, Grab Attempt]
type = HitDef
trigger1 = AnimElem = 2
trigger1 = var(14) <= 0 ; Throw Limiter
trigger1 = P2StateNo != [130,132]
trigger1 = P2StateNo != 140 && P2StateNo != [150,155]
trigger1 = p2stateno != [40,52]
attr = S, HT
hitflag = M
priority = 5, Miss
sparkno = -1         
sprpriority = 1
p2facing = 1
p1stateno = 3003
p2stateno = 3013
ground.velocity = 4,-3
fall = 1
fall.recover = 0
fall.xvelocity = -3.5
fall.yvelocity = -3.6
numhits = 0
guard.dist = 50

[State 3002, 2]
type = StopSnd
trigger1 = !time
channel = 3

[State 3002, Grab Miss]
type = ChangeState
trigger1 = !Animtime
value = 0
ctrl = 1

;------------------------
; Running Three - Success 
;------------------------

[Statedef 3003]
type    = S
physics = N
movetype= A
anim = 3001
ctrl = 0

[State 211, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 9000, Flash]
type = Envcolor
trigger1 = !time
value = 248,248,248
time = 2
under = 1
ignorehitpause = 1

[State 3003, Special Spark] ; Special Throw Grab Spark
type = Explod
trigger1 = animelem = 1
anim = 7020
pos = 61,-85
postype = p1
bindtime = 1
sprpriority = 2
ownpal = 1

[State 3003, Grab SND] ; Special Grab Catch Sound
type = Playsnd
trigger1 = Animelem = 1, =1
value = 1,9
channel = 1

[State 3003,Run SND]
type = PlaySnd
trigger1 = AnimElem = 14, =1
value = 1,2
channel = 1

[State 3003, Jump SND]
type = PlaySnd
trigger1 = AnimElem = 20, =1
value = 1,4
channel = 1

[State 3003, Walk Vel]
type = PosAdd
trigger1 = time = [75,79]
trigger2 = time = 81
x = -1

[State 3003, Walk Vel]
type = PosAdd
trigger1 = time = 80
trigger2 = time = 82
trigger3 = time = 84
x = -2

[State 3003, Run Vel]
type = PosAdd
trigger1 = time = 83
trigger2 = time = 85
trigger3 = time = 87
x = -3

[State 3003, Run Vel]
type = PosAdd
trigger1 = time = 86
trigger2 = time = 88
trigger3 = time = 90
x = -4

[State 3003, Run Vel]
type = PosAdd
trigger1 = time = 89
trigger2 = time = [91,94]
x = -5

[State 3003, Run Vel]
type = PosAdd
trigger1 = time = [95,97]
x = -6

[State 3003, Jump Vel]
type = VelSet
trigger1 = animelem = 20
x = -6
y = -10

[State 3003, Gravity]
type = VelAdd
trigger1 = time >= 98
y = 0.52

[State 3003, SPRPRIORITY]
type = SprPriority
trigger1 = AnimElem = 4, >=0
trigger1 = AnimElem = 8, < 0
value = 1

[State 3003, SPRPRIORITY]
type = SprPriority
trigger1 = AnimElem = 1, >=0
trigger1 = AnimElem = 4, < 0
trigger2 = AnimElem = 8, >=0
value = 2

[State 3003, TBind 1]
type = TargetBind
trigger1 = AnimElem = 1, >=0
trigger1 = AnimElem = 2, < 0
pos = 30,0

[State 3003, TBind 2]
type = TargetBind
trigger1 = AnimElem = 2, >=0
trigger1 = AnimElem = 3, < 0
pos = 30,0

[State 3003, TBind 3]
type = TargetBind
trigger1 = AnimElem = 3, >=0
trigger1 = AnimElem = 4, < 0
pos = 20,0

[State 3003, TBind 4]
type = TargetBind
trigger1 = AnimElem = 4, >=0
trigger1 = AnimElem = 5, < 0
pos = 0,-75

[State 3003, TBind 5]
type = TargetBind
trigger1 = AnimElem = 5, >=0
trigger1 = AnimElem = 6, < 0
pos = -9,-93

[State 3003, TBind 6]
type = TargetBind
trigger1 = AnimElem = 6, >=0
trigger1 = AnimElem = 7, < 0
pos = 0,-117

[State 3003, TBind 7]
type = TargetBind
trigger1 = AnimElem = 7, >=0
trigger1 = AnimElem = 8, < 0
pos = 4,-117

[State 3003, TBind 8]
type = TargetBind
trigger1 = AnimElem = 8, >=0
trigger1 = AnimElem = 9, < 0
pos = 10,-118

[State 3003, TBind 9]
type = TargetBind
trigger1 = AnimElem = 9, >=0
trigger1 = AnimElem = 10, < 0
pos = 20,-115

[State 3003, TBind 10]
type = TargetBind
trigger1 = AnimElem = 10, >=0
trigger1 = AnimElem = 11, < 0
pos = 23,-115

[State 3003, TBind 11]
type = TargetBind
trigger1 = AnimElem = 11, >=0
trigger1 = AnimElem = 12, < 0
pos = 32,-112

[State 3003, TBind 12]
type = TargetBind
trigger1 = AnimElem = 12, >=0
trigger1 = AnimElem = 13, < 0
pos = 40,-105

[State 3003, TBind 13]
type = TargetBind
trigger1 = AnimElem = 13, >=0
trigger1 = AnimElem = 14, < 0
pos = 40,-103

[State 3003, TBind 14]
type = TargetBind
trigger1 = AnimElem = 14, >=0
trigger1 = AnimElem = 15, < 0
pos = 10,-118

[State 3003, TBind 15]
type = TargetBind
trigger1 = AnimElem = 15, >=0
trigger1 = AnimElem = 16, < 0
pos = 15,-109

[State 3003, TBind 16]
type = TargetBind
trigger1 = AnimElem = 16, >=0
trigger1 = AnimElem = 17, < 0
pos = 5,-100

[State 3003, TBind 17]
type = TargetBind
trigger1 = AnimElem = 17, >=0
trigger1 = AnimElem = 18, < 0
pos = -11,-104

[State 3003, TBind 18]
type = TargetBind
trigger1 = AnimElem = 18, >=0
trigger1 = AnimElem = 19, < 0
pos = -10,-101

[State 3003, TBind 19]
type = TargetBind
trigger1 = AnimElem = 19, >=0
trigger1 = AnimElem = 20, < 0
pos = 0,-96

[State 3003, TBind 20]
type = TargetBind
trigger1 = AnimElem = 20, >=0
trigger1 = AnimElem = 21, < 0
pos = -5,-120

[State 3003, TBind 21]
type = TargetBind
trigger1 = AnimElem = 21, >=0
trigger1 = AnimElem = 22, < 0
pos = 0,-115

[State 3003, TBind 22]
type = TargetBind
trigger1 = AnimElem = 22, >=0
pos = 0,-100

[State 3003, Change]
type = Changestate
trigger1 = time >= 100
trigger1 = Pos y >= 0
trigger1 = Vel y > 0
value = 3004

;-----------------------------
; Running Three - Reach ground
;-----------------------------

[Statedef 3004]
type    = S
physics = N
movetype= A
anim = 3002
ctrl = 0
velset = 0,0

[State 3200, SDM BG]
type = BGPalFX
trigger1 = prevstateno = 3105
trigger1 = 1
time = 1
invertall = 1
ignorehitpause = 1

[State 9000, Flash]
type = Envcolor
trigger1 = !time
value = 248,248,248
time = 2
under = 1
ignorehitpause = 1

[State 3004, Explod] ;Strong Ground Wave - Background
type = Explod
trigger1 = !time
anim = 7035
pos = -40,0
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = -1

[State 3004, Explod 2];Strong Ground Wave - Foreground
type = Explod
trigger1 = !time
anim = 7036
pos = -40,0
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = 3

[State 3004, FloorSet]
type = Posset
trigger1 = !time
y = 0

[State 3004, Crush SND]
type = PlaySnd
trigger1 = AnimElem = 1, =1
value = 1,16
channel = 1

[State 3004, Bind]
type = TargetBind
trigger1 = time = [0,20]
pos = -40,-5

[State 3004, Auto Turn]
type = Turn
trigger1 = !Animtime
value = 1

[State 902, Screen Shaking]
type = Envshake
trigger1 = !time
time = 20
freq = 70
ampl = -8

[State 3004, Damage]
type = TargetLifeAdd
trigger1 = !time
value = -314 - 77*(var(21)>0)

[State 3004, Width]
type = Width
trigger1 = 1
edge = 0,30

[State 3004, Explod]; Small Ground Wave
type = Explod
trigger1 = p2stateno = 3015
anim = 7030
pos = 5,5
postype = p2
bindtime = 1
ontop = 0
ownpal = 1
persistent = 0

[State 3004, End]
type = Changestate
trigger1 = !Animtime
value = 0
ctrl = 1

;------------------------------
; Enemy thrown by Running Three
;------------------------------

[Statedef 3013]
type    = S
physics = N
movetype= H
ctrl = 0
velset = 0,0

[State 910, Camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 3013, ChangeAnim]
type = Changeanim2
trigger1 = !time
value = 3013

[State 3013, Width]
type = Width
trigger1 = 1
value = -30,-30

[State 3013, Flash]
type = Envcolor
trigger1 = !time
value = 248,248,248
time = 1
under = 1

[State 3013, SPRPRIORITY]
type = SprPriority
trigger1 = AnimElem = 2, >=0
trigger1 = AnimElem = 6, < 0
value = 2

[State 3013, SPRPRIORITY]
type = SprPriority
trigger1 = AnimElem = 1, >=0
trigger1 = AnimElem = 2, < 0
trigger2 = AnimElem = 6, >=0
value = 1

[State 3013, ChangeState]
type = Changestate
trigger1 = p2stateno = 3004
value = 3014

;-------------------------------------------
; Throw by Running Three - Smashed on ground
;-------------------------------------------

[Statedef 3014]
type    = S
physics = N
movetype= H
ctrl = 0

[State 910, Camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 3014, ChangeAnim]
type = Changeanim2
trigger1 = !time
value = 3014

[State 3014, Facing Change]
type = Turn
trigger1 = time >= 26

[State 3014, End]
type = SelfState
trigger1 = !Animtime
value = 5030

;--------------------------------------------------------------------------------------------------------------------------
; Running Three (SDM)
;
; I'll base this one as a simple extension of the normal 2K2 DM.
; Not 100 % KOF accurate, but it is my way to do it. If you want to make it compliant to the KOF'97 - KOF'01 standards, 
; just recalculate the posadds, retouch the anim and you're done. 
;--------------------------------------------------------------------------------------------------------------------------

;-------------
; Grab Attempt
;-------------

[Statedef 3100]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 3000

[State 3100, Invincible]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3100, SDM BG]
type = BGPalFX
trigger1 = Time >= 0
time = 1
invertall = 1
ignorehitpause = 1

[State 3100, Power] ; S.Cancel Power Loss
type = PowerAdd
trigger1 = (var(18) = 4) && (!time)
value = -1000

[State 3100, Cancel]
type = VarSet
trigger1 = (!time) && (var(18) = 4)
v = 18
value = 0

[State 3100, SuperPause]
type = SuperPause
trigger1 = Time = 2
unhittable = 1
anim = 3000
time = 27
darken = 0
poweradd = -2000
ignorehitpause
movetime = 27

[State 3100, SDM Explod 1]
type = Explod
trigger1 = !time
anim = 7061
pos = 20, -87
postype = p1
bindtime = -1
sprpriority = 2
removeongethit = 1
ontop = 1
ownpal = 1
supermove = 1

[State 3100, SDM Explod 2]
type = Explod
trigger1 = !time
anim = 7062
pos = 20, -87
postype = p1
bindtime = -1
sprpriority = -3
removeongethit = 1
scale = 1.075,1.075
supermove = 1
ownpal = 1

[State 3000, BG]
type = AssertSpecial
trigger1 = time = [0,27]
flag = noFG
flag2 = noBG
ignorehitpause = 1

[State 6100, SDM SND]
type = Playsnd
trigger1 = Animelem = 1
value = 1,17
channel = 1

[State 3100, Running Three SND]
type = Playsnd
trigger1 = Animelem = 1, =1
value = 0,21
channel = 0

[State 3100, Grab Miss]
type = ChangeState
trigger1 = !Animtime
value = 3101
ctrl = 1

;-------------------------------------------
; Running Three SDM - Running (obviously :P)
;-------------------------------------------

[Statedef 3101]
type    = S
movetype= A
physics = S
;type    = S
;physics = S
;movetype= I
anim = 101
ctrl = 0
velset = 0
;facep2 = 1

[State 3200, SDM BG]
type = BGPalFX
trigger1 = Time >= 0
time = 1
invertall = 1
ignorehitpause = 1


[State 3101, Running Speed]
type = VelSet
trigger1 = AnimElem = 1, >=0
trigger1 = time = [0,33]
x = const(velocity.run.fwd.x) + 1

[State 100, 2]
type = PlaySnd
trigger1 = !time
value = 1,2
channel = 3
loop = 1

[State 3101, AfterImages]
type = AfterImage
trigger1 = Animelem = 1
palinvertall = 0
time = 33
length = 12 ;9
FrameGap = 3

[State 3101, Continue]
type = ChangeState
trigger1 = p2BodyDist X < 15
trigger1 = p2StateType = S || p2StateType = C
value = 3102

[State 3101, Stop Run]
type = ChangeState
trigger1 = time > 34
trigger2 = time > 34 && p2BodyDist X > 15
trigger3 = p2BodyDist X < 15 && (p2statetype = A || p2statetype = L)
value = 920
ctrl = 0

;---------------------------------
; Running Three SDM - Grab Attempt
;---------------------------------

[Statedef 3102]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 3050

[State 3200, SDM BG]
type = BGPalFX
trigger1 = Time >= 0
time = 1
invertall = 1
ignorehitpause = 1

[State 211, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 3102, Grab Attempt]
type = HitDef
trigger1 = AnimElem = 2 
trigger1 = var(14) <= 0 ; Throw Limiter
trigger1 = P2StateNo != [130,132]
trigger1 = P2StateNo != 140 && P2StateNo != [150,155]
trigger1 = p2stateno != [40,52]
attr = S, HT
hitflag = M
priority = 5, Miss
sparkno = -1         
sprpriority = 1
p2facing = 1
p1stateno = 3103
p2stateno = 3113
ground.velocity = 4,-3
fall = 1
fall.recover = 0
fall.xvelocity = -3.5
fall.yvelocity = -3.6
numhits = 0
guard.dist = 50

[State 3102, Slide SND]
type = PlaySnd
trigger1 = !Animtime
value = 1,14
channel = 1

[State 3102, Grab Miss]
type = ChangeState
trigger1 = !Animtime
value = 0
ctrl = 1

;-------------------------------
; Running Three SDM - Grab & Run
;-------------------------------

[Statedef 3103]
type    = S
physics = N
movetype= A
anim = 3001
ctrl = 0

[State 3200, SDM BG]
type = BGPalFX
trigger1 = Time >= 0
time = 1
invertall = 1
ignorehitpause = 1

[State 9000, Flash]
type = Envcolor
trigger1 = !time
value = 248,248,248
time = 2
under = 1
ignorehitpause = 1

[State 3103, Special Spark] ; Special Throw Grab Spark
type = Explod
trigger1 = animelem = 1
anim = 7020
pos = 61,-85
postype = p1
bindtime = 1
sprpriority = 2
ownpal = 1

[State 3103, Grab SND] ; Special Grab Catch Sound
type = Playsnd
trigger1 = Animelem = 1, =1
value = 1,9
channel = 1

[State 3103,Run SND]
type = PlaySnd
trigger1 = AnimElem = 14, =1
value = 1,2
channel = 1

[State 3103, Jump SND]
type = PlaySnd
trigger1 = AnimElem = 20, =1
value = 1,4
channel = 1

[State 3103, Oulia SND]
type = Playsnd
trigger1 = Animelem = 20, =1
value = 0,9
channel = 0

[State 3103, Walk Vel]
type = PosAdd
trigger1 = time = [75,79]
trigger2 = time = 81
x = -1

[State 3103, Walk Vel]
type = PosAdd
trigger1 = time = 80
trigger2 = time = 82
trigger3 = time = 84
x = -2

[State 3103, Run Vel]
type = PosAdd
trigger1 = time = 83
trigger2 = time = 85
trigger3 = time = 87
x = -3

[State 3103, Run Vel]
type = PosAdd
trigger1 = time = 86
trigger2 = time = 88
trigger3 = time = 90
x = -4

[State 3103, Run Vel]
type = PosAdd
trigger1 = time = 89
trigger2 = time = [91,94]
x = -5

[State 3103, Run Vel]
type = PosAdd
trigger1 = time = [95,97]
x = -6

[State 3103, Jump Vel]
type = VelSet
trigger1 = animelem = 20
x = -12
y = -7

[State 3103, Gravity]
type = VelAdd
trigger1 = time >= 98
y = 0.4

[State 3103, SPRPRIORITY]
type = SprPriority
trigger1 = AnimElem = 4, >=0
trigger1 = AnimElem = 8, < 0
value = 1

[State 3103, SPRPRIORITY]
type = SprPriority
trigger1 = AnimElem = 1, >=0
trigger1 = AnimElem = 4, < 0
trigger2 = AnimElem = 8, >=0
value = 2

[State 3103, TBind 1]
type = TargetBind
trigger1 = AnimElem = 1, >=0
trigger1 = AnimElem = 2, < 0
pos = 30,0

[State 3103, TBind 2]
type = TargetBind
trigger1 = AnimElem = 2, >=0
trigger1 = AnimElem = 3, < 0
pos = 30,0

[State 3103, TBind 3]
type = TargetBind
trigger1 = AnimElem = 3, >=0
trigger1 = AnimElem = 4, < 0
pos = 20,0

[State 3103, TBind 4]
type = TargetBind
trigger1 = AnimElem = 4, >=0
trigger1 = AnimElem = 5, < 0
pos = 0,-75

[State 3103, TBind 5]
type = TargetBind
trigger1 = AnimElem = 5, >=0
trigger1 = AnimElem = 6, < 0
pos = -9,-93

[State 3103, TBind 6]
type = TargetBind
trigger1 = AnimElem = 6, >=0
trigger1 = AnimElem = 7, < 0
pos = 0,-117

[State 3103, TBind 7]
type = TargetBind
trigger1 = AnimElem = 7, >=0
trigger1 = AnimElem = 8, < 0
pos = 4,-117

[State 3103, TBind 8]
type = TargetBind
trigger1 = AnimElem = 8, >=0
trigger1 = AnimElem = 9, < 0
pos = 10,-118

[State 3103, TBind 9]
type = TargetBind
trigger1 = AnimElem = 9, >=0
trigger1 = AnimElem = 10, < 0
pos = 20,-115

[State 3103, TBind 10]
type = TargetBind
trigger1 = AnimElem = 10, >=0
trigger1 = AnimElem = 11, < 0
pos = 23,-115

[State 3103, TBind 11]
type = TargetBind
trigger1 = AnimElem = 11, >=0
trigger1 = AnimElem = 12, < 0
pos = 32,-112

[State 3103, TBind 12]
type = TargetBind
trigger1 = AnimElem = 12, >=0
trigger1 = AnimElem = 13, < 0
pos = 40,-105

[State 3103, TBind 13]
type = TargetBind
trigger1 = AnimElem = 13, >=0
trigger1 = AnimElem = 14, < 0
pos = 40,-103

[State 3103, TBind 14]
type = TargetBind
trigger1 = AnimElem = 14, >=0
trigger1 = AnimElem = 15, < 0
pos = 10,-118

[State 3103, TBind 15]
type = TargetBind
trigger1 = AnimElem = 15, >=0
trigger1 = AnimElem = 16, < 0
pos = 15,-109

[State 3103, TBind 16]
type = TargetBind
trigger1 = AnimElem = 16, >=0
trigger1 = AnimElem = 17, < 0
pos = 5,-100

[State 3103, TBind 17]
type = TargetBind
trigger1 = AnimElem = 17, >=0
trigger1 = AnimElem = 18, < 0
pos = -11,-104

[State 3103, TBind 18]
type = TargetBind
trigger1 = AnimElem = 18, >=0
trigger1 = AnimElem = 19, < 0
pos = -10,-101

[State 3103, TBind 19]
type = TargetBind
trigger1 = AnimElem = 19, >=0
trigger1 = AnimElem = 20, < 0
pos = 0,-96

[State 3103, TBind 20]
type = TargetBind
trigger1 = AnimElem = 20, >=0
trigger1 = AnimElem = 21, < 0
pos = -5,-120

[State 3103, TBind 21]
type = TargetBind
trigger1 = AnimElem = 21, >=0
trigger1 = AnimElem = 22, < 0
pos = 0,-115

[State 3103, TBind 22]
type = TargetBind
trigger1 = AnimElem = 22, >=0
pos = 0,-100


[State 3103, Change]
type = Changestate
trigger1 = time >= 100
trigger1 = Pos y >= 0
trigger1 = Vel y > 0
value = 3104

;---------------------------------------------
; Running Three SDM - 1st Touch Down - 2nd Run
;---------------------------------------------

[Statedef 3104]
type    = S
physics = N
movetype= A
anim = 3100
ctrl = 0
velset = 0,0

[State 3200, SDM BG]
type = BGPalFX
trigger1 = Time >= 0
time = 1
invertall = 1
ignorehitpause = 1

[State 9000, Flash]
type = Envcolor
trigger1 = !time
value = 248,248,248
time = 2
under = 1
ignorehitpause = 1

[State 3104, Explod] ;Strong Ground Wave - Background
type = Explod
trigger1 = !time
anim = 7035
pos = -40,0
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = -1

[State 3104, Explod 2];Strong Ground Wave - Foreground
type = Explod
trigger1 = !time
anim = 7036
pos = -40,0
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = 3

[State 3104, Width]
type = Width
trigger1 = AnimElem = 1, >=0
trigger1 = AnimElem = 6, < 0
edge = 50,50

[State 3104, FloorSet]
type = Posset
trigger1 = !time
y = 0

[State 3104, Turn]
type = Turn
trigger1 = AnimElem = 6

[State 3104,Run SND]
type = PlaySnd
trigger1 = AnimElem = 17, =1
value = 1,2
channel = 1

[State 3104, Jump SND]
type = PlaySnd
trigger1 = AnimElem = 23, =1
value = 1,4
channel = 1

[State 3104, Crush SND]
type = PlaySnd
trigger1 = AnimElem = 1, =1
value = 1,16
channel = 1

[State 3104, Oulia SND]
type = Playsnd
trigger1 = Animelem = 23, =5
value = 0,9
channel = 0

[State 3104, TBind 1]
type = TargetBind
trigger1 = AnimElem = 1, >=0
trigger1 = AnimElem = 2, < 0
pos = -50,-5

[State 3104, TBind 2]
type = TargetBind
trigger1 = AnimElem = 2, >=0
trigger1 = AnimElem = 3, < 0
pos = -50,-5

[State 3104, TBind 3]
type = TargetBind
trigger1 = AnimElem = 3, >=0
trigger1 = AnimElem = 4, < 0
pos = -50,-5

[State 3104, TBind 4]
type = TargetBind
trigger1 = AnimElem = 4, >=0
trigger1 = AnimElem = 5, < 0
pos = -50,-5

[State 3104, TBind 5]
type = TargetBind
trigger1 = AnimElem = 5, >=0
trigger1 = AnimElem = 6, < 0
pos = -25,-45

[State 3104, TBind 6]
type = TargetBind
trigger1 = AnimElem = 6, >=0
trigger1 = AnimElem = 7, < 0
pos = 20,0

[State 3104, TBind 7]
type = TargetBind
trigger1 = AnimElem = 7, >=0
trigger1 = AnimElem = 8, < 0
pos = 0,-75

[State 3104, TBind 8]
type = TargetBind
trigger1 = AnimElem = 8, >=0
trigger1 = AnimElem = 9, < 0
pos = -9,-93

[State 3104, TBind 9]
type = TargetBind
trigger1 = AnimElem = 9, >=0
trigger1 = AnimElem = 10, < 0
pos = 0,-117

[State 3104, TBind 10]
type = TargetBind
trigger1 = AnimElem = 10, >=0
trigger1 = AnimElem = 11, < 0
pos = 4,-117

[State 3104, TBind 11]
type = TargetBind
trigger1 = AnimElem = 11, >=0
trigger1 = AnimElem = 12, < 0
pos = 10,-118

[State 3104, TBind 12]
type = TargetBind
trigger1 = AnimElem = 12, >=0
trigger1 = AnimElem = 13, < 0
pos = 20,-115

[State 3104, TBind 13]
type = TargetBind
trigger1 = AnimElem = 13, >=0
trigger1 = AnimElem = 14, < 0
pos = 23,-115

[State 3104, TBind 14]
type = TargetBind
trigger1 = AnimElem = 14, >=0
trigger1 = AnimElem = 15, < 0
pos = 32,-112

[State 3104, TBind 15]
type = TargetBind
trigger1 = AnimElem = 15, >=0
trigger1 = AnimElem = 16, < 0
pos = 40,-105

[State 3104, TBind 16]
type = TargetBind
trigger1 = AnimElem = 16, >=0
trigger1 = AnimElem = 17, < 0
pos = 40,-103

[State 3104, TBind 17]
type = TargetBind
trigger1 = AnimElem = 17, >=0
trigger1 = AnimElem = 18, < 0
pos = 10,-118

[State 3104, TBind 18]
type = TargetBind
trigger1 = AnimElem = 18, >=0
trigger1 = AnimElem = 19, < 0
pos = 15,-109

[State 3104, TBind 19]
type = TargetBind
trigger1 = AnimElem = 19, >=0
trigger1 = AnimElem = 20, < 0
pos = 5,-100

[State 3104, TBind 20]
type = TargetBind
trigger1 = AnimElem = 20, >=0
trigger1 = AnimElem = 21, < 0
pos = -11,-104

[State 3104, TBind 21]
type = TargetBind
trigger1 = AnimElem = 21, >=0
trigger1 = AnimElem = 22, < 0
pos = -10,-101

[State 3104, TBind 22]
type = TargetBind
trigger1 = AnimElem = 22, >=0
trigger1 = AnimElem = 23, < 0
pos = 0,-96

[State 3104, TBind 23]
type = TargetBind
trigger1 = AnimElem = 23, >=0
trigger1 = AnimElem = 24, < 0
pos = -5,-120

[State 3104, TBind 24]
type = TargetBind
trigger1 = AnimElem = 24, >=0
trigger1 = AnimElem = 25, < 0
pos = 0,-115

[State 3104, TBind 25]
type = TargetBind
trigger1 = AnimElem = 25, >=0
pos = 0,-100

[State 3104, Walk Vel]
type = PosAdd
trigger1 = time = [93,97]
trigger2 = time = 99
x = -1

[State 3104, Walk Vel]
type = PosAdd
trigger1 = time = 98
trigger2 = time = 100
trigger3 = time = 102
x = -2

[State 3104, Run Vel]
type = PosAdd
trigger1 = time = 101
trigger2 = time = 103
trigger3 = time = 105
x = -3

[State 3104, Run Vel]
type = PosAdd
trigger1 = time = 104
trigger2 = time = 106
trigger3 = time = 108
x = -4

[State 3104, Run Vel]
type = PosAdd
trigger1 = time = 107
trigger2 = time = [109,112]
x = -5

[State 3104, Run Vel]
type = PosAdd
trigger1 = time = [113,115]
x = -6

[State 3104, Jump Vel]
type = VelSet
trigger1 = animelem = 23
x = -12
y = -7

[State 3104, Gravity]
type = VelAdd
trigger1 = time >= 116
y = 0.4

[State 3104, Width]
type = Width
trigger1 = 1
edge = 0,30

[State 3104, Change]
type = Changestate
trigger1 = time >= 120
trigger1 = Pos y >= 0
trigger1 = Vel y > 0
value = 3105

;---------------------------------------------
; Running Three SDM - 2nd Touch Down - 3rd Run
;---------------------------------------------

[Statedef 3105]
type    = S
physics = N
movetype= A
anim = 3100
ctrl = 0
velset = 0,0

[State 3200, SDM BG]
type = BGPalFX
trigger1 = Time >= 0
time = 1
invertall = 1
ignorehitpause = 1

[State 9000, Flash]
type = Envcolor
trigger1 = !time
value = 248,248,248
time = 2
under = 1
ignorehitpause = 1

[State 3105, Explod] ;Strong Ground Wave - Background
type = Explod
trigger1 = !time
anim = 7035
pos = -40,0
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = -1

[State 3105, Explod 2];Strong Ground Wave - Foreground
type = Explod
trigger1 = !time
anim = 7036
pos = -40,0
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = 3

[State 3105, FloorSet]
type = Posset
trigger1 = !time
y = 0

[State 3105, Turn]
type = Turn
trigger1 = AnimElem = 6

[State 3105, Width]
type = Width
trigger1 = AnimElem = 1, >=0
trigger1 = AnimElem = 6, < 0
edge = 50,50

[State 3105, Run SND]
type = PlaySnd
trigger1 = AnimElem = 17, =1
value = 1,2
channel = 1

[State 3105, Jump SND]
type = PlaySnd
trigger1 = AnimElem = 23, =1
value = 1,4
channel = 1

[State 3105, Crush SND]
type = PlaySnd
trigger1 = AnimElem = 1, =1
value = 1,16
channel = 1

[State 3105, Oulia SND]
type = Playsnd
trigger1 = Animelem = 23, =5
value = 0,9
channel = 0

[State 3105, TBind 1]
type = TargetBind
trigger1 = AnimElem = 1, >=0
trigger1 = AnimElem = 2, < 0
pos = -50,-5

[State 3105, TBind 2]
type = TargetBind
trigger1 = AnimElem = 2, >=0
trigger1 = AnimElem = 3, < 0
pos = -50,-5

[State 3105, TBind 3]
type = TargetBind
trigger1 = AnimElem = 3, >=0
trigger1 = AnimElem = 4, < 0
pos = -50,-5

[State 3105, TBind 4]
type = TargetBind
trigger1 = AnimElem = 4, >=0
trigger1 = AnimElem = 5, < 0
pos = -50,-5

[State 3105, TBind 5]
type = TargetBind
trigger1 = AnimElem = 5, >=0
trigger1 = AnimElem = 6, < 0
pos = -25,-45

[State 3105, TBind 6]
type = TargetBind
trigger1 = AnimElem = 6, >=0
trigger1 = AnimElem = 7, < 0
pos = 20,0

[State 3105, TBind 7]
type = TargetBind
trigger1 = AnimElem = 7, >=0
trigger1 = AnimElem = 8, < 0
pos = 0,-75

[State 3105, TBind 8]
type = TargetBind
trigger1 = AnimElem = 8, >=0
trigger1 = AnimElem = 9, < 0
pos = -9,-93

[State 3105, TBind 9]
type = TargetBind
trigger1 = AnimElem = 9, >=0
trigger1 = AnimElem = 10, < 0
pos = 0,-117

[State 3105, TBind 10]
type = TargetBind
trigger1 = AnimElem = 10, >=0
trigger1 = AnimElem = 11, < 0
pos = 4,-117

[State 3105, TBind 11]
type = TargetBind
trigger1 = AnimElem = 11, >=0
trigger1 = AnimElem = 12, < 0
pos = 10,-118

[State 3105, TBind 12]
type = TargetBind
trigger1 = AnimElem = 12, >=0
trigger1 = AnimElem = 13, < 0
pos = 20,-115

[State 3105, TBind 13]
type = TargetBind
trigger1 = AnimElem = 13, >=0
trigger1 = AnimElem = 14, < 0
pos = 23,-115

[State 3105, TBind 14]
type = TargetBind
trigger1 = AnimElem = 14, >=0
trigger1 = AnimElem = 15, < 0
pos = 32,-112

[State 3105, TBind 15]
type = TargetBind
trigger1 = AnimElem = 15, >=0
trigger1 = AnimElem = 16, < 0
pos = 40,-105

[State 3105, TBind 16]
type = TargetBind
trigger1 = AnimElem = 16, >=0
trigger1 = AnimElem = 17, < 0
pos = 40,-103

[State 3105, TBind 17]
type = TargetBind
trigger1 = AnimElem = 17, >=0
trigger1 = AnimElem = 18, < 0
pos = 10,-118

[State 3105, TBind 18]
type = TargetBind
trigger1 = AnimElem = 18, >=0
trigger1 = AnimElem = 19, < 0
pos = 15,-109

[State 3105, TBind 19]
type = TargetBind
trigger1 = AnimElem = 19, >=0
trigger1 = AnimElem = 20, < 0
pos = 5,-100

[State 3105, TBind 20]
type = TargetBind
trigger1 = AnimElem = 20, >=0
trigger1 = AnimElem = 21, < 0
pos = -11,-104

[State 3105, TBind 21]
type = TargetBind
trigger1 = AnimElem = 21, >=0
trigger1 = AnimElem = 22, < 0
pos = -10,-101

[State 3105, TBind 22]
type = TargetBind
trigger1 = AnimElem = 22, >=0
trigger1 = AnimElem = 23, < 0
pos = 0,-96

[State 3105, TBind 23]
type = TargetBind
trigger1 = AnimElem = 23, >=0
trigger1 = AnimElem = 24, < 0
pos = -5,-120

[State 3105, TBind 24]
type = TargetBind
trigger1 = AnimElem = 24, >=0
trigger1 = AnimElem = 25, < 0
pos = 0,-115

[State 3105, TBind 25]
type = TargetBind
trigger1 = AnimElem = 25, >=0
pos = 0,-100

[State 3105, Walk Vel]
type = PosAdd
trigger1 = time = [93,97]
trigger2 = time = 99
x = -1

[State 3105, Walk Vel]
type = PosAdd
trigger1 = time = 98
trigger2 = time = 100
trigger3 = time = 102
x = -2

[State 3105, Run Vel]
type = PosAdd
trigger1 = time = 101
trigger2 = time = 103
trigger3 = time = 105
x = -3

[State 3105, Run Vel]
type = PosAdd
trigger1 = time = 104
trigger2 = time = 106
trigger3 = time = 108
x = -4

[State 3105, Run Vel]
type = PosAdd
trigger1 = time = 107
trigger2 = time = [109,112]
x = -5

[State 3105, Run Vel]
type = PosAdd
trigger1 = time = [113,115]
x = -6

[State 3105, Jump Vel]
type = VelSet
trigger1 = animelem = 23
x = -12
y = -7

[State 3105, Gravity]
type = VelAdd
trigger1 = time >= 116
y = 0.4

[State 3105, Width]
type = Width
trigger1 = 1
edge = 0,30

[State 3105, Change]
type = Changestate
trigger1 = time >= 120
trigger1 = Pos y >= 0
trigger1 = Vel y > 0
value = 3004

;----------------------------------
; Enemy thrown by Running Three SDM
;----------------------------------

[Statedef 3113]
type    = S
physics = N
movetype= H
ctrl = 0
velset = 0,0

[State 910, Camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 3113, ChangeAnim]
type = Changeanim2
trigger1 = !time
value = 3013

[State 3013, Width]
type = Width
trigger1 = 1
value = -30,-30

[State 3113, Flash]
type = Envcolor
trigger1 = !time
value = 248,248,248
time = 1
under = 1

[State 3113, SPRPRIORITY]
type = SprPriority
trigger1 = AnimElem = 2, >=0
trigger1 = AnimElem = 6, < 0
value = 2

[State 3113, SPRPRIORITY]
type = SprPriority
trigger1 = AnimElem = 1, >=0
trigger1 = AnimElem = 2, < 0
trigger2 = AnimElem = 6, >=0
value = 1

[State 3113, ChangeState]
type = Changestate
trigger1 = p2stateno = 3104
value = 3114

;---------------------------------------------
; Throw by Running Three - 1st Smash on ground
;---------------------------------------------

[Statedef 3114]
type    = S
physics = N
movetype= H
ctrl = 0
velset = 0,0

[State 910, Camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 3114, ChangeAnim]
type = Changeanim2
trigger1 = !time
value = 3114

[State 3114, Damage]
type = LifeAdd
trigger1 = !time
value = -68 - 17*(enemy, var(21)>0)
kill = 0

[State 3114, Turn]
type = Turn
trigger1 = AnimElem = 2

[State 3114, Screen Shaking]
type = Envshake
trigger1 = !time
time = 20
freq = 70
ampl = -8

[State 3114, ChangeState]
type = ChangeState
trigger1 = p2stateno = 3105
value = 3115

;---------------------------------------------
; Throw by Running Three - 2nd Smash on ground
;---------------------------------------------

[Statedef 3115]
type    = S
physics = N
movetype= H
ctrl = 0
velset = 0,0

[State 910, Camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 3115, ChangeAnim]
type = Changeanim2
trigger1 = !time
value = 3114

[State 3115, Damage]
type = LifeAdd
trigger1 = !time
value = -68 - 17*(enemy, var(21)>0)
kill = 0

[State 3115, Turn]
type = Turn
trigger1 = AnimElem = 2

[State 3115, Screen Shaking]
type = Envshake
trigger1 = !time
time = 20
freq = 70
ampl = -8

[State 3115, ChangeState]
type = ChangeState
trigger1 = p2stateno = 3004
value = 3014

;--------------------------------------------------------------------------------------------------------------------------
; Mega Running Spark (HSDM)
;--------------------------------------------------------------------------------------------------------------------------

;-------------
; Grab Attempt
;-------------

[Statedef 4500]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
sprpriority = 2
ctrl = 0
anim = 4500

[State 4500, Invincible]
type = NotHitBy
trigger1 = 1
value = SCA

[State 4500, SuperPause]
type = SuperPause
trigger1 = Time = 10
unhittable = 1
anim = 4500
time = 27
darken = 0
poweradd = -3000
ignorehitpause
movetime = 27

[State 4500, DM Explod 1]
type = Explod
trigger1 = time = 18
anim = 7071
pos = 10, -87
postype = p1
bindtime = -1
sprpriority = 2
removeongethit = 1
ontop = 1
ownpal = 1
supermove = 1

[State 4500, DM Explod 2]
type = Explod
trigger1 = time = 10
anim = 7072
pos = 10, -87
postype = p1
bindtime = -1
sprpriority = -3
removeongethit = 1
scale = 1.075,1.075
supermove = 1
ownpal = 1

[State 4500, BG]
type = AssertSpecial
trigger1 = time = [5,32]
flag = noFG
flag2 = noBG

[State 4500, HSDM SND]
type = Playsnd
trigger1 = Animelem = 3
value = 1,18
channel = 1

[State 4500, Clark SND]
type = PlaySnd
trigger1 = AnimElem = 3, =1
value = 0,15
channel = 0

[State 4500, Grab Miss]
type = ChangeState
trigger1 = !Animtime
value = 4501
ctrl = 1

;--------------------------------------------
; Mega Running Spark - Running (obviously :P)
;--------------------------------------------

[Statedef 4501]
type    = S
movetype= A
physics = S
anim = 101
ctrl = 0
velset = 0
sprpriority = 2
;facep2 = 1

[State 4501, 2]
type = PlaySnd
trigger1 = !time
value = 1,2
channel = 3
loop = 1

[State 4501, Running Speed]
type = VelSet
trigger1 = AnimElem = 1, >=0
trigger1 = time = [0,33]
x = const(velocity.run.fwd.x) 

[State 4501, AfterImages]
type = AfterImage
trigger1 = Animelem = 1
palinvertall = 1
time = 33
length = 12
FrameGap = 3

[State 4501, Continue]
type = ChangeState
trigger1 = p2BodyDist X < 15
trigger1 = p2StateType = S || p2StateType = C
value = 4502

[State 4501, Stop Run]
type = ChangeState
trigger1 = time > 34
trigger2 = time > 34 && p2BodyDist X < 15
trigger3 = p2BodyDist X < 15 && (p2statetype = A || p2statetype = L)
value = 920
ctrl = 0

[State 4501, Stop Run 2]
type = ChangeState
trigger1 = time > 34 && p2BodyDist X > 15
value = 0
ctrl = 1

;----------------------------------
; Mega Running Spark - Grab Attempt
;----------------------------------

[Statedef 4502]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 2
anim = 3050

[State 211, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 7002, Grab Attempt]
type = HitDef
trigger1 = AnimElem = 2 
trigger1 = var(14) <= 0 ; Throw Limiter
trigger1 = P2StateNo != [130,132]
trigger1 = P2StateNo != 140 && P2StateNo != [150,155]
trigger1 = p2stateno != [40,52]
attr = S, HT
hitflag = M
priority = 5, Miss
sparkno = -1         
sprpriority = 1
p2facing = 1
p1stateno = 4503
p2stateno = 4513
fall = 1
ground.velocity = 4,-3
air.velocity = -4,-3
fall.xvelocity = 3.5
fall.yvelocity = -3.6
fall.recover = 0
numhits = 0
guard.dist = 50

[State 4502, Grab Miss]
type = ChangeState
trigger1 = !Animtime
value = 0
ctrl = 1

;----------------------------------
; Mega Running Spark - Grab Success
;----------------------------------

[Statedef 4503]
type    = S
movetype= A
physics = S
juggle  = 0
ctrl = 0
sprpriority = 2
anim = 4501

[State 4503, Special Spark] ; Special Throw Grab Spark
type = Explod
trigger1 = animelem = 1
anim = 7020
pos = 61,-85
postype = p1
bindtime = 1
sprpriority = 2
ownpal = 1

[State 4503, Grab SND] ; Special Grab Catch Sound
type = Playsnd
trigger1 = Animelem = 1, =1
value = 1,9
channel = 1

[State 100, 2]
type = PlaySnd
trigger1 = time = 62
value = 1,2
channel = 3
loop = 1

[State 4503, Clark SND]
type = PlaySnd
trigger1 = animelem = 10, >0 ;time = 62
value = 0,17
channel = 0
persistent = 0

[State 4503, Walk Speed]
type = VelSet
trigger1 = AnimElem = 11, >=0
trigger1 = AnimElem = 13, < 0
x = -3

[State 4503, Run Speed]
type = VelSet
trigger1 = AnimElem = 13, >=0
x = -const(velocity.run.fwd.x) - 1

[State 4503, TBind 1]
type = TargetBind
trigger1 = AnimElem = 1, >=0
trigger1 = AnimElem = 2, < 0
pos = 30,0

[State 4503, TBind 2]
type = TargetBind
trigger1 = AnimElem = 2, >=0
trigger1 = AnimElem = 3, < 0
pos = 30,0

[State 4503, TBind 3]
type = TargetBind
trigger1 = AnimElem = 3, >=0
trigger1 = AnimElem = 4, < 0
pos = 20,0

[State 4503, TBind 4]
type = TargetBind
trigger1 = AnimElem = 4, >=0
trigger1 = AnimElem = 5, < 0
pos = 20,-70

[State 4503, TBind 5]
type = TargetBind
trigger1 = AnimElem = 5, >=0
trigger1 = AnimElem = 6, < 0
pos = 15,-80

[State 4503, TBind 6]
type = TargetBind
trigger1 = AnimElem = 6, >=0
trigger1 = AnimElem = 7, < 0
pos = -5,-90

[State 4503, TBind 7]
type = TargetBind
trigger1 = AnimElem = 7, >=0
trigger1 = AnimElem = 8, < 0
pos = 4,-117

[State 4503, TBind 8]
type = TargetBind
trigger1 = AnimElem = 8, >=0
trigger1 = AnimElem = 9, < 0
pos = -1,-125

[State 4503, TBind 9]
type = TargetBind
trigger1 = AnimElem = 9, >=0
trigger1 = AnimElem = 10, < 0
pos = 20,-115

[State 4503, TBind 10]
type = TargetBind
trigger1 = AnimElem = 10, >=0
trigger1 = AnimElem = 11, < 0
pos = 23,-115

[State 4503, TBind 11]
type = TargetBind
trigger1 = AnimElem = 11, >=0
trigger1 = AnimElem = 12, < 0
pos = 10,-118

[State 4503, TBind 12]
type = TargetBind
trigger1 = AnimElem = 12, >=0
trigger1 = AnimElem = 13, < 0
pos = 15,-109

[State 4503, TBind 13]
type = TargetBind
trigger1 = AnimElem = 13, >=0
trigger1 = AnimElem = 14, < 0
pos = -13,-97

[State 4503, TBind 14]
type = TargetBind
trigger1 = AnimElem = 14, >=0
trigger1 = AnimElem = 15, < 0
pos = -13,-97

[State 4503, TBind 15]
type = TargetBind
trigger1 = AnimElem = 15, >=0
trigger1 = AnimElem = 16, < 0
pos = -4,-97

[State 4503, TBind 16]
type = TargetBind
trigger1 = AnimElem = 16
pos = -20,-97

[State 4503, Stop]
type = Helper
trigger1 = time > 140
trigger1 = !NumHelper(9570)
helpertype = normal
name = "Scroll Stop"
ID = 9570
postype = p1
pos = 0,9
facing = 1
stateno = 9570
keyctrl = 0
size.height = 1

[State 4503, ChangeState]
type = ChangeState
trigger1 = time > 30 
trigger1 = BackEdgeDist < 20
value = 4504

;------------------------------------
; Mega Running Spark - 1st Wall Press
;------------------------------------

[Statedef 4504]
type    = S
movetype= A
physics = S
juggle  = 0
ctrl = 0
anim = 4502
sprpriority = 2
velset = 0,0

[State 211, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 4504, Special Spark]
type = Explod
trigger1 = !time
anim = 7025
pos = 0,-85
postype = p1
bindtime = 1
ontop = 1
ownpal = 1

[State 4504, Clark SND]
type = PlaySnd
trigger1 = AnimElem = 1, =1
value = 0,10
channel = 0

[State 4504, Clark SND]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,8
channel = 1

[State 4504, ChangeState]
type = ChangeState
trigger1 = !Animtime
value = 4505


;-----------------------------
; Mega Running Spark - 2nd Run
;-----------------------------

[Statedef 4505]
type    = S
movetype= A
physics = S
juggle  = 0
ctrl = 0
sprpriority = 2
anim = 4503

[State 4505, Turn]
type = Turn
trigger1 = AnimElem = 2

[State 4505, Run Speed]
type = VelSet
trigger1 = AnimElem = 7, >=0
x = -const(velocity.run.fwd.x) - 1

[State 100, 2]
type = PlaySnd
trigger1 = time = 30
value = 1,2
channel = 3
loop = 1

[State 4505, TBind 1]
type = TargetBind
trigger1 = AnimElem = 1, >=0
trigger1 = AnimElem = 2, < 0
pos = 4,-117

[State 4505, TBind 2]
type = TargetBind
trigger1 = AnimElem = 2, >=0
trigger1 = AnimElem = 3, < 0
pos = -1,-125

[State 4505, TBind 3]
type = TargetBind
trigger1 = AnimElem = 3, >=0
trigger1 = AnimElem = 4, < 0
pos = 20,-115

[State 4505, TBind 4]
type = TargetBind
trigger1 = AnimElem = 4, >=0
trigger1 = AnimElem = 5, < 0
pos = 23,-115

[State 4505, TBind 5]
type = TargetBind
trigger1 = AnimElem = 5, >=0
trigger1 = AnimElem = 6, < 0
pos = 10,-118

[State 4505, TBind 6]
type = TargetBind
trigger1 = AnimElem = 6, >=0
trigger1 = AnimElem = 7, < 0
pos = 15,-109

[State 4505, TBind 7]
type = TargetBind
trigger1 = AnimElem = 8, >=0
trigger1 = AnimElem = 9, < 0
pos = -13,-97

[State 4505, TBind 8]
type = TargetBind
trigger1 = AnimElem = 9, >=0
trigger1 = AnimElem = 10, < 0
pos = -13,-97

[State 4505, TBind 9]
type = TargetBind
trigger1 = AnimElem = 10, >=0
trigger1 = AnimElem = 11, < 0
pos = -4,-97

[State 4503, TBind 10]
type = TargetBind
trigger1 = AnimElem = 11
pos = -20,-97
;time = 

[State 4505, Run SND]
type = PlaySnd
trigger1 = time = 30
trigger1 = TimeMod = 70,4
value = 1,2
channel = 3

[State 4505, Stop]
type = Helper
trigger1 = time > 140
trigger1 = !NumHelper(9570)
helpertype = normal
name = "Scroll Stop"
ID = 9570
postype = p1
pos = 0,9
facing = 1
stateno = 9570
keyctrl = 0
size.height = 1

[State 4505, ChangeState]
type = ChangeState
trigger1 = BackEdgeDist < 20
trigger1 = time > 60
value = 4506

;------------------------------------
; Mega Running Spark - 2nd Wall Press
;------------------------------------

[Statedef 4506]
type    = S
movetype= A
physics = S
juggle  = 0
ctrl = 0
sprpriority = 2
anim = 4502
velset = 0,0

[State 211, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 4506, Special Spark]
type = Explod
trigger1 = !time
anim = 7025
pos = 0,-85
postype = p1
bindtime = 1
ontop = 1
ownpal = 1

[State 4504, Clark SND]
type = PlaySnd
trigger1 = AnimElem = 1, =1
value = 0,10
channel = 0

[State 4504, Clark SND]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,8
channel = 1

[State 4506, ChangeState]
type = ChangeState
trigger1 = !Animtime
value = 4507


;--------------------------------------
; Mega Running Spark - Final Run & Jump
;--------------------------------------

[Statedef 4507]
type    = S
movetype= A
physics = S
juggle  = 0
ctrl = 0
sprpriority = 2
anim = 4504

[State 4507, Camera]
type = ScreenBound
trigger1 = time >=0
value = 1

[State 4507, Turn]
type = Turn
trigger1 = AnimElem = 2

[State 4507, Run SND]
type = PlaySnd
trigger1 = AnimElem = 7, =1
value = 1,2
channel = 3

[State 4507, Stop Run]
type = StopSND
trigger1 = AnimElem = 11
channel = 3

[State 4507, Jump SND]
type = PlaySnd
trigger1 = AnimElem = 11, =1
value = 1,4
channel = 1

[State 4507, Run Speed]
type = VelSet
trigger1 = AnimElem = 5, >=0
x = -const(velocity.run.fwd.x) + 1

[State 4507, TBind 1]
type = TargetBind
trigger1 = AnimElem = 1, >=0
trigger1 = AnimElem = 2, < 0
pos = 4,-117

[State 4507, TBind 2]
type = TargetBind
trigger1 = AnimElem = 2, >=0
trigger1 = AnimElem = 3, < 0
pos = 10,-118

[State 4507, TBind 3]
type = TargetBind
trigger1 = AnimElem = 3, >=0
trigger1 = AnimElem = 4, < 0
pos = 20,-115

[State 4507, TBind 4]
type = TargetBind
trigger1 = AnimElem = 4, >=0
trigger1 = AnimElem = 5, < 0
pos = 23,-115

[State 4507, TBind 5]
type = TargetBind
trigger1 = AnimElem = 5, >=0
trigger1 = AnimElem = 6, < 0
pos = 10,-118

[State 4507, TBind 6]
type = TargetBind
trigger1 = AnimElem = 6, >=0
trigger1 = AnimElem = 7, < 0
pos = 15,-109

[State 4507, TBind 7]
type = TargetBind
trigger1 = AnimElem = 7, >=0
trigger1 = AnimElem = 8, < 0
pos = -10,-101

[State 4507, TBind 8]
type = TargetBind
trigger1 = AnimElem = 8, >=0
trigger1 = AnimElem = 9, < 0
pos = -13,-101

[State 4507, TBind 9]
type = TargetBind
trigger1 = AnimElem = 9, >=0
trigger1 = AnimElem = 10, < 0
pos = -15,-103

[State 4507, TBind 10]
type = TargetBind
trigger1 = AnimElem = 10, >=0
trigger1 = AnimElem = 11, < 0
pos = -11,-100

[State 4507, TBind 11]
type = TargetBind
trigger1 = AnimElem = 11, >=0
trigger1 = AnimElem = 12, < 0
pos = -10,-130

[State 4507, TBind 12]
type = TargetBind
trigger1 = AnimElem = 12, >=0
trigger1 = AnimElem = 13, < 0
pos = -11,-128

[State 4507, TBind 13]
type = TargetBind
trigger1 = AnimElem = 13, >=0
trigger1 = AnimElem = 14, < 0
pos = -30,-125

[State 4507, TBind 14]
type = TargetBind
trigger1 = time =61 ;AnimElem = 14, >=0
pos = -35,-104 ;-74
time = -1

[State 4507, Jump Vel]
type = VelSet
trigger1 = AnimElem = 11
x = 15
y = -6.5

[State 4507, VelAdd]
type = VelAdd
trigger1 = time >= 45
y = 0.47

[State 4507, ChangeState]
type = ChangeState
trigger1 = time >= 60
trigger1 = Pos y >= 20
trigger1 = Vel y > 0
value = 4508

;---------------------------------
; Mega Running Spark - Pile Driver
;---------------------------------

[Statedef 4508]
type    = S
physics = N
movetype= A
sprpriority = 1
anim = 4505
ctrl = 0
velset = 0,0

[State 4508, FLoor]
type = PosSet
trigger1 = !time
y = 0

[State 4508, Run SND]
type = PlaySnd
trigger1 = time = 1
value = 0,18
channel = 0

[State 4508,Crush SND]
type = PlaySnd
trigger1 = !time
value = 1,8
channel = 1

[State 4508, Explod] ;Strong Ground Wave - Background
type = Explod
trigger1 = !time
anim = 7035
pos = -20,0
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = -1

[State 4508, Explod 2];Strong Ground Wave - Foreground
type = Explod
trigger1 = !time
anim = 7036
pos = -20,0
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = 3

[State 4508, TBind 1]
type = TargetBind
trigger1 = !time ;AnimElem = 1, >=0
pos = -38,-8
time = 24

[State 902, Screen Shaking]
type = Envshake
trigger1 = !time
time = 20
freq = 70
ampl = -8

[State 4508, ChangeState]
type = ChangeState
trigger1 = !Animtime
value = 4509

;--------------------------
; Mega Running Spark - Roll
;--------------------------

[Statedef 4509]
type    = S
physics = N
movetype= A
anim = 4509
ctrl = 0
sprpriority = 2
velset = 4,0

[State 211, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 4509, Stop Rolling]
type = velset
trigger1 = time = 20
x = 0

[State 4509, Turn]
type = Turn
trigger1 = !Animtime

[State 4509, 6]
type = ChangeState
trigger1 = !Animtime
value = 0
ctrl = 1

;-----------------------------------
; Enemy thrown by Mega Running Spark
;-----------------------------------

[Statedef 4513]
type    = S
physics = N
movetype= H
ctrl = 0
velset = 0,0

[State 4513, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1

[State 4513, ChangeAnim]
type = Changeanim2
trigger1 = !time
value = 4513

[State 4513, SPR]
type = SprPriority
trigger1 = animelem = 2, >=0
trigger1 = animelem = 6, < 0
value = 2

[State 4513, SPR]
type = SprPriority
trigger1 = animelem = 1, >=0
trigger1 = animelem = 2, < 0
trigger2 = animelem = 6, >=0
value = 1

[State 4513, Width]
type = Width
trigger1 = 1
value = -30,-30

[State 4513, ChangeState]
type = Changestate
trigger1 = p2stateno = 4504
value = 4514

;-----------------------------------------------------
; Enemy Thrown by Mega Running Spark - Pressed on Wall
;-----------------------------------------------------

[Statedef 4514]
type    = S
physics = N
movetype= H
ctrl = 0
sprpriority = 1
velset = 0,0

[State 4513, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1

[State 4514, ChangeAnim]
type = Changeanim2
trigger1 = !time
value = 4514

[State 4514, Damage]
type = LifeAdd
trigger1 = !time
value = -168 - 42*(enemy, var(21)>0)
kill = 0

[State 4514, Screen Shaking]
type = Envshake
trigger1 = !time
time = 20
freq = 70
ampl = -8

[State 4514, ChangeState]
type = ChangeState
trigger1 = p2stateno = 4505
value = 4515

;---------------------------------------------
; Enemy Thrown by Mega Running Spark - 2nd Run
;---------------------------------------------

[Statedef 4515]
type    = S
physics = N
movetype= H
ctrl = 0
sprpriority = 1
velset = 0,0

[State 4513, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1

[State 4515, ChangeAnim]
type = Changeanim2
trigger1 = !time
value = 4515

[State 4515, Width]
type = Width
trigger1 = 1
value = -30,-30

[State 4515, ChangeState]
type = Changestate
trigger1 = p2stateno = 4506
value = 4516

;------------------------------------------------------------------
; Enemy Thrown by Mega Running Spark - Pressed on Wall Another Time
;------------------------------------------------------------------

[Statedef 4516]
type    = S
physics = N
movetype= H
ctrl = 0
sprpriority = 1
velset = 0,0

[State 4513, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1

[State 4516, ChangeAnim]
type = Changeanim2
trigger1 = !time
value = 4516

[State 4516, Damage]
type = LifeAdd
trigger1 = !time
value = -168 - 42*(enemy, var(21)>0)
kill = 0

[State 4516, Screen Shaking]
type = Envshake
trigger1 = !time
time = 20
freq = 70
ampl = -8

[State 4516, ChangeState]
type = ChangeState
trigger1 = p2stateno = 4507
value = 4517

;--------------------------------------------------------
; Enemy Thrown by Mega Running Spark - Final Run and Jump
;--------------------------------------------------------

[Statedef 4517]
type    = S
physics = N
movetype= H
ctrl = 0
sprpriority = 1
velset = 0,0

[State 4513, ScreenBound]
type = ScreenBound
trigger1 = time < 65
value = 1

[State 4517, ChangeAnim]
type = Changeanim2
trigger1 = !time
value = 4517

[State 4517, ChangeState]
type = ChangeState
trigger1 = p2stateno = 4508
value = 4518

;---------------------------------------------------
; Enemy thrown by Mega Running Spark - "Pile Drived"
;---------------------------------------------------

[Statedef 4518]
type    = S
physics = N
movetype= H
sprpriority = 2
ctrl = 0
velset = 0,0

[State 4518, ChangeAnim]
type = Changeanim2
trigger1 = !time
value = 4518

[State 4518, Width]
type = Width
trigger1 = time <= 21
value = -30,-30

[State 4518, Turn]
type = Turn
trigger1 = !time
value = 1

[State 4518, Screen Shaking]
type = Envshake
trigger1 = !time
time = 20
freq = 70
ampl = -8

[State 4518, Damage]
type = Lifeadd
trigger1 = !time
value = -364 - 91*(enemy, var(21)>0)

[State 4518, Facing]
type = Turn
trigger1 = time >=24

[State 4518, End]
type = SelfState
trigger1 = !Animtime
value = 5030

;--------------------------------------------------------------------------------------------------------------------------
; Twisted Wrestle (DM)
;--------------------------------------------------------------------------------------------------------------------------

;-----------------------------------
; Twisted Wrestle Success - 1st part
;-----------------------------------

[Statedef 7901]
type    = S
physics = S
movetype= A
anim = 7901
ctrl = 0

[State 211, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 7901, SuperPause]
type = SuperPause
trigger1 = Time = 2
pos = 15,-85
anim = -1
time = 27
darken = 0
poweradd = -1000
numhits = 1

[State 7901, SuperPause]
type = SuperPause
trigger1 = Time = 190
pos = 15,-85
anim = -1
time = 27
darken = 0
numhits = 1

[State 7901, DM Explod 1]
type = Explod
trigger1 = !time
anim = 7050
pos = 10, -7
postype = p1
bindtime = -1
sprpriority = 2
removeongethit = 1
ontop = 1
ownpal = 1
supermove = 1

[State 7901, DM Explod 2]
type = Explod
trigger1 = !time
anim = 7051
pos = 20, -37
postype = p1
bindtime = -1
sprpriority = -2
removeongethit = 1
scale = 1.075,1.075
supermove = 1
ownpal = 1

[State 7901, DM Explod 3]
type = Explod
trigger1 = !time
anim = 7052
postype = back
pos = 0,0
bindtime = -1
sprpriority = -3
removeongethit = 1
supermove = 1
ownpal = 1

[State 7901, DM Explod 1]
type = Explod
trigger1 = time = 190
anim = 7050
pos = -70, -130
postype = p1
bindtime = -1
sprpriority = 2
removeongethit = 1
ontop = 1
ownpal = 1
supermove = 1

[State 7901, DM Explod 2]
type = Explod
trigger1 = time = 190
anim = 7051
pos = -70, -130
postype = p1
bindtime = -1
sprpriority = -2
removeongethit = 1
scale = 1.075,1.075
supermove = 1
ownpal = 1

[State 7901, DM Explod 3]
type = Explod
trigger1 = time = 190
anim = 7052
postype = back
pos = 0,0
bindtime = -1
sprpriority = -3
removeongethit = 1
supermove = 1
ownpal = 1

[State 7901, Special Spark] ; Special Throw Grab Spark
type = Explod
trigger1 = animelem = 2
anim = 7020
pos = 0,-10
postype = p1
bindtime = 1
sprpriority = 1
ownpal = 1

[State 7901, Special Spark] ; Special Throw Grab Spark
type = Explod
trigger1 = animelem = 13
anim = 7020
pos = -20,-5
postype = p1
bindtime = 1
sprpriority = 1
ownpal = 1

[State 7901, Special Spark] ; Special Throw Grab Spark
type = Explod
trigger1 = animelem = 25
anim = 7020
pos = -57,-5 
postype = p1
bindtime = 1
sprpriority = 1
ownpal = 1

[State 7901, Explod] ;Strong Ground Wave - Background
type = Explod
trigger1 = AnimElem = 9
anim = 7035
pos = 0,5
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = -1

[State 7901, Explod 2];Strong Ground Wave - Foreground
type = Explod
trigger1 = AnimElem = 8
anim = 7036
pos = 0,5
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = 3

[State 6007, Explod] ;Strong Ground Wave - Background
type = Explod
trigger1 = AnimElem = 19
anim = 7035
pos = 0,5
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = -1

[State 6007, Explod 2];Strong Ground Wave - Foreground
type = Explod
trigger1 = AnimElem = 19
anim = 7036
pos = 0,5
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = 3

[State 6007, Explod] ;Strong Ground Wave - Background
type = Explod
trigger1 = AnimElem = 46
anim = 7035
pos = -70,5
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = -1

[State 6007, Explod 2];Strong Ground Wave - Foreground
type = Explod
trigger1 = AnimElem = 46
anim = 7036
pos = -70,5
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = 3

[State 7901, Screen Shaking]
type = Envshake
trigger1 = AnimElem = 9
trigger2 = AnimElem = 19
trigger3 = AnimElem = 46
time = 20
freq = 70
ampl = -8

[State 7901, Damage]
type = TargetLifeAdd
trigger1 = AnimElem = 9
trigger2 = AnimElem = 19
value = -70 - 17*(var(21)>0)
kill = 0

[State 7901, Damage]
type = TargetLifeAdd
trigger1 = AnimElem = 46
value = -160 - 40*(var(21)>0)
kill = 1

[State 7901, 1st SND]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,1
channel = 0

[State 7901, 2nd SND]
type = PlaySnd
trigger1 = AnimElem = 9
value = 0,18
channel = 0

[State 7901, 3rd SND]
type = PlaySnd
trigger1 = AnimElem = 18
value = 0,16
channel = 0

[State 7901, 4th SND]
type = PlaySnd
trigger1 = AnimElem = 35,=1
value = 0,9
channel = 0

[State 6007, Wind SND]
type = Playsnd
trigger1 = AnimElem = 41, =5
value = 1,15
channel = 1

[State 2600, Clark Voice]
type = PlaySnd
trigger1 = AnimElem = 40,=1
value = 0,17
channel = 0

[State 6008, Crush SND]
type = Playsnd
trigger1 = AnimElem = 45,=1
value = 1,16
channel = 1

[State 2600, Clark Voice 2]
type = PlaySnd
trigger1 = AnimElem = 54,=1
value = 0,12
channel = 0

[State 7901, DM SND]
type = PlaySnd
trigger1 = !time
trigger2 = time = 190
value = 1,13
channel = 1

[State 7901, 1st SND]
type = PlaySnd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 13
trigger3 = AnimElem = 25
value = 1,9
channel = 2

[State 7901, 1st SND]
type = PlaySnd
trigger1 = AnimElem = 7
trigger2 = AnimElem = 34, =2
value = 1,10
channel = 1

[State 7901, 1st SND]
type = PlaySnd
trigger1 = AnimElem = 8
trigger2 = AnimElem = 19
value = 1,8
channel = 1

[State 7901, SPRPriority]
type = SprPriority
trigger1 = AnimElem = 2, >=0
trigger1 = AnimElem = 5, < 0
trigger2 = AnimElem = 8, >=0
trigger2 = AnimElem = 10, < 0
trigger3 = AnimElem = 26, >=0
trigger3 = AnimElem = 29, < 0
value = 1

[State 7901, SPRPriority]
type = SprPriority
trigger1 = AnimElem = 1
trigger2 = AnimElem = 5, >=0
trigger2 = AnimElem = 8, < 0
trigger3 = AnimElem = 10, >=0
trigger3 = AnimElem = 26, < 0
trigger4 = AnimElem = 29, >=0
;trigger5 = AnimElem = 31, >=0
value = 2

[State 7901, Flash]
type = Envcolor
trigger1 = AnimElem = 9
trigger2 = AnimElem = 19
trigger3 = AnimElem = 46
value = 248,248,248
time = 1
under = 1

[State 7901, TBind 1]
type = TargetBind
trigger1 = AnimElem = 1, >=0
trigger1 = AnimElem = 4, < 0
pos = 0,0

[State 7901, TBind 2]
type = TargetBind
trigger1 = AnimElem = 4, >=0
trigger1 = AnimElem = 5, < 0
pos = 0, -10

[State 7901, TBind 3]
type = TargetBind
trigger1 = AnimElem = 5, >=0
trigger1 = AnimElem = 6, < 0
pos = 20,0

[State 7901, TBind 4]
type = TargetBind
trigger1 = AnimElem = 6, >=0
trigger1 = AnimElem = 7, < 0
pos = -10,0

[State 7901, TBind 5]
type = TargetBind
trigger1 = AnimElem = 7, >=0
trigger1 = AnimElem = 8, < 0
pos = 15,-50

[State 7901, TBind 6]
type = TargetBind
trigger1 = AnimElem = 8, >=0
trigger1 = AnimElem = 9, < 0
pos = -25,0

[State 7901, TBind 6 bis]
type = TargetBind
trigger1 = AnimElem = 9, >=0
trigger1 = AnimElem = 10,< 0
pos = -25,-5

[State 7901, TBind 8]
type = TargetBind
trigger1 = AnimElem = 13, >=0
trigger1 = AnimElem = 14, < 0
pos = 5,-5

[State 7901, TBind 8 bis]
type = TargetBind
trigger1 = AnimElem = 14, >=0
trigger1 = AnimElem = 15, < 0
pos = -50,0

[State 7901, Tbind 8 ter]
type = TargetBind
trigger1 = AnimElem = 25, >=0
trigger1 = AnimElem = 26, < 0
pos = -70,0

[State 7901, TBind 9]
type = TargetBind
trigger1 = AnimElem = 28, >=0
trigger1 = AnimElem = 29, < 0
pos = -70,0

[State 7901, TBind 10]
type = TargetBind
trigger1 = AnimElem = 29, >=0
trigger1 = AnimElem = 34, < 0
pos = -71,0

[State 7901, TBind 11]
type = TargetBind
trigger1 = AnimElem = 34, >=0
trigger1 = AnimElem = 35, < 0
pos = -45,-70

[State 7901, TBind 12]
type = TargetBind
trigger1 = AnimElem = 35, >=0
trigger1 = AnimElem = 36, < 0 
pos = -75,-70

[State 7901, TBind 13]
type = TargetBind
trigger1 = AnimElem = 36, >=0
trigger1 = AnimElem = 37, < 0
pos = -80,-100

[State 7901, TBind 14]
type = TargetBind
trigger1 = AnimElem = 37, >=0
trigger1 = AnimElem = 38, < 0
pos = -60,-116

[State 7901, TBind 14]
type = TargetBind
trigger1 = AnimElem = 38, >=0
trigger1 = AnimElem = 39, < 0
pos = -70,-120

[State 7901, TBind 14]
type = TargetBind
trigger1 = AnimElem = 39, >=0
trigger1 = AnimElem = 40, < 0
pos = -68,-118

[State 7901, TBind 14]
type = TargetBind
trigger1 = AnimElem = 40, >=0
trigger1 = AnimElem = 41, < 0
pos = -69,-121

[State 7901, TBind 14]
type = TargetBind
trigger1 = AnimElem = 41, >=0
trigger1 = AnimElem = 42, < 0
pos = -70,-122

[State 7901, TBind 14]
type = TargetBind
trigger1 = AnimElem = 42, >=0
trigger1 = AnimElem = 43, < 0
pos = -69,-113

[State 7901, TBind 14]
type = TargetBind
trigger1 = AnimElem = 43, >=0
trigger1 = AnimElem = 44, < 0
pos = -68,-100

[State 7901, TBind 14]
type = TargetBind
trigger1 = AnimElem = 44, >=0
trigger1 = AnimElem = 45, < 0
pos = -68,-88

[State 7901, TBind 14]
type = TargetBind
trigger1 = AnimElem = 45, >=0
trigger1 = AnimElem = 46, < 0
pos = -68,-49

[State 7901, TBind 14]
type = TargetBind
trigger1 = AnimElem = 46, >=0
trigger1 = AnimElem = 47, < 0
pos = -68,-25

[State 7901, TBind 14]
type = TargetBind
trigger1 = AnimElem = 47, >=0
trigger1 = AnimElem = 47, < 4
pos = -68,-23

[State 7901, PosAdd]
type = PosAdd
trigger1 = !Animtime
x = -67

[State 7901, Turn]
type = Turn
trigger1 = !Animtime

[State 7901, ChangeState]
type = ChangeState
trigger1 = !Animtime
value = 0
ctrl = 1

;--------------------------------------------
; Twisted Wrestle - Enemy Grabbed in 1st part
;--------------------------------------------

[Statedef 7910]
type    = S
physics = N
movetype= H
ctrl = 0

[State 7910, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1

[State 7910, ChangeAnim]
type = Changeanim2
trigger1 = !time
value = 7910

[State 7910, Width]
type = Width
trigger1 = 1
value = -30,-30

[State 7910, SPRPriority]
type = SprPriority
trigger1 = enemy,AnimElem = 2, >=0
trigger1 = enemy,AnimElem = 5, < 0
trigger2 = enemy,AnimElem = 8, >=0
trigger2 = enemy,AnimElem = 10, < 0
trigger3 = enemy,AnimElem = 26, >=0
trigger3 = enemy,AnimElem = 29, < 0
value = 2

[State 7910, SPRPriority]
type = SprPriority
trigger1 = enemy,AnimElem = 1
trigger2 = enemy,AnimElem = 5, >=0
trigger2 = enemy,AnimElem = 8, < 0
trigger3 = enemy,AnimElem = 10, >=0
trigger3 = enemy,AnimElem = 26, < 0
trigger4 = enemy,AnimElem = 29, >=0
value = 1

[State 7910, PosSet]
type = PosSet
trigger1 = time >= 247
y = -5

[State 7910, PosSet]
type = VelSet
trigger1 = time >= 247
x = 4
y = -3

[State 7910, End]
type = SelfState
trigger1 = !Animtime
value = 5050

;--------------------------------------------------------------------------------------------------------------------------
; Twisted Wrestle (SDM)
;--------------------------------------------------------------------------------------------------------------------------

;-----------------------------------
; Twisted Wrestle Success - 1st part
;-----------------------------------

[Statedef 7950]
type    = S
physics = S
movetype= A
anim = 7950
ctrl = 0

[State 211, StopSND]
type = StopSND
trigger1 = 1
channel = 3

[State 7950, SuperPause]
type = SuperPause
trigger1 = Time = 2
pos = 15,-85
anim = -1
time = 27
darken = 0
poweradd = -2000

[State 7950, SuperPause]
type = SuperPause
trigger1 = AnimElem = 28
pos = 15,-85
anim = -1
time = 27
darken = 0

[State 7950, SDM Explod 1]
type = Explod
trigger1 = !time
anim = 7061
pos = 10, -37
postype = p1
bindtime = -1
sprpriority = 2
removeongethit = 1
ontop = 1
ownpal = 1
supermove = 1

[State 7950, SDM Explod 2]
type = Explod
trigger1 = !time
anim = 7062
pos = 10, -37
postype = p1
bindtime = -1
sprpriority = -3
removeongethit = 1
scale = 1.075,1.075
supermove = 1
ownpal = 1

[State 7950, SDM Explod 1]
type = Explod
trigger1 = AnimElem = 28
anim = 7061
pos = -105, -60
postype = p1
bindtime = -1
sprpriority = 2
removeongethit = 1
ontop = 1
ownpal = 1
supermove = 1

[State 7950, SDM Explod 2]
type = Explod
trigger1 = AnimElem = 28
anim = 7062
pos = -105, -60
postype = p1
bindtime = -1
sprpriority = -3
removeongethit = 1
scale = 1.075,1.075
supermove = 1
ownpal = 1

[State 7950, SDM Explod 3]
type = Explod
trigger1 = !time
trigger2 = AnimElem = 28
anim = 7052
postype = back
pos = 0,0
bindtime = -1
sprpriority = -3
removeongethit = 1
supermove = 1
ownpal = 1

[State 7950, SDM SND]
type = Playsnd
trigger1 = Animelem = 1
trigger2 = AnimElem = 28
value = 1,17
channel = 1

[State 7950, Special Spark] ; Special Throw Grab Spark
type = Explod
trigger1 = animelem = 2
anim = 7020
pos = 0,-10
postype = p1
bindtime = 1
sprpriority = 1
ownpal = 1

[State 7950, Special Spark] ; Special Throw Grab Spark
type = Explod
trigger1 = animelem = 13
anim = 7020
pos = -20,-5
postype = p1
bindtime = 1
sprpriority = 1
ownpal = 1

[State 7950, Special Spark] ; Special Throw Grab Spark
type = Explod
trigger1 = animelem = 30
anim = 7020
pos = -100,-5 
postype = p1
bindtime = 1
sprpriority = 1
ownpal = 1

[State 7950, Special Spark] ; Special Throw Grab Spark
type = Explod
trigger1 = animelem = 48
anim = 7020
pos = -120,-5 
postype = p1
bindtime = 1
sprpriority = 1
ownpal = 1

[State 7950, Explod] ;Strong Ground Wave - Background
type = Explod
trigger1 = AnimElem = 9
anim = 7035
pos = 0,5
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = -1

[State 7950, Explod 2];Strong Ground Wave - Foreground
type = Explod
trigger1 = AnimElem = 9
anim = 7036
pos = 0,5
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = 3

[State 7950, Explod] ;Strong Ground Wave - Background
type = Explod
trigger1 = AnimElem = 19
anim = 7035
pos = 0,5
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = -1

[State 7950, Explod 2];Strong Ground Wave - Foreground
type = Explod
trigger1 = AnimElem = 19
anim = 7036
pos = 0,5
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = 3

[State 7950, Explod] ;Strong Ground Wave - Background
type = Explod
trigger1 = AnimElem = 42
anim = 7035
pos = -110,5
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = -1

[State 7950, Explod 2];Strong Ground Wave - Foreground
type = Explod
trigger1 = AnimElem = 42
anim = 7036
pos = -110,5
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = 3

[State 7950, Screen Shaking]
type = Envshake
trigger1 = AnimElem = 9
trigger2 = AnimElem = 19
trigger3 = AnimElem = 42
trigger4 = AnimElem = 56
time = 20
freq = 70
ampl = -8

[State 7950, Damage]
type = TargetLifeAdd
trigger1 = AnimElem = 9
trigger2 = AnimElem = 19
trigger3 = AnimElem = 42
value = -90 - 22*(var(21)>0)
kill = 0

[State 7950, Damage]
type = TargetLifeAdd
trigger1 = AnimElem = 56
value = -100 - 25*(var(21)>0)
kill = 0

[State 7950, 1st SND]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,1
channel = 0

[State 7950, Super Lift DDT SND]
type = PlaySnd
trigger1 = AnimElem = 9
value = 0,18
channel = 0

[State 7950, Yawn SND]
type = PlaySnd
trigger1 = AnimElem = 18
value = 0,16
channel = 0

[State 7950, Hey SND]
type = PlaySnd
trigger1 = AnimElem = 27
value = 0,12
channel = 0

[State 7950, Clark SND]
type = PlaySnd
trigger1 = AnimElem = 38
value = 0,1
channel = 0

[State 7950, Clark SND 2]
type = PlaySnd
trigger1 = AnimElem = 54
value = 0,2
channel = 0

[State 7950, Grab SND]
type = PlaySnd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 13
trigger3 = AnimElem = 30
trigger4 = AnimElem = 48
value = 1,9
channel = 2

[State 7950, Wind SND]
type = PlaySnd
trigger1 = AnimElem = 7
trigger2 = AnimElem = 40, =1
value = 1,10
channel = 1

[State 7950, Crush SND]
type = PlaySnd
trigger1 = AnimElem = 8
trigger2 = AnimElem = 19
trigger3 = AnimElem = 42
trigger4 = AnimElem = 56
value = 1,8
channel = 1

[State 7950, SPRPriority]
type = SprPriority
trigger1 = AnimElem = 2, >=0
trigger1 = AnimElem = 5, < 0
trigger2 = AnimElem = 8, >=0
trigger2 = AnimElem = 10, < 0
trigger3 = AnimElem = 31, >=0
trigger3 = AnimElem = 34, < 0
trigger4 = AnimElem = 49, >=0
trigger4 = AnimElem = 52, < 0
trigger5 = AnimElem = 53
value = 1

[State 7950, SPRPriority]
type = SprPriority
trigger1 = AnimElem = 1
trigger2 = AnimElem = 5, >=0
trigger2 = AnimElem = 8, < 0
trigger3 = AnimElem = 10, >=0
trigger3 = AnimElem = 31, < 0
trigger4 = AnimElem = 34, >=0
trigger4 = AnimElem = 49, < 0
trigger5 = AnimElem = 52
trigger6 = AnimElem = 54, >=0
value = 2

[State 7950, Flash]
type = Envcolor
trigger1 = AnimElem = 9
trigger2 = AnimElem = 19
trigger3 = AnimElem = 42
trigger4 = AnimElem = 56
value = 248,248,248
time = 1
under = 1

[State 7950, TBind 1]
type = TargetBind
trigger1 = AnimElem = 1, >=0
trigger1 = AnimElem = 4, < 0
pos = 0,0

[State 7950, TBind 2]
type = TargetBind
trigger1 = AnimElem = 4, >=0
trigger1 = AnimElem = 5, < 0
pos = 0, -10

[State 7950, TBind 3]
type = TargetBind
trigger1 = AnimElem = 5, >=0
trigger1 = AnimElem = 6, < 0
pos = 20,0

[State 7950, TBind 4]
type = TargetBind
trigger1 = AnimElem = 6, >=0
trigger1 = AnimElem = 7, < 0
pos = -10,0

[State 7950, TBind 5]
type = TargetBind
trigger1 = AnimElem = 7, >=0
trigger1 = AnimElem = 8, < 0
pos = 15,-50

[State 7950, TBind 6]
type = TargetBind
trigger1 = AnimElem = 8, >=0
trigger1 = AnimElem = 9, < 0
pos = -25,0

[State 7950, TBind 6 bis]
type = TargetBind
trigger1 = AnimElem = 9, >=0
trigger1 = AnimElem = 10,< 0
pos = -25,-5

[State 7950, TBind 8]
type = TargetBind
trigger1 = AnimElem = 13, >=0
trigger1 = AnimElem = 14, < 0
pos = 5,-5

[State 7950, TBind 8 bis]
type = TargetBind
trigger1 = AnimElem = 14, >=0
trigger1 = AnimElem = 15, < 0
pos = -50,0

[State 7950, Tbind 8 ter]
type = TargetBind
trigger1 = AnimElem = 25, >=0
trigger1 = AnimElem = 30, < 0
pos = -95,0

[State 7950, TBind 11]
type = TargetBind
trigger1 = AnimElem = 30, >=0
trigger1 = AnimElem = 31, < 0
pos = -100,0

[State 7950, TBind 12]
type = TargetBind
trigger1 = AnimElem = 31, >=0
trigger1 = AnimElem = 32, < 0 
pos = -95,0

[State 7950, TBind 13]
type = TargetBind
trigger1 = AnimElem = 32, >=0
trigger1 = AnimElem = 33, < 0
pos = -95,-8

[State 7950, TBind 14]
type = TargetBind
trigger1 = AnimElem = 33, >=0
trigger1 = AnimElem = 34, < 0
pos = -100,-20

[State 7950, TBind 14]
type = TargetBind
trigger1 = AnimElem = 34, >=0
trigger1 = AnimElem = 35, < 0
pos = -70,0

[State 7950, TBind 14]
type = TargetBind
trigger1 = AnimElem = 35, >=0
trigger1 = AnimElem = 36, < 0
pos = -60,0

[State 7950, TBind 14]
type = TargetBind
trigger1 = AnimElem = 36, >=0
trigger1 = AnimElem = 37, < 0
pos = -82,-87

[State 7950, TBind 14]
type = TargetBind
trigger1 = AnimElem = 37, >=0
trigger1 = AnimElem = 39, < 0
pos = -90,-95

[State 7950, TBind 14]
type = TargetBind
trigger1 = AnimElem = 39, >=0
trigger1 = AnimElem = 40, < 0
pos = -95,-100

[State 7950, TBind 14]
type = TargetBind
trigger1 = AnimElem = 40, >=0
trigger1 = AnimElem = 41, < 0
pos = -115,-90

[State 7950, TBind 14]
type = TargetBind
trigger1 = AnimElem = 41, >=0
trigger1 = AnimElem = 42, < 0
pos = -115,-85

[State 7950, TBind 14]
type = TargetBind
trigger1 = AnimElem = 42, >=0
trigger1 = AnimElem = 43, < 0
pos = -115,-10

[State 7950, TBind 14]
type = TargetBind
trigger1 = AnimElem = 43, >=0
trigger1 = AnimElem = 44, < 0
pos = -115,0

[State 7950, TBind 14]
type = TargetBind
trigger1 = AnimElem = 48, >=0
trigger1 = AnimElem = 50, < 0
pos = -120,0

[State 7950, TBind 14]
type = TargetBind
trigger1 = AnimElem = 50, >=0
trigger1 = AnimElem = 51, < 0
pos = -120,-5

[State 7950, TBind 14]
type = TargetBind
trigger1 = AnimElem = 51, >=0
trigger1 = AnimElem = 52, < 0
pos = -125,-30

[State 7950, TBind 14]
type = TargetBind
trigger1 = AnimElem = 52, >=0
trigger1 = AnimElem = 53, < 0
pos = -115,0

[State 7950, TBind 14]
type = TargetBind
trigger1 = AnimElem = 53, >=0
trigger1 = AnimElem = 54, < 0
pos = -105,0

;[State 7950, VarSet]
;type = VarSet
;trigger1 = time = [0,143]
;trigger2 = command = "TWSDM_F1"
;var(20) = 1

;[State 7950, VarSet]
;type = VarSet
;trigger1 = time = [0,143]
;trigger2 = command = "TWSDM_F2"
;var(20) = 2

;[State 7950, VarSet]
;type = VarSet
;trigger1 = time > 143
;trigger1 = command = "TWSDM_F3"
;var(20) = 3

[State 7950, ChangeState]
type = ChangeState
trigger1 = !Animtime
value = 7951

;--------------------------------------------------------------------------------------------------------------------------
; Twisted Wrestle SDM - Dash Back
;--------------------------------------------------------------------------------------------------------------------------

[Statedef 7951]
type = S
physics = S
anim = 47
velset = 0
ctrl = 0

[State 7951, Invincible]
type = NotHitBy
trigger1 = time >=0
value = SCA

[State 7951, PlayerPush]
type = PlayerPush
trigger1 = time >=0
value = 0

[State 7951, Bounce SND]
type = PlaySnd
trigger1 = p2stateno = 7961
value = 1,20
channel = 2

[State 7951, PosAdd]
type = PosAdd
trigger1 = !time
x = -130

[State 7951, Next]
type = ChangeState
trigger1 = !Animtime
value = 7952

[Statedef 7952]
type = A
physics = N
anim = 105

[State 7915, Invincible]
type = NotHitBy
trigger1 = time >=0
value = SCA

[State 7951, PlayerPush]
type = PlayerPush
trigger1 = time >=0
value = 0

[State 7952, Dash Velocities]
type = VelSet
trigger1 = !time
x = const(velocity.run.back.x) - 4
y = const(velocity.run.back.y) - 1.5

[State 7952, Dash Back Sound]
type = PlaySnd
trigger1 = !time
value = 1,6

[State 7952, Friction]
type = veladd
trigger1 = time = 10
x = .1

[State 7952, Gravity]
type = VelAdd
trigger1 = Time > 2
y = .8

[State 7952, End]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 7953 

[Statedef 7953]
type = S
physics = S
anim = 47
velset = 0,0

[State 107, 1]
type = PosSet
trigger1 = !time
y = 0

[State 107, 2]
type = PlaySnd
trigger1 = !time
value = 1,5

[State 107, 3]
type = ChangeState
trigger1 = !Animtime
value = 7954

;-------------------------------------------
; Twisted Wrestle SDM - Preparing Final Part
;-------------------------------------------

[Statedef 7954]
type    = S
physics = S
movetype= A
anim = 7951
ctrl = 0

[State 3200, SDM BG]
type = BGPalFX
trigger1 = 1
time = 1
invertall = 1
ignorehitpause = 1

[State 7915, Invincible]
type = NotHitBy
trigger1 = time >=0
value = SCA

[State 7951, PlayerPush]
type = PlayerPush
trigger1 = time >=0
value = 0

[State 7954, SuperPause]
type = SuperPause
trigger1 = Time = 2
unhittable = 1
anim = 3000
time = 27
darken = 0
ignorehitpause
movetime = 20

[State 7954, SDM Explod 1]
type = Explod
trigger1 = !time
anim = 7061
pos = 20, -87
postype = p1
bindtime = -1
sprpriority = 2
removeongethit = 1
ontop = 1
ownpal = 1
supermove = 1

[State 7954, SDM Explod 2]
type = Explod
trigger1 = !time
anim = 7062
pos = 20, -87
postype = p1
bindtime = -1
sprpriority = -3
removeongethit = 1
scale = 1.075,1.075
supermove = 1
ownpal = 1

[State 7954, SDM Explod 3]
type = Explod
trigger1 = !time
anim = 7052
postype = back
pos = 0,0
bindtime = -1
sprpriority = -3
removeongethit = 1
supermove = 1
ownpal = 1

[State 7954, SDM SND]
type = Playsnd
trigger1 = Animelem = 1
value = 1,17
channel = 1

[State 7954, Clark SND]
type = PlaySnd
trigger1 = AnimElem = 8
value = 0,8
channel = 0

[State 7955, Clark SND]
type = PlaySnd
trigger1 = AnimElem = 18, = 1
value = 0,17
channel = 0

[State 7954, Run]
type = VelSet
trigger1 = AnimElem =11, >=0
x = const(velocity.run.fwd.x) + 0.5

[State 7954, 2]
type = PlaySnd
trigger1 = AnimElem = 11
value = 1,2
channel = 3

[State 7954, Random]
type = VarSet
trigger1 = time = 68 && (p2bodydist x > 30)
v = 20
value = ifelse(gametime%2=0,1,2)
ignorehitpause = 1
persistent = 0

[State 7954, Else]
type = VarSet
trigger1 = time = 68 && (p2bodydist x <= 30)
v = 20
value = 3
ignorehitpause = 1
persistent = 0

[State 7954, Finisher 1] ; Signature Move 1 : Ground Zero
type = ChangeState
trigger1 = p2bodydist x <= 25
trigger1 = time > 68
trigger1 = var(20) = 1
value = 7955

[State 7954, Finisher 2] ; Signature Move 2 : Horse Mounted Ralf Kick (Drop Kick)
type = ChangeState
trigger1 = p2bodydist x <= 80
trigger1 = time > 68
trigger1 = var(20) = 2
value = 7970

[State 7954, Finisher 3] ; Signature Move 3 : Reversed Frankensteiner
type = ChangeState
trigger1 = p2bodydist x <= 20
trigger1 = var(20) = 3
trigger1 = time >=68
value = 8000

;-----------------------------------------------
; Twisted Wrestle SDM - Finisher I - Ground Zero
;-----------------------------------------------

[Statedef 7955]
type    = S
physics = S
movetype= A
anim = 7952
ctrl = 0

[State 3200, SDM BG]
type = BGPalFX
trigger1 = 1
time = 1
invertall = 1
ignorehitpause = 1

[State 7955, Stop Run SND]
type = StopSnd
trigger1 = !time
channel = 3

[State 7955, Screen Shaking]
type = Envshake
trigger1 = AnimElem = 2
time = 20
freq = 70
ampl = -8

[State 7955, Screen Flash]
type = EnvColor
trigger1 = AnimElem = 2
trigger2 = AnimElem = 9
add = 248,248,248
time = 1

[State 7955, 1st Hit]
type = HitDef
trigger1 = AnimElem = 2
attr = S, SA
damage    = 30
animtype  = Hard
hitflag = MAFD
guardflag = MAF
priority  = 7, Hit
pausetime = 8,13
sparkno = S7025                  
guard.sparkno = S7005          
sparkxy = -10,-55
hitsound   = S1,8
ground.cornerpush.veloff = -5
ground.type = Low
ground.hittime  = 25
kill = 0

[State 7955, Grab Attempt]
type = HitDef
Trigger1 = AnimElem = 9
attr = S, ST
hitflag = M
damage = 1
priority = 7, Dodge
sparkno = -1
hitsound = S1,9         
sprpriority = 2
p2facing = 1
p1stateno = 7956
p2stateno = 7966
ground.velocity = 5,-4
air.velocity = 5,-4
fall = 1
fall.recover = 0
fall.xvelocity = 3.5
fall.yvelocity = 3.6
kill = 0

;--------------------------------
; Twisted Wrestle SDM - Slam Down
;--------------------------------

[Statedef 7956]
type    = S
physics = S
movetype= A
anim = 7953
ctrl = 0

[State 3200, SDM BG]
type = BGPalFX
trigger1 = 1
time = 1
invertall = 1
ignorehitpause = 1

[State 7956, Wind SND]
type = PlaySnd
trigger1 = AnimElem = 2, = 2
value = 1,10
channel = 1

[State 7956, Fall Vel]
type = VelSet
trigger1 = time >= 0
x = 4

[State 7956, Fall Vel]
type = VelSet
trigger1 = time = [0,1]
y = -5

[State 7956, Fall Vel]
type = VelSet
trigger1 = time = [2,3]
y = -4

[State 7956, Fall Vel]
type = VelSet
trigger1 = time = [4,5]
y = -3

[State 7956, Fall Vel]
type = VelSet
trigger1 = time = [6,7]
y = -2

[State 7956, Fall Vel]
type = VelSet
trigger1 = time = [8,9]
y = -1

[State 7956, Fall Vel]
type = VelSet
trigger1 = time = [10,11]
y = 0

[State 7956, Fall Vel]
type = VelSet
trigger1 = time = [12,13]
y = 1

[State 7956, Fall Vel]
type = VelSet
trigger1 = time = [14,15]
y = 2

[State 7956, Fall Vel]
type = VelSet
trigger1 = time = [16,17]
y = 3

[State 7956, Fall Vel]
type = VelSet
trigger1 = time = [18,19]
y = 4

[State 7956, Fall Vel]
type = VelSet
trigger1 = time >=20
y = 5

[State 7956, TBind 1]
type = TargetBind
trigger1 = time >= 0
pos = 9,-59

[State 7956, Touch Down]
type = ChangeState
trigger1 = time >= 20
trigger1 = pos y >= 15
value = 7957

;----------------------------------
; Twisted Wrestle SDM - Ground Slam
;----------------------------------

[Statedef 7957]
type    = S
physics = N
movetype= A
sprpriority = 1
anim = 7954
ctrl = 0
velset = 0,0

[State 3200, SDM BG]
type = BGPalFX
trigger1 = 1
time = 1
invertall = 1
ignorehitpause = 1

[State 7957, PosSet]
type = PosSet
trigger1 = !time
y = 0

[State 7956, Damage]
type = TargetLifeAdd
trigger1 = !time
value = -99 - 25*(var(21)>0)

[State 7955, Screen Shaking]
type = Envshake
trigger1 = !time
time = 20
freq = 70
ampl = -8

[State 7957, Crush SND]
type = PlaySnd
trigger1 = !time
value = 1,16
channel = 1

[State 7957, Flash]
type = EnvColor
trigger1 = !time
add = 248,248,248
time = 1

[State 7950, Explod] ;Strong Ground Wave - Background
type = Explod
trigger1 = !time
anim = 7035
pos = -30,5
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = -1

[State 7950, Explod 2];Strong Ground Wave - Foreground
type = Explod
trigger1 = !time
anim = 7036
pos = -30,5
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = 3

[State 7957, TBind]
type = TargetBind
trigger1 = time = [0,7]
pos = -25,-5

[State 7957, Turn]
type = Turn
trigger1 = !Animtime

[State 7957, End]
type = ChangeState
trigger1 = !Animtime
value = 0
ctrl = 1

;------------------------------------------------
; Twisted Wrestle SDM - Enemy Grabbed in 1st part
;------------------------------------------------

[Statedef 7960]
type    = S
physics = N
movetype= H
ctrl = 0
velset = 0,0

[State 4513, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1

[State 7910, ChangeAnim]
type = Changeanim2
trigger1 = !time
value = 7960

[State 7910, Width]
type = Width
trigger1 = 1
value = -30,-30

[State 7950, SPRPriority]
type = SprPriority
trigger1 = enemy, AnimElem = 2, >=0
trigger1 = enemy, AnimElem = 5, < 0
trigger2 = enemy, AnimElem = 8, >=0
trigger2 = enemy, AnimElem = 10, < 0
trigger3 = enemy, AnimElem = 31, >=0
trigger3 = enemy, AnimElem = 34, < 0
trigger4 = enemy, AnimElem = 49, >=0
trigger4 = enemy, AnimElem = 52, < 0
trigger5 = enemy, AnimElem = 53
value = 2

[State 7950, SPRPriority]
type = SprPriority
trigger1 = enemy, AnimElem = 1
trigger2 = enemy, AnimElem = 5, >=0
trigger2 = enemy, AnimElem = 8, < 0
trigger3 = enemy, AnimElem = 10, >=0
trigger3 = enemy, AnimElem = 31, < 0
trigger4 = enemy, AnimElem = 34, >=0
trigger4 = enemy, AnimElem = 49, < 0
trigger5 = enemy, AnimElem = 52
trigger6 = enemy, AnimElem = 54, >=0
value = 1

[State 7910, ChangeState]
type = Changestate
trigger1 = p2stateno = 7951
value = 7961

;----------------------------
; Twisted Wrestle SDM - Dizzy
;----------------------------

[Statedef 7961]
type    = S
physics = N
movetype= H
ctrl = 0
velset = 0,0

[State 4513, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1


[State 7961, Dizzy]
type = Changeanim
trigger1 = !time
value = 5300

;----------------------------------------
; Twisted Wrestle SDM - Picked Up On Head
;----------------------------------------

[Statedef 7966]
type    = S
physics = N
movetype= H
ctrl = 0
velset = 0,0

[State 4513, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1

[State 7966, ChangeAnim]
type = Changeanim2
trigger1 = !time
value = 7966

[State 7966, ChangeState]
type = ChangeState
trigger1 = p2stateno = 7957
value = 7967

;---------------------------------------------
; Twisted Wrestle SDM - Slammed Down on Ground
;---------------------------------------------

[Statedef 7967]
type    = L
physics = N
movetype= H
ctrl = 0
velset = 0,0

[State 4513, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1

[State 7967, PosSet]
type = posset
trigger1 = !time
y = 0

[State 7967, ChangeAnim]
type = Changeanim2
trigger1 = !time
value = 7967

[State 7967, Dead]
type = SelfState
trigger1 = !Animtime
value = 5100

;------------------------------------------------------------
; Twisted Wrestle SDM - Finisher II - Horse Mounted Ralf Kick
;------------------------------------------------------------

[Statedef 7970]
type    = S
physics = S
movetype= A
anim = 7970
ctrl = 0
velset = 0,0

[State 3200, SDM BG]
type = BGPalFX
trigger1 = 1
time = 1
invertall = 1
ignorehitpause = 1

[State 7970, AfterImages]
type = AfterImage
trigger1 = Animelem = 2
palinvertall = 1
time = 20
length = 12
FrameGap = 3

[State 7970, Jump Y]
type = VelSet
trigger1 = time = 3
y = -5.4

[State 7970, Jump X]
type = VelSet
trigger1 = time >= 3
x = const(velocity.run.fwd.x)

[State 7970, Gravity]
type = VelAdd
trigger1 = time >=3
y = .51

[State 7970, Stop Run SND]
type = StopSnd
trigger1 = !time
channel = 3

[State 7970, Voice]
type = PlaySnd
trigger1 = animelem =2, =1
value = 1,4
channel = 1

[State 7970, Voice]
type = PlaySnd
trigger1 = animelem =4, =1
value = 0,16
channel = 0

[State 7970, Screen Shaking]
type = Envshake
trigger1 = AnimElem = 2
time = 20
freq = 70
ampl = -8

[State 7970, Screen Flash]
type = EnvColor
trigger1 = AnimElem = 11
add = 248,248,248
time = 1

[State 7970, Hit]
type = HitDef
trigger1 = AnimElem = 6
attr = A, HA
damage = 150
animtype = DiagUp
hitflag = MAFD
guardflag = MAF
priority  = 7, Hit
pausetime = 40,42
sparkno = S7025                  
guard.sparkno = S7005          
sparkxy = -10,-55
hitsound = S1,8
ground.cornerpush.veloff = -5
ground.type = Hard
ground.velocity = -7,-10
air.velocity = -7,-9
givepower = 15
fall = 1
yaccel = 0.5

[State 7970, Land]
type = ChangeState
trigger1 = time > 17
trigger1 = pos y >=0
value = 7971

;--------------------------------------------
; Twisted Wrestle SDM - Finisher II - Landing
;--------------------------------------------

[Statedef 7971]
type    = S
movetype= I
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 7971

[State 3200, SDM BG]
type = BGPalFX
trigger1 = 1
time = 1
invertall = 1
ignorehitpause = 1

[State 7971, Voice]
type = PlaySnd
trigger1 = time = 1
value = 1,12
channel = 1

[State 7971, Ground Wave]
type = Explod
trigger1 = AnimElem = 3
anim = 7030
pos = 0,0
postype = p1
bindtime = 1
ontop = 0
ownpal = 1

[State 7971, End]
type = ChangeState
trigger1 = !Animtime
value = 0
ctrl = 1


;-------------------------------------------------------------
; Twisted Wrestle SDM - Finisher III - Reversed Frankensteiner
;-------------------------------------------------------------

[Statedef 8000]
type    = S
physics = S
movetype= A
anim = 8124
ctrl = 0
velset = 0,0

[State 3200, SDM BG]
type = BGPalFX
trigger1 = 1
time = 1
invertall = 1
ignorehitpause = 1

[State 8000, AfterImages]
type = AfterImage
trigger1 = Animelem = 5
palinvertall = 1
time = 20
length = 8
FrameGap = 3

[State 8000, Stop Run SND]
type = StopSnd
trigger1 = !time
channel = 3

[State 8000, Voice]
type = PlaySnd
trigger1 = animelem =2, =1
value = 1,4
channel = 1

[State 8000, Voice]
type = PlaySnd
trigger1 = animelem =4, =1
value = 0,16
channel = 0

[State 8000, Grab Attempt]
type = HitDef
Trigger1 = AnimElem = 3
attr = S, HT
hitflag = M
damage = 0,0
priority = 7, Dodge
sparkno = -1
hitsound = S1,9         
sprpriority = 2
p2facing = 1
p1stateno = 8001
p2stateno = 8010
ground.velocity = -5.5,-5
air.velocity = -5.5,-5
fall = 1
fall.recover = 0
fall.xvelocity = 4.5
fall.yvelocity = 4.6
kill = 0

;------------------------------------------------------------------------
; Twisted Wrestle SDM - Finisher III - Performing Reversed Frankensteiner
;------------------------------------------------------------------------

[Statedef 8001]
type    = S
movetype= I
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 8001

[State 3200, SDM BG]
type = BGPalFX
trigger1 = 1
time = 1
invertall = 1
ignorehitpause = 1

[State 8001, Screen Flash]
type = EnvColor
trigger1 = !time
trigger2 = time = 43
add = 248,248,248
time = 1

[State 8001, Spark] ; Special Throw Grab Spark
type = Explod
trigger1 = !time
anim = 7020
pos = 2,-30 
postype = p1
bindtime = 1
sprpriority = 1
ownpal = 1

[State 8001, Explod] ;Strong Ground Wave - Background
type = Explod
trigger1 = time = 43
anim = 7035
pos = 165,5
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = -1

[State 8001, Explod 2];Strong Ground Wave - Foreground
type = Explod
trigger1 = time = 43
anim = 7036
pos = 165,5
postype = p1
bindtime = 1
ontop = 0
ownpal = 1
sprpriority = 3

[State 8001, Wind SND]
type = Playsnd
trigger1 = time = 29
value = 1,15
channel = 1

[State 8001, Crush SND]
type = Playsnd
trigger1 = time = 44
value = 1,16
channel = 1

[State 8001, Clark SND]
type = Playsnd
trigger1 = time = 36
value = 0,16
channel = 0

[State 8001, BindToT 1]
type = BindToTarget
trigger1 = AnimElem = 1, >=0
trigger1 = AnimElem = 2, < 0
pos = -5,30,head

[State 8001, BindToT 2]
type = BindToTarget
trigger1 = AnimElem = 2, >=0
trigger1 = AnimElem = 4, < 0
pos = -5,30,head

[State 8001, TBind 1]
type = Targetbind
trigger1 = AnimElem = 4, >=0
trigger1 = AnimElem = 5, < 0
pos = 27,-119

[State 8001, TBind 2]
type = Targetbind
trigger1 = AnimElem = 5, >=0
trigger1 = AnimElem = 6, < 0
pos = 58,-115

[State 8001, TBind 3]
type = Targetbind
trigger1 = AnimElem = 6, >=0
trigger1 = AnimElem = 7, < 0
pos = 83,-114

[State 8001, TBind 4]
type = Targetbind
trigger1 = AnimElem = 7, >=0
trigger1 = AnimElem = 8, < 0
pos = 129,-68

[State 8001, TBind 4]
type = Targetbind
trigger1 = AnimElem = 8, >=0
trigger1 = AnimElem = 9, < 0
pos = 165,-20

[State 8001, Ground Reach]
type = PosSet
trigger1 = AnimElem = 4
y = 0

[State 8001, Fix Axis]
type = PosAdd
trigger1 = !Animtime
x = 124

[State 8001, End]
type = ChangeState
trigger1 = !Animtime
value = 0
ctrl = 1

;------------------------------------------------------------------------------
; Twisted Wrestle SDM - Finisher III - Enemy grabbed by Reversed Frankensteiner
;------------------------------------------------------------------------------

[Statedef 8010]
type    = A
physics = N
movetype= H
ctrl = 0
velset = 0,0

[State 8010, Set]
type = StateTypeSet
trigger1 = !time
value = S

[State 1010, ChangeAnim]
type = Changeanim2
trigger1 = !time
value = 8010

[State 8010, Slam damage]
type = Lifeadd
trigger1 = time = 45
value = -194 - 35*(var(21)>0)

[State 8010, Turn]
type = Turn
trigger1 = !Animtime

[State 8010, ChangeState]
type = SelfState
trigger1 = !Animtime
value = 5030

;---------------

[StateDef 9570]
type = S
movetype = I
physics = N
anim = 1234 ; Blank anim
ctrl = 0

[State 9570, 1]
type = PlayerPush
trigger1 = 1
value = 0

[State 9570, Bound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 9570, 3]
type = DestroySelf
trigger1 = Parent,StateNo != 4503
trigger1 = Parent,StateNo != 4505

;======================================
; Clark Steel Hyper Moves - End Of File
;======================================