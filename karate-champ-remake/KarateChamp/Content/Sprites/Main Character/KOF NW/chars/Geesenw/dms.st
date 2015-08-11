;----------------------------------------
;NW Era Raising Storm
[Statedef 700]
type = S
movetype = A
physics = S
anim = 510
ctrl = 0
velset = 0,0
poweradd = -2000

[State 710, max]
type = VarSet
trigger1 = Time = 8
v =  45
value = 0

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NT
damage = 0,0
animtype = Hard
hitflag = M
priority = 1, Miss 
pausetime = 8, 0
sparkno = s513
sparkxy = -10, -65
hitsound = -1
guardsound = 6, 0
ground.type = High
ground.slidetime = 14
ground.hittime  = 14
ground.velocity = 0
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3 
air.hittime = 12 
getpower = 0,0
p1stateno = 701
p2stateno = 705

[State 0, ]
type = NotHitBy
trigger1 = Time = 21
value = SCA
time = 4

[State 200,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;part 2
[Statedef 701]
type = S
movetype = A
physics = S
anim = 701
ctrl = 0
velset = 0,0
poweradd = 0

[State 701, fx]
type = SuperPause
trigger1 = Time = 1 
time = 32
anim = -1
sound = s3,10
pos = 55,-75
darken = 0
movetime = 32

[State 701, fx]
type = Explod
trigger1 = Time = 1
anim = 15001
pos = 55,-85
postype = p1
bindtime = -1
sprpriority = 0
ownpal = 1
supermove = 32

[State 701, fx]
type = AssertSpecial
trigger1 = time = [0,32]
flag = noFG
flag2 = noBG
ignorehitpause = 1

[State 200, snd]
type = PlaySnd
trigger1 = Time = 1
value = 0,30
volume = 200

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 4
attr = S, HA
damage = 0,0
animtype = Hard
hitflag = MAF
priority = 3, Hit
pausetime = 10, 10
sparkno = 1
sparkxy = -10, -65
hitsound = s2, 3
guardsound = 6, 0
ground.type = High
ground.slidetime = 14
ground.hittime  = 14
ground.velocity = 0,-14
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3 
air.hittime = 12 
getpower = 0,0
fall = 1
canrecover = 0
yaccel = .45

[State 200,3]
type = ChangeAnim
trigger1 = Movehit
value = 702
persistent = 0

[State 0, ]
type = StateTypeSet
trigger1 = Anim = 702 && AnimElem = 3
physics = A

[State 200, snd]
type = PlaySnd
trigger1 = Anim = 702 && AnimElem = 3
value = 0,21
volume = 200

[State 0, ]
type = VelSet
trigger1 = Anim = 702 && AnimElem = 2
y = -7.5

[State 200,3]
type = ChangeState
trigger1 = Time = 82;52
value = 703

[Statedef 703]
type = S
movetype = A
physics = S
anim = 703
ctrl = 0
velset = 0,0
poweradd = 0
sprpriority = -2

[State 0, ]
type = PosSet
trigger1 = Time = 0
y = 0

[State 600, repu]
type = Explod
trigger1 = Time = 10
anim = 704
pos = 0,0
postype = p1
bindtime = -1
removetime = 30
ontop = 0
sprpriority = -2
ownpal = 1

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,33
volume = 200

[State 600, storm]
type = Helper
trigger1 = Time = 1
helpertype = normal
name = "storm"
ID = 0
pos = 0,0
postype = p1
stateno = 704
ignorehitpause = 0
persistent = 1

[State 200,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Raising Storm itself
[Statedef 704]
type = S
movetype = A
physics = N
anim = 721
ctrl = 0
velset = 0,0
sprpriority = 1

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3,6
volume = 200

[State 0, ]
type = EnvShake
trigger1 = Time = 5
time = 45
ampl = -4

[State 0, ]
type = AttackMulSet
trigger1 = 1
value = 1.7

[State 200, 2]
type = HitDef
triggerall = p2stateno != 40 && p2stateno !=52 
triggerall = var(18) = 0
trigger1 = AnimElem = 6
attr = S, HP
damage = 400,0
animtype = Diagup
hitflag = MAF
priority = 6, Hit 
pausetime = 0, 10
sparkno = 2
sparkxy = 0, -40
hitsound = s2, 3
guardsound = 6, 0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -4, 0
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.8,-10
air.hittime = 12 
getpower = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = .40

[State 200,3]
type = DestroySelf
trigger1 = AnimTime = 0

;Gethit by throw
[Statedef 705]
type    = S
movetype= H
physics = N
velset = 0,0

[State 632, 1]
type = ChangeAnim2
Trigger1 = Time = 1
value = 705

;----------------------------------------
;Deadly Rave NW
[Statedef 710]
type = S
movetype = I
physics = S
anim = 710
ctrl = 0
velset = 0,0
poweradd = 0
sprpriority = 1

[State 710, nohit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 710, fx]
type = SuperPause
trigger1 = Anim = 710 && Time = 8
anim = -1
time = 32
sound = s3,2
pos = 0,-125
darken = 0
movetime = 32

[State 710, max]
type = PowerAdd
trigger1 = var(45)= 0 && Time = 8
value = -1000

[State 710, max]
type = VarSet
trigger1 = Time = 8
v =  45
value = 0

[State 710, fx]
type = Explod
trigger1 = Anim = 710 && Time = 8
anim = 15000
pos = 10,-112
postype = p1
bindtime = -1
sprpriority = 0
ownpal = 1
supermove = 32

[State 701, fx]
type = AssertSpecial
trigger1 = Anim = 710 && time = [8,39]
flag = noFG
flag2 = noBG
ignorehitpause = 1

[State 200, snd]
type = PlaySnd
trigger1 = Time = 20
value = 0,22

[State 600, fx]
type = Explod
trigger1 = Anim = 710 &&  AnimElem = 4
anim = 717
pos = 0,0
postype = p1
bindtime = -1
ontop = 1
sprpriority = -2
ownpal = 1

[State 200,3]
type = ChangeAnim
trigger1 = Anim = 710 && !AnimTime
value = 711

[State 0, ]
type = PosAdd
trigger1 = Anim = 711 && Time = 1
x = 30

[State 0, ]
type = PosAdd
trigger1 = Anim = 711 && AnimElem = 8
x = 50

[State 200,3]
type = ChangeAnim
trigger1 = Anim = 711 && AnimElem = 8
value = 711
elem = 1

[State 0, ]
type = Explod
trigger1 = Anim = 711 && AnimElem = 7
anim = 718
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 1

[State 200,3]
type = ChangeAnim
trigger1 = Time = 78
value = 712

[State 200,3]
type = ChangeState
trigger1 = Anim = 711 && P2Dist X <= 60
value = 711
ctrl = 0

[State 200,3]
type = ChangeState
trigger1 = Anim = 712 && AnimTime = 0
value = 0
ctrl = 1

;Deadly Rave Hit
[Statedef 711]
type = S
movetype = A
physics = N
anim = 712
ctrl = 0
velset = 3,0
poweradd = 0

[State 0, ]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
persistent = 1

[State 200, 2]
type = HitDef
trigger1 = Anim = 712 && AnimElem = 6
attr = S, HA
damage = 40,0
animtype = Low
hitflag = M
priority = 3, Hit 
pausetime = 8, 10
sparkno = 2
sparkxy = 0, -40
hitsound = s2, 3
guardsound = 6, 0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 16
ground.velocity = 0, 0
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.8,-10
air.hittime = 12 
getpower = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
kill = 0

[State 200,3]
type = ChangeState
trigger1 = Movehit
value = 712
ctrl = 0

[State 200,3]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;Deadly Rave Combo
[Statedef 712]
type = S
movetype = A
physics = S
anim = 713
ctrl = 0
velset = 0,0
poweradd = 0

[State 0, ]
type = BGPalFX
trigger1 = AnimElem = 4
trigger2 = AnimElem = 12
trigger3 = AnimElem = 20
trigger4 = AnimElem = 26
time = 2
add = 256,256,256
color = 256
ignorehitpause = 1
persistent = 1

[State 200, 2];highhit
type = HitDef
triggerall = Time <= 79
trigger1 = AnimElem = 4
trigger2 = AnimElem = 26
attr = S, HA
damage = 20,0
animtype = Hard
hitflag = M
priority = 3, Hit 
pausetime = 1, 2
sparkno = 2
snap = 60,0
sparkxy = -20, -65
hitsound = s2, 3
guardsound = 6, 0
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = 0,0
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.8,-10
air.hittime = 12 
getpower = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
canrecover = 0
kill = 0

[State 200, 2];lowhit
type = HitDef
triggerall = Time <= 79
trigger1 = AnimElem = 20
trigger2 = AnimElem = 12
attr = S, HA
damage = 20,0
animtype = Hard
hitflag = M
priority = 3, Hit 
pausetime = 1, 4
sparkno = 2
snap = 60,0
sparkxy = -20, -65
hitsound = s2, 3
guardsound = 6, 0
ground.type = Low
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = 0,0
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.8,-10
air.hittime = 12 
getpower = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
canrecover = 0
kill = 0

[State 200, 2]
type = HitDef
trigger1 = Time = 80
attr = S, HA
damage = 20,0
animtype = Hard
hitflag = MAF
priority = 3, Hit 
pausetime = 2, 10
sparkno = 2
sparkxy = -20, -65
hitsound = s2, 3
guardsound = 6, 0
ground.type = Low
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = 0,0
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = 0,0
air.hittime = 12 
getpower = 0,0
snap = 60,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
p1stateno = 713
p2stateno = 714
kill = 0

[State 200,3];If something goes wrong...
type = ChangeState
trigger1 = Time = 85
value = 0
ctrl = 1

;Deadly Rave Final
[Statedef 713]
type = S
movetype = A
physics = S
anim = 714
ctrl = 0
velset = 0,0
poweradd = 0
juggle = 10

[State 600, fx]
type = Explod
trigger1 = Time = 1
anim = 715
pos = 0,0
postype = p1
bindtime = -1
removetime = 54
ontop = 1
sprpriority = -2
ownpal = 1

[State 200, snd]
type = PlaySnd
trigger1 = Time = 66
value = 0,22

[State 200, snd]
type = PlaySnd
trigger1 = Time = 67
value = 3,4
volume = 70

[State 600, fx]
type = Explod
trigger1 = Time = 68
anim = 716
pos = 0,0
postype = p1
bindtime = -1
removetime = 21
ontop = 1
sprpriority = -2
ownpal = 1

[State 0, ]
type = BGPalFX
trigger1 = Time = 68
time = 8
add = 256,256,256
color = 256
ignorehitpause = 1
persistent = 1

[State 200, 2]
type = HitDef
trigger1 = Time = 1
attr = S, HA
damage = 105,0
animtype = Diagup
hitflag = MAF
priority = 3, Hit 
pausetime = 16, 16
sparkno = 2
sparkxy = -25, -70
hitsound = s2, 3
guardsound = 6, 0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 16
ground.velocity = -4.5, -9
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.8,-10
air.hittime = 12 
yaccel = .5
getpower = 0,0
fall = 1
canrecover = 0
ground.cornerpush.veloff = -10
air.cornerpush.veloff = 0

[State 200,3]
type = ChangeState
trigger1 =!AnimTime
value = 0
ctrl = 1

;Gethit state
[Statedef 714]
type    = S
movetype= H
physics = N

[State 820, 1]
type = ChangeAnim
Trigger1 = Time = 1
value = 5300

;----------------------------------------
;SvC Era Raising Storm
[Statedef 720]
type = S
movetype = A
physics = S
anim = 720
ctrl = 0
velset = 0,0
poweradd = 0

[State 710, max]
type = PowerAdd
trigger1 = var(45)= 0 && Time = 8
value = -1000

[State 710, max]
type = VarSet
trigger1 = Time = 8
v =  45
value = 0

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,20
volume = 200

[State 0, ]
type = SuperPause
trigger1 = Time = 3
time = 32
anim = -1
sound = s3,2
pos = -18,-105
movetime = 32
darken = 0

[State 600, fx]
type = Explod
trigger1 = Time = 3
anim = 15000
pos = -18,-105
postype = p1
bindtime = -1
sprpriority = 0
ownpal = 1
supermove = 32

[State 701, fx]
type = AssertSpecial
trigger1 = time = [3,32]
flag = noFG
flag2 = noBG
ignorehitpause = 1

[State 600, repu]
type = Helper
trigger1 = AnimElem = 4
helpertype = normal
name = "storm"
ID = 0
pos = 0,0
postype = p1
stateno = 721
ignorehitpause = 0
persistent = 1

[State 0, ]
type = NotHitBy
trigger1 = AnimElem = 4
value = SCA
time = 40

[State 200,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Raising Storm itself
[Statedef 721]
type = S
movetype = A
physics = N
anim = 721
ctrl = 0
velset = 0,0
sprpriority = 1

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3,6
volume = 200

[State 0, ]
type = EnvShake
trigger1 = Time = 5
time = 45
ampl = -4

[State 200, 2]
type = HitDef
trigger1 = AnimElem = 6
trigger2 = AnimElem = 7 
trigger3 = AnimElem = 10 
attr = S, HP
damage = 65,15
animtype = High
guardflag = M
hitflag = MAF
priority = 3, Hit 
pausetime = 0, 8
sparkno = 2
sparkxy = 0, -40
hitsound = s2, 3
guardsound = 6, 0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -4, 0
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-8 
air.hittime = 12
yaccel = .55 
getpower = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0

[State 200, 2]
type = HitDef
trigger1 = AnimElem = 13
attr = S, HP
damage = 85,20
animtype = Diagup
guardflag = M
hitflag = MAF
priority = 6, Hit 
pausetime = 0, 8
sparkno = 2
sparkxy = 0, -40
hitsound = s2, 3
guardsound = 6, 0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -4, -11
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-9
air.hittime = 9
getpower = 0,0
yaccel = .55 
fall = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0

[State 200,3]
type = DestroySelf
trigger1 = AnimTime = 0

;----------------------------------------
;Thunder Break SDM
[Statedef 722]
type = S
movetype = A
physics = S
anim = 720
ctrl = 0
velset = 0,0
poweradd = 0
sprpriority = 0

[State 710, max]
type = PowerAdd
trigger1 = Time = 8
value = -1000

[State 710, max]
type = VarSet
trigger1 = Time = 8
v =  45
value = 0

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,36
volume = 200

[State 0, ]
type = SuperPause
trigger1 = Time = 3
time = 32
anim = -1
sound = s3,2
pos = -18,-105
movetime = 32
darken = 0

[State 600, fx]
type = Explod
trigger1 = Time = 3
anim = 15001
pos = -18,-105
postype = p1
bindtime = -1
sprpriority = 0
ownpal = 1
supermove = 32

[State 701, fx]
type = AssertSpecial
trigger1 = time = [3,32]
flag = noFG
flag2 = noBG
ignorehitpause = 1

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0,37
volume = 200

[State 701, fx]
type = Explod
trigger1 = Time = 45
anim = 706
pos = 0,0
postype = p1
bindtime = -1
sprpriority = 0
ownpal = 1
ontop = 1

[State 701, fx]
type = Explod
trigger1 = Time = 45
anim = 706
pos = -45,0
postype = p1
bindtime = -1
sprpriority = 0
ownpal = 1

[State 600, repu]
type = Helper
trigger1 = Time = 45
helpertype = normal
name = "thunder"
ID = 0
pos = 45,0
postype = p1
stateno = 723
ignorehitpause = 0
persistent = 1

[State 701, fx]
type = Explod
trigger1 = Time = 55
anim = 706
pos = -65,0
postype = p1
bindtime = -1
sprpriority = 0
ownpal = 1

[State 600, repu]
type = Helper
trigger1 = Time = 55
helpertype = normal
name = "thunder"
ID = 0
pos = 65,0
postype = p1
stateno = 723
ignorehitpause = 0
persistent = 1

[State 701, fx]
type = Explod
trigger1 = Time = 65
anim = 706
pos = -80,0
postype = p1
bindtime = -1
sprpriority = 0
ownpal = 1

[State 600, repu]
type = Helper
trigger1 = Time = 65
helpertype = normal
name = "thunder"
ID = 0
pos = 80,0
postype = p1
stateno = 723
ignorehitpause = 0
persistent = 1

[State 701, fx]
type = Explod
trigger1 = Time = 75
anim = 706
pos = -105,0
postype = p1
bindtime = -1
sprpriority = 0
ownpal = 1

[State 600, repu]
type = Helper
trigger1 = Time = 75
helpertype = normal
name = "thunder"
ID = 0
pos = 105,0
postype = p1
stateno = 724
ignorehitpause = 0
persistent = 1

[State 0, ]
type = NotHitBy
trigger1 = AnimElem = 4
value = SCA
time = 40

[State 200,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Thunder Break 1 itself
[Statedef 723]
type = S
movetype = A
physics = N
anim = 706
ctrl = 0
velset = 0,0
sprpriority = 1

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3,6
volume = 200

[State 0, ]
type = EnvShake
trigger1 = Time = 5
time = 45
ampl = -4

[State 200, 2]
type = HitDef
trigger1 = AnimElem = 1
attr = S, HP
damage = 85,25
animtype = Low
guardflag = M
hitflag = MAF
priority = 3, Hit 
pausetime = 0, 8
sparkno = 2
sparkxy = 0, -60
hitsound = s2, 3
guardsound = 6, 0
ground.type = Low
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -8,0
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -4,-6 
air.hittime = 9
yaccel = .55 
getpower = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0

[State 200,3]
type = DestroySelf
trigger1 = AnimTime = 0

;Thunder Break 2 itself
[Statedef 724]
type = S
movetype = A
physics = N
anim = 706
ctrl = 0
velset = 0,0
sprpriority = 1

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3,6
volume = 200

[State 0, ]
type = EnvShake
trigger1 = Time = 5
time = 45
ampl = -4

[State 200, 2]
type = HitDef
trigger1 = AnimElem = 1
attr = S, HP
damage = 155,15
animtype = Diagup
guardflag = M
hitflag = MAF
priority = 3, Hit 
pausetime = 0, 8
sparkno = 2
sparkxy = 0, -60
hitsound = s2, 3
guardsound = 6, 0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -6,-12
airguard.velocity = -1.9,-.8
air.type = Low
air.velocity = -6,-12
air.hittime = 9
yaccel = .55
fall = 1
fall.recover = 0
getpower = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0

[State 200,3]
type = DestroySelf
trigger1 = AnimTime = 0
