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
name = "�J���o�[��"
command = ~D, F, D, F, a+b
time = 35


[Command]
name = "MAX�C���t�B�j�e�B�X���b�V���["
command = ~D, F, D, F, x+y
time = 25

[Command]
name = "�C���t�B�j�e�B�X���b�V���["
command = ~D, F, D, F, y
time = 25

[Command]
name = "�C���t�B�j�e�B�X���b�V���["
command = ~D, F, D, F, x
time = 25


[Command]
name = "MAX���{���X�p�[�N"
command = ~D, B, D, F, a+b
time = 25


[Command]
name = "���{���X�p�[�N"
command = ~D, B, D, F, b
time = 25

[Command]
name = "���{���X�p�[�N"
command = ~D, B, D, F, a
time = 25



[Command]
name = "MAX�c�C�X�^�[�h���C�u"
command = ~D, B, D, B, a+b
time = 25


[Command]
name = "MAXV�X���b�V���["
command = ~D, F, D, B, x+y
time = 25

[Command]
name = "V�X���b�V���["
command = ~D, F, D, B, y
time = 25

[Command]
name = "V�X���b�V���["
command = ~D, F, D, B, x
time = 25


;-| Special Motions |------------------------------------------------------
[Command]
name = "�O���C�g�t���f�b�h"
command = ~F,D,B,F, y
time = 20

[Command]
name = "�O���C�g�t���f�b�h"
command = ~F,D,B,F, x
time = 20


[Command]
name = "X�L�����o�[2"
command = ~D, DB, B, y

[Command]
name = "X�L�����o�[2"
command = ~D, DB, B, x


[Command]
name = "X�L�����o�["
command = ~F, D, DF, b

[Command]
name = "X�L�����o�["
command = ~F, D, DF, a



[Command]
name = "�O�����h�Z�C�o�["
command = ~D, DF, F, b

[Command]
name = "�O�����h�Z�C�o�["
command = ~D, DF, F, a


[Command]
name = "���[���X���b�V���["
command = ~F, D, DF, x

[Command]
name = "���[���X���b�V���["
command = ~F, D, DF, y

[Command]
name = "�{���e�b�N�����`���[�E��"
command = ~D, DF, F, y

[Command]
name = "�{���e�b�N�����`���[�E��"
command = ~D, DF, F, x



[Command]
name = "�ً}���O"
command = x+a
time = 1

[Command]
name = "�ً}���O"
command = z
time = 1

[Command]
name = "�ً}�����"
command = /$B,x+a
time = 1

[Command]
name = "�ً}�����"
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
name = "�ӂ���΂�"
command = c
time = 1

[Command]
name = "�ӂ���΂�"
command = y+b
time = 1

[Command]
name = "MAX"
command = y+a
time = 1

[Command]
name = "�������ςȂ�x"
command = /$x
time = 1

[Command]
name = "�������ςȂ�y"
command = /$y
time = 1

[Command]
name = "�������ςȂ�a"
command = /$a
time = 1

[Command]
name = "�������ςȂ�b"
command = /$b
time = 1

[Command]
name = "�������ςȂ�z"
command = /$z
time = 1

[Command]
name = "�������ςȂ�c"
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
;�J���o�[��
[State ERROR]
type = ChangeState
value = 2500
triggerall = command = "�J���o�[��"
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
;MAX�C���t�B�j�e�B�X���b�V���[
[State Chain Slide Touch]
type = ChangeState
value = 2250
triggerall = command = "MAX�C���t�B�j�e�B�X���b�V���["
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
;�C���t�B�j�e�B�X���b�V���[
[State Chain Slide Touch]
type = ChangeState
value = 2200
triggerall = command = "�C���t�B�j�e�B�X���b�V���["
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
;MAX���{���X�p�[�N
[State Chain Slide Touch]
type = ChangeState
value = 2150
triggerall = command = "MAX���{���X�p�[�N"
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
;���{���X�p�[�N
[State Chain Slide Touch]
type = ChangeState
value = 2100
triggerall = command = "���{���X�p�[�N"
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
;MAXV�X���b�V���[
[State Twister Drive]
type = ChangeState
value = 2050
triggerall = command = "MAXV�X���b�V���["
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
;V�X���b�V���[
[State Twister Drive]
type = ChangeState
value = 2000
triggerall = command = "V�X���b�V���["
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
;�O���C�g�t���f�b�h
[State Scramble Dash]
type = ChangeState
value = 1500
triggerall = command = "�O���C�g�t���f�b�h"
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
;X�L�����o�[2�E�ǂ��ł��L�����Z��
[State Scramble Dash]
type = ChangeState
value = 1250
triggerall = command = "X�L�����o�[2"
triggerall = statetype = A
triggerall = var(20) > 0
trigger1 = stateno = 600
trigger2 = stateno = 610
trigger3 = stateno = 1120

;---------------------------------------------------------------------------
;X�L�����o�[2
[State Scramble Dash]
type = ChangeState
value = 1250
triggerall = command = "X�L�����o�[2"
triggerall = statetype = A
trigger1 = ctrl
trigger2= stateno = 255 && movecontact
trigger3= stateno = 630 && movecontact
trigger4= stateno = 640 && movecontact
trigger5= stateno = 690 && movecontact

;---------------------------------------------------------------------------
;�A�C�X���b�V���[�E�ǂ��ł��L�����Z��
[State Scramble Dash]
type = ChangeState
value = 1400
triggerall = command = "X�L�����o�[2"
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
;�A�C�X���b�V���[
[State Scramble Dash]
type = ChangeState
value = 1400
triggerall = command = "X�L�����o�[2"
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
;X�L�����o�[
[State Scramble Dash]
type = ChangeState
value = 1200
triggerall = command = "X�L�����o�["
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
;�O�����h�Z�C�o�[�E�ǂ��ł��L�����Z��
[State Scramble Dash]
type = ChangeState
value = 1100
triggerall = command = "�O�����h�Z�C�o�["
triggerall = statetype != A
triggerall = var(20) > 0
trigger1 = stateno = 210
trigger2 = stateno = 230
trigger3 = stateno = 240
trigger4 = stateno = 430
trigger5 = stateno = 440
trigger6 = stateno = 1000 && movecontact

;---------------------------------------------------------------------------
;�O�����h�Z�C�o�[
[State Scramble Dash]
type = ChangeState
value = 1100
triggerall = command = "�O�����h�Z�C�o�["
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
;���[���X���b�V���[�E�ǂ��ł��L�����Z��
[State Scramble Dash]
type = ChangeState
value = 1000
triggerall = command = "���[���X���b�V���["
triggerall = statetype != A
triggerall = var(20) > 0
trigger1 = stateno = 210
trigger2 = stateno = 230
trigger3 = stateno = 240
trigger4 = stateno = 430
trigger5 = stateno = 440

;---------------------------------------------------------------------------
;���[���X���b�V���[
[State Scramble Dash]
type = ChangeState
value = 1000
triggerall = command = "���[���X���b�V���["
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
;�{���e�b�N�����`���[�E��
[State Slide Touch]
type = ChangeState
value = 1301
triggerall = command = "�{���e�b�N�����`���[�E��"
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
;�{���e�b�N�����`���[�E��
[State Slide Touch]
type = ChangeState
value = 1300
triggerall = command = "�{���e�b�N�����`���[�E��"
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
;�K�[�h�L�����Z���ӂ���΂��U��
[State -1, 290]
type = ChangeState
value = 291
triggerall = command = "�ӂ���΂�"
triggerall = power >= 500
trigger1 = stateno = 150
trigger2 = stateno = 151

;---------------------------------------------------------------------------
;�ӂ���΂��U��
[State -1, 290]
type = ChangeState
value = 290
triggerall = command = "�ӂ���΂�"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;�󒆂ӂ���΂��U��
[State -1, Jump Strong Kick]
type = ChangeState
value = 690
triggerall = command = "�ӂ���΂�"
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl


;---------------------------------------------------------------------------
;MAX����
[State -1, Jump Strong Kick]
type = ChangeState
value = 900
triggerall = command = "MAX"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = var(20) = 0
trigger1 = ctrl

;---------------------------------------------------------------------------
;�N�C�b�NMAX
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
;�ً}�����
[State -1, Taunt]
type = ChangeState
value = 701
triggerall = command = "�ً}�����"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;�K�[�h�L�����Z���ً}�����
[State -1, 701]
type = ChangeState
value = 701
triggerall = command = "�ً}�����"
triggerall = power >= 1000
trigger1 = stateno = 150
trigger2 = stateno = 151
;---------------------------------------------------------------------------
;�ً}���O
[State -1, Taunt]
type = ChangeState
value = 700
triggerall = command = "�ً}���O"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;�K�[�h�L�����Z���ً}���O
[State -1, 700]
type = ChangeState
value = 700
triggerall = command = "�ً}���O"
triggerall = power >= 1000
trigger1 = stateno = 150
trigger2 = stateno = 151
;---------------------------------------------------------------------------
;�N�C�b�N�O�]
[State -1, 700]
type = ChangeState
value = 700
triggerall = command = "�ً}���O"
triggerall = power >= 1000
trigger1 = stateno = [200,259]
trigger1 = movecontact
;---------------------------------------------------------------------------
;�_�E�����
[State -1, Taunt]
type = ChangeState
value = 702
triggerall = command = "�ً}���O"
triggerall = alive
trigger1 = stateno = 5050
trigger1 = pos y >=-40
trigger1 = vel y > 0
;---------------------------------------------------------------------------
;Run Fwd
;�_�b�V��
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;��ރ_�b�V��
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;���I�i�N���b�V��
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
;�I�[�f���o�b�N���[
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
;�n�C�f�����C���t�F���m
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
;�X�g���C�N�A�[�`
[State -1, a]
type = ChangeState
value = 250
triggerall = command = "a"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;�X�g���C�N�A�[�` (�L�����Z����)
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
;������������p���`
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
;�ߋ���������p���`
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
;�������������p���`
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2dist X >55
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;�ߋ����������p���`
[State -1, Stand Strong Punch]
type = ChangeState
value = 215
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2dist X <=55
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;������������L�b�N
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
;�ߋ���������L�b�N
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
;�������������L�b�N1
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2dist X >55
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;�ߋ����������L�b�N
[State -1, Standing Strong Kick]
type = ChangeState
value = 245
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2dist X <=55
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;����
[State -1, Taunt]
type = ChangeState
value = 199
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;���Ⴊ�ݎ�p���`
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
;���Ⴊ�݋��p���`
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;���Ⴊ�ݎ�L�b�N
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
;���Ⴊ�݋��L�b�N
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;�󒆎�p���`
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
;�󒆋��L�b�N
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
