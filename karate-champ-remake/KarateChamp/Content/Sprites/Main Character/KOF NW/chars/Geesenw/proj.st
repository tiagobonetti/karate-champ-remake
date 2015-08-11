;----------------------------------------
;Reppuken itself
[Statedef 1000]
type = S
movetype = A
physics = N
anim = 601
ctrl = 0
juggle = 3
velset = 0,0
sprpriority = 1

[State 601, vel]
type = VelSet
trigger1 = AnimElem = 4
x = 3.4;2.9

[State 200, 2]
type = HitDef
trigger1 = Time = 2
attr = S, SP
damage = 70,15
animtype = Hard
guardflag = M
hitflag = MAF
priority = 3, Hit 
pausetime = 0, 10
sparkno = 11
sparkxy = -5, -35
hitsound = s2, 3
guardsound = 6, 0
ground.type = Low
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -6
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -4,-6
air.hittime = 9
getpower = 60,0
yaccel = 0.55

[State 0, ]
type = HitBy
trigger1 = 1
value = SCA, NP, SP, HP
time = 1

[State 0, ]
type = HitOverride
trigger1 = 1
slot = 0
attr = SCA, NP, SP, HP
stateno = 1001
time = 1

[State 200,3]
type = ChangeState
trigger1 = MoveHit
trigger2 = MoveGuarded
value = 1001
persistent = 0

[State 200,3]
type = DestroySelf
trigger1 = time = 130

;----------------------------------------
;Reppuken itself over
[Statedef 1001]
type = S
movetype = A
physics = N
anim = 602
ctrl = 0
velset = 0,0
sprpriority = 1

[State 601, pos]
type = PosAdd
trigger1 = Time = 0
x = 50
persistent = 0

[State 200,3]
type = DestroySelf
trigger1 = Anim = 602 && AnimTime = 0

;----------------------------------------
;Reppuken2 itself start
[Statedef 1010]
type = S
movetype = A
physics = N
anim = 606
ctrl = 0
velset = 0,0
sprpriority = 1

[State 200,3]
type = ChangeState
trigger1 = AnimElem = 2
value = 1011

;----------------------------------------
;Reppuken2 itself
[Statedef 1011]
type = S
movetype = A
physics = N
anim = 606
ctrl = 0
velset = 0,0
sprpriority = 1

[State 200,3]
type = ChangeAnim
trigger1 = Time = 1
value = 606
Elem = 3

[State 601, vel]
type = VelSet
trigger1 = AnimElem = 3
x = 6.8

[State 200, 2]
type = HitDef
trigger1 = Time = 2
attr = S, SP
damage = 82,20
animtype = Hard
guardflag = M
hitflag = MAF
priority = 6, Hit 
pausetime = 0, 8
sparkno = 2
sparkxy = 0, -40
hitsound = s2, 3
guardsound = 6, 0
ground.type = Low
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -4, -8
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -4,-6
air.hittime = 12 
getpower = 60,0
fall = 1
yaccel = .40
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0

[State 0, ]
type = HitBy
trigger1 = 1
value = S, NP, SP, HP
time = 1

[State 0, ]
type = HitOverride
trigger1 = 1
slot = 0
attr = S,NP, SP, HP
stateno = 1012
time = 1

[State 200,3]
type = ChangeState
triggerall = NumHelper(7) = 1
trigger1 = Movehit && p2stateno = 5000 || p2stateno = 5020
trigger2 = MoveGuarded
trigger3 = time = 100
value = 1012
persistent = 0

;----------------------------------------
;Reppuken2 itself over
[Statedef 1012]
type = S
movetype = A
physics = N
anim = 607
ctrl = 0
velset = 0,0
sprpriority = 1

[State 200,3]
type = DestroySelf
trigger1 = Anim = 607 && AnimTime = 0
