;===========================================================================
; CMD file for Ryo Sakazaki
;===========================================================================

;-| Super Motions |---------------------------------------------------------

[Command]
name = "haou_x"
command = ~F, B, DB, D, DF, F, x
time = 20

[Command]
name = "haou_y"
command = ~F, B, DB, D, DF, F, y
time = 20

[Command]
name = "haou_xy"
command = ~F, B, DB, D, DF, F, x+y
time = 20

[Command]
name = "tenti"
command = ~D, F, D, F, x
time = 20
[Command]
name = "tenti"
command = ~D, F, D, F, y
time = 20

[Command]
name = "tenti_xy"
command = ~D, F, D, F, x+y
time = 20

[Command]
name = "ryuuko_x"
command = ~D, F, D, B, x
time = 20

[Command]
name = "ryuuko_y"
command = ~D, F, D, B, y
time = 20

[Command]
name = "ryuuko_xy"
command = ~D, F, D, B, x+y
time = 20

;-| Special Motions |-------------------------------------------------------

[Command]
name = "koou_x"
command = ~D, DF, F, x

[Command]
name = "koou_y"
command = ~D, DF, F, y

[Command]
name = "kohou_x"
command = ~F, D, DF, x

[Command]
name = "kohou_y"
command = ~F, D, DF, y

[Command]
name = "hien_a"
command = ~F, D, B, a
Time = 20
[Command]
name = "hien_a"
command = ~F, DF, B, a
Time = 20
[Command]
name = "hien_a"
command = ~F, DB, B, a
Time = 20

[Command]
name = "hien_b"
command = ~F, D, B, b
Time = 20
[Command]
name = "hien_b"
command = ~F, DF, B, b
Time = 20
[Command]
name = "hien_b"
command = ~F, DB, B, b
Time = 20

[Command]
name = "raijin_a"
command = ~D, DF, F, a

[Command]
name = "raijin_b"
command = ~D, DF, F, b

[Command]
name = "shippuu_x"
command = ~D, DB, B, x

[Command]
name = "shippuu_y"
command = ~D, DB, B, y

[Command]
name = "zannretu_x"
command = ~F, B, F, x

[Command]
name = "zannretu_y"
command = ~F, B, F, y

[Command]
name = "renbu"
command = ~F, D, B, x
Time = 20
[Command]
name = "renbu"
command = ~F, DF, B, x
Time = 20
[Command]
name = "renbu"
command = ~F, DB, B, x
Time = 20
[Command]
name = "renbu"
command = ~F, D, B, y
Time = 20
[Command]
name = "renbu"
command = ~F, DF, B, y
Time = 20
[Command]
name = "renbu"
command = ~F, DB, B, y
Time = 20

;-| Button Combination |----------------------------------------------------

[Command]
name = "ax"
command = a+x
time = 1

[Command]
name = "by"
command = b+y
time = 1

;-| Dir + Button |----------------------------------------------------------

[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_y"
command = /B,y
time = 1

[Command]
name = "downfwd_a"
command = /DF,a
time = 1

[Command]
name = "downfwd_y"
command = /DF,y
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

;-| Do not remove! |--------------------------------------------------------

[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "recovery"
command = a+c
time = 1

[Command]
name = "recovery"
command = a+x
time = 1

[Command]
name = "recovery"
command = z
time = 1

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

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
;---------------------------------------------------------------------------
; 竜虎乱舞MAX
[State -1]
type = ChangeState
value = 3040
triggerall = command = "ryuuko_xy"
triggerall = power >= 2000
trigger1 = ctrl && statetype != A
trigger2 = movecontact
trigger2 = (stateno = [200,205]) || stateno = 215 || stateno = 225 || stateno = 235
trigger3 = movecontact
trigger3 = stateno = [400,430]
trigger4 = movecontact
trigger4 = stateno = 300 || stateno = 320 || stateno = [340,350]
trigger5 = power >= 3000 && movecontact && StateType = S
trigger5 = stateno = 1010 || stateno = 1015
trigger6 = power >= 3000 && ProjContactTime(6010) = [1,15]
trigger6 = stateno = [1000,1005]
trigger7 = power >= 3000 && movecontact && AnimElem = 14,< 0
trigger7 = stateno = [1040,1045]
trigger8 = power >= 3000 && ProjContactTime(6030) = [1,15]
trigger8 = stateno = [1060,1065]
trigger9 = power >= 3000 && movecontact && AnimElem = 8,< 0
trigger9 = stateno = [1090,1095]
;---------------------------------------------------------------------------
; 竜虎乱舞弱
[State -1]
type = ChangeState
value = 3030
triggerall = command = "ryuuko_x"
triggerall = power >= 1000
trigger1 = ctrl && statetype != A
trigger2 = movecontact
trigger2 = (stateno = [200,205]) || stateno = 215 || stateno = 225 || stateno = 235
trigger3 = movecontact
trigger3 = stateno = [400,430]
trigger4 = movecontact
trigger4 = stateno = 300 || stateno = 320 || stateno = [340,350]
trigger5 = power >= 2000 && movecontact && StateType = S
trigger5 = stateno = 1010 || stateno = 1015
trigger6 = power >= 2000 && ProjContactTime(6010) = [1,15]
trigger6 = stateno = [1000,1005]
trigger7 = power >= 2000 && movecontact && AnimElem = 14,< 0
trigger7 = stateno = [1040,1045]
trigger8 = power >= 2000 && ProjContactTime(6030) = [1,15]
trigger8 = stateno = [1060,1065]
trigger9 = power >= 2000 && movecontact && AnimElem = 8,< 0
trigger9 = stateno = [1090,1095]
;---------------------------------------------------------------------------
; 竜虎乱舞強
[State -1]
type = ChangeState
value = 3035
triggerall = command = "ryuuko_y"
triggerall = power >= 1000
trigger1 = ctrl && statetype != A
trigger2 = movecontact
trigger2 = (stateno = [200,205]) || stateno = 215 || stateno = 225 || stateno = 235
trigger3 = movecontact
trigger3 = stateno = [400,430]
trigger4 = movecontact
trigger4 = stateno = 300 || stateno = 320 || stateno = [340,350]
trigger5 = power >= 2000 && movecontact && StateType = S
trigger5 = stateno = 1010 || stateno = 1015
trigger6 = power >= 2000 && ProjContactTime(6010) = [1,15]
trigger6 = stateno = [1000,1005]
trigger7 = power >= 2000 && movecontact && AnimElem = 14,< 0
trigger7 = stateno = [1040,1045]
trigger8 = power >= 2000 && ProjContactTime(6030) = [1,15]
trigger8 = stateno = [1060,1065]
trigger9 = power >= 2000 && movecontact && AnimElem = 8,< 0
trigger9 = stateno = [1090,1095]
;---------------------------------------------------------------------------
; 天地覇煌拳MAX
[State -1]
type = ChangeState
value = 3025
triggerall = command = "tenti_xy"
triggerall = power >= 2000
trigger1 = ctrl && statetype != A
trigger2 = movecontact
trigger2 = (stateno = [200,205]) || stateno = 215 || stateno = 225 || stateno = 235
trigger3 = movecontact
trigger3 = stateno = [400,430]
trigger4 = movecontact
trigger4 = stateno = 300 || stateno = 320 || stateno = [340,350]
trigger5 = power >= 3000 && movecontact && StateType = S
trigger5 = stateno = 1010 || stateno = 1015
trigger6 = power >= 3000 && ProjContactTime(6010) = [1,15]
trigger6 = stateno = [1000,1005]
trigger7 = power >= 3000 && movecontact && AnimElem = 14,< 0
trigger7 = stateno = [1040,1045]
trigger8 = power >= 3000 && ProjContactTime(6030) = [1,15]
trigger8 = stateno = [1060,1065]
trigger9 = power >= 3000 && movecontact && AnimElem = 8,< 0
trigger9 = stateno = [1090,1095]
;---------------------------------------------------------------------------
; 天地覇煌拳
[State -1]
type = ChangeState
value = 3020
triggerall = command = "tenti"
triggerall = power >= 1000
trigger1 = ctrl && statetype != A
trigger2 = movecontact
trigger2 = (stateno = [200,205]) || stateno = 215 || stateno = 225 || stateno = 235
trigger3 = movecontact
trigger3 = stateno = [400,430]
trigger4 = movecontact
trigger4 = stateno = 300 || stateno = 320 || stateno = [340,350]
trigger5 = power >= 2000 && movecontact && StateType = S
trigger5 = stateno = 1010 || stateno = 1015
trigger6 = power >= 2000 && ProjContactTime(6010) = [1,15]
trigger6 = stateno = [1000,1005]
trigger7 = power >= 2000 && movecontact && AnimElem = 14,< 0
trigger7 = stateno = [1040,1045]
trigger8 = power >= 2000 && ProjContactTime(6030) = [1,15]
trigger8 = stateno = [1060,1065]
trigger9 = power >= 2000 && movecontact && AnimElem = 8,< 0
trigger9 = stateno = [1090,1095]
;---------------------------------------------------------------------------
; 覇王翔吼拳MAX
[State -1]
type = ChangeState
value = 3010
triggerall = command = "haou_xy"
triggerall = power >= 2000
trigger1 = ctrl && statetype != A
trigger2 = movecontact
trigger2 = (stateno = [200,205]) || stateno = 215 || stateno = 225 || stateno = 235
trigger3 = movecontact
trigger3 = stateno = [400,430]
trigger4 = movecontact
trigger4 = stateno = 300 || stateno = 320 || stateno = [340,350]
trigger5 = power >= 3000 && movecontact && StateType = S
trigger5 = stateno = 1010 || stateno = 1015
trigger6 = power >= 3000 && ProjContactTime(6010) = [1,15]
trigger6 = stateno = [1000,1005]
trigger7 = power >= 3000 && movecontact && AnimElem = 14,< 0
trigger7 = stateno = [1040,1045]
trigger8 = power >= 3000 && ProjContactTime(6030) = [1,15]
trigger8 = stateno = [1060,1065]
trigger9 = power >= 3000 && movecontact && AnimElem = 8,< 0
trigger9 = stateno = [1090,1095]
;---------------------------------------------------------------------------
; 覇王翔吼拳弱
[State -1]
type = ChangeState
value = 3000
triggerall = command = "haou_x"
triggerall = power >= 1000
trigger1 = ctrl && statetype != A
trigger2 = movecontact
trigger2 = (stateno = [200,205]) || stateno = 215 || stateno = 225 || stateno = 235
trigger3 = movecontact
trigger3 = stateno = [400,430]
trigger4 = movecontact
trigger4 = stateno = 300 || stateno = 320 || stateno = [340,350]
trigger5 = power >= 2000 && movecontact && StateType = S
trigger5 = stateno = 1010 || stateno = 1015
trigger6 = power >= 2000 && ProjContactTime(6010) = [1,15]
trigger6 = stateno = [1000,1005]
trigger7 = power >= 2000 && movecontact && AnimElem = 14,< 0
trigger7 = stateno = [1040,1045]
trigger8 = power >= 2000 && ProjContactTime(6030) = [1,15]
trigger8 = stateno = [1060,1065]
trigger9 = power >= 2000 && movecontact && AnimElem = 8,< 0
trigger9 = stateno = [1090,1095]
;---------------------------------------------------------------------------
; 覇王翔吼拳強
[State -1]
type = ChangeState
value = 3005
triggerall = command = "haou_y"
triggerall = power >= 1000
trigger1 = ctrl && statetype != A
trigger2 = movecontact
trigger2 = (stateno = [200,205]) || stateno = 215 || stateno = 225 || stateno = 235
trigger3 = movecontact
trigger3 = stateno = [400,430]
trigger4 = movecontact
trigger4 = stateno = 300 || stateno = 320 || stateno = [340,350]
trigger5 = power >= 2000 && movecontact && StateType = S
trigger5 = stateno = 1010 || stateno = 1015
trigger6 = power >= 2000 && ProjContactTime(6010) = [1,15]
trigger6 = stateno = [1000,1005]
trigger7 = power >= 2000 && movecontact && AnimElem = 14,< 0
trigger7 = stateno = [1040,1045]
trigger8 = power >= 2000 && ProjContactTime(6030) = [1,15]
trigger8 = stateno = [1060,1065]
trigger9 = power >= 2000 && movecontact && AnimElem = 8,< 0
trigger9 = stateno = [1090,1095]
;---------------------------------------------------------------------------
; 虎咆弱
[State -1]
type = ChangeState
value = ifelse(Var(1),1080,1010)
triggerall = command = "kohou_x"
trigger1 = ctrl && statetype != A
trigger2 = movecontact
trigger2 = (stateno = [200,205]) || stateno = 215 || stateno = 225 || stateno = 235
trigger3 = movecontact
trigger3 = stateno = [400,430]
trigger4 = movecontact
trigger4 = stateno = 300 || stateno = 320 || stateno = [340,350]
;---------------------------------------------------------------------------
; 虎咆強
[State -1]
type = ChangeState
value = ifelse(Var(1),1085,1015)
triggerall = command = "kohou_y"
trigger1 = ctrl && statetype != A
trigger2 = movecontact
trigger2 = (stateno = [200,205]) || stateno = 215 || stateno = 225 || stateno = 235
trigger3 = movecontact
trigger3 = stateno = [400,430]
trigger4 = movecontact
trigger4 = stateno = 300 || stateno = 320 || stateno = [340,350]
;---------------------------------------------------------------------------
; 暫烈拳弱
[State -1]
type = ChangeState
value = 1050
triggerall = command = "zannretu_x"
trigger1 = ctrl && statetype != A
trigger2 = movecontact
trigger2 = (stateno = [200,205]) || stateno = 215 || stateno = 225 || stateno = 235
trigger3 = movecontact
trigger3 = stateno = [400,430]
trigger4 = movecontact
trigger4 = stateno = 300 || stateno = 320 || stateno = [340,350]
;---------------------------------------------------------------------------
; 暫烈拳強
[State -1]
type = ChangeState
value = 1055
triggerall = command = "zannretu_y"
trigger1 = ctrl && statetype != A
trigger2 = movecontact
trigger2 = (stateno = [200,205]) || stateno = 215 || stateno = 225 || stateno = 235
trigger3 = movecontact
trigger3 = stateno = [400,430]
trigger4 = movecontact
trigger4 = stateno = 300 || stateno = 320 || stateno = [340,350]
;---------------------------------------------------------------------------
; 極限流連舞拳
[State -1]
type = ChangeState
value = 1100
triggerall = command = "renbu"
triggerall = P2BodyDist X < 10
trigger1 = ctrl && statetype != A
trigger1 = p2statetype != A && p2statetype != L && p2stateno != [130,155]
trigger2 = movehit
trigger2 = (stateno = [200,205]) || stateno = 215 || stateno = 225 || stateno = 235
trigger3 = movehit
trigger3 = stateno = [400,420]
trigger4 = movehit
trigger4 = stateno = 320 || stateno = [340,350]
;---------------------------------------------------------------------------
; 虎煌拳弱
[State -1]
type = ChangeState
value = ifelse(var(1),1060,1000)
triggerall = command = "koou_x"
trigger1 = ctrl && statetype != A
trigger2 = movecontact
trigger2 = (stateno = [200,205]) || stateno = 215 || stateno = 225 || stateno = 235
trigger3 = movecontact
trigger3 = stateno = [400,430]
trigger4 = movecontact
trigger4 = stateno = 300 || stateno = 320 || stateno = [340,350]
;---------------------------------------------------------------------------
; 虎煌拳強
[State -1]
type = ChangeState
value = ifelse(var(1),1065,1005)
triggerall = command = "koou_y"
trigger1 = ctrl && statetype != A
trigger2 = movecontact
trigger2 = (stateno = [200,205]) || stateno = 215 || stateno = 225 || stateno = 235
trigger3 = movecontact
trigger3 = stateno = [400,430]
trigger4 = movecontact
trigger4 = stateno = 300 || stateno = 320 || stateno = [340,350]
;---------------------------------------------------------------------------
; 空中虎煌拳弱
[State -1]
type = ChangeState
value = 1070
triggerall = command = "koou_x"
triggerall = Var(1)
trigger1 = (ctrl || stateno  = 105) && statetype = A
;---------------------------------------------------------------------------
; 空中虎煌拳強
[State -1]
type = ChangeState
value = 1075
triggerall = command = "koou_y"
triggerall = Var(1)
trigger1 = (ctrl || stateno  = 105) && statetype = A
;---------------------------------------------------------------------------
; 虎咆疾風拳(雷神剛)弱
[State -1]
type = ChangeState
value = ifelse(Var(1),1090,1040)
triggerall = command = "shippuu_x"
trigger1 = ctrl && statetype != A
trigger2 = movecontact
trigger2 = (stateno = [200,205]) || stateno = 215 || stateno = 225 || stateno = 235
trigger3 = movecontact
trigger3 = stateno = [400,430]
trigger4 = movecontact
trigger4 = stateno = 300 || stateno = 320 || stateno = [340,350]
;---------------------------------------------------------------------------
; 虎咆疾風拳(雷神剛)強
[State -1]
type = ChangeState
value = ifelse(Var(1),1095,1045)
triggerall = command = "shippuu_y"
trigger1 = ctrl && statetype != A
trigger2 = movecontact
trigger2 = (stateno = [200,205]) || stateno = 215 || stateno = 225 || stateno = 235
trigger3 = movecontact
trigger3 = stateno = [400,430]
trigger4 = movecontact
trigger4 = stateno = 300 || stateno = 320 || stateno = [340,350]
;---------------------------------------------------------------------------
; 雷神刹弱
[State -1]
type = ChangeState
value = 1030
triggerall = command = "raijin_a"
trigger1 = ctrl && statetype != A
trigger2 = movecontact
trigger2 = (stateno = [200,205]) || stateno = 215 || stateno = 225 || stateno = 235
trigger3 = movecontact
trigger3 = stateno = [400,430]
trigger4 = movecontact
trigger4 = stateno = 300 || stateno = 320 || stateno = [340,350]
;---------------------------------------------------------------------------
; 雷神刹強
[State -1]
type = ChangeState
value = 1035
triggerall = command = "raijin_b"
trigger1 = ctrl && statetype != A
trigger2 = movecontact
trigger2 = (stateno = [200,205]) || stateno = 215 || stateno = 225 || stateno = 235
trigger3 = movecontact
trigger3 = stateno = [400,430]
trigger4 = movecontact
trigger4 = stateno = 300 || stateno = 320 || stateno = [340,350]
;---------------------------------------------------------------------------
; 飛燕疾風脚弱
[State -1]
type = ChangeState
value = 1020
triggerall = command = "hien_a"
trigger1 = ctrl && statetype != A
trigger2 = movecontact
trigger2 = (stateno = [200,205]) || stateno = 215 || stateno = 225 || stateno = 235
trigger3 = movecontact
trigger3 = stateno = [400,430]
trigger4 = movecontact
trigger4 = stateno = 300 || stateno = 320 || stateno = [340,350]
;---------------------------------------------------------------------------
; 飛燕疾風脚強
[State -1]
type = ChangeState
value = 1025
triggerall = command = "hien_b"
trigger1 = ctrl && statetype != A
trigger2 = movecontact
trigger2 = (stateno = [200,205]) || stateno = 215 || stateno = 225 || stateno = 235
trigger3 = movecontact
trigger3 = stateno = [400,430]
trigger4 = movecontact
trigger4 = stateno = 300 || stateno = 320 || stateno = [340,350]
;---------------------------------------------------------------------------
; 緊急回避
[State -1]
type = ChangeState
value = ifelse(command = "holdback",815,ifelse(command = "holdfwd",810,800))
triggerall = command = "ax" || command = "z"
trigger1 = ctrl && statetype != A
trigger2 = stateno = 100
;---------------------------------------------------------------------------
; ふっとばし攻撃
[State -1]
type = ChangeState
value = ifelse(statetype != A,300,310)
triggerall = command = "by" || command = "c"
trigger1 = ctrl
trigger2 = stateno = 100
;---------------------------------------------------------------------------
; カウンター
[State -1]
type = ChangeState
value = 320
trigger1 = stateno = 800
trigger1 = AnimElem = 2,> 0
trigger1 = command = "x" || command = "y" || command = "a" || command = "b"
;---------------------------------------------------------------------------
; ガードキャンセル緊急回避
[State -1]
type = ChangeState
value = ifelse(command != "holdback",830,835)
triggerall = command = "ax" || command = "z"
triggerall = power >= 1000
trigger1 = stateno = [150,153]
;---------------------------------------------------------------------------
; ガードキャンセルふっとばし攻撃
[State -1]
type = ChangeState
value = 820
triggerall = command = "by" || command = "c"
triggerall = power >= 1000
trigger1 = stateno = [150,153]
;---------------------------------------------------------------------------
; 谷落とし
[State -1]
type = ChangeState
value = 900
trigger1 = command = "fwd_y" || command = "back_y"
trigger1 = enemynear,movetype != H
trigger1 = P2BodyDist X < 15
trigger1 = statetype != A && ctrl
;---------------------------------------------------------------------------
; 巴投げ
[State -1]
type = ChangeState
value = 910
trigger1 = command = "fwd_b" || command = "back_b"
trigger1 = enemynear,movetype != H
trigger1 = P2BodyDist X < 15
trigger1 = statetype != A && ctrl
;---------------------------------------------------------------------------
; 氷柱割り
[State -1]
type = ChangeState
value = 330
triggerall = command = "fwd_x"
trigger1 = ctrl && statetype != A
trigger2 = stateno = 100
trigger3 = movecontact
trigger3 = (stateno = [200,205]) || stateno = 215 || stateno = 225 || stateno = 235
trigger4 = movecontact
trigger4 = stateno = [400,420]
;---------------------------------------------------------------------------
; 上段受け
[State -1]
type = ChangeState
value = 340
triggerall = command = "fwd_a"
triggerall = !var(1)
trigger1 = ctrl && statetype != A
trigger2 = stateno = 100
trigger3 = movecontact
trigger3 = (stateno = [200,205]) || stateno = 215 || stateno = 225 || stateno = 235
trigger4 = movecontact
trigger4 = stateno = [400,420]
;---------------------------------------------------------------------------
; 下段受け
[State -1]
type = ChangeState
value = 350
triggerall = command = "downfwd_a"
triggerall = !var(1)
trigger1 = ctrl && statetype != A
trigger2 = stateno = 100
trigger3 = movecontact
trigger3 = (stateno = [200,205]) || stateno = 215 || stateno = 225 || stateno = 235
trigger4 = movecontact
trigger4 = stateno = [400,420]
;---------------------------------------------------------------------------
; 立ち弱P
[State -1]
type = ChangeState
value = ifelse(P2BodyDist X > 20,200,205)
triggerall = command = "x" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 100
trigger3 = (stateno = [200,205]) && AnimElem = 4,> 0
trigger4 = stateno = 400 && AnimElem = 3,> 0
trigger5 = stateno = 420 && AnimElem = 3,> 0
;---------------------------------------------------------------------------
; 立ち強P
[State -1]
type = ChangeState
value = ifelse(P2BodyDist X > 20,ifelse(var(1),240,210),215)
triggerall = command = "y" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 100
;---------------------------------------------------------------------------
; 立ち弱K
[State -1]
type = ChangeState
value = ifelse(P2BodyDist X > 20,ifelse(var(1),250,220),225)
triggerall = command = "a" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 100
;---------------------------------------------------------------------------
; 立ち強K
[State -1]
type = ChangeState
value = ifelse(P2BodyDist X > 20,230,235)
triggerall = command = "b" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 100
;---------------------------------------------------------------------------
; 屈み弱P
[State -1]
type = ChangeState
value = 400
triggerall = command = "x" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 100
trigger3 = (stateno = [200,205]) && AnimElem = 4,> 0
trigger4 = stateno = 400 && AnimElem = 3,> 0
trigger5 = stateno = 420 && AnimElem = 3,> 0
;---------------------------------------------------------------------------
; 屈み強P
[State -1]
type = ChangeState
value = 410
triggerall = command = "y" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 100
;---------------------------------------------------------------------------
; 屈み弱K
[State -1]
type = ChangeState
value = 420
triggerall = command = "a" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 100
trigger3 = (stateno = [200,205]) && AnimElem = 4,> 0
trigger4 = stateno = 400 && AnimElem = 3,> 0
trigger5 = stateno = 420 && AnimElem = 3,> 0
;---------------------------------------------------------------------------
; 屈み強K
[State -1]
type = ChangeState
value = 430
triggerall = command = "b" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 100
;---------------------------------------------------------------------------
; ジャンプ弱P
[State -1]
type = ChangeState
value = ifelse(vel x || Var(1) || Var(3),600,605)
triggerall = command = "x"
trigger1 = statetype = A && ctrl
;---------------------------------------------------------------------------
; ジャンプ強P
[State -1]
type = ChangeState
value = ifelse(vel x || Var(1) || Var(3),610,615)
triggerall = command = "y"
trigger1 = statetype = A && ctrl
;---------------------------------------------------------------------------
; ジャンプ弱K
[State -1]
type = ChangeState
value = ifelse(vel x || Var(1) || Var(3),620,625)
triggerall = command = "a"
trigger1 = statetype = A && ctrl
;---------------------------------------------------------------------------
; ジャンプ強K
[State -1]
type = ChangeState
value = ifelse((vel x && !Var(3)) || Var(1),630,635)
triggerall = command = "b"
trigger1 = statetype = A && ctrl
;---------------------------------------------------------------------------
; ダッシュ
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
; バックステップ
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
; 挑発
[State -1]
type = ChangeState
value = 840
triggerall = command = "start"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 100