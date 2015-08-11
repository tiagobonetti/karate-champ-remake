;=====================================================================
;  CMD File For "CHOI BOUNGE"                               Made By H"       
;=====================================================================
; 
;
;=====================================================================
; Definition of the Commands
;=====================================================================
 
;-| Super Motions |---------------------------------------------------
[Command]
name = "Shakushi"
command = ~B, D, F, B, D, F, x+y
time = 32

[Command]
name = "Shin! Chouzetsu Tatsumaki Shinkuu Zan"
command = ~F, D, B, F, D, B, x
time = 32

[Command]
name = "Shin! Chouzetsu Tatsumaki Shinkuu Zan"
command = ~F, D, B, F, D, B, y
time = 32

[Command]
name = "Zan! En getsu rin_x"
command = ~B, D, F, B, D, F, x
time = 32

[Command]
name = "Zan! En getsu rin_y"
command = ~B, D, F, B, D, F, y
time = 32

[Command]
name = "Hou Ou Kyaku (MAX)"
command = ~D, F, D, B, a+b
time = 26

[Command]
name = "Hou Ou Kyaku"
command = ~D, F, D, B, a
time = 26

[Command]
name = "Hou Ou Kyaku"
command = ~D, F, D, B, b
time = 26

;-| Special Motions |-------------------------------------------------
[Command]
name = "Tatsumaki Shippuu Zan_x"
command = ~48$D,$U, x
time = 20

[Command]
name = "Tatsumaki Shippuu Zan_y"
command = ~48$D,$U, y
time = 20

[Command]
name = "Hishou Kuu Retsu Zan_a"
command = ~48$D,$U, a
time = 20

[Command]
name = "Hishou Kuu Retsu Zan_b"
command = ~48$D,$U, b
time = 20

[Command]
name = "Senpuu Tobisaru Satotsu"
command = ~48$B,$F, a
time = 20

[Command]
name = "Senpuu Tobisaru Satotsu"
command = ~48$B,$F, b
time = 20

[Command]
name = "Shissou Hishou Zan_x"
command = ~48$B,$F, x
time = 20

[Command]
name = "Shissou Hishou Zan_y"
command = ~48$B,$F, y
time = 20

[Command]
name = "Hien-sen_a"
command = ~F, D, DF, a

[Command]
name = "Hien-sen_b"
command = ~F, D, DF, b

[Command]
name = "Kaiten Tobisaru Zan_x"
command = ~D, DB, B, x

[Command]
name = "Kaiten Tobisaru Zan_y"
command = ~D, DB, B, y

[Command]
name = "Hishou Kyaku_a"
command = ~D, DF, F, a

[Command]
name = "Hishou Kyaku_b"
command = ~D, DF, F, b

;-| Double Tap |------------------------------------------------------
[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10

[Command]
name = "longjump"
command = D, $U
time = 18

;-| 2/3 Button Combination |------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = a+x
time = 1

[Command]
name = "ab"
command = a+b
time = 1

[Command]
name = "ax"
command = a+x
time = 1

[Command]
name = "bx"
command = b+x
time = 1

[Command]
name = "by"
command = b+y
time = 1

[Command]
name = "ay"
command = a+y
time = 1

[Command]
name = "xy"
command = x+y
time = 1

[Command]
name = "abcd"
command = x+y+a+b
time = 1

[Command]
name = "abcd"
command = c+z
time = 1

[Command]
name = "call-st"
command = x+a
time = 1

[Command]
name = "call-st"
command = s
time = 1

;------------------- KOF Seriese only
[Command]
name = "gc_fwd"
command = a+x
time = 1

[Command]
name = "q_fwd"
command = a+x
time = 1


;-| Dir + Button |----------------------------------------------------
[Command]
name = "Direction Change_1"
command = /DB,x
time = 1

[Command]
name = "Direction Change_1"
command = /DB,y
time = 1

[Command]
name = "Direction Change_1"
command = /DB,a
time = 1

[Command]
name = "Direction Change_1"
command = /DB,b
time = 1

[Command]
name = "Direction Change_2"
command = /D,x
time = 1

[Command]
name = "Direction Change_2"
command = /D,y
time = 1

[Command]
name = "Direction Change_2"
command = /D,a
time = 1

[Command]
name = "Direction Change_2"
command = /D,b
time = 1

[Command]
name = "Direction Change_3"
command = /DF,x
time = 1

[Command]
name = "Direction Change_3"
command = /DF,y
time = 1

[Command]
name = "Direction Change_3"
command = /DF,a
time = 1

[Command]
name = "Direction Change_3"
command = /DF,b
time = 1

[Command]
name = "Direction Change_4"
command = /B,x
time = 1

[Command]
name = "Direction Change_4"
command = /B,y
time = 1

[Command]
name = "Direction Change_4"
command = /B,a
time = 1

[Command]
name = "Direction Change_4"
command = /B,b
time = 1

[Command]
name = "Direction Change_6"
command = /F,x
time = 1

[Command]
name = "Direction Change_6"
command = /F,y
time = 1

[Command]
name = "Direction Change_6"
command = /F,a
time = 1

[Command]
name = "Direction Change_6"
command = /F,b
time = 1

[Command]
name = "Direction Change_7"
command = /UB,x
time = 1

[Command]
name = "Direction Change_7"
command = /UB,y
time = 1

[Command]
name = "Direction Change_7"
command = /UB,a
time = 1

[Command]
name = "Direction Change_7"
command = /UB,b
time = 1

[Command]
name = "Direction Change_8"
command = /U,x
time = 1

[Command]
name = "Direction Change_8"
command = /U,y
time = 1

[Command]
name = "Direction Change_8"
command = /U,a
time = 1

[Command]
name = "Direction Change_8"
command = /U,b
time = 1

[Command]
name = "Direction Change_9"
command = /UF,x
time = 1

[Command]
name = "Direction Change_9"
command = /UF,y
time = 1

[Command]
name = "Direction Change_9"
command = /UF,a
time = 1

[Command]
name = "Direction Change_9"
command = /UF,b
time = 1

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
name = "back_a"
command = /B,a
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_x"
command = /B,x
time = 1

[Command]
name = "back_y"
command = /B,y
time = 1

[Command]
name = "down_x"
command = /D,x
time = 1

[Command]
name = "down_y"
command = /D,y
time = 1

[Command]
name = "up_x"
command = /U,x
time = 1

[Command]
name = "up_y"
command = /U,y
time = 1

[Command]
name = "upfwd_x"
command = /UF,x
time = 1

[Command]
name = "upfwd_y"
command = /UF,y
time = 1

[Command]
name = "upback_x"
command = /UB,x
time = 1

[Command]
name = "upback_y"
command = /UB,y
time = 1

[Command]
name = "downfwd_x"
command = /DF,x
time = 1

[Command]
name = "downfwd_y"
command = /DF,y
time = 1

[Command]
name = "downback_x"
command = /DB,x
time = 1

[Command]
name = "downback_y"
command = /DB,y
time = 1


;-----------------------------For KOF Seriese only
[Command]
name = "gc_fwd"
command = /DF, a+x
time = 1

[Command]
name = "gc_fwd"
command = /DF, z
time = 1

[Command]
name = "gc_fwd"
command = /F, a+x
time = 1

[Command]
name = "gc_fwd"
command = /F, z
time = 1

[Command]
name = "gc_back"
command = /DB, a+x
time = 1

[Command]
name = "gc_back"
command = /DB, z
time = 1

[Command]
name = "gc_back"
command = /B, a+x
time = 1

[Command]
name = "gc_back"
command = /B, z
time = 1

[Command]
name = "q_fwd"
command = /F, a+x
time = 1

[Command]
name = "q_fwd"
command = /F, z
time = 1

[Command]
name = "q_back"
command = /B, a+x
time = 1

[Command]
name = "q_back"
command = /B, z
time = 1


;-| Single Button |---------------------------------------------------
[Command]
name = "x"
command = x
time = 1

[Command]
name = "a"
command = a
time = 1

[Command]
name = "y"
command = y
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
name = "z"
command = z
time = 1

[Command]
name = "s"
command = s
time = 1

[Command]
name = "recovery"
command = z
time = 1

;----------------------------- for add004
[Command]
name = "call-st"
command = s
time = 1

;----------------------------- KOF Seriese only
[Command]
name = "gc_fwd"
command = z
time = 1

[Command]
name = "q_fwd"
command = z
time = 1

;----------------------------- レバガチャ
[Command]
name = "random"
command = x
time = 1

[Command]
name = "random"
command = y
time = 1

[Command]
name = "random"
command = z
time = 1

[Command]
name = "random"
command = a
time = 1

[Command]
name = "random"
command = b
time = 1

[Command]
name = "random"
command = c
time = 1

[Command]
name = "random"
command = F
time = 1

[Command]
name = "random"
command = DF
time = 1

[Command]
name = "random"
command = D
time = 1

[Command]
name = "random"
command = DB
time = 1

[Command]
name = "random"
command = B
time = 1

[Command]
name = "random"
command = UB
time = 1

[Command]
name = "random"
command = U
time = 1

[Command]
name = "random"
command = UF
time = 1


;-| Hold Button |-----------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_s"
command = /s
time = 1

;-| Hold Dir |--------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup";Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

;------------------------ For KOF Series Only
[Command]
name = "holdupfwd"
command = /UF
time = 1

[Command]
name = "holdupback"
command = /UB
time = 1

;=====================================================================
; State Entry for Commands
;=====================================================================

[Statedef -1]
;=====================================================================
; キャンセル設定
;=====================================================================
;------------------------ キャンセル設定リセット
[State -1]
type = varset
trigger1 = var(40)
var(40) = 0
;------------------------ スーパーキャンセル
[State -1]
type = varset
triggerall = RoundState = 2
triggerall = !var(40)
triggerall = MoveContact
trigger1  = StateNo = 1450
trigger2  = StateNo = 3100 && AnimElem = 7,< 0
trigger3  =  ((StateNo = 1200 || StateNo = 1210)  && AnimElem = 5,< 0)
var(40) = -1
ignorehitpause = 1

;------------------------ ダッシュキャンセル
[State -1]
type = varset
triggerall = RoundState = 2
trigger1 = !var(40)
trigger1 = StateNo = 100 || StateNo = 110 || (StateNo = 4100 && AnimElem = 3,> 0)
var(40) = 1
;------------------------ 特殊技キャンセル
[State -1]
type = varset
triggerall = RoundState = 2
triggerall = !var(40)
triggerall = MoveContact
trigger1  = (StateNo = [200,205]) || StateNo = 215 || StateNo = 230
trigger2  = StateNo = 400 || StateNo = 410
trigger3  = (StateNo = [610,615])
trigger4  = StateNo = 510
var(40) = 2
ignorehitpause = 1
;------------------------ 必殺技・超必殺技キャンセル
[State -1]
type = varset
triggerall = RoundState = 2
triggerall = !var(40)
triggerall  = MoveContact
trigger1  = StateNo = 500 || StateNo = 720
var(40) = 3
ignorehitpause = 1
;------------------------ どこでもキャンセル
[State -1]
type = varset
triggerall = var(30)
triggerall = RoundState = 2
triggerall = !var(40)
triggerall = var(47) && fvar(0) > 0
trigger1  = !MoveContact && ((StateNo = [200,205]) || StateNo = 215 || StateNo = 230)
trigger2  = !MoveContact && (StateNo = 400 || StateNo = 410 || (StateNo = [610,615]) || StateNo = 510)
trigger3  = StateNo = 210 || StateNo = 240 || StateNo = 245 || StateNo = 220 || StateNo = 430 || StateNo = 440
trigger4  = MoveHit && StateNo = [1000,1999]
var(40) = 4
ignorehitpause = 1

;=====================================================================
; CPU Function
;=====================================================================
;
;=====================================================================
; Super Arts
;=====================================================================
;
;---------------------------------------------------------------------
; 灼死（MAX2）
[State -1]
type = ChangeState
value = 3500
triggerall= Command = "Shakushi"
trigger1 = Power >= 3000 && var(30)=0 && var(47)=0
trigger2 = Power >= 1000 && var(30)=1 && fvar(0) > 0 && ((100*life/const(data.life))<=25 || var(44) = 2)
trigger3 = var(30)=2 && ((!var(49) && (100*life/const(data.life))<=50) || var(44) = 2)
triggerall = StateType = A && (Ctrl || (var(40)=[1,3]))

;---------------------------------------------------------------------
; 鳳凰脚 (MAX版)
[State -1]
type = ChangeState
value = 3250
triggerall = command = "Hou Ou Kyaku (MAX)"
trigger1 = Power >= 2000 && var(30)=0 && var(47)=0
trigger2 = Power >= 1000 && var(30)=1 && fvar(0) > 0
triggerall = StateType != A && (Ctrl || (var(40)=[1,3]))

;---------------------------------------------------------------------
; 鳳凰脚 (ノーマル版)
[State -1]
type = ChangeState
value = 3200
triggerall = command = "Hou Ou Kyaku"
trigger1 = Power >= 1000 && var(30)=0 && var(47)=0
trigger2 = (Power >= 1000 || fvar(0) > 0) && (var(30)=[1,2])
triggerall = !StateType = A && (Ctrl || (var(40)=[1,3]))

;---------------------------------------------------------------------
; 真！超絶竜巻真空斬
[State -1]
type = ChangeState
value = 3000
triggerall = command = "Shin! Chouzetsu Tatsumaki Shinkuu Zan"
trigger1 = Power >= 1000 && var(30)=0 && var(47)=0
trigger2 = (Power >= 1000 || fvar(0) > 0) && (var(30)=[1,2])
triggerall = !StateType = A && (Ctrl || (var(40)=[1,3]))

;---------------------------------------------------------------------
; 斬！猿月輪
[State -1]
type = ChangeState
value = 3100
triggerall = command = "Zan! En getsu rin_x"
trigger1 = Power >= 1000 && var(30)=0 && var(47)=0
trigger2 = (Power >= 1000 || fvar(0) > 0) && (var(30)=[1,2])
triggerall = !StateType = A && (Ctrl || (var(40)=[1,3]))

;------------------- 
[State -1]
type = ChangeState
value = 3110
triggerall = command = "Zan! En getsu rin_y"
trigger1 = Power >= 1000 && var(30)=0 && var(47)=0
trigger2 = (Power >= 1000 || fvar(0) > 0) && (var(30)=[1,2])
triggerall = !StateType = A && (Ctrl || (var(40)=[1,3]))

;=====================================================================
; Special Arts 
;=====================================================================
;---------------------------------------------------------------------------
; 竜巻疾風斬　弱
[State -1]
type = ChangeState
value = 1000
triggerall = command = "Tatsumaki Shippuu Zan_x"
triggerall = StateType != A
trigger1 = Ctrl || (var(40)=[1,3]) || StateNo = 40
trigger2 = var(30) = 2 && var(40) = 4 && (StateNo != [1000,1099])
ignorehitpause = (var(40) = 4)

;---------------------------------------------------------------------------
; 竜巻疾風斬　強
[State -1]
type = ChangeState
value = 1010
triggerall = command = "Tatsumaki Shippuu Zan_y"
triggerall = StateType != A
trigger1 = Ctrl || (var(40)=[1,3]) || StateNo = 40
trigger2 = var(30) = 2 && var(40) = 4 && (StateNo != [1000,1099])
ignorehitpause = (var(40) = 4)

;---------------------------------------------------------------------------
; 飛翔空裂斬　弱
[State -1]
type = ChangeState
value = 1200
triggerall = command = "Hishou Kuu Retsu Zan_a"
triggerall = StateType != A
trigger1 = Ctrl || (var(40)=[1,3]) || StateNo = 40
trigger2 = var(30) = 2 && var(40) = 4 && (StateNo != [1200,1299])
ignorehitpause = (var(40) = 4)

;---------------------------------------------------------------------------
; 飛翔空裂斬　強
[State -1]
type = ChangeState
value = 1210
triggerall = command = "Hishou Kuu Retsu Zan_b"
triggerall = StateType != A
trigger1 = Ctrl || (var(40)=[1,3]) || StateNo = 40
trigger2 = var(30) = 2 && var(40) = 4 && (StateNo != [1200,1299])
ignorehitpause = (var(40) = 4)

;---------------------------------------------------------------------------
; 旋風飛猿刺突
[State -1]
type = ChangeState
value = 1100
triggerall = command = "Senpuu Tobisaru Satotsu"
triggerall = statetype != A
trigger1 = Ctrl || (var(40)=[1,3])

;---------------------------------------------------------------------------
; 疾走飛翔斬　弱
[State -1]
type = ChangeState
value = 1600
triggerall = command = "Shissou Hishou Zan_x"
triggerall = statetype != A
trigger1 = Ctrl || (var(40)=[1,3])
trigger2 = var(30) = 2 && var(40) = 4 && (StateNo != [1600,1699])
ignorehitpause = (var(40) = 4)

;---------------------------------------------------------------------------
; 疾走飛翔斬　強
[State -1]
type = ChangeState
value = 1610
triggerall = command = "Shissou Hishou Zan_y"
triggerall = statetype != A
trigger1 = Ctrl || (var(40)=[1,3])
trigger2 = var(30) = 2 && var(40) = 4 && (StateNo != [1600,1699])
ignorehitpause = (var(40) = 4)

;---------------------------------------------------------------------------
; 悲猿懺  弱
[State -1]
type = ChangeState
value = 1500
triggerall = command = "Hien-sen_a"
triggerall = statetype != A
trigger1 = Ctrl || (var(40)=[1,3])
trigger2 = var(40) = 4 && (StateNo != [1500,1599])
ignorehitpause = (var(40) = 4)

;---------------------------------------------------------------------------
; 悲猿懺  強
[State -1]
type = ChangeState
value = 1510
triggerall = command = "Hien-sen_b"
triggerall = statetype != A
trigger1 = Ctrl || (var(40)=[1,3])
trigger2 = var(40) = 4 && (StateNo != [1500,1599])
ignorehitpause = (var(40) = 4)

;---------------------------------------------------------------------------
; 回転飛猿斬　弱
[State -1]
type = ChangeState
value = 1300
triggerall = command = "Kaiten Tobisaru Zan_x"
triggerall = statetype != A
trigger1 = Ctrl || (var(40)=[1,3])
trigger2 = var(30) = 2 && var(40) = 4 && (StateNo != [1300,1399])
ignorehitpause = (var(40) = 4)

;---------------------------------------------------------------------------
; 回転飛猿斬　強
[State -1]
type = ChangeState
value = 1310
triggerall = command = "Kaiten Tobisaru Zan_y"
triggerall = statetype != A
trigger1 = Ctrl || (var(40)=[1,3])
trigger2 = var(30) = 2 && var(40) = 4 && (StateNo != [1300,1399])
ignorehitpause = (var(40) = 4)

;---------------------------------------------------------------------------
; 飛翔脚　弱
[State -1]
type = ChangeState
value = 1400
triggerall = command = "Hishou Kyaku_a"
triggerall = statetype = A
trigger1 = Ctrl || StateNo = 105 || (AnimElemNo(0) > 4 && (StateNo = 1303 || StateNo = 1313)) || (var(40)=[1,3])
trigger2 = var(30) = 1 && var(40) = 4 && (StateNo != [1400,1499])
ignorehitpause = (var(40) = 4)

;---------------------------------------------------------------------------
; 飛翔脚　強
[State -1]
type = ChangeState
value = 1410
triggerall = command = "Hishou Kyaku_b"
triggerall = statetype = A
trigger1 = Ctrl || StateNo = 105 || (AnimElemNo(0) > 4 && (StateNo = 1303 || StateNo = 1313)) || (var(40)=[1,3])
trigger2 = var(30) = 1 && var(40) = 4 && (StateNo != [1400,1499])
ignorehitpause = (var(40) = 4)

;=====================================================================
; Basic Animation
;=====================================================================

;---------------------------------------------------------------------
;RunFwd
[State -1]
type = ChangeState
value = IfElse(var(30) = 2,110,100)
trigger1 = Command = "FF" && StateType = S && Ctrl && StateNo != [100,110]

;---------------------------------------------------------------------
;RunBack
[State -1]
type = ChangeState
value = 105
trigger1 = Command = "BB" && StateType = S && Ctrl

;=====================================================================
; 2/3 Buttons
;=====================================================================
;
;=====================================================================
; Basic Throws
;=====================================================================

;---------------------------------------------------------------------
; 頭乗刺し（Ｐ通常投げ）
[State -1]
type = ChangeState
value = 800
triggerall = StateType = S && Ctrl
trigger1 = var(30) = 2 && Command = "recovery"
trigger2 = var(30) != 2 && P2MoveType != H && !P2StateType = A
trigger2 = (Command = "fwd_y" && P2BodyDist X < 8) || (Command = "back_y" && P2BodyDist X < 20)

;---------------------------------------------------------------------
; 下血突き（Ｋ通常投げ）
[State -1]
type = ChangeState
value = 850
triggerall = StateType = S && Ctrl
trigger1 = var(30) = 2 && Command = "by"
trigger2 = var(30) != 2 && P2MoveType != H && !P2StateType = A
trigger2 = (Command = "fwd_b" && P2BodyDist X < 8) || (Command = "back_b" && P2BodyDist X < 20)

;---------------------------------------------------------------------
; Special Attacks , Moves and so on.
;---------------------------------------------------------------------

;---------------------------------------------------------------------
; 三角跳び
[State -1]
type = ChangeState
value = 53
triggerall = StateNo = 50 && StateNo != 53
triggerall = pos y < -12 && PrevStateNo != 53
trigger1 = command = "holdupfwd" && backedgebodydist < 3
trigger2 = command = "holdupback" && frontedgebodydist < 3

;---------------------------------------------------------------------------
; パワーMAXモード発動
[State -1]
type = ChangeState
value = 4200
triggerall = command = "ay"
triggerall = power >= 1000 && var(47) = 0 && var(30) = 1
trigger1 = ctrl && statetype != A
trigger2 = var(40)=1

;------------------------ クイックMAX発動
[State -1]
type = ChangeState
value = 4210
triggerall = command = "ay"
triggerall = power >= 2000 && var(47) = 0 && var(30) = 1
trigger1 = statetype != A
trigger1 = MoveContact && StateNo = [200,799]
ignorehitpause = 1

;---------------------------------------------------------------------
; 地上ふっとばし攻撃
[State -1]
type = ChangeState
value = 500
triggerall = Command = "by"
trigger1 = StateType != A && (Ctrl || var(40)=1)
trigger1 = var(30) != 2

;---------------------------------------------------------------------
; 空中ふっとばし攻撃
[State -1]
type = ChangeState
value = 510
triggerall = Command = "by"
trigger1 = StateType = A && Ctrl
trigger1 = var(30) != 2

;---------------------------------------------------------------------
; ガードキャンセル緊急回避動作（前・後）
[State -1]
type = ChangeState
value = 4050
triggerall = Command = "recovery" && Power >= 1000 && var(30) != 2
triggerall = StateType != A
trigger1 = (StateNo = 150 || StateNo = 152)
trigger2 = MoveContact && Var(30) = 1 && StateNo = [200,799]

;---------------------------------------------------------------------
; 緊急回避動作（前）
[State -1]
type = ChangeState
value = 4000
triggerall = Command = "recovery" && !Command = "holdback" && var(30) != 2
trigger1 = StateType = S && (Ctrl || var(40)=1)

;---------------------------------------------------------------------
; 緊急回避動作（後）
[State -1]
type = ChangeState
value = 4010
triggerall = Command = "q_back" && !Command = "holdfwd" && var(30) != 2
trigger1 = StateType = S && (Ctrl || var(40)=1)

;---------------------------------------------------------------------
; ガードキャンセルグランドフロントステップ
[State -1]
type = ChangeState
value = 4100
triggerall = (Command = "ay" || Command = "FF") && var(30) = 2
triggerall = (Power >= 600 || Fvar(3) > 0) && StateType != A
trigger1 = (StateNo = 150 || StateNo = 152)

;---------------------------------------------------------------------
; ガードキャンセル吹っ飛ばし攻撃
[State -1]
type = ChangeState
value = 4500
triggerall = Command = "by"
triggerall = (Power >= 1000 || (var(30) = 2 && fvar(0) > 0)) && StateType != A
trigger1 = (StateNo = 150 || StateNo = 152)

;=====================================================================
; Dir + Button
;=====================================================================
;---------------------------------------------------------------------
; 通り魔蹴り（←or→＋＋A）
[State -1]
type = ChangeState
value = 700
triggerall= (Command = "back_a" || Command = "fwd_a") && !Command = "holddown"
trigger1= !StateType = A && (Ctrl || (var(40)=[1,2]))

;---------------------------------------------------------------------
; 骸突き（←or→＋X）
[State -1]
type = ChangeState
value = IfElse(MoveContact=1,721,720)
triggerall= (Command = "back_x" || Command = "fwd_x") && !Command = "holddown"
trigger1= !StateType = A && (Ctrl || (var(40)=[1,2]))

;=====================================================================
; Taunts
;=====================================================================

;---------------------------------------------------------------------
; 挑発
[State -1]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = StateType = S && Ctrl

;=====================================================================
; Basic Arts
;=====================================================================

;---------------------------------------------------------------------
; 弱パンチ
[State -1]
type = ChangeState
value = IfElse(P2BodyDist X <= 25,205,200)
triggerall = Command = "x" && !Command = "holddown" 
trigger1  = !StateType = A && (Ctrl || var(40)=1)
trigger2 = (StateNo = 200 && AnimElem = 2,> 0)
trigger3 = (StateNo = 205 && AnimElem = 2,> 0)
trigger4 = (StateNo = 235 && AnimElem = 3,> 0)
trigger5 = (StateNo = 400 && AnimElem = 3,> 0)
trigger6 = (StateNo = 430 && AnimElem = 3,> 0)

;---------------------------------------------------------------------
; 弱キック
[State -1]
type = ChangeState
value = IfElse(P2BodyDist X <= 25,235,230)
triggerall = Command = "a" && !Command = "holddown"
trigger1  = !StateType = A && (Ctrl || var(40)=1)
trigger2 = (StateNo = 200 && AnimElem = 2,> 0)
trigger3 = (StateNo = 205 && AnimElem = 2,> 0)
trigger4 = (StateNo = 235 && AnimElem = 3,> 0)
trigger5 = (StateNo = 400 && AnimElem = 3,> 0)
trigger6 = (StateNo = 430 && AnimElem = 3,> 0)

;---------------------------------------------------------------------
; 強パンチ
[State -1]
type = ChangeState
value = IfElse(P2BodyDist X <= 10,215,220)
triggerall = Command = "y" && !Command = "holddown"
trigger1  = !StateType = A && (Ctrl || var(40)=1)

;---------------------------------------------------------------------
; 強キック
[State -1]
type = ChangeState
value = 240
triggerall = Command = "b" && !Command = "holddown"
trigger1  = !StateType = A && (Ctrl || var(40)=1)

;---------------------------------------------------------------------
; しゃがみ弱パンチ
[State -1]
type = ChangeState
value = 400
triggerall = Command = "x" && Command = "holddown" 
trigger1 =  (StateType = C && Ctrl) || var(40)=1
trigger2 = (StateNo = 200 && AnimElem = 2,> 0)
trigger3 = (StateNo = 205 && AnimElem = 2,> 0)
trigger4 = (StateNo = 235 && AnimElem = 3,> 0)
trigger5 = (StateNo = 400 && AnimElem = 3,> 0)
trigger6 = (StateNo = 430 && AnimElem = 3,> 0)

;---------------------------------------------------------------------
; しゃがみ強パンチ
[State -1]
type = ChangeState
value = 410
triggerall = Command = "y" && Command = "holddown"
trigger1 =  (StateType = C && Ctrl) || var(40)=1

;---------------------------------------------------------------------
; しゃがみ弱キック
[State -1]
type = ChangeState
value = 430
triggerall = Command = "a" && Command = "holddown" 
trigger1 =  (StateType = C && Ctrl) || var(40)=1
trigger2 = (StateNo = 200 && AnimElem = 2,> 0)
trigger3 = (StateNo = 205 && AnimElem = 2,> 0)
trigger4 = (StateNo = 235 && AnimElem = 3,> 0)
trigger5 = (StateNo = 400 && AnimElem = 3,> 0)
trigger6 = (StateNo = 430 && AnimElem = 3,> 0)

;---------------------------------------------------------------------
; しゃがみ強キック
[State -1]
type = ChangeState
value = 440
triggerall = Command = "b" && Command = "holddown"
trigger1 =  (StateType = C && Ctrl) || var(40)=1

;---------------------------------------------------------------------
; ジャンプ弱パンチ
[State -1]
type = ChangeState
value = 600
triggerall = Command = "x" && StateType = A && Ctrl = 1
trigger1 = StateNo != 105

;---------------------------------------------------------------------
; ジャンプ強パンチ
[State -1]
type = ChangeState
value = IfElse(Var(25) = 0 && Vel X = 0,615,610)
triggerall = Command = "y" && StateType = A && Ctrl = 1
trigger1 = StateNo != 105

;---------------------------------------------------------------------
; ジャンプ弱キック
[State -1]
type = ChangeState
value = 630
triggerall = Command = "a" && StateType = A && Ctrl = 1
trigger1 = StateNo != 105

;---------------------------------------------------------------------
; ジャンプ強キック
[State -1]
type = ChangeState
value = IfElse(Var(25) = 0 && Vel X = 0,645,640)
triggerall = Command = "b" && StateType = A && Ctrl = 1
trigger1 = StateNo != 105

