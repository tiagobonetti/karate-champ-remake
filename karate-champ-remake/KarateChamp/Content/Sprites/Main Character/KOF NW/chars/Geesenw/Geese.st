;-------------------------------------------------------------------
;Win Decider
[Statedef 180]
type = S
movetype = I
physics = S
ctrl = 0

[State 0, ]
type = ChangeState
trigger1 = Random < 450 && PalNo <= 6
value = 181

[State 0, ]
type = ChangeState
trigger1 = Random >= 451 && PalNo <= 6
value = 182

[State 0, ]
type = ChangeState
trigger1 = PalNo >= 7
value = 183

;-------------------------------------------------------------------
;Win01
[Statedef 181]
type = S
movetype = I
physics = S
anim = 181
ctrl = 0

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,7
volume = 200

[State 181,0]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay

;-------------------------------------------------------------------
;Win02
[Statedef 182]
type = S
movetype = I
physics = S
anim = 182
ctrl = 0

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0,8
volume = 200

[State 181,0]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay

[State 181,0]
type = AssertSpecial
trigger1 = Time < 180
flag = Roundnotover

;-------------------------------------------------------------------
;Win03
[Statedef 183]
type = S
movetype = I
physics = S
anim = 183
ctrl = 0

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 6
value = 0,8
volume = 200

[State 181,0]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay

[State 181,0]
type = AssertSpecial
trigger1 = Time < 180
flag = Roundnotover

;-------------------------------------------------------------------
;Intro
[Statedef 190]
type = S
movetype = I
physics = S
ctrl = 0

[State 190,4]
type = ChangeAnim
trigger1 = Time = 0 && Palno <=6
value = 190

[State 190,4]
type = ChangeAnim
trigger1 = Time = 0 && Palno >=7
value = 191

[State 190,0]
type = AssertSpecial
trigger1 = RoundState = 0
trigger2 = RoundState = 1
flag = nobardisplay
flag2 = intro

[State 190,4]
type = ChangeAnim
trigger1 = Animtime = 0 && Anim = 190
trigger2 = Animtime = 0 && Anim = 191
value = 0

[State 190,4]
type = ChangeState
trigger1 = Anim = 0
value = 0

;-------------------------------------------------------------------
;Taunt
[Statedef 195]
type = S
movetype = I
physics = S
anim = 195
ctrl = 0

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0,6
volume = 200
channel = 1

[State 0, ]
type = CtrlSet
trigger1 = Time >= 30
value = 1

[State 190,4]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1

;----------------------------------------
;Normal A
[Statedef 200]
type = S
movetype = A
physics = S
juggle = 10
anim = 200
ctrl = 0
velset = 0,0

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,1
volume = 200

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 1
trigger1 = Random <= 650
value = 0,0
volume = 255

[State 200, 2]
type = HitDef
triggerall = P2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
trigger1 = AnimElem = 2
attr = S, NA
damage = 23,0
animtype = Light
guardflag = M
hitflag = MAF
priority = 6, Hit 
pausetime = 8, 9
sparkno = 0
sparkxy = -5, -78
hitsound = s2, 0
guardsound = 6, 0
ground.type = High
ground.slidetime = 11
ground.hittime  = 11
ground.velocity = -5.95
guard.slidetime = 11
guard.hittime = 11
guard.ctrltime = 12
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -3.5,-6  
air.hittime = 9 
getpower = 101,101
givepower = 21,21
ground.cornerpush.veloff = -6
air.cornerpush.veloff = 0
yaccel = .55
air.fall = 0
air.juggle = 15

[State 200,3]
type = ChangeState
trigger1 = Movecontact && command = "repu1" && palno <= 6 
value = 600

[State 200,3]
type = ChangeState
trigger1 = Movecontact && command = "repu1" && palno >= 7 
value = 602

[State 200,3]
type = ChangeState
trigger1 = Time >= 7 && command = "x" && command != "holddown"
value = 200

[State 200,3]
type = ChangeState
trigger1 = Time >= 7 && command = "x" && command = "holddown"
value = 300

[State 200,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------
;Normal A2
[Statedef 201]
type = S
movetype = A
physics = S
juggle = 10
anim = 201
ctrl = 0
velset = 0,0

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,1
volume = 200

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 1
trigger1 = Random <= 650
value = 0,0
volume = 255

[State 200, 2]
type = HitDef
triggerall = P2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
trigger1 = AnimElem = 2
attr = S, NA
damage = 23,0
animtype = Light
guardflag = M
hitflag = MAF
priority = 6, Hit 
pausetime = 8, 9
sparkno = 0
sparkxy = -5, -78
hitsound = s2, 0
guardsound = 6, 0
ground.type = High
ground.slidetime = 11
ground.hittime  = 11
ground.velocity = -5.95
guard.slidetime = 11
guard.hittime = 11
guard.ctrltime = 12
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -3.5,-6  
air.hittime = 9 
getpower = 101,101
givepower = 21,21
ground.cornerpush.veloff = -6
air.cornerpush.veloff = 0
yaccel = .55
air.fall = 0
air.juggle = 15

[State 200,3]
type = ChangeState
trigger1 = Movecontact && command = "repu1" && palno <= 6 
value = 600

[State 200,3]
type = ChangeState
trigger1 = Movecontact && command = "repu1" && palno >= 7 
value = 602

[State 200,3]
type = ChangeState
trigger1 = Movecontact && command = "df_x" && command = "holddown"
value = 301

[State 200,3]
type = ChangeState
trigger1 = Time >= 7 && command = "x" && command = "holddown"
value = 300

[State 200,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------
;Normal B1
[Statedef 210]
type = S
movetype = A
physics = S
juggle = 6
anim = 210
ctrl = 0
velset = 0,0

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 1
trigger1 = Random <= 650
value = 0,2
volume = 255

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,2
volume = 200

[State 210, 2]
type = HitDef
triggerall = p2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
trigger1 = AnimElem = 2
attr = S, NA
damage = 56,0
animtype = Hard
guardflag = M
hitflag = MAF
priority = 5, Hit 
pausetime = 10, 10
sparkno = 2
sparkxy = -10, -60
hitsound = s2, 2
guardsound = 6, 0
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -8.1
guard.pausetime = 12,12
guard.slidetime = 17
guard.hittime = 17
guard.ctrltime = 18
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -4,-6
air.hittime = 9 
getpower = 121,121
givepower = 21,21
ground.cornerpush.veloff = -18
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -18
yaccel = 0.55

[State 200,3]
type = ChangeState
trigger1 = Movecontact && command = "for_a"
value = 222
ctrl = 0

[State 200,3]
type = ChangeState
trigger1 = Movecontact && command = "repu1" && palno <= 6 
value = 600
ctrl = 0

[State 200,3]
type = ChangeState
trigger1 = Movecontact && command = "repu1" && palno >= 7 
value = 602
ctrl = 0

[State 200,3]
type = ChangeState
trigger1 = Movecontact && command = "repu2" && palno <= 6 
value = 605
ctrl = 0

[State 200,3]
type = ChangeState
trigger1 = Movecontact && command = "repu2" && palno >= 7 
value = 604
ctrl = 0

[State 210,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------
;Normal B2
[Statedef 211]
type = S
movetype = A
physics = S
juggle = 6
anim = 211
ctrl = 0
velset = 0,0

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,2
volume = 200

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 2
trigger1 = Random <= 650
value = 0,1
volume = 255

[State 210, 2]
type = HitDef
triggerall = p2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
trigger1 = AnimElem = 2
attr = S, NA
damage = 58,0
animtype = Hard
guardflag = M
hitflag = MAF
priority = 5, Hit 
pausetime = 10, 10
sparkno = 2
sparkxy = -30, -70
hitsound = s2, 2
guardsound = 6, 0
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -8.1
airguard.velocity = -4,-6
air.type = High
air.velocity = -4,-6
air.hittime = 12 
getpower = 121,121
givepower = 21,21
air.cornerpush.veloff = 0;

[State 210,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------
;Normal C
[Statedef 220]
type = S
movetype = A
physics = S
anim = 220
juggle = 5
ctrl = 0
velset = 0,0

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,1
volume = 200

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 1
trigger1 = Random <= 650
value = 0,2
volume = 255

[State 210, 2]
type = HitDef
triggerall = p2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
trigger1 = AnimElem = 2
attr = S, NA
damage = 35,0
animtype = Light
guardflag = M
hitflag = MAF
priority = 6, Hit 
pausetime = 8, 8
sparkno = 0
sparkxy = -15, -25
hitsound = s2, 0
guardsound = 6, 0
ground.type = Low
ground.slidetime = 11             
ground.hittime  = 11              
ground.velocity = - 5.95  
airguard.velocity = -3.5,-6  
air.type = High
air.velocity = -3.5,-6  
air.hittime = 9
getpower = 101,101
givepower = 21,21
yaccel = .5
air.cornerpush.veloff = 0

[State 220,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------
;Normal C2
[Statedef 221]
type = S
movetype = A
physics = S
juggle = 4
anim = 221
ctrl = 0
velset = 0,0

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,1
volume = 200

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 1
trigger1 = Random <= 650
value = 0,2
volume = 255

[State 210, 2]
type = HitDef
triggerall = p2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
trigger1 = AnimElem = 2
attr = S, NA
damage = 36,0
animtype = Light
guardflag = M
hitflag = MAF
priority = 6, Hit 
pausetime = 8, 8
sparkno = 0
sparkxy = -5, -80
hitsound = s2, 0
guardsound = 6, 0
ground.type = Low
ground.slidetime = 11             
ground.hittime  = 14              
ground.velocity = - 5.95           
airguard.velocity = -3.5,-6  
air.type = High
air.velocity = -3.5,-6        
air.hittime = 9
getpower = 101,101
givepower = 21,21
yaccel = .5
air.cornerpush.veloff = 0

[State 200,3]
type = ChangeState
trigger1 = Movecontact && command = "explosion" && PalNo <= 6
value = 610
ctrl = 0

[State 210,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------
;Command C (Fwd)
[Statedef 222]
type = S
movetype = A
physics = N
juggle = 15
anim = 520
ctrl = 0
velset = 0,0

[State 0, ]
type = ChangeAnim
trigger1 = Prevstateno = 210 && Time = 1
value = 520
elem = 2

[State 0, ]
type = VelSet
trigger1 = AnimElem = 2
x = 2

[State 0, ]
type = VelSet
trigger1 = Time = 42
x = 0

[State 0, ]
type = PosAdd
trigger1 = Anim = 520 && AnimElem = 2
trigger2 = Anim = 520 && AnimElem = 5
x = 10

[State 0, ]
type = PosAdd
trigger1 = Anim = 520 &&  AnimElem = 3
trigger2 = Anim = 520 && AnimElem = 4
trigger3 = Anim = 520 && AnimElem = 6
x = 15

[State 200, snd]
type = PlaySnd
trigger1 = Anim = 520 && AnimElem = 4
value = 1,3
volume = 200

[State 200, snd]
type = PlaySnd
trigger1 = Anim = 520 && AnimElem = 3
trigger1 = Random <= 650
value = 0,3
volume = 255

[State 210, 2]
type = HitDef
trigger1 = Anim = 520 && AnimElem = 2
attr = S, NA
damage = 40,0
animtype = Hard
guardflag = M
hitflag = MAF
priority = 4, Hit 
pausetime = 6, 12
sparkno = 2
sparkxy = -10, -65
hitsound = s2, 0
guardsound = 6, 0
ground.type = High
ground.slidetime = 14
ground.hittime  = 22
ground.velocity = -8
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3 
air.hittime = 12 
getpower = 121,121
givepower = 21,21
ground.cornerpush.veloff = -12
air.cornerpush.veloff = 0

[State 321,3]
type = ChangeState
trigger1 = Anim = 520 && Movecontact && command = "rave" && Power >= 1000
value = 710

[State 210,3]
type = ChangeState
trigger1 = Anim = 520 && Movecontact && command = "repu1" && palno <= 6
trigger2 = Anim = 221 && Movecontact && command = "repu1" && palno <= 6
value = 600

[State 210,3]
type = ChangeState
trigger1 = Anim = 520 && Movecontact && command = "repu1" && palno >= 7
trigger2 = Anim = 221 && Movecontact && command = "repu1" && palno >= 7
value = 602

[State 210,3]
type = ChangeState
trigger1 = Anim = 520 && Movecontact && command = "repu2" && palno <= 6
trigger2 = Anim = 221 && Movecontact && command = "repu2" && palno <= 6
value = 605

[State 210,3]
type = ChangeState
trigger1 = Anim = 520 && Movecontact && command = "repu2" && palno >= 7
trigger2 = Anim = 221 && Movecontact && command = "repu2" && palno >= 7
value = 604

[State 210,3]
type = ChangeState
trigger1 = Anim = 520 && Movecontact && command = "explosion" && palno <= 6
trigger2 = Anim = 221 && Movecontact && command = "explosion" && palno <= 6
value = 610

[State 210,3]
type = ChangeAnim
trigger1 = Anim = 520 && AnimTime = 0
value = 221

[State 200, snd]
type = PlaySnd
trigger1 =Anim = 221 && AnimElem = 2
value = 1,1
volume = 200

[State 210, 2]
type = HitDef
trigger1 = Anim = 221 && AnimElem = 2
attr = S, NA
damage = 36,0
animtype = Light
guardflag = M
hitflag = MAF
priority = 4, Hit 
pausetime = 6, 8
sparkno = 0
sparkxy = -5, -80
hitsound = s2, 2
guardsound = 6, 0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 11
ground.velocity = -3, -5
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3 
air.hittime = 12 
getpower = 121,121
givepower = 21,21
fall = 1
ground.cornerpush.veloff = -18
air.cornerpush.veloff = 0

[State 210,3]
type = ChangeState
trigger1 = Anim = 221 && !AnimTime
value = 0
ctrl = 1

;----------------------------------------
;Normal D
[Statedef 230]
type = S
movetype = A
physics = S
juggle = 4
anim = 520
ctrl = 0
velset = 0,0

[State 0, ]
type = PosAdd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 5
x = 14

[State 0, ]
type = PosAdd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
x = 17

[State 0, ]
type = PosAdd
trigger1 = AnimElem = 6
x = 24

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,3
volume = 200

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 3
trigger1 = Random <= 650
value = 0,1
volume = 255

[State 210, 2]
type = HitDef
triggerall = p2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
trigger1 = AnimElem = 2
attr = S, NA
damage = 70,0
animtype = Hard
guardflag = M
hitflag = MAF
priority = 5, Hit 
pausetime = 9, 9
sparkno = 2
sparkxy = -10, -65
hitsound = s2, 3
guardsound = 6, 0
ground.type = High
ground.slidetime = 17             
ground.hittime  = 17
ground.velocity = -8.1         
airguard.velocity = -3.5,-6 
air.type = High
air.velocity = -4,-6      
air.hittime = 9
getpower = 121,121
givepower = 21,21
yaccel = .5
air.cornerpush.veloff = 0;

[State 210,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------
;Normal D2
[Statedef 231]
type = S
movetype = A
physics = S
juggle = 4
anim = 231
ctrl = 0
velset = 0,0

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,3
volume = 200

[State 210, 2]
type = HitDef
triggerall = p2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
trigger1 = AnimElem = 2
attr = S, NA
damage = 68,0
animtype = Hard
guardflag = M
hitflag = MAF
priority = 5, Hit 
pausetime = 8, 8
sparkno = 1
sparkxy = -1, -65
hitsound = s2, 3
guardsound = 6, 0
ground.type = Low
ground.slidetime = 17            
ground.hittime  = 17
ground.velocity = -12.1         
airguard.velocity = -3.5,-6   
air.type = High
air.velocity = -4,-6      
air.hittime = 9
getpower = 121,121
givepower = 21,21
yaccel = .5
air.cornerpush.veloff = 0;

[State 210,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------
;Crouch A
[Statedef 300]
type = C
movetype = A
physics = C
juggle = 2
anim = 300
ctrl = 0
velset = 0,0

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 2
trigger1 = Random <= 650
value = 0,0
volume = 255

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,1
volume = 200

[State 200, 2]
type = HitDef
triggerall = p2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
trigger1 = AnimElem = 2
attr = C, NA
damage = 23,0
animtype = Light
guardflag = M
hitflag = MA
priority = 6, Hit 
pausetime = 8, 8
sparkno = 0
sparkxy = -5, -50
hitsound = s2, 0
guardsound = 6, 0
ground.type = Low
ground.slidetime = 9
ground.hittime  = 9
ground.velocity = -6.3
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -3.5,-6
air.hittime = 9 
getpower = 71,71
givepower = 21,21
yaccel = .5 
air.cornerpush.veloff = 0;

[State 0, ]
type = CtrlSet
trigger1 = Time = 5
value = 1

[State 220,3]
type = ChangeState
trigger1 = AnimElem >= 2 && command = "slide"
trigger2 = Movehit && Command = "slide"
value = 321
ctrl = 0

[State 200,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;----------------------------------------
;Command Upper /  Rising Palm
[Statedef 301]
type = C
movetype = A
physics = C
juggle = 4
anim = 301
ctrl = 0
velset = 0,0

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,2
volume = 200

[State 200, 2]
type = HitDef
triggerall = p2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
trigger1 = AnimElem = 2
attr = C, NA
damage = 58,0
animtype = Hard
guardflag = M
hitflag = MAF
priority = 6, Hit 
pausetime = 8, 10
sparkno = 2
sparkxy = -5, -80
hitsound = s2, 2
guardsound = 6, 0
ground.type = High
ground.slidetime = 14             
ground.hittime  = 17         
ground.velocity = - 6.95
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -3.5,-6
air.hittime = 9
getpower = 101,101
givepower = 21,21
yaccel = .5 
air.cornerpush.veloff = 0

[State 321,3]
type = ChangeState
trigger1 = Movecontact && command = "rave" && Power >= 1000
value = 710

[State 321,3]
type = ChangeState
trigger1 = Movecontact && command = "storm" && Power >= 2000 && PalNo <= 6
value = 700

[State 210,3]
type = ChangeState
trigger1 = Movecontact && command = "repu1" && palno <= 6
value = 600

[State 210,3]
type = ChangeState
trigger1 = Movecontact && command = "repu1" && palno >= 7
value = 602

[State 210,3]
type = ChangeState
trigger1 = Movecontact && command = "repu2" && palno <= 6
value = 605

[State 210,3]
type = ChangeState
trigger1 = Movecontact && command = "repu2" && palno >= 7
value = 604

[State 210,3]
type = ChangeState
trigger1 = Movecontact && command = "explosion" && palno <= 6
value = 610

[State 200,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;----------------------------------------
;Crouch B
[Statedef 310]
type = C
movetype = A
physics = C
juggle = 4
anim = 310
ctrl = 0
velset = 0,0

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 2
trigger1 = Random <= 650
value = 0,1
volume = 255

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,2
volume = 200

[State 200, 2]
type = HitDef
triggerall = p2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
trigger1 = AnimElem = 2
attr = C, NA
damage = 70,0
animtype = Hard
guardflag = M
hitflag = MAF-
priority = 5, Hit 
pausetime = 8, 8
sparkno = 2
sparkxy = -5, -85
hitsound = s2, 2
guardsound = 6, 0
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -12
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -3.5,-6
air.hittime = 9
getpower = 121,121
givepower = 21,21
yaccel = .5
ground.cornerpush.veloff = -18
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -18

[State 200,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;----------------------------------------
;Crouch C
[Statedef 320]
type = C
movetype = A
physics = C
anim = 320
juggle = 4
ctrl = 0
velset = 0,0

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 2
trigger1 = Random <= 650
value = 0,0
volume = 255

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,1
volume = 200

[State 200, 2]
type = HitDef
triggerall = p2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
trigger1 = AnimElem = 2
attr = C, NA
damage = 35,0
animtype = Light
guardflag = M
hitflag = MA
priority = 6, Hit 
pausetime = 8, 8
sparkno = 0
sparkxy = -5, -12
hitsound = s2, 0
guardsound = 6, 0
ground.type = Low
ground.slidetime = 11             
ground.hittime  = 11              
ground.velocity = - 5.95
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -3.5,-6   
air.hittime = 9
getpower = 101,101
givepower = 21,21
yaccel = .5
air.cornerpush.veloff = 0;

[State 220,3]
type = ChangeState
trigger1 = Time = 5 && command = "a"
value = 320
ctrl = 0

[State 220,3]
type = ChangeState
trigger1 = AnimElem >= 3 && command = "slide"
trigger2 = Movehit && Command = "slide"
value = 321
ctrl = 0

[State 200,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;----------------------------------------
;Slide C
[Statedef 321]
type = C
movetype = A
physics = N
juggle = 4
anim = 321
ctrl = 0
velset = 0,0

[State 321, snd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,1
volume = 200

[State 0, ]
type = VelSet
trigger1 = AnimElem = 2
x = 6

[State 0, ]
type = VelSet
trigger1 = AnimElem = 10
x = 0

[State 321, 2]
type = HitDef
triggerall = p2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
trigger1 = AnimElem = 2
attr = C, NA
damage = 35,0
animtype = Light
guardflag = M
hitflag = MAF
priority = 6, Hit 
pausetime = 8, 10
sparkno = 0
sparkxy = -5, -12
hitsound = s2, 0
guardsound = 6, 0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -6.3
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -3.5,-6
air.hittime = 9
getpower = 101,101
givepower = 21,21
ground.cornerpush.veloff = -18
air.cornerpush.veloff = 0;
yaccel = .5

[State 321,3]
type = ChangeState
trigger1 = Movecontact && command = "rave" && Power >= 1000
value = 710

[State 210,3]
type = ChangeState
trigger1 = Movecontact && command = "repu1" && palno <= 6
value = 600

[State 210,3]
type = ChangeState
trigger1 = Movecontact && command = "repu1" && palno >= 7
value = 602

[State 210,3]
type = ChangeState
trigger1 = Movecontact && command = "repu2" && palno <= 6
value = 605

[State 210,3]
type = ChangeState
trigger1 = Movecontact && command = "repu2" && palno >= 7
value = 604

[State 210,3]
type = ChangeState
trigger1 = Movecontact && command = "explosion" && palno <= 6
value = 610

[State 321,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;----------------------------------------
;Crouch D
[Statedef 330]
type = C
movetype = A
physics = C
anim = 330
ctrl = 0
juggle = 15
velset = 0,0

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 2
trigger1 = Random <= 650
value = 0,1
volume = 255

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,3
volume = 200

[State 200, 2]
type = HitDef
triggerall = p2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
trigger1 = AnimElem = 2
attr = C, NA
damage = 60,0
animtype = Hard
guardflag = M
hitflag = MAF-
priority = 5, Hit 
pausetime = 8, 8
sparkno = 1
sparkxy = -5, -35
hitsound = s2, 3
guardsound = 6, 0
ground.type = Trip
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -2,-7
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -2,-6
air.hittime = 9
getpower = 121,121
givepower = 21,21
ground.cornerpush.veloff = -18
air.cornerpush.veloff = 0;
yaccel = .54

[State 200,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;----------------------------------------
;Air A
[Statedef 400]
type = A
movetype = A
physics = A
anim = 400
ctrl = 0

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 3
trigger1 = Random <= 650
value = 0,0
volume = 255

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,1
volume = 200

[State 200, 2]
type = HitDef
triggerall = p2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
trigger1 = AnimElem = 2
attr = A, NA
damage = 35,0
animtype = Light
guardflag = M
hitflag = MAF
priority = 6, Hit 
pausetime = 10, 12
sparkno = 0
sparkxy = -5, -50
hitsound = s2, 0
guardsound = 6, 0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -3.5,-6
air.hittime = 12 
getpower = 101,101
givepower = 21,21
yaccel = 0.55
ground.cornerpush.veloff = -3
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -3

;----------------------------------------
;Air B
[Statedef 410]
type = A
movetype = A
physics = A
anim = 410
ctrl = 0

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 2
trigger1 = Random <= 650
value = 0,1
volume = 255

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,2
volume = 200

[State 200, 2]
type = HitDef
triggerall = p2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
trigger1 = AnimElem = 3
attr = A, NA
damage = 70,0
animtype = Hard
guardflag = M
hitflag = MAF
priority = 5, Hit 
pausetime = 10, 12
sparkno = 1
sparkxy = -8, -50
hitsound = s2, 2
guardsound = 6, 0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -3.5,-6
yaccel = 0.52
ground.cornerpush.veloff = -3
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -3
air.hittime = 9
getpower = 121,121
givepower = 21,21

;Air B2
[Statedef 411]
type = A
movetype = A
physics = A
anim = 411
ctrl = 0

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 2
trigger1 = Random <= 650
value = 0,1
volume = 255

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,2
volume = 200

[State 200, 2]
type = HitDef
triggerall = p2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
triggerall = hitcount != 2
trigger1 = AnimElem = 4
trigger2 = AnimElem = 6
attr = A, NA
damage = 32,0
animtype = Hard
guardflag = M
hitflag = MAF
priority = 5, Hit 
pausetime = 10, 12
sparkno = 1
sparkxy = -8, -50
hitsound = s2, 2
guardsound = 6, 0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -3.5,-6
yaccel = 0.52
ground.cornerpush.veloff = -3
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -3
air.hittime = 9
getpower = 61,61
givepower = 21,21


;----------------------------------------
;Air C
[Statedef 420]
type = A
movetype = A
physics = A
anim = 420
ctrl = 0

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 2
trigger1 = Random <= 650
value = 0,0
volume = 255

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,1
volume = 200

[State 200, 2]
type = HitDef
triggerall = p2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
trigger1 = AnimElem = 2
attr = A, NA
damage = 48,0
animtype = Medium
guardflag = M
hitflag = MAF
priority = 6, Hit 
pausetime = 8, 10
sparkno = 1
sparkxy = -5, -15
hitsound = s2, 0
guardsound = 6, 0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -3.5,-6
air.hittime = 9
getpower = 101,101
givepower = 21,21
yaccel = 0.55
ground.cornerpush.veloff = -3
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -3

;----------------------------------------
;Air D
[Statedef 430]
type = A
movetype = A
physics = A
anim = 430
ctrl = 0

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 2
trigger1 = Random <= 650
value = 0,1
volume = 255

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,3
volume = 200

[State 200, 2]
type = HitDef
triggerall = p2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
trigger1 = AnimElem = 2
attr = A, NA
damage = 70,0
animtype = Hard
guardflag = M
hitflag = MAF
priority = 5, Hit 
pausetime = 8, 10
sparkno = 2
sparkxy = -5, -45
hitsound = s2, 3
guardsound = 6, 0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
airguard.velocity = -3.5,-6
air.type = High
air.velocity = -3.5,-6
yaccel = 0.52
ground.cornerpush.veloff = -3
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -3
air.hittime = 12 
getpower = 121,121
givepower = 21,21

;----------------------------------------
;Roll Back
[Statedef 500]
type = S
movetype = A
physics = N
anim = 500
ctrl = 0
velset = 0,0

[State 500, 1]
type = NotHitBy
trigger1 = Time = 1
value = ,NA,SA,HA,NT,ST,HT,NP,SP,HP
time = 17
ignorehitpause = 0
persistent = 1

[State 500, 2]
type = PlayerPush
trigger1 = 1
value = 0

[State 500, snd]
type = PlaySnd
trigger1 = Time = 1
value = 0,30
volume = 255

[State 500, 3]
type = VelSet
trigger1 = AnimElem = 2
x = -4

[State 500, afterimage]
type = Afterimage
trigger1 = Time = 0
time = 12
PalBright = 0, 0, 0
PalContrast =  180,180,180
PalAdd = 0, 0, 0
PalMul = 1,1,1
Length = 7
FrameGap = 3
Trans = add1

[State 500,4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------
;Roll Forward
[Statedef 501]
type = S
movetype = A
physics = N
anim = 501
ctrl = 0
velset = 0,0

[State 501, Blah]
type = Width
trigger1 = Vel X
edge = 10,0 

[State 501,1]
type = NotHitBy
trigger1 = Time = 1
value = ,NA,SA,HA,NT,ST,HT,NP,SP,HP
time = 17
ignorehitpause = 0
persistent = 1

[State 501,2]
type = PlayerPush
trigger1 = 1
value = 0

[State 501,snd]
type = PlaySnd
trigger1 = Time = 1
value = 0,30
volume = 255

[State 501,3]
type = VelSet
trigger1 = AnimElem = 2
x = 4

[State 500,afterimage]
type = Afterimage
trigger1 = Time = 0
time = 12
PalBright = 0, 0, 0
PalContrast =  180,180,180
PalAdd = 0, 0, 0
PalMul = 1,1,1
Length = 7
FrameGap = 3
Trans = add1

[State 501,4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------
;Movecancel
[Statedef 502]
type = S
movetype = A
physics = N
anim = 501
ctrl = 0
velset = 0,0
poweradd = -1000

[State 0, ]
type = Pause
trigger1 = Time = 1
time = 8
movetime = 8
ignorehitpause = 1

[State 500, 2]
type = PlayerPush
trigger1 = 1
value = 0

[State 501,1]
type = NotHitBy
trigger1 = Time = 1
value = ,NA,SA,HA,NT,ST,HT,NP,SP,HP
time = 17
ignorehitpause = 0
persistent = 1

[State 501, spark]
type = Explod
trigger1 = Time = 0
anim = 14000
pos = 0,-80
postype = p1
bindtime = 1
removetime = 10
ontop = 1
sprpriority = -2
ownpal = 1
pausemovetime = 10

[State 200, snd]
type = PlaySnd
trigger1 = Time = 1
value = 0,30
volume = 255

[State 0, ]
type = VelSet
trigger1 = AnimElem = 2
x = 4

[State 500,afterimage]
type = Afterimage
trigger1 = Time = 0
time = 12
PalBright = 0, 0, 0
PalContrast =  180,180,180
PalAdd = 0, 0, 0
PalMul = 1,1,1
Length = 7
FrameGap = 3
Trans = add1

[State 200,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------
;Throw
[Statedef 510]
type = S
movetype = A
physics = S
juggle = 4
anim = 510
ctrl = 0
velset = 0,0

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,3
volume = 200

[State 210, 2]
type = HitDef
triggerall = p2stateno != 40 && p2stateno !=52 
triggerall = var(18) = 0
trigger1 = AnimElem = 2
attr = S, NT
damage = 0,0
animtype = Hard
hitflag = M
priority = 3, Miss 
pausetime = 0, 0
sparkno = S513
sparkxy = -20, -60
hitsound = s2, 5
guardsound = 6, 0
ground.type = High
ground.slidetime = 14
ground.hittime  = 14
ground.velocity = -3.5,-6
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -3.5,-6
air.hittime = 12 
getpower = 60,0
p1stateno = 511
p2stateno = 512
fall = 1
p2facing = 1
yaccel = .5 

[State 210,3]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;----------------------------------------
;Throw worked
[Statedef 511]
type = S
movetype = A
physics = S
juggle = 4
anim = 511
ctrl = 0
velset = 0,0

[State 0, ]
type = TargetBind
trigger1 = Time = 0
time = 12
pos = 40,0

[State 0, ]
type = TargetBind
trigger1 = Time = 12
time = 9
pos = -20,-5

[State 0, ]
type = TargetBind
trigger1 = Time = 21
time = 9
pos = -40,-20

[State 0, ]
type = TargetDrop
trigger1 = Time = 23
excludeID = -1

[State 0, ]
type = PosAdd
trigger1 = AnimElem = 4
x = -28

[State 0, ]
type = Turn
trigger1 = AnimTime = 0
ignorehitpause = 0

[State 0, ]
type = TargetLifeAdd
trigger1 = Time = 22
value = -70
kill = 1

[State 0, ]
type = PosAdd
trigger1 = AnimTime = 0
x = -20

[State 210,3]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;Gethit by throw
[Statedef 512]
type    = A
movetype= H
physics = N
velset = 0,0

[State 632, 1]
type = ChangeAnim2
Trigger1 = Time = 1
value = 512

[State 0, ]
type = VelSet
trigger1 = Time = 23
x = 4.6
y = -6.5

[State 632, 1]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050

;----------------------------------------
;CD Attack
[Statedef 520]
type = S
movetype = A
physics = S
juggle = 15
anim = 230
ctrl = 0
velset = 0,0

[State 0, ]
type = PosAdd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 5
x = 14

[State 0, ]
type = PosAdd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
x = 17

[State 0, ]
type = PosAdd
trigger1 = AnimElem = 6
x = 24

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,3
volume = 200

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 3
trigger1 = Random <= 650
value = 0,1
volume = 255

[State 210, 2]
type = HitDef
triggerall = p2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
trigger1 = AnimElem = 2
attr = S, NA
damage = 70,0
animtype = Hard
guardflag = M
hitflag = MAF
priority = 3, Hit 
pausetime = 8, 10
sparkno = 2
sparkxy = -10, -65
hitsound = s2, 4
guardsound = 6, 0
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -4, -6
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -4,-6
air.hittime = 9
getpower = 101,101
givepower = 21,21
fall = 1
yaccel = .5 

[State 321,3]
type = ChangeState
trigger1 = Movecontact && command = "rave" && Power >= 1000
value = 710

[State 321,3]
type = ChangeState
trigger1 = Movecontact && command = "storm" && Power >= 2000 && PalNo <= 6
value = 700

[State 210,3]
type = ChangeState
trigger1 = Movecontact && command = "repu1" && palno <= 6
value = 600

[State 210,3]
type = ChangeState
trigger1 = Movecontact && command = "repu1" && palno >= 7
value = 602

[State 210,3]
type = ChangeState
trigger1 = Movecontact && command = "repu2" && palno <= 6
value = 605

[State 210,3]
type = ChangeState
trigger1 = Movecontact && command = "repu2" && palno >= 7
value = 604

[State 210,3]
type = ChangeState
trigger1 = Movecontact && command = "explosion" && palno <= 6
value = 610

[State 210,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------
;Air CD Attack
[Statedef 525]
type = A
movetype = A
physics = A
anim = 525
juggle = 15
ctrl = 0

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 2
trigger1 = Random <= 650
value = 0,1
volume = 255

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,4
volume = 200

[State 200, 2]
type = HitDef
trigger1 = AnimElem = 6
attr = A, NA
damage = 70,0
animtype = Hard
guardflag = M
hitflag = MAF
priority = 3, Hit 
pausetime = 8, 8
sparkno = 2
sparkxy = -5, -45
hitsound = s2, 4
guardsound = 6, 0
ground.type = Low
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -4,-6
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -4,-6
air.hittime = 9 
getpower = 101,101
givepower = 21,21
fall = 1
yaccel = .5 

;----------------------------------------
;Max counter
[Statedef 530]
type = S
movetype = A
physics = S
juggle = 15
anim = 530
ctrl = 0
velset = 0,0

[State 530, snd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 3,2
volume = 255

[State 530, var]
type = VarSet
trigger1 = AnimElem = 3
v =  45
value = 765

[State 530, explod]
type = Explod
trigger1 = AnimElem = 3
anim = 16001
pos = 0,-70
postype = p1
bindtime = -1
ontop = 1
sprpriority = -2
ownpal = 1

[State 0, ]
type = PowerAdd
trigger1 = AnimElem = 3
value = -1000

[State 210,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Jump Up - Start
[Statedef 40]
type    = S
physics = S
anim = 40
ctrl = 0
velset = 0,0

[State 40, 0]
type = NotHitBy
trigger1 = 1
value = SC, NT, ST, HT

[State 40, 1]
type = VarSet
trigger1 = Time = 0
var(8) = 0

[State 40, 2]
type = VarSet
trigger1 = Command = "holdfwd"
trigger1 = var(8) != 2
var(8) = 1

[State 40, 3]
type = VarSet
trigger1 = Command = "holdback"
trigger1 = var(8) != -2
var(8) = -1

[State 40, 4]
type = VarSet
triggerall = Time = 0
triggerall = Command = "holdfwd"
trigger1 = Command = "highjump"
trigger2 = PrevStateNo = 100
var(8) = 2

[State 40, 5]
type = VarSet
trigger1 = Time = 0
trigger1 = Command = "holdback"
trigger1 = Command = "highjump"
var(8) = -2

[State 40, 2]
type = VarSet
triggerall = Time = 0
triggerall = Command = "holdup"
trigger1 = Command = "highjump"
var(8) = 3

[State 40, 6]
type = StopSnd
trigger1 = Time = 0
channel = 20;running snd

[State 40, 7]
type = ChangeState
triggerall = AnimTime = 0
trigger1 = var(8) != 0
trigger1 = var(8) != 1
trigger1 = var(8) != -1
trigger1 = Command = "holdup"
trigger2 = Command != "holdup"
value = 55

[State 40, 8]
type = VelSet
trigger1 = AnimTime = 0 && var(8) != 3
x = IfElse(var(8)= 0, Const(velocity.jump.neu.x), IfElse(var(8)>0, Const(velocity.jump.fwd.x), Const(velocity.jump.back.x)))
y = IfElse(var(8)= 0, Const(velocity.jump.y), IfElse(var(8)>0, (Const(velocity.jump.y)), (Const(velocity.jump.y))))

[State 40, 9]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; Jump Up
[Statedef 50]
type    = A
physics = A

[State 50, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 50, 2]
type = ChangeAnim
trigger1 = Time = 0
value = ifelse((vel x)=0, 41, ifelse((vel x)>0, 42, 43))

[State 50, 3]
type = ChangeAnim
trigger1 = Vel y > -2
trigger1 = SelfAnimExist(anim + 3)
persistent = 0
value = Anim + 3
ctrl = 0

;---------------------------------------------------------------------------
; Jump Up 2 - Small Jump
[Statedef 55]
type    = A
physics = A
anim = 41
velset = 0, -6.9
ctrl = 1

[State 201, 3] ; Shadows
type = Afterimage
triggerall = Time = 0
trigger1 = var(8) = -2
trigger2 = var(8) = 2
trigger3 = var(8) = 3
time = 14
PalBright = 0, 0, 0
PalContrast =  180,180,180
PalAdd = 0, 0, 0
PalMul = 1,1,1
Length = 7
FrameGap = 3
Trans = add1

[State 201, 4]
type = Afterimage
trigger1 = Time = 30
time = 0

[State 201, 5]
type = VelSet
triggerall = var(9) = 1 
trigger1 = Time = 0 && (p2bodydist x = [-30,30])
y = -4.5

[State 201, 6]
type = VelSet
trigger1 = Time = 0 && var(8)!= 3 
trigger1 = command = "holdup"
y = -9.1

[State 201, 6]
type = VelSet
trigger1 = Time = 0 && var(8)= 3 
trigger1 = command = "holdup"
y = -10.4

[State 201, 7]
type = VelSet
trigger1 = Time = 0
trigger1 = Var(8) = 1
x = 3.9

[State 201, 8]
type = VelSet
trigger1 = Time = 0
trigger1 = Var(8) = 2
x = 4.1

[State 201, 9]
type = VelSet
trigger1 = Time = 0
trigger1 = Var(8) = -1
x = -3.9

[State 201, 10]
type = VelSet
trigger1 = Time = 0
trigger1 = Var(8) = -2
x = -4.1

[State 201, 11]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = Vel X = 0
trigger1 = Command = "holdup"
value = 41

[State 201, 12]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = Vel X = 0
trigger1 = Command != "holdup"
value = 41

[State 201, 13]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = Vel X > 0
trigger1 = Command = "holdup"
value = 42

[State 201, 14]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = Vel X > 0
trigger1 = Command != "holdup"
value = 41

[State 201, 15]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = Vel X < 0
trigger1 = Command = "holdup"
value = 43

[State 201, 16]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = Vel X < 0
trigger1 = Command != "holdup"
value = 41

;---------------------------------------------------------------------------
; Jump Land
[Statedef 52]
type    = S
physics = S
anim = 47
ctrl = 0
velset = 0,0

[State 52, 0]
type = VelSet
trigger1 = Time = 0
y = 0

[State 52, 1]
type = PosSet
trigger1 = Time = 0
y = 0

[State 52, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 52, 2]
type = CtrlSet
trigger1 = Time = 1
value = 1

;---------------------------------------------------------------------------
[Statedef -2]
; ------- Debug Display --------
[State -2, Debug display]
trigger1 = 1
type = DisplayToClipboard
ignorehitpause = 1
text = "Jumpcheck = %d, Runcheck = %d , Dizzy = %d, Max = %d, Counter = %d"
params =  var(8), var(28), var(13), var(45), var(46)

; ------- Counter check --------
[State -2, on]
type = VarSet
trigger1 = p2stateno = [200,4999]
v =  46
value = 1

[State -2, off]
type = VarSet
trigger1 = p2stateno != [200,4999]
v =  46
value = 0

; ------- Remove Air Block --------
[State -2, No Air Block]
type = AssertSpecial
trigger1 = 1
flag = NoAirGuard

; ------- Dizzy code --------
[State -2, reset Dizzy]
type = VarSet
trigger1 = RoundState = 0 || RoundState = 3 || (movetype = H &&  var(14) = 1 && stateno != 5250)
ignorehitpause = 1
var(13) = 0

[State -2, reset Dizzy]
type = VarSet
trigger1 = var(13) <= 0 && var(14) = 1
ignorehitpause = 1
var(14) = 0

[State -2, DIZZY CODE]
type = VarAdd
trigger1 = (var(13) = [1,999]) && movetype = H && enemy, hitdefattr = SCA, HA, HP
var(13) = -50
ignorehitpause = 1 

[State -2, DIZZY CODE]
type = VarAdd
trigger1 = (var(13) = [1,999]) && movetype = H && gethitvar(hitcount) >= 5 
var(13) = -20
ignorehitpause = 1 

[State -2, DIZZY CODE]
type = VarAdd
trigger1 = var(13) = [1,999]
var(13) = -1
ignorehitpause = 1 

[State -2, DIZZY CODE]
type = Varset
trigger1 = var(13) > 1000
var(13) = 1000
ignorehitpause = 1 

; ------- Throw Limiter--------
[State -2, Guard Var]
type = VarSet
trigger1 = stateno = [200,330] ; Non-Air basic moves states.
trigger1 = stateno = [500,700] ; Non-Air basic moves states.
trigger1 = moveguarded > 0 ; This is the key : checks if opponent has guarded a basic attack
trigger2 = stateno = [400,499] ; Air Basic Moves
trigger2 = movecontact > 0 ; This includes both moveguarded & movehit as well
v = 18
value = 30
persistent = 0
ignorehitpause = 1

[State -2, Guard Var 2]
type = VarAdd
trigger1 = var(18) > 0
var(18) = -1
ignorehitpause = 1

[State -2, Guard Var 3]
type = VarSet
trigger1 = var(18) < 0
var(18) = 0
persistent = 0
ignorehitpause = 1

; ------- Heat Mode --------
[State -2, VarActivate]
type = VarSet
triggerall = PalNo <= 6
triggerall = ctrl
triggerall = roundstate = 2 ; Can't be activated during intro/winpose
triggerall = var(21) != 1 ; It shouldn't be already activated :P
triggerall = life > 200 ; Character must have his life > 20 %
triggerall = command = "c" ; Then we map a button for Heat Mode
trigger1 = stateno != [200,4999] ; Character should not be attacking
trigger1 = stateno != [5000,5999] ; Character should not be hit
v = 21
value = 1
ignorehitpause = 1

[State -2, HeatTime]
type = VarAdd
trigger1 = var(21) = 1 ; Heat Mode Activated
trigger1 = GameTime%1 = 0
v = 22
value = 1
ignorehitpause = 1

[State -2, HeatTimeReset]
type = VarSet
trigger1 = var(21) = 0 ; Heat Mode DeActivated
trigger1 = var(22) > 0 ; Previously enabled Heat Mode
v = 22
value = 0
ignorehitpause = 1

[State -2, VarDeActivate]
type = VarSet ; To manually deactivate Heat Mode ...
triggerall = var(21) = 1 ; It should be already activated :P
triggerall = life > 200 ; Character must have his life > 20 %
triggerall = var(22) > 5 ; At least 5 ticks must have passed
triggerall = command = "c" ; Then we map a button for Heat Mode
triggerall = ctrl ; We need to have the control of the character.
trigger1 = stateno != [200,4999] ; Character should not be attacking
trigger1 = stateno != [5000,5999] ; Character should not be hit
v = 21
value = 0
ignorehitpause = 1

[State -2, AutoDeActivate]
type = VarSet ; To automatically deactivate Heat Mode ...
triggerall = var(21) = 1 ; It should be already activated :P
triggerall = var(22) > 2 ; At least 2 ticks must have passed
trigger1 = stateno = [5000,5999] ; Character is in a hit state
trigger2 = life <= 200 ; Life limitation is reached
trigger3 = movetype = H ; Character is in a custom state
trigger4 = Roundstate = 3
v = 21
value = 0
ignorehitpause = 1

[State -2, RedFlash]
type = PalFX
triggerall = var(21) = 1 ; Character must be in Heat Mode
trigger1 = (GameTime%2) = 0
time = 1
add = 190,20,20
ignorehitpause = 1

[State -2, Attack Up]
type = AttackMulSet
trigger1 = var(21) = 1
value = 1.25
ignorehitpause = 1

[State -2, Attack Reset]
type = AttackMulSet
trigger1 = var(21) = 0
value = 1
ignorehitpause = 1

[State -2, Loss]
type = LifeAdd
trigger1 = var(21) = 1 ; Heat Mode Activated
trigger1 = GameTime%1 = 0
value = -1
ignorehitpause = 1

; ------- Max Mode--------
[State -2, explod]
type = Explod
trigger1 = Stateno = 530 && AnimElem = 4 && Teamside = 1
anim = 16000
pos = 0,227
id = 45
postype = left
bindtime = -1
ontop = 1
sprpriority = -2
ownpal = 1

[State -2, explod]
type = Explod
trigger1 = Stateno = 530 && AnimElem = 4 && Teamside = 2
anim = 16002
pos = -56,227
id = 45
postype = right
bindtime = -1
ontop = 1
sprpriority = -2
ownpal = 1

[State -2, YellowFlash]
type = PalFX
triggerall = var(45) >= 1
trigger1 = (GameTime%2) = 0
time = 1
add = 120,120,20
ignorehitpause = 1

[State -2, var]
type = VarAdd
triggerall = var(45) >= 1
trigger1 = (GameTime%1) = 0
v =  45
value = -1

[State -2, remove]
type = RemoveExplod
trigger1 = var(45) = 0
ID = 45
;---------------------------------------------------------------------------

; ------- System related sounds--------
[State -3, Landing Sound]
type = PlaySnd
triggerall = Time = 1
trigger1 = stateno = 52 
trigger2 = stateno = 106 
value = 1, 0

[State -3, Jump Sound]
type = PlaySnd
triggerall = Time = 1
trigger1 = stateno = 40
value = 1, 5
volume = 50

[State -3, Running]
type = PlaySnd
trigger1 = Anim = 100 && AnimElem = 4
value = 1,6
volume = 200
channel = 1

[State -3, Running Stop]
type = StopSnd
trigger1 = prevStateNo = 100
channel = 1

[State -3, Hop back]
type = PlaySnd
trigger1 = Anim = 105 && Time = 1
value = 1,7
volume = 50
channel = 1

[State -3, Running Stop]
type = StopSnd
trigger1 = prevStateNo = 195
channel = 1

; Var name    Type   Purpose
; --------    ----   -------
; sysvar(0)   Temp   Set by state 5081 (HITL_SLIDE) to 1 to prevent
;                    showing ground hit frame in state 5110 (HIT_LIEDOWN).
;                    Used by guarding states.
; sysvar(1)   Temp   Used by state 40 (Jump Start) amd 45 (Air Jump Start)
;                    to keep track of which way to jump.
;                    Used by state 5100 and 5110 to remember downward
;                    velocity of player just before hitting the ground.
;                    Used in state 5080 for storing the anim # to display.

; The following states have special handling within MUGEN, and should be
; overridden with caution:
; Jump Start (40): airjumping bookkeeping at time = 0
; All guard states (120-155): guard handling throughout state
; Hit_trip, shaking (5070): defence increases at time = 0
; Hit_bounce (5100): defence increases at time = 0, player becomes
;                    invincible if within 10 ticks of getting up
; Hit_liedown (5110): player changes to get-up state (5120) when ready
; Hit_getup (5120): player's defence is restored to normal at time = 0
; Hitfall_recover (5200): player's defence is restored at time = 0
; Hitfall_airrecover (5210): player's defence is restored at time = 0

;---------------------------------------------------------------------------
; Stand
[Statedef 0]
type = S
physics = S
sprpriority = 0
velset = 0,0

[State 0, 1]
type = ChangeAnim
triggerall = PalNo >= 7
trigger1 = Anim != 1 && Anim != 5 && Time = 0
trigger2 = Anim = 5 && AnimTime = 0 && Anim != 1 ;Turn anim over
value = 1

[State 0, 1]
type = ChangeAnim
triggerall = PalNo <= 6
trigger1 = Anim != 0 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0 ;Turn anim over
value = 0

[State 0, 2]
type = VelSet
trigger1 = Time = 0
y = 0

[State 0, 3] ;Stop moving if low velocity or 4 ticks pass
type = VelSet
trigger1 = abs(vel x) < 2
trigger2 = Time = 4
x = 0

[State 0, 4] ;Are you dead?
type = ChangeState
trigger1 = !alive
value = 5050

;---------------------------------------------------------------------------
; Stand to Crouch
[Statedef 10]
type    = C
physics = C
anim = 10

[State 10, 1]
type = VelSet
trigger1 = Time = 0
x = 0

[State 10, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 11

;---------------------------------------------------------------------------
; Crouching
[Statedef 11]
type    = C
physics = C
anim = 11
sprpriority = 0

[State 10, 1]
type = VelSet
trigger1 = Time = 0
x = 0

[State 11, 1] ;Change from turning animation
type = ChangeAnim
trigger1 = Anim = 6 && AnimTime = 0
value = 11

;---------------------------------------------------------------------------
; Crouch to Stand
[Statedef 12]
type    = S
physics = S
anim = 12

[State 10, 1]
type = VelSet
trigger1 = Time = 0
x = 0

[State 12, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------
; Walk
[Statedef 20]
type    = S
physics = S
sprpriority = 0

[State 20, 1]
type = VelSet
trigger1 = command = "holdfwd"
x = const(velocity.walk.fwd.x)

[State 20, 2]
type = VelSet
trigger1 = command = "holdback"
x = const(velocity.walk.back.x)

[State 20, 3]
type = ChangeAnim
triggerall = vel x > 0
trigger1 = Anim != 20 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 20

[State 20, 4]
type = ChangeAnim
triggerall = vel x < 0
trigger1 = Anim != 21 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 21

;---------------------------------------------------------------------------
; Jump Start
[Statedef 40]
type    = S
physics = S
anim = 40
ctrl = 0
sprpriority = 1
velset = 0,0

[State 40, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 40, 2]
type = VarSet
trigger1 = command = "holdfwd"
sysvar(1) = 1

[State 40, 3]
type = VarSet
trigger1 = command = "holdback"
sysvar(1) = -1

[State 40, 4]
type = VelSet
trigger1 = AnimTime = 0
x = ifelse(sysvar(1)=0, const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = const(velocity.jump.y)

[State 40, 5]
type = VelSet
trigger1 = AnimTime = 0
trigger1 = prevstateno = 100 ;RUN_FWD
trigger1 = sysvar(1) = 1
x = const(velocity.runjump.fwd.x)

[State 40, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; AirJump Start
[Statedef 45]
type    = A
physics = N
ctrl = 0
velset = 0,0

[State 45, 1]
type = ChangeAnim
trigger1 = SelfAnimExist(44)
value = 44

[State 45, 2]
type = ChangeAnim
trigger1 = !SelfAnimExist(44)
value = 41

[State 45, 3]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 45, 4]
type = VarSet
trigger1 = command = "holdfwd"
sysvar(1) = 1

[State 45, 5]
type = VarSet
trigger1 = command = "holdback"
sysvar(1) = -1

[State 45, 6]
type = VelSet
trigger1 = Time = 2
x = ifelse(sysvar(1)=0, const(velocity.airjump.neu.x), ifelse(sysvar(1)=1, const(velocity.airjump.fwd.x), const(velocity.airjump.back.x)))
y = const(velocity.airjump.y)

[State 45, 7]
type = ChangeState
trigger1 = Time = 2
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; Jump Up
[Statedef 50]
type    = A
physics = A

[State 50, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 50, 2]
type = ChangeAnim
trigger1 = Time = 0
value = ifelse((vel x)=0, 41, ifelse((vel x)>0, 42, 43))

[State 50, 3]
type = ChangeAnim
trigger1 = Vel y > -2
trigger1 = SelfAnimExist(anim + 3)
persistent = 0
value = Anim + 3

;---------------------------------------------------------------------------
; Jump Down (empty state for compatibility)
[Statedef 51]
type    = A
physics = A

[State 51, 1]
type = Null
trigger1 = 1

;---------------------------------------------------------------------------
; Jump Land
[Statedef 52]
type    = S
physics = S
ctrl = 0
anim = 47
velset = 0,0

[State 52, 1]
type = VelSet
trigger1 = Time = 0
y = 0

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 52, 3]
type = CtrlSet
trigger1 = Time = 3
value = 1

[State 52, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; RUN_FWD
[Statedef 100]
type    = S
physics = S
anim = 100
sprpriority = 1
ctrl = 0

[State 100, 1]
type = VelSet
trigger1 = Time > 2
x = const(velocity.run.fwd.x)

[State 100, Control]
type = Ctrlset
triggerall = var(28) != 1 && time >= 8
trigger1 = Command != "holdfwd"
trigger2 = command = "holdup"
trigger3 = command = "holdback"
value = 1

[State 0, ]
type = VarSet
trigger1 = Command = "holdfwd" && Command != "holddown"
v =  28
value = 0

[State 0, ]
type = VarSet
trigger1 = Command = "holdfwd" && Command = "holddown"
v =  28
value = 1

[State 100, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 100, 3] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 100, 4]
type = ChangeState
trigger1 = command != "holdfwd" && Time > 8
value = 101

;cancels--------------------
;standing
[State 100, 4]
type = ChangeState
trigger1 = Var(28) != 1 && command = "CD"
value = 520

[State 100, 4]
type = ChangeState
trigger1 = Var(28) != 1 && command = "x" && p2bodydist x>= 16
value = 200

[State 100, 4]
type = ChangeState
trigger1 = Var(28) != 1 && command = "x" && p2bodydist x<= 15
value = 201

[State 100, 4]
type = ChangeState
trigger1 = Var(28) != 1 && command = "y" && p2bodydist x<= 15
value = 210

[State 100, 4]
type = ChangeState
trigger1 = Var(28) != 1 && command = "y" && p2bodydist x>= 16
value = 211

[State 100, 4]
type = ChangeState
trigger1 = Var(28) != 1 && command = "a"
value = 222

[State 100, 4]
type = ChangeState
trigger1 = Var(28) != 1 && command = "b" && p2bodydist x<= 15
value = 231

[State 100, 4]
type = ChangeState
trigger1 = Var(28) != 1 && command = "b" && p2bodydist x>= 16
value = 230

;crouching
[State 100, 4]
type = ChangeState
trigger1 = Var(28) = 1 && command = "x"
value = 301

[State 100, 4]
type = ChangeState
trigger1 = Var(28) = 1 && command = "y"
value = 310

[State 100, 4]
type = ChangeState
trigger1 = Var(28) = 1 && command = "a"
value = 321

[State 100, 4]
type = ChangeState
trigger1 = Var(28) = 1 && command = "b"
value = 330

;To be fixed--------------------

; RUN_FWD end
[Statedef 101]
type    = S
physics = S
anim = 101
sprpriority = 1
velset = 0,0

[State 100, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 100, 3] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 100, 4]
type = ChangeState
trigger1 = command = "holdfwd"
value = 100

[State 100, 4]
type = ChangeState
trigger1 = command != "holdfwd" && Time = 6
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; RUN_BACK
[Statedef 105]
type    = A
physics = A
ctrl = 0
anim = 105
sprpriority = 1

[State 105, 1]
type = VelSet
trigger1 = Time = 0
x = const(velocity.run.back.x)
y = const(velocity.run.back.y)

[State 105, 3]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 106

;---------------------------------------------------------------------------
; RUN_BACK2 (land)
[Statedef 106]
type    = S
physics = S
ctrl = 0
anim = 47

[State 106, 1]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 106, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 106, 3]
type = MakeDust
trigger1 = Time = 2
pos = -5,-2
spacing = 1

[State 106, 4]
type = ChangeState
trigger1 = Time = 7
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; RUN_UP
[Statedef 110]
type    = S
physics = N

[State 110, 0]
type = CtrlSet
trigger1 = Time = 0
value = 0

[State 110, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 110

[State 110, 2]
type = HitBy
trigger1 = Time = 0
value = SCA, NT, ST, HT
time = 30

[State 110, 3]
type = VelSet
trigger1 = Time = 0
x = 0
z = -7

[State 110, 4]
type = VelMul
trigger1 = 1
z = 0.8

[State 110, 5]
type = VelSet
trigger1 = AnimTime = -8
z = 0

[State 110, 7]
type = CtrlSet
trigger1 = AnimTime = 0
value = 1

[State 110, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------
; RUN_DOWN
[Statedef 115]
type    = S
physics = N

[State 115, 0]
type = CtrlSet
trigger1 = Time = 0
value = 0

[State 115, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 110

[State 115, 2]
type = HitBy
trigger1 = Time = 0
value = SCA, NT, ST, HT
time = 30

[State 115, 3]
type = VelSet
trigger1 = Time = 0
x = 0
z = 7

[State 115, 4]
type = VelMul
trigger1 = 1
z = 0.8

[State 115, 5]
type = VelSet
trigger1 = AnimTime = -8
z = 0

[State 115, 7]
type = CtrlSet
trigger1 = AnimTime = 0
value = 1

[State 115, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------
; GUARD (start)
[Statedef 120]
type = U    ;Leave state type unchanged
physics = U ;Leave physics unchanged

[State 120, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 120 + (statetype = C) + (statetype = A)*2

[State 120, 2]
type = StateTypeSet
trigger1 = Time = 0 && statetype = S
physics = S

[State 120, 3]
type = StateTypeSet
trigger1 = Time = 0 && statetype = C
physics = C

[State 120, 4]
type = StateTypeSet
trigger1 = Time = 0 && statetype = A
physics = A

[State 120, Hi to Lo]
type = StateTypeSet
trigger1 = statetype = S && command = "holddown"
statetype = C
physics = C

[State 120, Lo to Hi]
type = StateTypeSet
trigger1 = statetype = C && command != "holddown"
statetype = S
physics = S

[State 120, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 130 + (statetype = C) + (statetype = A)*2

[State 120, Stop Guarding]
type = ChangeState
trigger1 = command != "holdback"
trigger2 = !inguarddist
value = 140

;---------------------------------------------------------------------------
; STAND GUARD (guarding)
[Statedef 130]
type    = S
physics = S

[State 130, 1]
type = ChangeAnim
trigger1 = Anim != 130
value = 130

[State 130, 2];Guard Counter attempt
type = ChangeState
trigger1 = power >= 200
trigger1 = command = "z"
value = 135

[State 130, Hi to Lo]
type = ChangeState
trigger1 = command = "holddown"
value = 131

[State 130, Stop Guarding]
type = ChangeState
trigger1 = command != "holdback"
trigger2 = !inguarddist
value = 140

;---------------------------------------------------------------------------
; CROUCH GUARD (guarding)
[Statedef 131]
type    = C
physics = C

[State 131, 1]
type = ChangeAnim
trigger1 = Anim != 131
value = 131

[State 131, Lo to Hi]
type = ChangeState
trigger1 = command != "holddown"
value = 130

[State 131, Stop Guarding]
type = ChangeState
trigger1 = command != "holdback"
trigger2 = !inguarddist
value = 140

;---------------------------------------------------------------------------
; AIR GUARD (guarding)
[Statedef 132]
type    = A
physics = N

[State 132, 1]
type = ChangeAnim
trigger1 = Anim != 132
value = 132

[State 132, 2]
type = VelAdd
trigger1 = 1
y = Const(movement.yaccel)

[State 132, 3]
type = VarSet
trigger1 = 1
sysvar(0) = (pos y >= 0) && (vel y > 0)

[State 132, 4]
type = VelSet
trigger1 = sysvar(0)
y = 0

[State 132, 5]
type = PosSet
trigger1 = sysvar(0)
y = 0

[State 132, 6]
type = ChangeState
trigger1 = sysvar(0)
trigger1 = command = "holdback"
trigger1 = inguarddist
value = 130

[State 132, 7]
type = ChangeState
trigger1 = sysvar(0)
value = 52

[State 132, Stop Guarding]
type = ChangeState
trigger1 = command != "holdback"
trigger2 = !inguarddist
value = 140

;---------------------------------------------------------------------------
; Guard Cancel A
[Statedef 135]
type = S
movetype = A
physics = N
anim = 501
ctrl = 0
velset = 0,0
poweradd = -1000

[State 501, Blah]
type = Width
trigger1 = Vel X
edge = 10,0

[State 0, ]
type = PlayerPush
trigger1 = 1
value = 0

[State 200, snd]
type = PlaySnd
trigger1 = Time = 1
value = 0,30
volume = 255

[State 0, ]
type = VelSet
trigger1 = AnimElem = 2
x = 4

[State 0, ]
type = PalFX
trigger1 = Time = 1
time = 1
add = 256,256,256
color = 256
ignorehitpause = 1
persistent = 1

[State 135, 1]
type = NotHitby
trigger1 = AnimElem = 1
value = SCA
time = 30
persistent = 1

[State 0, ]
type = Pause
trigger1 = Time = 1
time = 8
movetime = 8

[State 135, 2]
type = CtrlSet
trigger1 = Time = 20
value = 1
ignorehitpause = 0
persistent = 1

[State 500, afterimage]
type = Afterimage
trigger1 = Time = 0
time = 12
PalBright = 0, 0, 0
PalContrast =  180,180,180
PalAdd = 0, 0, 0
PalMul = 1,1,1
Length = 7
FrameGap = 3
Trans = add1

[State 200,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; Guard Cancel B
[Statedef 136]
type = S
movetype = A
physics = N
anim = 500
ctrl = 0
velset = 0,0
poweradd = -1000

[State 0, ]
type = PlayerPush
trigger1 = 1
value = 0

[State 200, snd]
type = PlaySnd
trigger1 = Time = 1
value = 0,30
volume = 255

[State 0, ]
type = VelSet
trigger1 = AnimElem = 2
x = -4

[State 0, ]
type = PalFX
trigger1 = Time = 1
time = 1
add = 256,256,256
color = 256
ignorehitpause = 1
persistent = 1

[State 135, 1]
type = NotHitby
trigger1 = AnimElem = 1
value = SCA
time = 30
persistent = 1

[State 0, ]
type = Pause
trigger1 = Time = 1
time = 8
movetime = 8

[State 135, 2]
type = CtrlSet
trigger1 = Time = 20
value = 1
ignorehitpause = 0
persistent = 1

[State 500, afterimage]
type = Afterimage
trigger1 = Time = 0
time = 12
PalBright = 0, 0, 0
PalContrast =  180,180,180
PalAdd = 0, 0, 0
PalMul = 1,1,1
Length = 7
FrameGap = 3
Trans = add1

[State 200,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Guard Cancel C
[Statedef 137]
type = S
movetype = A
physics = S
anim = 520
ctrl = 0
velset = 0,0
poweradd = -1000

[State 0, ]
type = PalFX
trigger1 = Time = 1
time = 1
add = 256,256,256
color = 256
ignorehitpause = 1
persistent = 1

[State 0, ]
type = Pause
trigger1 = Time = 1
time = 8
movetime = 8

[State 0, ]
type = PosAdd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 5
x = 10

[State 0, ]
type = PosAdd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 6
x = 15

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,3
volume = 200

[State 200, snd]
type = PlaySnd
trigger1 = AnimElem = 3
trigger1 = Random <= 650
value = 0,3
volume = 255

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
damage = 70,0
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 10
sparkno = 2
sparkxy = -10, -65
hitsound = s2, 3
guardsound = 6, 0
ground.type = High
ground.slidetime = 14
ground.hittime  = 14
ground.velocity = -3, -6
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
getpower = 60,0
fall = 1

[State 200,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; GUARD (end)
[Statedef 140]
type = U    ;Leave state type unchanged
physics = U ;Leave physics unchanged
ctrl = 1

[State 140, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 140 + (statetype = C) + (statetype = A)*2

[State 140, 2]
type = StateTypeSet
trigger1 = Time = 0 && statetype = S
physics = S

[State 140, 3]
type = StateTypeSet
trigger1 = Time = 0 && statetype = C
physics = C

[State 140, 4]
type = StateTypeSet
trigger1 = Time = 0 && statetype = A
physics = A

[State 140, Hi to Lo]
type = StateTypeSet
trigger1 = statetype = S && command = "holddown"
statetype = C
physics = C

[State 140, Lo to Hi]
type = StateTypeSet
trigger1 = statetype = C && command != "holddown"
statetype = S
physics = S

;[State 140, 5] ;Implemented within engine
;type = ChangeState
;trigger1 = AnimTime = 0
;value = (statetype = C)*11 + (statetype = A)*51

;---------------------------------------------------------------------------
; SGUARDHIT (shaking)
[Statedef 150]
type    = S
movetype= H
physics = N
velset = 0,0

[State 130, 2];Guard Cancel C
type = ChangeState
trigger1 = power >= 1000
trigger1 = command = "CD"
value = 137

[State 130, 2];Guard Cancel A
type = ChangeState
trigger1 = power >= 1000
trigger1 = command = "evade1"
value = 135

[State 130, 2];Guard Cancel B
type = ChangeState
trigger1 = power >= 1000
trigger1 = command = "evade2"
value = 136


[State 150, 1]
type = ChangeAnim
trigger1 = 1
value = 150

[State 150, 2]
type = ChangeState
trigger1 = HitShakeOver
value = 151 + 2*(command = "holddown")

[State 150, Hi to Lo]
type = StateTypeSet
trigger1 = statetype = S && command = "holddown"
statetype = C
physics = C

[State 150, Lo to Hi]
type = StateTypeSet
trigger1 = statetype = C && command != "holddown"
statetype = S
physics = S

[State 150, 3]
type = ForceFeedback
trigger1 = time = 0
waveform = square
time = 3

;---------------------------------------------------------------------------
; SGUARDHIT2 (knocked back)
[Statedef 151]
type    = S
movetype= H
physics = S
anim = 150

[State 151, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 151, 2]
type = VelSet
trigger1 = Time = GetHitVar(slidetime)
trigger2 = HitOver
x = 0

[State 151, 3]
type = CtrlSet
trigger1 = Time = GetHitVar(ctrltime)
value = 1

[State 151, Hi to Lo]
type = StateTypeSet
trigger1 = statetype = S && command = "holddown"
statetype = C
physics = C

[State 151, Lo to Hi]
type = StateTypeSet
trigger1 = statetype = C && command != "holddown"
statetype = S
physics = S

[State 151, 4]
type = ChangeState
trigger1 = HitOver
value = 130
ctrl = 1

;---------------------------------------------------------------------------
; CGUARDHIT (shaking)
[Statedef 152]
type    = C
movetype= H
physics = N
velset = 0,0

[State 152, 1]
type = ChangeAnim
trigger1 = 1
value = 151

[State 152, 3]
type = ChangeState
trigger1 = HitShakeOver
value = 151 + 2*(command = "holddown")

[State 152, Hi to Lo]
type = StateTypeSet
trigger1 = statetype = S && command = "holddown"
statetype = C
physics = C

[State 152, Lo to Hi]
type = StateTypeSet
trigger1 = statetype = C && command != "holddown"
statetype = S
physics = S

[State 152, 4]
type = ForceFeedback
trigger1 = time = 0
waveform = square
time = 4

;---------------------------------------------------------------------------
; CGUARDHIT2 (knocked back)
[Statedef 153]
type    = C
movetype= H
physics = C
anim = 151

[State 153, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 153, 2]
type = VelSet
trigger1 = Time = GetHitVar(slidetime)
trigger2 = HitOver
x = 0

[State 153, 3]
type = CtrlSet
trigger1 = Time = GetHitVar(ctrltime)
value = 1

[State 153, Hi to Lo]
type = StateTypeSet
trigger1 = statetype = S && command = "holddown"
statetype = C
physics = C

[State 153, Lo to Hi]
type = StateTypeSet
trigger1 = statetype = C && command != "holddown"
statetype = S
physics = S

[State 153, 4]
type = ChangeState
trigger1 = HitOver
value = 131
ctrl = 1

;---------------------------------------------------------------------------
; AGUARDHIT (shaking)
[Statedef 154]
type    = A
movetype= H
physics = N
velset = 0,0

[State 154, 1]
type = ChangeAnim
trigger1 = 1
value = 152

[State 154, 2]
type = ChangeState
trigger1 = HitShakeOver
value = 155 ;AGUARDHIT2

[State 154, 3]
type = ForceFeedback
trigger1 = time = 0
waveform = square
time = 4

;---------------------------------------------------------------------------
; AGUARDHIT2 (knocked away)
[Statedef 155]
type    = A
movetype= H
physics = N
anim = 152

[State 155, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 155, 2]
type = VelAdd
trigger1 = 1
y = Const(movement.yaccel)

[State 155, 3]
type = CtrlSet
trigger1 = Time = GetHitVar(ctrltime)
value = 1

[State 155, 4]
type = VarSet
trigger1 = 1
sysvar(0) = (pos y >= 0) && (vel y > 0)

[State 155, 5]
type = VelSet
trigger1 = sysvar(0)
y = 0

[State 155, 6]
type = PosSet
trigger1 = sysvar(0)
y = 0

[State 155, 6]
type = ChangeState
trigger1 = sysvar(0)
trigger1 = command = "holdback"
trigger1 = inguarddist
value = 130

[State 155, 7]
type = ChangeState
trigger1 = sysvar(0)
value = 52

;---------------------------------------------------------------------------
; LOSE (Time over)
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; DRAWGAME (Time over)
[Statedef 175]
type = S
ctrl = 0
velset = 0,0

[State 175, 1] ; If no anim, use go to lose state.
type = ChangeState
trigger1 = Time = 0
trigger1 = !SelfAnimExist(175)
value = 170

[State 175, 2]
type = ChangeAnim
trigger1 = Time = 0
value = 175

[State 175, 3]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; PREINTRO
[Statedef 190]
type = S
ctrl = 0
velset = 0,0

[State 190, 1]
type = ChangeAnim
trigger1 = SelfAnimExist(190)
value = 190

[State 190, 2] ;Go straight to intro.
type = ChangeState
trigger1 = Time = 0
value = 191

;---------------------------------------------------------------------------
; INTRO (override this state to give character an intro)
[Statedef 191]
type = S
ctrl = 0

[State 191, 1]
type = ChangeState
trigger1 = Time = 0
value = 0

;---------------------------------------------------------------------------
; HITG_SHAKE
[Statedef 5000]
type    = S
movetype= H
physics = N
velset = 0,0

;----------------------------------------
[State 5000, DIZZY CODE]
type = Varset
trigger1 = prevstateno = 5250
trigger1 = time = 0
var(13) = 0
persistent = 0
ignorehitpause = 1

[State 5000, DIZZY CODE]
type = VarAdd
trigger1 = prevstateno != 5250
trigger1 = time = 0
trigger1 = var(13) <= 999
trigger1 = gethitvar(animtype) = 0
var(13) = 50
persistent = 0
ignorehitpause = 1

[State 5000, DIZZY CODE]
type = VarAdd
trigger1 = prevstateno != 5250
trigger1 = time = 0
trigger1 = var(13) <= 999
trigger1 = gethitvar(animtype) = 1
var(13) = 100
persistent = 0
ignorehitpause = 1

[State 5000, DIZZY CODE]
type = VarAdd
trigger1 = prevstateno != 5250
trigger1 = time = 0
trigger1 = var(13) <= 999
trigger1 = gethitvar(animtype) = 2
var(13) = 125
persistent = 0
ignorehitpause = 1

[State 5000, DIZZY CODE]
type = VarAdd
trigger1 = prevstateno != 5250
trigger1 = time = 0
trigger1 = var(13) <= 999
trigger1 = gethitvar(animtype) >= 3
var(13) = 75
persistent = 0
ignorehitpause = 1

[State 5000, 7]
type = ChangeState
trigger1 = prevstateno != 5250
trigger1 = var(13) >= 1000
trigger1 = HitShakeOver
value = 5249
ctrl = 0
;-----------------------------------------

[State 5000, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = ifelse((GetHitVar(groundtype) = 1),5000,5010) + GetHitVar(animtype)

[State 5000, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 5000, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type

[State 5000, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5000, 5] ;State type gets set to aerial if getting hit up
type = StateTypeSet
trigger1 = Time = 0
trigger1 = GetHitVar(yvel) != 0 || GetHitVar(fall)
trigger2 = Pos Y != 0
statetype = a

[State 5000, 6]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) = 0 && !GetHitVar(fall)
value = 5001 ;HITG_SLIDE

[State 5000, 7]
type = ChangeState
trigger1 = HitShakeOver
value = 5030

[State 5000, FFB Light]
type = ForceFeedback
trigger1 = anim = 5000
trigger2 = anim = 5010
persistent = 0
time = 6
waveform = square

[State 5000, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5001
trigger2 = anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 5000, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; HITG_SLIDE
[Statedef 5001]
type    = S
movetype= H
physics = S

[State 5001, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 5001, 2]
type = ChangeAnim
trigger1 = AnimTime = 0
value = 5005 + GetHitVar(animtype) + (GetHitVar(groundtype)=2)*10

[State 5001, 3] ;Stop sliding back
type = VelMul
trigger1 = Time >= GetHitVar(slidetime)
x = .6

[State 5001, 4]
type = VelSet
trigger1 = HitOver
x = 0

[State 5001, 5]
type = DefenceMulSet
trigger1 = HitOver
value = 1

[State 5001, 6]
type = ChangeState
trigger1 = HitOver
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; HITC_SHAKE
[Statedef 5010]
type    = C
movetype= H
physics = N
velset = 0,0

;----------------------------------------
[State 5010, DIZZY CODE]
type = Varset
trigger1 = prevstateno = 5250
trigger1 = time = 0
var(13) = 0
persistent = 0
ignorehitpause = 1

[State 5010, DIZZY CODE]
type = VarAdd
trigger1 = time = 0
trigger1 = prevstateno != 5250
trigger1 = var(13) <= 999
trigger1 = gethitvar(animtype) = 0
var(13) = 50
persistent = 0
ignorehitpause = 1

[State 5010, DIZZY CODE]
type = VarAdd
trigger1 = time = 0
trigger1 = prevstateno != 5250
trigger1 = var(13) <= 999
trigger1 = gethitvar(animtype) = 1
var(13) = 100
persistent = 0
ignorehitpause = 1

[State 5010, DIZZY CODE]
type = VarAdd
trigger1 = time = 0
trigger1 = prevstateno != 5250
trigger1 = var(13) <= 999
trigger1 = gethitvar(animtype) = 2
var(13) = 150
persistent = 0
ignorehitpause = 1

[State 5010, DIZZY CODE]
type = VarAdd
trigger1 = time = 0
trigger1 = prevstateno != 5250
trigger1 = var(13) <= 999
trigger1 = gethitvar(animtype) >= 3
var(13) = 200
persistent = 0
ignorehitpause = 1

[State 5010, 7]
type = ChangeState
trigger1 = prevstateno != 5250
trigger1 = var(13) >= 1000
trigger1 = HitShakeOver
value = 5249
ctrl = 0
;-----------------------------------------

[State 5010, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = 5020 + GetHitVar(animtype)

[State 5010, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 5010, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type

[State 5010, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5010, 5] ;State type gets set to aerial if getting hit up
type = StateTypeSet
triggerall = Time = 0
trigger1 = GetHitVar(yvel) != 0 || GetHitVar(fall)
trigger2 = Pos Y != 0
statetype = a

[State 5010, 6]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) = 0 && !GetHitVar(fall)
value = 5011 ;HITC_SLIDE

[State 5010, 7]
type = ChangeState
trigger1 = HitShakeOver
value = 5030

[State 5010, FFB Light]
type = ForceFeedback
trigger1 = anim = 5020
persistent = 0
time = 6
waveform = square

[State 5010, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5021
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 5010, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5022
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; HITC_SLIDE
[Statedef 5011]
type    = C
movetype= H
physics = C

[State 5011, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 5011, 2]
type = ChangeAnim
trigger1 = AnimTime = 0
value = 5025 + GetHitVar(animtype)

[State 5011, 3] ;Stop sliding back
type = VelMul
trigger1 = Time >= GetHitVar(slidetime)
x = .6

[State 5011, 4]
type = VelSet
trigger1 = HitOver
x = 0

[State 5011, 5]
type = DefenceMulSet
trigger1 = HitOver
value = 1

[State 5011, 6]
type = ChangeState
trigger1 = HitOver
value = 11
ctrl = 1


;---------------------------------------------------------------------------
; HITA_SHAKE
[Statedef 5020]
type    = A
movetype= H
physics = N
velset = 0,0

;----------------------------------------
[State 5020, DIZZY CODE]
type = Varset
trigger1 = prevstateno = 5250
trigger1 = time = 0
var(13) = 0
persistent = 0
ignorehitpause = 1

[State 5020, DIZZY CODE]
type = VarAdd
trigger1 = time = 0
trigger1 = prevstateno != 5250
trigger1 = var(13) <= 999
trigger1 = gethitvar(animtype) = 0
var(13) = 50
persistent = 0
ignorehitpause = 1

[State 5020, DIZZY CODE]
type = VarAdd
trigger1 = time = 0
trigger1 = prevstateno != 5250
trigger1 = var(13) <= 999
trigger1 = gethitvar(animtype) = 1
var(13) = 100
persistent = 0
ignorehitpause = 1

[State 5020, DIZZY CODE]
type = VarAdd
trigger1 = time = 0
trigger1 = prevstateno != 5250
trigger1 = var(13) <= 999
trigger1 = gethitvar(animtype) = 2
var(13) = 150
persistent = 0
ignorehitpause = 1

[State 5020, DIZZY CODE]
type = VarAdd
trigger1 = time = 0
trigger1 = prevstateno != 5250
trigger1 = var(13) <= 999
trigger1 = gethitvar(animtype) >= 3
var(13) = 75
persistent = 0
ignorehitpause = 1

[State 5020, CS]
type = ChangeState
trigger1 = prevstateno != 5250
trigger1 = var(13) >= 1000
trigger1 = HitShakeOver
value = 5249
ctrl = 0
;-----------------------------------------

[State 5020, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = ifelse((GetHitVar(airtype) = 1),5000,5010) + GetHitVar(animtype)

[State 5020, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 5020, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type

[State 5020, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5020, 5]
type = ChangeState
trigger1 = HitShakeOver
value = 5030

[State 5020, FFB Light]
type = ForceFeedback
trigger1 = anim = 5000
trigger2 = anim = 5010
persistent = 0
time = 6
waveform = square

[State 5020, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5001
trigger2 = anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 5020, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
trigger4 = anim = [5051,5059]
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; HITA_UP (initial going up)
[Statedef 5030]
type    = A
movetype= H
physics = N
ctrl = 0

[State 5030, 1]
type = VelAdd;Gravity
trigger1 = 1
y = GetHitVar(yaccel)

[State 5030, 2]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 5030, 3]
type = ChangeState
triggerall = !HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0    ;Hit ground
trigger2 = Pos Y >= 10  ;.
value = 5040 ;HITA_RECOV

[State 5030, 4]
type = ChangeState
triggerall = HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0    ;Hit ground
trigger2 = Pos Y >= 10  ;.
value = 5050 ;HITA_FALL

[State 5030, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 5035 ;HITA_UP (transition)

;---------------------------------------------------------------------------
; HITA_UP_T (transition)
[Statedef 5035]
type    = A
movetype= H
physics = N

[State 5035, 1]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5035)
trigger1 = Anim != [5051,5059] ;Not if in hit up anim
trigger1 = Anim != 5090 ;Not if hit off ground anim
value = 5035

[State 5035, 2]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5035, 3]
type = ChangeState
triggerall = !HitFall
trigger1 = HitOver  ;Hit is over
trigger2 = AnimTime = 0 ;Animation over
trigger3 = Vel Y > 0    ;Hit ground
trigger3 = Pos Y >= 10  ;.
trigger4 = Time = 0     ;No transition anim
trigger4 = Anim != 5035 ;.
value = 5040 ;HITA_RECOV

[State 5035, 4]
type = ChangeState
triggerall = HitFall
trigger1 = HitOver  ;Hit is over
trigger2 = AnimTime = 0 ;Anim is over
trigger3 = Vel Y > 0    ;Hit ground
trigger3 = Pos Y >= 10  ;.
trigger4 = Time = 0     ;No transition anim
trigger4 = Anim != 5035 ;.
value = 5050 ;HITA_FALL

;---------------------------------------------------------------------------
; HITA_RECOV (recovering in air, not falling)
[Statedef 5040]
type    = A
movetype= H
physics = N

[State 5040, 1]
type = ChangeState
trigger1 = !Alive
value = 5050

[State 5040, 2]
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim != 5040
trigger2 = Time = 0
trigger2 = Anim != 5035
value = 5040

[State 5040, 3]
type = CtrlSet
trigger1 = HitOver
value = 1

[State 5040, 4]
type = StateTypeSet
trigger1 = HitOver
movetype = I

[State 5040, 5]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5040, 6]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 52 ;JUMPLAND

;---------------------------------------------------------------------------
; HITA_FALL (knocked up, falling)
[Statedef 5050]
type    = A
movetype= H
physics = N

[State 5050, 1] ;Change anim when done with transition
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 5035
trigger2 = Time = 0     ;If no transition anim
trigger2 = Anim != 5035
trigger2 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2 = Anim != 5090 ;Not if hit off ground anim
value = 5050

[State 5050, 2] ;Coming down anim
type = ChangeAnim
trigger1 = anim = [5050,5059]
trigger1 = Vel Y >= ifelse(anim = 5050, 1, -2)
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0

[State 5050, 3] ;Gravity
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5050, 4] ;Recover near ground
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 5050, 5]; Recover in mid air
type = ChangeState
triggerall = Vel Y > -1
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;HITFALL_AIRRECOVER

[State 5050, 6]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, 25)
value = 5100 ;HIT_BOUNCE

;---------------------------------------------------------------------------
; HIT_TRIP (shaking)
[Statedef 5070]
type    = A
movetype= H
physics = N
velset = 0,0

[State 5070, 1]
type = ChangeAnim
trigger1 = 1
value = 5070

[State 5070, 2]
type = ChangeState
trigger1 = HitShakeOver
value = 5071

[State 5070, 3]
type = ForceFeedback
trigger1 = time = 0
time = 12
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; HIT_TRIP2 (fall through air)
[Statedef 5071]
type    = A
movetype= H
physics = N

[State 5071, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 5071, 2] ;Acceleration
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5071, 3] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 15
type = ChangeState
value = 5110

;---------------------------------------------------------------------------
; HITL_SHAKE
[Statedef 5080]
type    = L
movetype= H
physics = N
velset = 0,0

[State 5080, 1] ;Set default anim
type = VarSet
trigger1 = time = 0
sysvar(2) = ifelse (GetHitVar(yvel) = 0, 5080, 5090)

[State 5080, 2]
type = VarAdd
trigger1 = time = 0
trigger1 = (anim = [5081,5089]) || (anim = [5111,5119])
trigger1 = SelfAnimExist(sysvar(2) + (anim % 10))
sysvar(2) = anim % 10

[State 5080, 3] ;If 5090 doesn't exist, default to 5030
type = VarSet
trigger1 = time = 0
trigger1 = sysvar(2) = 5090
trigger1 = !SelfAnimExist(5090)
sysvar(2) = 5030

[State 5080, 3] ;Freeze
type = ChangeAnim
trigger1 = 1
value = sysvar(2)

[State 5080, 4]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) = 0
value = 5081 ;HITL_SLIDE

[State 5080, 5]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) != 0
value = 5030 ;HITA_UP

;---------------------------------------------------------------------------
; HITL_SLIDE
[Statedef 5081]
type    = L
movetype= H
physics = C

[State 5081, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 5081, 2]
type = VelSet
trigger1 = HitOver
x = 0

[State 5081, 3] ;Don't show hit ground frame
type = VarSet
trigger1 = Time = 0
sysvar(0) = 1

[State 5081, 4]
type = ChangeState
trigger1 = HitOver
value = 5110 ;HIT_LIEDOWN

;---------------------------------------------------------------------------
; HIT_BOUNCE (hit ground)
[Statedef 5100]
type    = L
movetype= H
physics = N

[State 5100, 1]
type = VelSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
trigger1 = vel x > 1
x = 1

[State 5100, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5100, Var] ;Save fall velocity
type = VarSet
trigger1 = Time = 0
sysvar(1) = floor(vel y)

[State 5100, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = (anim != [5051,5059]) && (anim != [5061,5069])
trigger2 = !SelfAnimExist(5100 + (anim % 10))
value = 5100

[State 5100, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
trigger1 = time = 0
trigger1 = (anim = [5051,5059]) || (anim = [5061,5069])
trigger1 = SelfAnimExist(5100 + (anim % 10))
value = 5100 + (anim % 10)

[State 5100, 4]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5100, 5]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5100, 6] ;Reduce speed
type = VelMul
trigger1 = Time = 0
x = 0.75

[State 5100, 7]
type = ChangeState
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
value = 5110 ;HIT_LIEDOWN

[State 5100, 8]
type = GameMakeAnim
trigger1 = Time = 1
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 14

[State 5100, 9]
type = HitFallDamage
trigger1 = Time = 3

[State 5100, 10]
type = PlaySnd
trigger1 = Time = 1
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 5100, 11]
type = PosFreeze
trigger1 = 1

[State 5100, 12]
type = ChangeState
trigger1 = AnimTime = 0
value = 5101

[State 5100, 13]
type = ForceFeedback
trigger1 = Time = 0
waveform = sinesquare
ampl = 128,-3,-.2,.005
time = 20

;---------------------------------------------------------------------------
; HIT_BOUNCE (bounce into air)
[Statedef 5101]
type    = L
movetype= H
physics = N

[State 5101, 1] ;Coming hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim != [5101,5109]
trigger2 = !SelfAnimExist(5160 + (anim % 10))
value = 5160

[State 5101, 2] ;Coming hit ground anim (for hit up)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim = [5101,5109]
trigger1 = SelfAnimExist(5160 + (anim % 10))
value = 5160 + (anim % 10)

[State 5101, 3]
type = HitFallVel
trigger1 = Time = 0

[State 5101, 4]
type = PosSet
trigger1 = Time = 0
y = 20

[State 5101, 5] ;Acceleration
type = VelAdd
trigger1 = 1
y = .4

[State 5101, 6] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 12
type = ChangeState
value = 5110

;---------------------------------------------------------------------------
; HIT_LIEDOWN
[Statedef 5110]
type    = L
movetype= H
physics = N

[State 5110, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5110, 1] ;For hit up/up-diag type (from state 5081)
type = ChangeAnim
persistent = 0
trigger1 = SelfAnimExist(5110 + (anim % 10))
trigger1 = anim = [5081,5089]
value = 5110 + (anim % 10)

[State 5110, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [5110,5119] ;Not already changed anim
trigger1 = anim != [5161,5169]
trigger2 = !SelfAnimExist(5170 + (anim % 10))
value = 5170

[State 5110, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [5110,5119] ;Not already changed anim
trigger1 = anim = [5161,5169]
trigger1 = SelfAnimExist(5170 + (anim % 10))
value = 5170 + (anim % 10)

[State 5110, 4]
type = HitFallDamage
trigger1 = Time = 0

[State 5110, 5]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5110, Var] ;Get fall velocity
type = VarSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) != 0
sysvar(1) = floor(vel y)

[State 5110, 6]
type = PlaySnd
trigger1 = Time = 0
trigger1 = !SysVar(0)
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 5110, 7]
type = GameMakeAnim
trigger1 = Time = 0
trigger1 = !SysVar(0)
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 14

[State 5110, 8]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5110, 9] ;For hit up type
type = ChangeAnim
persistent = 0
triggerall = anim = [5171,5179]
triggerall = SelfAnimExist(5110 + (anim % 10))
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground anim
value = 5110 + (anim % 10)

[State 5110, 10] ;For normal
type = ChangeAnim
persistent = 0
triggerall = Anim != [5111,5119]
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
value = 5110

[State 5110, 11] ;If just died
type = ChangeState
triggerall = !alive
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
trigger3 = Anim = [5110,5119]
value = 5150

[State 5110, 12]
type = VarSet
trigger1 = SysVar(0)
trigger1 = Time = 0
sysvar(0) = 0

[State 5110, 13] ;Friction
type = VelMul
trigger1 = 1
x = 0.85

[State 5110, 14]
type = ForceFeedback
trigger1 = alive
trigger1 = Time = 0
time = 8
ampl = 240
waveform = sine

[State 5110, 15]
type = ForceFeedback
trigger1 = !alive
trigger1 = Time = 0
ampl = 200, 7, -.467
time = 30
waveform = sine

;---------------------------------------------------------------------------
; HIT_GETUP
[Statedef 5120]
type    = L
movetype= I
physics = N

[State 5120, 1a] ;Get up anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim != [5111,5119]
trigger2 = !SelfAnimExist(5120 + (anim % 10))
value = 5120

[State 5120, 1b] ;Get up anim (for hit up/diag-up)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim = [5111,5119]
trigger1 = SelfAnimExist(5120 + (anim % 10))
value = 5120 + (anim % 10)

[State 5120, 2]
type = VelSet
trigger1 = Time = 0
x = 0

[State 5120, 3]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 5120, 4]
type = HitFallSet
trigger1 = AnimTime = 0
value = 1

[State 5120, 5] ;Can't be thrown right after getting up
type = NotHitBy
trigger1 = AnimTime = 0
value = , NT,ST,HT
time = 12

[State 5120, 6] ;Can't be hit right after getting up (short time)
type = NotHitBy
trigger1 = AnimTime = 0
value2 = SCA
time = 3

[State 5120, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; HIT_LIEDEAD
[Statedef 5150]
type    = L
movetype= H
physics = N
sprpriority = -3

[State 5150, 1] ;Normal anim
type = ChangeAnim
triggerall = Time = 0
triggerall = SelfAnimExist(5140)
trigger1 = (anim != [5111,5119]) && (anim != [5171,5179])
trigger2 = !SelfAnimExist(5140 + (anim % 10))
value = 5140

[State 5150, 3] ;Hit up type anim
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (anim = [5111,5119]) || (anim = [5171,5179])
trigger1 = SelfAnimExist(5140 + (anim % 10))
value = 5140 + (anim % 10)

[State 5150, 4] ;Match over anim
type = ChangeAnim
persistent = 0
;trigger1 = Time = 0
trigger1 = MatchOver = 1
trigger1 = Anim = [5140,5149]
trigger1 = SelfAnimExist(anim+10)
value = anim+10

[State 5150, 5] ;Switch to 5110 if liedead anim does not exist
type = ChangeAnim
trigger1 = Time = 0
trigger1 = Anim != [5140,5159]
trigger1 = Anim != [5110,5119]
value = 5110

[State 5150, 6] ;Friction
type = VelMul
trigger1 = 1
x = 0.85

[State 5150, 7] ;Friction
type = VelSet
trigger1 = Vel x < .05
persistent = 0
x = 0

[State 5150, 8]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; HIT_FALLRECOVER (still falling)
[Statedef 5200]
type    = A
movetype= H
physics = N

[State 5200, 1] ;Change anim if done with transition
type = ChangeAnim
trigger1 = Anim = 5035
trigger1 = AnimTime = 0
value = 5050

[State 5200, 2]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5200, 3]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 10
value = 5201

;---------------------------------------------------------------------------
; HIT_FALLRECOVER (on the ground)
[Statedef 5201]
type    = A
movetype= H
physics = A
anim = 5200

[State 5201, 1] ;Turn if not facing opponent
type = Turn
trigger1 = Time = 0
trigger1 = p2dist X < -5

[State 5201, 2]
type = VelSet
trigger1 = Time = 0
x = -.15
y = -3.5

[State 5201, 3]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5201, 4]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 5201, 5] ;Blink white
type = PalFX
trigger1 = Time = 0
time = 3
add = 128,128,128 ;256,256,256

[State 5201, 6]
type = GameMakeAnim
trigger1 = Time = 1
value = 60
pos = 0, 0
under = 1

;---------------------------------------------------------------------------
; HIT_AIRFALLRECOVER
[Statedef 5210]
type    = A
movetype= I
physics = N
anim = 5210
ctrl = 0

[State 5210, 1] ;Blink white
type = PalFX
trigger1 = Time = 0
time = 3
add = 128,128,128 ;256,256,256

[State 5210, 1]
type = PosFreeze
trigger1 = Time = 0
value = 4

[State 5210, 2] ;Turn if not facing opponent
type = Turn
trigger1 = Time = 0
trigger1 = p2dist X < -20

[State 5210, 1]
type = VelMul
trigger1 = Time = 4
x = .8
y = .8

[State 5210, 1]
type = VelAdd
trigger1 = Time = 4
y = -4.5

[State 5210, 1]
type = VelMul
trigger1 = Time = 4
trigger1 = Vel Y > 0
y = .5

[State 5210, 1]
type = VelAdd
trigger1 = Time = 4
trigger1 = Vel Y > -3
y = -2

[State 5210, 1]
type = VelAdd
trigger1 = Time = 4
trigger1 = Vel Y > -2
y = -1

[State 5210, 2] ;Go up
type = VelAdd
trigger1 = Time = 4
trigger1 = Command = "holdup"
y = -2

[State 5210, 2] ;Go down
type = VelAdd
trigger1 = Time = 4
trigger1 = Command = "holddown"
y = 1.5

[State 5210, 2] ;Go fwd
type = VelMul
trigger1 = Time = 4
trigger1 = Command = "holdfwd"
x = 1

[State 5210, 2] ;Go back
type = VelAdd
trigger1 = Time = 4
trigger1 = Command = "holdback"
x = -1

[State 5210, 3]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 15

[State 5210, 4]
type = CtrlSet
trigger1 = Time = 20
value = 1

[State 5210, 5]
type = VelAdd;Gravity
trigger1 = Time >= 4
y = .35

[State 5210, 5] ;Land on ground
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 52 ;JUMP_LAND
ctrl = 1

;---------------------------------------------------------------------------
; DIZZY falling
[Statedef 5249]
type    = A
movetype= H
anim = 5050
velset = -4,-6
physics = N

[State 5249, 1]
type = hitvelset
trigger1 = gethitvar(fall)=  1
trigger1 = time = 0
value = 1

[State 5249, 1]
type = nothitby
trigger1 = 1
value = SCA

[State 5249, 2]
type = veladd
trigger1 = time >=0
y = .5

[State 5249, 3]
type = ChangeState
trigger1 = time > 1
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5250

;---------------------------------------------------------------------------
; DIZZY(hit ground)
[Statedef 5250]
type    = L
movetype= H
physics = N
ctrl = 0

[State 5100, 1]
type = VelSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
trigger1 = Vel x > 1
x = 1

[State 5100, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5100, Var] ;Save fall velocity
type = VarSet
trigger1 = Time = 0
;trigger1 = GetHitVar(fall.yvel) = 0
sysvar(1) = floor(vel y)

[State 5100, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = Time = 0
trigger1 = (anim != [5051,5059]) && (anim != [5061,5069])
trigger2 = !SelfAnimExist(5100 + (anim % 10))
value = 5100

[State 5100, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (anim = [5051,5059]) || (anim = [5061,5069])
trigger1 = SelfAnimExist(5100 + (anim % 10))
value = 5100 + (anim % 10)

[State 5100, 4]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5100, 5]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5100, 6] ;Reduce speed
type = VelMul
trigger1 = Time = 0
x = 0.75

[State 5100, 7]
type = ChangeState
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
value = 5110 ;HIT_LIEDOWN

[State 5100, 8]
type = GameMakeAnim
trigger1 = Time = 1
value = 60 + (SysVar(1) > 5) + (SysVar(1) > 14)
pos = 0, 0
under = SysVar(1) <= 10

[State 5100, 9]
type = HitFallDamage
trigger1 = Time = 3

[State 5100, 10]
type = PlaySnd
trigger1 = Time = 1
;value = F7, 0 ;Hit ground
value = F7, (SysVar(1) > 5) + (SysVar(1) > 14)

[State 5100, 11]
type = PosFreeze
trigger1 = 1

[State 5100, 12]
type = ChangeState
trigger1 = AnimTime = 0
value = 5251;5101

[State 5100, 13]
type = ForceFeedback
trigger1 = Time = 0
waveform = sinesquare
ampl = 128,-3,-.2,.005
time = 20

;--------------------------------------------------------------------------------------
; DIZZY
[Statedef 5251]
type = S
movetype = I;H
physics = S
anim = 5300
ctrl = 0

[State 5250, 2]
type = ctrlset
trigger1 = 1
value = 0

[State 5250, 2]
type = Hitfallset
trigger1 = Time = 0
value = 0

[State 5250, 2]
type = PlaySnd
trigger1 = Time = 0
value = 1,8
volume = 100

[State 5250, reset Dizzy]
type = VarSet
trigger1 = StateNo = 5000;time = 0
ignorehitpause = 1
var(14) = 1

[State 5250, VA1]
type = VarSet;add
trigger1 = 1
trigger1 = var(13) > 0
var(13) = 0;-1

[State 5250, VA2]
type = Varadd
trigger1 = command = "x" ||command = "y" ||command = "a" || command = "b"
trigger1 = time >= 0
trigger1 = var(13) > 0
var(13) = -150

[State 5250, END]
type = ChangeState
trigger1 = Time = 180;var(13) <= 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Continue?
[Statedef 5500]
type = S
ctrl = 0
anim = 5300
velset = 0,0

[State 5500, 1] ;Use continue animation if available
type = ChangeAnim
trigger1 = time = 0
trigger1 = SelfAnimExist(5500)
value = 5500

;---------------------------------------------------------------------------
; Initialize (at the start of the round)
[Statedef 5900]
type = S

[State 5900, 1] ;Clear all int variables
type = VarRangeSet
trigger1 = roundsexisted = 0
value = 0

[State 5900, 2] ;Clear all float variables
type = VarRangeSet
trigger1 = roundsexisted = 0
fvalue = 0

[State 5900, 3] ;Intro for round 1
type = ChangeState
trigger1 = roundno = 1
value = 190

[State 5900, 4] ;Stance override
type = ChangeState
trigger1 = roundno != 1
value = 0
