;-| 超必殺技 |--------------------------------------------------------
;ここには超必殺技を記述してください、同じ名前を「name =」欄に書けますが
;コマンドは絶対に違ったものにしてください。
;カンフーマンは弱パンチと強パンチで技が出せるように同じ名前のコマンドで
;内容が弱と強になっています。
;「time=20」と書くことで「コマンドを20フレーム以内に入力」と設定できます。
[Command]
name = "キーオブビクトリー"
command = ~F,a,y,F,y
time = 60

[Command]
name = "メイ・ジ・エンド"
command = ~D,DF,F,D,DF,F, x+y
time = 25


[Command]
name = "メイ・リー ダイナミック"
command = ~D,DF,F,D,DF,F, y
time = 25

[Command]
name = "メイ・リー ダイナミック"
command = ~D,DF,F,D,DF,F, x
time = 25


[Command]
name = "ディスポジションフロッグ2"
command = x+y,a+b,z+c
time = 60

[Command]
name = "ディスポジションフロッグ2"
command = x+y,a+b,x+y+a
time = 60

[Command]
name = "ディスポジションフロッグ"
command = ~D,DF,F,D,DF,F, a+b
time = 25


[Command]
name = "ゴッズテイルティンカーベル"
command = ~D,DB,B,D,DB,B, b
time = 25

[Command]
name = "ゴッズテイルティンカーベル"
command = ~D,DB,B,D,DB,B, a
time = 25

;-| 必殺技 |------------------------------------------------------
[Command]
name = "ブレイジングインターセプト"
command = ~F,DF,D,DB,B,b

[Command]
name = "ブレイジングインターセプト"
command = ~F,DF,D,DB,B,a


[Command]
name = "メイ・リー ブレイク"
command = ~F,DF,D,DB,B,F,y
time = 25

[Command]
name = "メイ・リー ブレイク"
command = ~F,DF,D,DB,B,F,x
time = 25


[Command]
name = "メイ・リー チョ～ップ！"
command = ~D,DB,B,y

[Command]
name = "メイ・リー チョ～ップ！"
command = ~D,DB,B,x


[Command]
name = "強フルスイングチョップ"
command = ~D,DF,F,y

[Command]
name = "弱フルスイングチョップ"
command = ~D,DF,F,x


[Command]
name = "ブレイジングインターセプト2"
command = /$B,b
time = 1

[Command]
name = "ブレイジングインターセプト2"
command = /$B,a
time = 1


[Command]
name = "サプライズエアー"
command = /$UF,b
time = 1

[Command]
name = "サプライズエアー"
command = /$UF,a
time = 1


[Command]
name = "イントゥスカイ"
command = /$U,b
time = 1

[Command]
name = "イントゥスカイ"
command = /$U,a
time = 1


[Command]
name = "ソードフィッシュ"
command = /$DF,b
time = 1

[Command]
name = "ソードフィッシュ"
command = /$DF,a
time = 1


[Command]
name = "ディノサウルスフットプリント"
command = /$D,b
time = 1

[Command]
name = "ディノサウルスフットプリント"
command = /$D,a
time = 1


[Command]
name = "強ライトニングニードル"
command = ~D,DF,F,b

[Command]
name = "弱ライトニングニードル"
command = ~D,DF,F,a


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

;-| ２回押し技 |-----------------------------------------------------------
[Command]
name = "FF"     
command = F, F
time = 10

[Command]
name = "BB"     
command = B, B
time = 10

;-| ２・３個の同時押し技 |-----------------------------------------------
[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "ふっ飛ばし"
command = y+b
time = 1

[Command]
name = "ふっ飛ばし"
command = c
time = 1

[Command]
name = "MAX"
command = a+y
time = 1

[Command]
name = "変身"
command = x+a+y
time = 1

[Command]
name = "変身"
command = z+c
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

;-| 方向とボタンで出す技 |---------------------------------------------------------
[Command]
name = "ヒーロー受け"
command = /$F,x
time = 1

[Command]
name = "スライディング"
command = /$DF,a
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| ボタン設定（いじらない）|---------------------------------------------------------
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

;-| 押しっぱなし設定（いじらない）-------------------------------------------------------
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


; 下の記述↓は絶対に消さないでください。
[Statedef -1]
;・変数使用
;　1 = バージョン判定
;　2 = 勝利ポーズ変更
;　3 = MAX発動関係
;　4 = スロー処理
;　5 = 強弱ボタン判定
;　6 = ヒット判定
;　7 = 変身フラグ
;　8 = MAX発動判定
;　9 = MAX発動時のパワーセット(仮)
; 10 = プレイヤーの向き設定
; 11 = MAX発動コマンド判定
; 12 = ???
; 13 = ライトニングニードル派生技分岐判定
; 14 = キーオブビクトリー使用変数
; 15 = ハイジャンプ
; 16 = 小ジャンプ



;===========================================================================
;---------------------------------------------------------------------------
;キーオブビクトリー
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2400
triggerall = command = "キーオブビクトリー"
triggerall = (power >= 1000)&&(life<=250)
triggerall = var(8) >= 1
triggerall = var(7) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [3200,3499]



;---------------------------------------------------------------------------
;メイ・ジ・エンド
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2300
triggerall = command = "メイ・ジ・エンド"
triggerall = (power >= 1000)&&(var(8) >= 1)
triggerall = var(7) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [3200,3499]

trigger3 = stateno = 4001
trigger3 = movecontact
trigger3 = (power >= 3000)||(var(8) >= 1 && power >= 2000)

;---------------------------------------------------------------------------
;メイ・リー ダイナミック
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2200
triggerall = command = "メイ・リー ダイナミック"
triggerall = (power >= 1000)||(var(8) >= 1)
triggerall = var(7) = 1
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 3600
trigger2 = movecontact = 1
trigger3 = stateno = 3610
trigger3 = movecontact
trigger4 = stateno = 3640
trigger4 = movecontact = 1

trigger5 = stateno = 4110
trigger5 = movecontact
trigger5 = (power >= 2000)||(var(8) >= 1 && power >= 1000)
trigger6 = stateno = 4111
trigger6 = movecontact
trigger6 = (power >= 2000)||(var(8) >= 1 && power >= 1000)
trigger7 = stateno = 4310
trigger7 = movecontact
trigger7 = (power >= 2000)||(var(8) >= 1 && power >= 1000)

;---------------------------------------------------------------------------
;ディスポジションフロッグ
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2100
triggerall = command = "ディスポジションフロッグ2"
triggerall = (power >= 1000)&&(var(8) >= 1)
triggerall = var(7) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger3 = stateno = 1010
trigger3 = movecontact
trigger3 = (var(8) >= 1 && power >= 2000)

;---------------------------------------------------------------------------
;ディスポジションフロッグ
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2100
triggerall = command = "ディスポジションフロッグ"
triggerall = (power >= 1000)&&(var(8) >= 1)
triggerall = var(7) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 205
trigger4 = stateno = 215
trigger5 = stateno = 235
trigger6 = stateno = 245
trigger7 = stateno = 400
trigger8 = stateno = 410
trigger9 = stateno = 430
trigger10= stateno = 440

trigger11= stateno = 1010
trigger11= movecontact
trigger11= (var(8) >= 1 && power >= 2000)

trigger12= stateno = 290

;---------------------------------------------------------------------------
;ゴッズテイルティンカーベル
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2000
triggerall = command = "ゴッズテイルティンカーベル"
triggerall = (power >= 1000)||(var(8) >= 1)
triggerall = var(7) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 205
trigger4 = stateno = 215
trigger5 = stateno = 235
trigger6 = stateno = 245
trigger7 = stateno = 400
trigger8 = stateno = 410
trigger9 = stateno = 430
trigger10= stateno = 440

trigger11= stateno = 1010
trigger11= movecontact
trigger11= (power >= 2000)||(var(8) >= 1 && power >= 1000)

trigger12= stateno = 290

;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;強シャイニングサンダーブロウ
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 4310
triggerall = command = "強ライトニングニードル"
triggerall = var(7) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [3200,3249]
trigger3 = stateno = 3250
trigger3 = movecontact
trigger4 = stateno = [3400,3449]
;---------------------------------------------------------------------------
;弱シャイニングサンダーブロウ
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 4300
triggerall = command = "弱ライトニングニードル"
triggerall = var(7) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [3200,3249]
trigger3 = stateno = 3250
trigger3 = movecontact
trigger4 = stateno = [3400,3449]
;---------------------------------------------------------------------------
;メイ・リー ブレイク
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 4200
triggerall = command = "メイ・リー ブレイク"
triggerall = var(7) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [3200,3249]
trigger3 = stateno = 3250
trigger3 = movecontact
trigger4 = stateno = [3400,3449]

;---------------------------------------------------------------------------
;メイ・リー チョ～ップ！
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 4100
triggerall = command = "メイ・リー チョ～ップ！"
triggerall = var(7) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [3200,3249]
trigger3 = stateno = 3250
trigger3 = movecontact
trigger4 = stateno = [3400,3449]


;---------------------------------------------------------------------------
;強フルスイングチョップ
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 4001
triggerall = command = "強フルスイングチョップ"
triggerall = var(7) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [3200,3249]
trigger3 = stateno = 3250
trigger3 = movecontact
trigger4 = stateno = [3400,3449]

;---------------------------------------------------------------------------
;弱フルスイングチョップ
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 4000
triggerall = command = "弱フルスイングチョップ"
triggerall = var(7) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [3200,3249]
trigger3 = stateno = 3250
trigger3 = movecontact
trigger4 = stateno = [3400,3449]


;---------------------------------------------------------------------------
;ブレイジングインターセプト
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1070
triggerall = command = "ブレイジングインターセプト"
triggerall = ((var(7) = 0)&&(var(12) = 0))
triggerall = var(1) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 205
trigger4 = stateno = 215
trigger5 = stateno = 235
trigger6 = stateno = 245
trigger7 = stateno = 400
trigger8 = stateno = 410
trigger9 = stateno = 430
trigger10= stateno = 440
trigger11= stateno = 290

;---------------------------------------------------------------------------
;ライトニングニードル
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1000
triggerall = (command = "弱ライトニングニードル")||(command = "強ライトニングニードル")
triggerall = ((var(7) = 0)&&(var(12) = 0))
triggerall = var(1) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 205
trigger4 = stateno = 215
trigger5 = stateno = 235
trigger6 = stateno = 245
trigger7 = stateno = 400
trigger8 = stateno = 410
trigger9 = stateno = 430
trigger10= stateno = 440
trigger11= stateno = 290

;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;変身(スタンダード→ヒーロー)
[State -1, Stand Light Punch]
type = ChangeState
value = 300
triggerall = command = "変身"
triggerall = var(7) = 0
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger3 = stateno = [1000,1999]
trigger3 = movecontact = 1
;---------------------------------------------------------------------------
;変身(ヒーロー→スタンダード)
[State -1, Stand Light Punch]
type = ChangeState
value = 3300
triggerall = command = "変身"
triggerall = var(7) = 1
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [3200,3499]
trigger3 = (stateno = [3200,4999])||(stateno = [200,1999])
trigger3 = movecontact = 1
;---------------------------------------------------------------------------
;ふっ飛ばし攻撃
[State -1, Stand Light Punch]
type = ChangeState
value = 290
triggerall = (var(7) = 0)||((var(7) = 1)&&(var(12) = 1))
triggerall = command = "ふっ飛ばし"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;ヒーローふっ飛ばし攻撃
[State -1, Stand Light Punch]
type = ChangeState
value = 3290
triggerall = ((var(7) = 1)&&(var(12) = 0))
triggerall = command = "ふっ飛ばし"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;空中ふっ飛ばし攻撃
[State -1, Stand Light Punch]
type = ChangeState
value = 690
triggerall = (var(7) = 0)||((var(7) = 1)&&(var(12) = 1))
triggerall = command = "ふっ飛ばし"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;ガードキャンセルふっ飛ばし攻撃
[State -1, 290]
type = ChangeState
value = 291
triggerall = command = "ふっ飛ばし"
triggerall = power >= 1000
trigger1 = stateno = 150
trigger2 = stateno = 151


;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;クイックMAX
[State -1, Stand Light Punch]
type = ChangeState
value = 198
triggerall = command = "MAX"
triggerall = power >= 2000 
triggerall = var(8) <= 0
trigger1 = stateno = [200,499]
trigger1 = movecontact = 1
trigger2 = stateno = [3200,3499]
trigger2 = movecontact = 1
;---------------------------------------------------------------------------
;MAX発動
[State -1, Stand Light Punch]
type = ChangeState
value = 199
triggerall = command = "MAX"
triggerall = power >= 1000 
trigger1 = statetype = S
trigger1 = var(8) <= 0
trigger1 = ctrl
;---------------------------------------------------------------------------
;緊急回避後
[State -1, Taunt]
type = ChangeState
value = 701
triggerall = (var(7) = 0)||((var(7) = 1)&&(var(12) = 1))
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
;ヒーロー緊急回避後
[State -1, Taunt]
type = ChangeState
value = 3701
triggerall = ((var(7) = 1)&&(var(12) = 0))
triggerall = command = "緊急回避後"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;緊急回避前
[State -1, Taunt]
type = ChangeState
value = 700
triggerall = (var(7) = 0)||((var(7) = 1)&&(var(12) = 1))
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
;ヒーロー緊急回避前
[State -1, Taunt]
type = ChangeState
value = 3700
triggerall = ((var(7) = 1)&&(var(12) = 0))
triggerall = command = "緊急回避前"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;ダウン回避
[State -1, Taunt]
type = ChangeState
value = 702
triggerall = command = "緊急回避前"
trigger1 = stateno = 5050
trigger1 = pos y >=-40
;---------------------------------------------------------------------------
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;ヒーロー受け
[State -1, Stand Light Punch]
type = ChangeState
value = 3250
triggerall = ((var(7) = 1)&&(var(12) = 0))
triggerall = command = "ヒーロー受け"
triggerall = var(7) = 1
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [3000,3499]
trigger2 = stateno != 3290
trigger2 = stateno != 3250
trigger2 = stateno != 3450
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
;スライディング
[State -1, Stand Light Punch]
type = ChangeState
value = 3450
triggerall = ((var(7) = 1)&&(var(12) = 0))
triggerall = command = "スライディング"
triggerall = var(7) = 1
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [3000,3499]
trigger2 = stateno != 3290
trigger2 = stateno != 3250
trigger2 = stateno != 3450
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
;クロゥスウィング(表演舞)
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = (var(7) = 0)||((var(7) = 1)&&(var(12) = 1))
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
;---------------------------------------------------------------------------
;スワンサークル(裏演舞)
[State -1, Kung Fu Throw]
type = ChangeState
value = 850
triggerall = (var(7) = 0)||((var(7) = 1)&&(var(12) = 1))
triggerall = command = "b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;遠距離立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = (var(7) = 0)||((var(7) = 1)&&(var(12) = 1))
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2dist X >50
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;近距離立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 205
triggerall = (var(7) = 0)||((var(7) = 1)&&(var(12) = 1))
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2dist X <=50
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;ヒーロー立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 3200
triggerall = ((var(7) = 1)&&(var(12) = 0))
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;遠距離立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = (var(7) = 0)||((var(7) = 1)&&(var(12) = 1))
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2dist X >50
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;近距離立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 215
triggerall = (var(7) = 0)||((var(7) = 1)&&(var(12) = 1))
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2dist X <=50
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ヒーロー立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 3210
triggerall = ((var(7) = 1)&&(var(12) = 0))
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;遠距離立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = (var(7) = 0)||((var(7) = 1)&&(var(12) = 1))
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2dist X >50
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;近距離立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 235
triggerall = (var(7) = 0)||((var(7) = 1)&&(var(12) = 1))
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2dist X <=50
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ヒーロー立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 3230
triggerall = ((var(7) = 1)&&(var(12) = 0))
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl


;---------------------------------------------------------------------------
;遠距離立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = (var(7) = 0)||((var(7) = 1)&&(var(12) = 1))
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2dist X >50
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;近距離立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 245
triggerall = (var(7) = 0)||((var(7) = 1)&&(var(12) = 1))
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2dist X <=50
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;ヒーロー立ち強キック
[State -1, Stand Light Kick]
type = ChangeState
value = 3240
triggerall = ((var(7) = 1)&&(var(12) = 0))
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl


;---------------------------------------------------------------------------
;挑発・スタンダード
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
triggerall = var(7) = 0
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;挑発・ヒーロー
[State -1, Taunt]
type = ChangeState
value = 3195
triggerall = command = "start"
triggerall = var(7) = 1
trigger1 = statetype != A
trigger1 = ctrl


;---------------------------------------------------------------------------
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = (var(7) = 0)||((var(7) = 1)&&(var(12) = 1))
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;ヒーローしゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 3400
triggerall = ((var(7) = 1)&&(var(12) = 0))
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = (var(7) = 0)||((var(7) = 1)&&(var(12) = 1))
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;ヒーローしゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 3410
triggerall = ((var(7) = 1)&&(var(12) = 0))
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = (var(7) = 0)||((var(7) = 1)&&(var(12) = 1))
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;ヒーローしゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 3430
triggerall = ((var(7) = 1)&&(var(12) = 0))
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl


;---------------------------------------------------------------------------
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = (var(7) = 0)||((var(7) = 1)&&(var(12) = 1))
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;ヒーローしゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 3440
triggerall = ((var(7) = 1)&&(var(12) = 0))
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = (var(7) = 0)||((var(7) = 1)&&(var(12) = 1))
triggerall = command = "x"
trigger1 = vel x = 0
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl
;---------------------------------------------------------------------------
;斜め空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 605
triggerall = (var(7) = 0)||((var(7) = 1)&&(var(12) = 1))
triggerall = command = "x"
trigger1 = vel x != 0
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl
;---------------------------------------------------------------------------
;ヒーロー空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 3600
triggerall = ((var(7) = 1)&&(var(12) = 0))
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl


;---------------------------------------------------------------------------
;垂直空中強パンチ
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = (var(7) = 0)||((var(7) = 1)&&(var(12) = 1))
triggerall = command = "y"
trigger1 = vel x = 0
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl

;---------------------------------------------------------------------------
;斜め空中強パンチ
[State -1, Jump Strong Punch]
type = ChangeState
value = 615
triggerall = (var(7) = 0)||((var(7) = 1)&&(var(12) = 1))
triggerall = command = "y"
trigger1 = vel x != 0
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl
;---------------------------------------------------------------------------
;ヒーロー空中強パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 3610
triggerall = ((var(7) = 1)&&(var(12) = 0))
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl

;---------------------------------------------------------------------------
;垂直空中弱キック
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = (var(7) = 0)||((var(7) = 1)&&(var(12) = 1))
triggerall = command = "a"
trigger1 = vel x = 0
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl

;---------------------------------------------------------------------------
;斜め空中弱キック
[State -1, Jump Light Kick]
type = ChangeState
value = 635
triggerall = (var(7) = 0)||((var(7) = 1)&&(var(12) = 1))
triggerall = command = "a"
trigger1 = vel x != 0
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl
;---------------------------------------------------------------------------
;ヒーロー空中弱キック
[State -1, Jump Light Kick]
type = ChangeState
value = 3630
triggerall = ((var(7) = 1)&&(var(12) = 0))
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl

;---------------------------------------------------------------------------
;垂直空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = (var(7) = 0)||((var(7) = 1)&&(var(12) = 1))
triggerall = command = "b"
trigger1 = vel x = 0
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl

;---------------------------------------------------------------------------
;斜め空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 645
triggerall = (var(7) = 0)||((var(7) = 1)&&(var(12) = 1))
triggerall = command = "b"
trigger1 = vel x != 0
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl
;---------------------------------------------------------------------------
;ヒーロー空中強キック
[State -1, Jump Light Kick]
type = ChangeState
value = 3640
triggerall = ((var(7) = 1)&&(var(12) = 0))
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl

;---------------------------------------------------------------------------
