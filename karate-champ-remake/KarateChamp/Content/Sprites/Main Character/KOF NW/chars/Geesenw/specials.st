;----------------------------------------
;Reppuken 1
[Statedef 600]
type = S
movetype = A
physics = S
anim = 600
ctrl = 0
juggle = 2
velset = 0,0
poweradd = 50
sprpriority = 0

[State 0, ]
type = ChangeAnim
trigger1 = Prevstateno = 210 && Time = 1
trigger2 = Prevstateno = 321 && Time = 1
value = 600
elem = 3

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,11
volume = 200

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 3,0
volume = 100

[State 600, repu]
type = Helper
trigger1 = AnimElem = 6
helpertype = normal
name = "repu"
ID = 6
pos = -10,0
postype = p1
stateno = 1000
ignorehitpause = 0
persistent = 1

[State 600, repu]
type = Explod
trigger1 = AnimElem = 5
anim = 603
pos = 0,0
postype = p1
bindtime = -1
ontop = 1
sprpriority = -2
ownpal = 1

[State 200,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;----------------------------------------
;Reppuken 1 Alt
[Statedef 602]
type = S
movetype = A
physics = S
anim = 604
ctrl = 0
velset = 0,0
poweradd = 50
sprpriority = 0

[State 0, ]
type = ChangeAnim
trigger1 = Prevstateno = 200 && Time = 1
value = 604
elem = 3

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,11
volume = 200

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 3,0

[State 600, repu]
type = Helper
trigger1 = AnimElem = 5
helpertype = normal
name = "repu"
ID = 6
pos = 0,0
postype = p1
stateno = 603
ignorehitpause = 0
persistent = 1

[State 200,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Reppuken alt itself
[Statedef 603]
type = S
movetype = A
physics = N
anim = 603
ctrl = 0
velset = 0,0
sprpriority = 1

[State 0, ]
type = BindToParent
trigger1 = 1
time = 18
pos = 0,0

[State 200, 2]
type = HitDef
trigger1 = Time = 2
attr = S, SA
damage = 28,15
animtype = Hard
guardflag = M
hitflag = MAF
priority = 3, Hit 
pausetime = 0, 8
sparkno = 2
sparkxy = -5, -65
hitsound = s2, 3
guardsound = 6, 0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 16
ground.velocity = -8
airguard.velocity = -4,-7
air.type = High
air.velocity = -4,-6
air.hittime = 9
getpower = 81,81
givepower = 21,21

[State ****: Pause]
type = Pause
triggerall = (GameTime%2) = 0
trigger1 = Movehit && Time <= 15 
time = 1
movetime = 1
ignorehitpause = 1

[State 200,3]
type = DestroySelf
trigger1 = AnimTime = 0

;Double Reppuken
[Statedef 604]
type = S
movetype = A
physics = S
anim = 608
ctrl = 0
velset = 0,0
poweradd = 80
sprpriority = 0

[State 0, ]
type = ChangeAnim
trigger1 = Prevstateno = 210 && Time = 1
value = 608
elem = 3

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,12
volume = 200

[State 0, ]
type = VelAdd
trigger1 = AnimElem = 4
x = 4

[State 0, ]
type = VelAdd
trigger1 = AnimElem = 12
x = 12

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 3,0

[State 600, repu]
type = Helper
trigger1 = AnimElem = 5
helpertype = normal
name = "repu"
ID = 6
pos = 0,0
postype = p1
stateno = 603
ignorehitpause = 0
persistent = 1

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 11
value = 3,0

[State 600, repu]
type = Helper
trigger1 = AnimElem = 13
helpertype = normal
name = "repu"
ID = 6
pos = -20,-10
postype = p1
stateno = 607
ignorehitpause = 0
persistent = 1

[State 200,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------
;Reppuken 2
[Statedef 605]
type = S
movetype = A
physics = S
anim = 605
ctrl = 0
velset = 0,0
poweradd = 70
sprpriority = 0

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 0,11
volume = 200

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 3,0

[State 600, repu]
type = Helper
trigger1 = AnimElem = 7
helpertype = normal
name = "repu"
ID = 7
pos = 5,0
postype = p1
stateno = 1010
ignorehitpause = 0
persistent = 1

[State 600, repu]
type = Explod
trigger1 = AnimElem = 6
anim = 603
pos = 0,0
postype = p1
bindtime = -1
ontop = 1
sprpriority = -2
ownpal = 1

[State 200,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Double Reppuken itself
[Statedef 607]
type = S
movetype = A
physics = N
anim = 603
ctrl = 0
velset = 0,0
sprpriority = 0

[State 0, ]
type = BindToParent
trigger1 = 1
time = 18
pos = -20,-10

[State 200, 2]
type = HitDef
trigger1 = Time = 2
attr = S, SA
damage = 54,15
animtype = Hard
guardflag = M
hitflag = MAF
priority = 6, Hit 
pausetime = 0, 2
sparkno = 2
sparkxy = -5, -65
hitsound = s2, 3
guardsound = 6, 0
ground.type = Low
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -4,-7
airguard.velocity = -4,-6
yaccel = .55
air.type = High
air.velocity = -5.2,-7
air.hittime = 9
getpower = 71,71
givepower = 21,21
fall = 1

[State ****: Pause]
type = Pause
triggerall = (GameTime%2) = 0
trigger1 = Movehit && Time <= 15 
time = 1
movetime = 1
ignorehitpause = 1

[State 200,3]
type = DestroySelf
trigger1 = AnimTime = 0

;----------------------------------------
;Hishou Nichirin Zan 1
[Statedef 620]
type = S
movetype = A
physics = N
anim = 620
ctrl = 0
velset = 0,0
poweradd = 60
sprpriority = 0

[State 601, vel]
type = VelSet
trigger1 = Time = 2
x = 2.8
y = -8

[State 0, ]
type = StateTypeSet
trigger1 = Time >= 2
statetype = A
physics = A
ignorehitpause = 0
persistent = 1

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 7
value = 0,24
volume = 255

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 7
value = 3,7

[State 600, repu]
type = Explod
trigger1 = AnimElem = 8
anim = 621
pos = 0,0
postype = p1
bindtime = -1
ontop = 1
sprpriority = 2
ownpal = 1

[State 200, 2]
type = HitDef
trigger1 = AnimElem = 8
attr = S, SA
damage = 18,5
animtype = Hard
guardflag = H
hitflag = MAF
priority = 3, Hit 
pausetime = 4, 4
sparkno = 2
sparkxy = -5, -35
hitsound = s2, 3
guardsound = 6, 0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = -6
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -5.4,-3 
air.hittime = 12 
getpower = 81,81
givepower = 21,21

[State 200, 2]
type = HitDef
trigger1 = Time = 26
attr = S, SA
damage = 18,5
animtype = Hard
guardflag = H
hitflag = MAF
priority = 3, Hit 
pausetime = 8, 10
sparkno = 2
sparkxy = -5, -35
hitsound = s2, 3
guardsound = 6, 0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = -6
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -5.4,-3 
air.hittime = 12 
getpower = 60,0

[State 200,3]
type = ChangeState
trigger1 = Time = 31
value = 624
;----------------------------------------
;Hishou Nichirin Zan 2
[Statedef 622]
type = S
movetype = A
physics = N
anim = 622
ctrl = 0
velset = 0,0
poweradd = 70

[State 601, vel]
type = VelSet
trigger1 = Time = 1
x = 3.2
y = -9.2

[State 0, ]
type = StateTypeSet
trigger1 = AnimElem = 2
statetype = A
physics = A
ignorehitpause = 1  
persistent = 1

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 7
value = 0,24
volume = 255

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 7
value = 3,7

[State 600, repu]
type = Explod
trigger1 = AnimElem = 8
anim = 621
pos = 0,0
postype = p1
bindtime = -1
ontop = 1
sprpriority = 2
ownpal = 1

[State 200, 2]
type = HitDef
trigger1 = AnimElem = 8
attr = S, SA
damage = 23,7
animtype = Hard
guardflag = H
hitflag = MAF
priority = 3, Hit 
pausetime = 4, 4
sparkno = 2
sparkxy = -5, -35
hitsound = s2, 3
guardsound = 6, 0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = -6
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -5.4,-3 
air.hittime = 12 
getpower = 81,81
givepower = 21,21

[State 200, 2]
type = HitDef
trigger1 = Time = 28
attr = S, SA
damage = 23,7
animtype = Hard
guardflag = HA
hitflag = MAF
priority = 3, Hit 
pausetime = 8, 10
sparkno = 2
sparkxy = -5, -35
hitsound = s2, 3
guardsound = 6, 0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = -6
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -5.4,-3 
air.hittime = 12 
getpower = 81,81
givepower = 21,21

[State 200,3]
type = ChangeState
trigger1 = Time = 35
value = 624

;Hishou Nichirin land
[Statedef 624]
type = S
movetype = I
physics = S
anim = 47
ctrl = 0
velset = 0,0
sprpriority = 0

[State 0, ]
type = PosSet
trigger1 = Time = 0
y = 0 

[State 200,3]
type = ChangeState
trigger1 = Time = 8
value = 0
ctrl = 1
;----------------------------------------
;Explosion Ball
[Statedef 610]
type = S
movetype = A
physics = S
anim = 610
ctrl = 0
velset = 0,0
poweradd = 80

[State 610, str]
type = Explod
trigger1 = AnimElem = 1
anim = 613
pos = 0,0
postype = p1
bindtime = -1
removetime = 13
ontop = 1
sprpriority = -2
ownpal = 1
removeongethit = 1

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0,15

[State 610, str]
type = Explod
trigger1 = Time = 22
anim = 611
ID = 96
pos = 0,0
postype = p1
bindtime = -1
ontop = 1
sprpriority = -2
ownpal = 1
removeongethit = 1

[State 620, ball]
type = Helper
trigger1 = Time = 13
helpertype = normal
name = "ball"
ID = 4
pos = 0,0
postype = p1
stateno = 611
ignorehitpause = 0
persistent = 1

[State 0, ]
type = NotHitBy
trigger1 = Time = 12
value = SCA
time = 4

[State 200,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 0, ]
type = RemoveExplod
trigger1 = p2stateno = 613
ID = -1
ignorehitpause = 1

[State 200,3]
type = ChangeState
trigger1 = p2stateno = 613
value = 614
ctrl = 1

;Explosion Ball itself
[Statedef 611]
type = S
movetype = A
physics = N
juggle = 8
ctrl = 0
velset = 0,0
sprpriority = 1

[State 0, ]
type = ChangeAnim
trigger1 = Time = 0
value = 613
elem = 6

[State 611, 2]
type = HitDef
triggerall = p2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
trigger1 = AnimElem = 6
attr = S, SA
damage = 0,7
animtype = Hard
guardflag = M
hitflag = MAF
priority = 1, Miss
pausetime = 0, 8
sparkno = 2
sparkxy = -5, -55
hitsound = s2, 3
guardsound = 6, 0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -6
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3 
air.hittime = 12 
getpower = 60,0
p1stateno = 612
p2stateno = 613

[State 611,3]
type = ChangeAnim
trigger1 = Time = 30
value = 611

[State 200,3]
type = DestroySelf
trigger1 = AnimTime = 0

;Ball state 2
[Statedef 612]
type = S
movetype = I
physics = N
anim = 612
ctrl = 0
velset = 0,-1.6
sprpriority = 1

[State 0, ]
type = PosAdd
trigger1 = Time = 0
x = 50

[State 0, ]
type = VelSet
trigger1 = Time = 42
x = 0
y = 0

[State 0, ]
type = TargetBind
trigger1 = Time = 0
time = 45
pos = -10,-20

[State 200,3]
type = DestroySelf
trigger1 = P2StateNo != 613

;Gethit by ball
[Statedef 613]
type    = A
movetype= H
physics = N

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 1
value = 619

;Geese Strikes
[Statedef 614]
type = S
movetype = A
physics = S
anim = 614
ctrl = 0
velset = 0,0

[State 600, str]
type = Explod
trigger1 = AnimElem = 1
anim = 615
pos = 0,0
postype = p1
bindtime = -1
ontop = 1
sprpriority = -2
ownpal = 1

[State 200, snd]
type = PlaySnd
trigger1 = Time = 47
value = 0,3

[State 611, 2]
type = HitDef
trigger1 = AnimElem = 1
attr = S, SA
damage = 58,7
animtype = Diagup
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 0, 8
sparkno = 2
sparkxy = -5, -70
hitsound = s2, 3
guardsound = 6, 0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -2,-6
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -2,-12.7
air.hittime = 9
getpower = 71,71
givepower = 21,21
fall = 1
fall.recover = 0
yaccel = .58
fall.yvelocity =-3.877

[State 200,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------
;Chuudan Atemi Nage
[Statedef 630]
type = S
movetype = I
physics = S
anim = 630
ctrl = 0
velset = 0,0
poweradd = 40

[State 611, 2]
type = ReversalDef
trigger1 = 1
attr = S, SA
reversal.attr = S, NA, SA, HA
priority = 4, Miss
pausetime = 20, 20
sparkno = s513
sparkxy = -15, -5
hitsound = s2, 3
guardsound = 6, 0
ground.type = Low
getpower = 101,101
givepower = 21,21
p1stateno = 631
p2stateno = 632
fall = 1  
fall.recover = 0

[State 200,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------
;Chuudan Atemi Nage success
[Statedef 631]
type = S
movetype = A
physics = S
anim = 631
ctrl = 0
velset = 0,0

[State 200, snd]
type = PlaySnd
trigger1 = Time = 1
value = 0,31
volume = 200

[State 0, ]
type = TargetBind
trigger1 = Time <= 11
time = 11
pos = 0,0

[State 0, ]
type = TargetBind
trigger1 = Time = 11
time = 11
pos = 0,-55

[State 0, ]
type = TargetBind
trigger1 = Time = 22
time = 11
pos = 40,20
persistent = 0

[State 0, ]
type = TargetDrop
trigger1 = Time = 30

[State 0, ]
type = TargetLifeAdd
trigger1 = Time = 28
value = -90
kill = 1

[State 0, ]
type = SprPriority
trigger1 = AnimElem = 4
value = -1

[State 0, ]
type = Turn
trigger1 = Time = 22
ignorehitpause = 0

[State 200,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Gethit by throw
[Statedef 632]
type    = A
movetype= H
physics = N
velset = 0,0

[State 632, 1]
type = ChangeAnim2
Trigger1 = Time = 1
value = 632

[State 632, Align]
type = PosSet
trigger1 = Time = 0
y = 0

[State 632, Vel]
type = VelSet
trigger1 = time = 30
y = 20

[State 632, 1]
type = SelfState
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 5110

;----------------------------------------
;Jodan Atemi Nage
[Statedef 633]
type = S
movetype = I
physics = S
anim = 633
ctrl = 0
velset = 0,0
poweradd = 40

[State 611, 2]
type = ReversalDef
trigger1 = AnimElem = 1
attr = S, SA
reversal.attr = A, NA, SA, HA
priority = 1, Miss
pausetime = 20, 20
sparkno = s513
sparkxy = -15, -5
hitsound = s2, 3
guardsound = 6, 0
ground.type = Low
getpower = 101,101
givepower = 21,21
p1stateno = 631
p2stateno = 632
fall = 1  
fall.recover = 0

[State 200,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------
;Shippuken
[Statedef 640]
type = A
movetype = A
physics = N
anim = 640
ctrl = 0
sprpriority = 0
poweradd = 40
velset = 0,0

[State 620, ball]
type = Helper
trigger1 = Time = 12
helpertype = normal
name = "ship"
ID = 4
pos = 20,0
postype = p1
stateno = 641
ignorehitpause = 0
persistent = 1

[State 0, ]
type = StateTypeSet
trigger1 = AnimElem = 3
physics = A

[State 0, ]
type = VelSet
trigger1 = AnimElem = 3
x = -3
y = -5

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,13
volume = 255

;Shippuken itself
[Statedef 641]
type = S
movetype = A
physics = N
anim = 641
ctrl = 0
velset = 8,3.4
sprpriority = 1

[State 0, ]
type = VelSet
trigger1 = AnimElem = 5
x = 0
y = 0

[State 200, 2]
type = HitDef
trigger1 = Time = 1
attr = S, SA
damage = 54,10
animtype = Hard
guardflag = M
hitflag = MAF
priority = 3, Hit 
pausetime = 0, 8
sparkno = 2
sparkxy = -5, -35
hitsound = s2, 3
guardsound = 6, 0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -6
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -5.4,-3 
air.hittime = 12 
getpower = 81,81
givepower = 21,21

[State 200,3]
type = DestroySelf
trigger1 = AnimTime = 0

;----------------------------------------
;Jaei ken
[Statedef 650]
type = S
movetype = A
physics = N
anim = 650
ctrl = 0
velset = 8,0
poweradd = 60
juggle = 8

[State 50, AfterImage]
type = AfterImage
trigger1 = Anim = 650 && Time = 1
time = 12
PalBright = 0, 0, 0
PalContrast =  180,180,180
PalAdd = 0, 0, 0
PalMul = 1,1,1
Length = 7
FrameGap = 3
Trans = add1

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,14
volume = 255

[State 200, 2]
triggerall = p2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
type = HitDef
trigger1 = Time = 1
attr = S, SA
damage = 22,10
animtype = Hard
guardflag = M
hitflag = MAF
priority = 3, Hit 
pausetime = 8, 8
sparkno = 1
sparkxy = -5, -55
hitsound = s2, 0
guardsound = 6, 0
ground.type = Low
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -0
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -4,-6
air.hittime = 9 
getpower = 51,51
givepower = 21,21
p1stateno = 651

[State 0, ]
type = StateTypeSet
trigger1 = Time = 8
physics = S

[State 200,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------
;Jaei ken hit
[Statedef 651]
type = S
movetype = A
physics = S
anim = 651
ctrl = 0
velset = 8,0
juggle = 5

[State 200, 2]
type = HitDef
triggerall = p2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
trigger1 = AnimElem = 2
attr = S, SA
damage = 32,10
animtype = Hard
guardflag = M
hitflag = MAF
priority = 3, Hit 
pausetime = 10, 10
sparkno = 2
sparkxy = -5, -55
hitsound = s2, 2
guardsound = 6, 0
ground.type = Low
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -6,-3
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -4,-6
air.hittime = 9 
getpower = 41,41
givepower = 21,21
yaccel = .5
ground.cornerpush.veloff = -18

[State 200, 2]
type = HitDef
trigger1 = AnimElem = 5
attr = S, SA
damage = 52,10
animtype = Diagup
guardflag = M
hitflag = MAF
priority = 3, Hit 
pausetime = 12, 12
sparkno = 2
sparkxy = -5, -65
hitsound = s2, 3
guardsound = 6, 0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -6,-4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -4,-6
air.hittime = 12 
getpower = 91,91
givepower = 21,21
fall = 1
yaccel = .5
ground.cornerpush.veloff = -18

[State 200,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------
;Alt Hishou Nichirin Zan
[Statedef 660]
type = S
movetype = A
physics = N
anim = 660
ctrl = 0
velset = 8,0
poweradd = 60
juggle = 8

[State 200, 2]
triggerall = p2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
type = HitDef
trigger1 = Time = 1
attr = S, SA
damage = 22,10
animtype = Hard
guardflag = M
hitflag = MAF
priority = 3, Hit 
pausetime = 8, 8
sparkno = 1
sparkxy = -5, -55
hitsound = s2, 0
guardsound = 6, 0
ground.type = Low
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -2.4,-7
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -4,-6
air.hittime = 9 
getpower = 41,41
givepower = 21,21
p1stateno = 661
fall = 1
yaccel = .4

[State 200,3]
type = ChangeState
trigger1 = Time = 6
value = 661
ctrl = 1

;----------------------------------------
;Hishou Nichirin Zan alt part 2
[Statedef 661]
type = S
movetype = A
physics = N
anim = 620
ctrl = 0
velset = 0,0
poweradd = 60
sprpriority = 0

[State 601, vel]
type = VelSet
trigger1 = Time = 2
x = 3.2
y = -8

[State 0, ]
type = StateTypeSet
trigger1 = Time >= 2
statetype = A
physics = A
ignorehitpause = 0
persistent = 1

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 7
value = 0,24
volume = 255

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 7
value = 3,7

[State 620, hisho]
type = Helper
trigger1 = AnimElem = 8
helpertype = normal
name = "hisho"
ID = 4
pos = 0,0
postype = p1
stateno = 662
ignorehitpause = 0
persistent = 1

[State 200,3]
type = ChangeState
trigger1 = Time = 33
value = 624

;Slash itself
[Statedef 662]
type = S
movetype = A
physics = N
anim = 621
ctrl = 0
velset = 0,0
sprpriority = 1

[State 200,3]
type = BindtoParent
trigger1 = 1
pos = 0,0
time = -1

[State 200, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
damage = 50,5
animtype = Hard
guardflag = H
hitflag = MAF
priority = 3, Hit 
pausetime = 0, 6
sparkno = 2
sparkxy = -5, -35
hitsound = s2, 3
guardsound = 6, 0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = -4,3
airguard.velocity = -1.9,-.8
air.type = Low
air.velocity = -4,3
air.hittime = 9
fall = 1 
getpower = 101,101
givepower = 21,21
yaccel = .65

[State 200,3]
type = DestroySelf
trigger1 = AnimTime = 0

;----------------------------------------
;Alt Hishou Nichirin Zan 2
[Statedef 663]
type = S
movetype = A
physics = N
anim = 660
ctrl = 0
velset = 8,0
poweradd = 60
juggle = 8

[State 200, 2]
triggerall = p2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
type = HitDef
trigger1 = Time = 1
attr = S, SA
damage = 22,10
animtype = Hard
guardflag = M
hitflag = MAF
priority = 3, Hit 
pausetime = 8, 8
sparkno = 1
sparkxy = -5, -55
hitsound = s2, 0
guardsound = 6, 0
ground.type = Low
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -2.4,-7
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -4,-6
air.hittime = 9 
getpower = 51,51
givepower = 21,21
p1stateno = 664
fall = 1
yaccel = .4

[State 200,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 664
ctrl = 1

;----------------------------------------
;Hishou Nichirin Zan alt part 2
[Statedef 664]
type = S
movetype = A
physics = N
anim = 620
ctrl = 0
velset = 0,0
poweradd = 60
sprpriority = 0

[State 601, vel]
type = VelSet
trigger1 = Time = 2
x = 3.2
y = -8

[State 0, ]
type = StateTypeSet
trigger1 = Time >= 2
statetype = A
physics = A
ignorehitpause = 0
persistent = 1

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 7
value = 0,24
volume = 255

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 7
value = 3,0

[State 620, hisho]
type = Helper
trigger1 = AnimElem = 8
helpertype = normal
name = "hisho"
ID = 4
pos = 0,0
postype = p1
stateno = 666
ignorehitpause = 0
persistent = 1

;Slash itself
[Statedef 666]
type = S
movetype = A
physics = N
anim = 621
ctrl = 0
velset = 0,0
sprpriority = 1

[State 200,3]
type = BindtoParent
trigger1 = 1
pos = 0,0
time = -1

[State 200, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
damage = 64,10
animtype = Hard
guardflag = H
hitflag = MAF
priority = 3, Hit 
pausetime = 0, 6
sparkno = 2
sparkxy = -5, -35
hitsound = s2, 3
guardsound = 6, 0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = -6,5
airguard.velocity = -1.9,-.8
air.type = Low
air.velocity = -6,5
air.hittime = 9
fall = 1 
getpower = 101,101
givepower = 21,21
yaccel = .65

[State 200,3]
type = DestroySelf
trigger1 = AnimTime = 0
