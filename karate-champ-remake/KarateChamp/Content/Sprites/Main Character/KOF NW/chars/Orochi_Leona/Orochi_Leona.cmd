;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------
[Command]
name = "カリバーン"
command = ~D, F, D, F, a+b
time = 35


[Command]
name = "MAXインフィニティスラッシャー"
command = ~D, F, D, F, x+y
time = 25

[Command]
name = "インフィニティスラッシャー"
command = ~D, F, D, F, y
time = 25

[Command]
name = "インフィニティスラッシャー"
command = ~D, F, D, F, x
time = 25


[Command]
name = "MAXリボルスパーク"
command = ~D, B, D, F, a+b
time = 25


[Command]
name = "リボルスパーク"
command = ~D, B, D, F, b
time = 25

[Command]
name = "リボルスパーク"
command = ~D, B, D, F, a
time = 25



[Command]
name = "MAXツイスタードライブ"
command = ~D, B, D, B, a+b
time = 25


[Command]
name = "MAXVスラッシャー"
command = ~D, F, D, B, x+y
time = 25

[Command]
name = "Vスラッシャー"
command = ~D, F, D, B, y
time = 25

[Command]
name = "Vスラッシャー"
command = ~D, F, D, B, x
time = 25


;-| Special Motions |------------------------------------------------------
[Command]
name = "グレイトフルデッド"
command = ~F,D,B,F, y
time = 20

[Command]
name = "グレイトフルデッド"
command = ~F,D,B,F, x
time = 20


[Command]
name = "Xキャリバー2"
command = ~D, DB, B, y

[Command]
name = "Xキャリバー2"
command = ~D, DB, B, x


[Command]
name = "Xキャリバー"
command = ~F, D, DF, b

[Command]
name = "Xキャリバー"
command = ~F, D, DF, a



[Command]
name = "グランドセイバー"
command = ~D, DF, F, b

[Command]
name = "グランドセイバー"
command = ~D, DF, F, a


[Command]
name = "ムーンスラッシャー"
command = ~F, D, DF, x

[Command]
name = "ムーンスラッシャー"
command = ~F, D, DF, y

[Command]
name = "ボルテックランチャー・強"
command = ~D, DF, F, y

[Command]
name = "ボルテックランチャー・弱"
command = ~D, DF, F, x



[Command]
name = "緊急回避前"
command = x+a
time = 1

[Command]
name = "緊急回避前"
command = z
time = 1

[Command]
name = "緊急回避後"
command = /$B,x+a
time = 1

[Command]
name = "緊急回避後"
command = /$B,z
time = 1

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "ふっ飛ばし"
command = c
time = 1

[Command]
name = "ふっ飛ばし"
command = y+b
time = 1

[Command]
name = "MAX"
command = y+a
time = 1

[Command]
name = "おしっぱなしx"
command = /$x
time = 1

[Command]
name = "おしっぱなしy"
command = /$y
time = 1

[Command]
name = "おしっぱなしa"
command = /$a
time = 1

[Command]
name = "おしっぱなしb"
command = /$b
time = 1

[Command]
name = "おしっぱなしz"
command = /$z
time = 1

[Command]
name = "おしっぱなしc"
command = /$c
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
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

;-| Hold Dir |--------------------------------------------------------------
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



; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;カリバーン
[State ERROR]
type = ChangeState
value = 2500
triggerall = command = "カリバーン"
triggerall = power >= 3000 || (var(20) > 0 && power >= 1000 )
triggerall = life <= 300
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 3,>=0
trigger3 = stateno = 205 && animelem = 4,>=0
trigger4 = stateno = 210 && animelem = 6,<0
trigger5 = stateno = 215 && animelem = 5,>=0
trigger6 = stateno = 235 && animelem = 4,>=0
trigger7 = stateno = 245 && movecontact
trigger8 = stateno = 400 && animelem = 4,>=0
trigger9 = stateno = 410 && animelem = 6,<0
trigger10= stateno = 290 && movecontact
trigger11= stateno = 250 && movecontact
trigger12= stateno = 260 && movecontact && animelem = 10,>=0
trigger13= stateno = 261 && movecontact && animelem = 10,>=0

trigger14= stateno = 1200 && movecontact
trigger14= power >= 2000 || (var(20) > 0 && power >= 1000 )
trigger15= stateno = 1305
trigger15= power >= 2000 || (var(20) > 0 && power >= 1000 )


;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;MAXインフィニティスラッシャー
[State Chain Slide Touch]
type = ChangeState
value = 2250
triggerall = command = "MAXインフィニティスラッシャー"
triggerall = power >= 3000 || (var(20) > 0 && power >= 1000 )
triggerall = statetype != A
triggerall = var(1) = 0
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && animelem = 4,>=0
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 245 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && animelem = 2,>=0
trigger10= stateno = 290 && movecontact

trigger11= stateno = 1000 && movecontact
trigger11= power >= 4000 || (var(20) > 0 && power >= 2000 )

;---------------------------------------------------------------------------
;インフィニティスラッシャー
[State Chain Slide Touch]
type = ChangeState
value = 2200
triggerall = command = "インフィニティスラッシャー"
triggerall = power >= 1000 || var(20) > 0
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && animelem = 4,>=0
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 245 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && animelem = 2,>=0
trigger10= stateno = 290 && movecontact

trigger11= stateno = 1000 && movecontact
trigger11= power >= 2000 || (var(20) > 0 && power >= 1000 )

;---------------------------------------------------------------------------
;MAXリボルスパーク
[State Chain Slide Touch]
type = ChangeState
value = 2150
triggerall = command = "MAXリボルスパーク"
triggerall = power >= 3000 || (var(20) > 0 && power >= 1000 )
triggerall = statetype != A
triggerall = var(1) = 0
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && animelem = 4,>=0
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 245 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && animelem = 2,>=0
trigger10= stateno = 290 && movecontact

trigger11= stateno = 1000 && movecontact
trigger11= power >= 4000 || (var(20) > 0 && power >= 2000 )

;---------------------------------------------------------------------------
;リボルスパーク
[State Chain Slide Touch]
type = ChangeState
value = 2100
triggerall = command = "リボルスパーク"
triggerall = power >= 1000 || var(20) > 0
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && animelem = 4,>=0
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 245 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && animelem = 2,>=0
trigger10= stateno = 290 && movecontact

trigger11= stateno = 1000 && movecontact
trigger11= power >= 2000 || (var(20) > 0 && power >= 1000 )
;---------------------------------------------------------------------------
;MAXVスラッシャー
[State Twister Drive]
type = ChangeState
value = 2050
triggerall = command = "MAXVスラッシャー"
triggerall = power >= 3000 || (var(20) > 0 && power >= 1000 )
triggerall = statetype = A
trigger1 = ctrl

trigger2= stateno = 255 && movecontact
trigger3= stateno = 630 && movecontact
trigger4= stateno = 640 && movecontact
trigger5= stateno = 690 && movecontact

trigger6 = stateno = 1120 && movecontact
trigger6 = power >= 4000 || (var(20) > 0 && power >= 2000 )

;---------------------------------------------------------------------------
;Vスラッシャー
[State Twister Drive]
type = ChangeState
value = 2000
triggerall = command = "Vスラッシャー"
triggerall = power >= 1000 || var(20) > 0
triggerall = statetype = A
trigger1 = ctrl

trigger2= stateno = 255 && movecontact
trigger3= stateno = 630 && movecontact
trigger4= stateno = 640 && movecontact
trigger5= stateno = 690 && movecontact

trigger6 = stateno = 1120 && movecontact
trigger6 = power >= 2000 || (var(20) > 0 && power >= 1000 )

;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;グレイトフルデッド
[State Scramble Dash]
type = ChangeState
value = 1500
triggerall = command = "グレイトフルデッド"
triggerall = statetype != A
triggerall = enemy,statetype != A
triggerall = p2bodydist x <= 32
triggerall = enemy,stateno != [120,159]
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 235 && movecontact
trigger5 = stateno = 400 && movecontact


;---------------------------------------------------------------------------
;Xキャリバー2・どこでもキャンセル
[State Scramble Dash]
type = ChangeState
value = 1250
triggerall = command = "Xキャリバー2"
triggerall = statetype = A
triggerall = var(20) > 0
trigger1 = stateno = 600
trigger2 = stateno = 610
trigger3 = stateno = 1120

;---------------------------------------------------------------------------
;Xキャリバー2
[State Scramble Dash]
type = ChangeState
value = 1250
triggerall = command = "Xキャリバー2"
triggerall = statetype = A
trigger1 = ctrl
trigger2= stateno = 255 && movecontact
trigger3= stateno = 630 && movecontact
trigger4= stateno = 640 && movecontact
trigger5= stateno = 690 && movecontact

;---------------------------------------------------------------------------
;アイスラッシャー・どこでもキャンセル
[State Scramble Dash]
type = ChangeState
value = 1400
triggerall = command = "Xキャリバー2"
triggerall = statetype != A
triggerall = numhelper(1410) = 0
triggerall = var(20) > 0
trigger1 = stateno = 210
trigger2 = stateno = 230
trigger3 = stateno = 240
trigger4 = stateno = 430
trigger5 = stateno = 440
trigger6 = stateno = 1000 && movecontact

;---------------------------------------------------------------------------
;アイスラッシャー
[State Scramble Dash]
type = ChangeState
value = 1400
triggerall = command = "Xキャリバー2"
triggerall = statetype != A
triggerall = numhelper(1410) = 0
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && animelem = 4,>=0
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 245 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && animelem = 2,>=0
trigger10= stateno = 290 && movecontact


;---------------------------------------------------------------------------
;Xキャリバー
[State Scramble Dash]
type = ChangeState
value = 1200
triggerall = command = "Xキャリバー"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && animelem = 4,>=0
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 245 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && animelem = 2,>=0
trigger10= stateno = 290 && movecontact

;---------------------------------------------------------------------------
;グランドセイバー・どこでもキャンセル
[State Scramble Dash]
type = ChangeState
value = 1100
triggerall = command = "グランドセイバー"
triggerall = statetype != A
triggerall = var(20) > 0
trigger1 = stateno = 210
trigger2 = stateno = 230
trigger3 = stateno = 240
trigger4 = stateno = 430
trigger5 = stateno = 440
trigger6 = stateno = 1000 && movecontact

;---------------------------------------------------------------------------
;グランドセイバー
[State Scramble Dash]
type = ChangeState
value = 1100
triggerall = command = "グランドセイバー"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && animelem = 4,>=0
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 245 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && animelem = 2,>=0
trigger10= stateno = 290 && movecontact

;---------------------------------------------------------------------------
;ムーンスラッシャー・どこでもキャンセル
[State Scramble Dash]
type = ChangeState
value = 1000
triggerall = command = "ムーンスラッシャー"
triggerall = statetype != A
triggerall = var(20) > 0
trigger1 = stateno = 210
trigger2 = stateno = 230
trigger3 = stateno = 240
trigger4 = stateno = 430
trigger5 = stateno = 440

;---------------------------------------------------------------------------
;ムーンスラッシャー
[State Scramble Dash]
type = ChangeState
value = 1000
triggerall = command = "ムーンスラッシャー"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && animelem = 4,>=0
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 245 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && animelem = 2,>=0
trigger10= stateno = 290 && movecontact


;---------------------------------------------------------------------------
;ボルテックランチャー・強
[State Slide Touch]
type = ChangeState
value = 1301
triggerall = command = "ボルテックランチャー・強"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && animelem = 4,>=0
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 245 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && animelem = 2,>=0
trigger10= stateno = 290 && movecontact


;---------------------------------------------------------------------------
;ボルテックランチャー・弱
[State Slide Touch]
type = ChangeState
value = 1300
triggerall = command = "ボルテックランチャー・弱"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && animelem = 4,>=0
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 245 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && animelem = 2,>=0
trigger10= stateno = 290 && movecontact


;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;ガードキャンセルふっ飛ばし攻撃
[State -1, 290]
type = ChangeState
value = 291
triggerall = command = "ふっ飛ばし"
triggerall = power >= 500
trigger1 = stateno = 150
trigger2 = stateno = 151

;---------------------------------------------------------------------------
;ふっ飛ばし攻撃
[State -1, 290]
type = ChangeState
value = 290
triggerall = command = "ふっ飛ばし"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中ふっ飛ばし攻撃
[State -1, Jump Strong Kick]
type = ChangeState
value = 690
triggerall = command = "ふっ飛ばし"
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl


;---------------------------------------------------------------------------
;MAX発動
[State -1, Jump Strong Kick]
type = ChangeState
value = 900
triggerall = command = "MAX"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = var(20) = 0
trigger1 = ctrl

;---------------------------------------------------------------------------
;クイックMAX
[State -1, Jump Strong Kick]
type = ChangeState
value = 901
triggerall = command = "MAX"
triggerall = statetype != A
triggerall = power >= 2000
trigger1 = var(20) = 0
trigger1 = stateno = [200,499]
trigger1 = movecontact

;===========================================================================
;---------------------------------------------------------------------------
;緊急回避後
[State -1, Taunt]
type = ChangeState
value = 701
triggerall = command = "緊急回避後"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;ガードキャンセル緊急回避後
[State -1, 701]
type = ChangeState
value = 701
triggerall = command = "緊急回避後"
triggerall = power >= 1000
trigger1 = stateno = 150
trigger2 = stateno = 151
;---------------------------------------------------------------------------
;緊急回避前
[State -1, Taunt]
type = ChangeState
value = 700
triggerall = command = "緊急回避前"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;ガードキャンセル緊急回避前
[State -1, 700]
type = ChangeState
value = 700
triggerall = command = "緊急回避前"
triggerall = power >= 1000
trigger1 = stateno = 150
trigger2 = stateno = 151
;---------------------------------------------------------------------------
;クイック前転
[State -1, 700]
type = ChangeState
value = 700
triggerall = command = "緊急回避前"
triggerall = power >= 1000
trigger1 = stateno = [200,259]
trigger1 = movecontact
;---------------------------------------------------------------------------
;ダウン回避
[State -1, Taunt]
type = ChangeState
value = 702
triggerall = command = "緊急回避前"
triggerall = alive
trigger1 = stateno = 5050
trigger1 = pos y >=-40
trigger1 = vel y > 0
;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;レオナクラッシュ
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != 100
trigger1 = p2bodydist X < 5
trigger1 = p2statetype != A
trigger1 = p2movetype != H

;---------------------------------------------------------------------------
;オーデルバックラー
[State -1, Kung Fu Throw]
type = ChangeState
value = 820
triggerall = command = "b"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != 100
trigger1 = p2bodydist X < 5
trigger1 = p2statetype != A
trigger1 = p2movetype != H


;---------------------------------------------------------------------------
;ハイデルンインフェルノ
[State -1, Kung Fu Throw]
type = ChangeState
value = 840
triggerall = command = "y"; || command = "b"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = command != "holdup"
triggerall = statetype = A
triggerall = ctrl
trigger1 = p2bodydist X < 5
trigger1 = p2statetype = A
trigger1 = p2movetype != H

;---------------------------------------------------------------------------
;ストライクアーチ
[State -1, a]
type = ChangeState
value = 250
triggerall = command = "a"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ストライクアーチ (キャンセル版)
[State -1, a]
type = ChangeState
value = 255
triggerall = command = "a"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = stateno = 205 && movecontact
trigger2 = stateno = 210 && movecontact
trigger3 = stateno = 215 && movecontact
trigger4 = stateno = 235 && movecontact
trigger5 = stateno = 245 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact

;===========================================================================
;---------------------------------------------------------------------------
;遠距離立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2dist X >50
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger2 = animelem = 3,>=0
trigger3 = stateno = 205
trigger3 = movecontact
trigger3 = animelem = 3,>=0
trigger4 = stateno = 400
trigger4 = movecontact
trigger4 = animelem = 5,>=0
trigger5 = stateno = 430
trigger5 = movecontact
trigger5 = animelem = 4,>=0

;---------------------------------------------------------------------------
;近距離立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 205
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2dist X <=50
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger2 = animelem = 3,>=0
trigger3 = stateno = 205
trigger3 = movecontact
trigger3 = animelem = 3,>=0
trigger4 = stateno = 400
trigger4 = movecontact
trigger4 = animelem = 5,>=0
trigger5 = stateno = 430
trigger5 = movecontact
trigger5 = animelem = 4,>=0

;---------------------------------------------------------------------------
;遠距離立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2dist X >55
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;近距離立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 215
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2dist X <=55
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;遠距離立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2dist X >50
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger2 = animelem = 3,>=0
trigger3 = stateno = 205
trigger3 = movecontact
trigger3 = animelem = 3,>=0
trigger4 = stateno = 400
trigger4 = movecontact
trigger4 = animelem = 5,>=0
trigger5 = stateno = 430
trigger5 = movecontact
trigger5 = animelem = 4,>=0

;---------------------------------------------------------------------------
;近距離立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 235
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2dist X <=50
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger2 = animelem = 3,>=0
trigger3 = stateno = 205
trigger3 = movecontact
trigger3 = animelem = 3,>=0
trigger4 = stateno = 400
trigger4 = movecontact
trigger4 = animelem = 5,>=0
trigger5 = stateno = 430
trigger5 = movecontact
trigger5 = animelem = 4,>=0

;---------------------------------------------------------------------------
;遠距離立ち強キック1
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2dist X >55
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;近距離立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 245
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2dist X <=55
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;挑発
[State -1, Taunt]
type = ChangeState
value = 199
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger2 = animelem = 3,>=0
trigger3 = stateno = 205
trigger3 = movecontact
trigger3 = animelem = 3,>=0
trigger4 = stateno = 400
trigger4 = movecontact
trigger4 = animelem = 5,>=0
trigger5 = stateno = 430
trigger5 = movecontact
trigger5 = animelem = 4,>=0

;---------------------------------------------------------------------------
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger2 = animelem = 3,>=0
trigger3 = stateno = 205
trigger3 = movecontact
trigger3 = animelem = 3,>=0
trigger4 = stateno = 430
trigger4 = movecontact
trigger4 = animelem = 4,>=0

;---------------------------------------------------------------------------
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
