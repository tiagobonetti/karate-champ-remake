;=======================================================================;
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| �W���� |-------------------------------------------------------
[Defaults]

command.time = 15

command.buffer.time = 1

;------------------------------------------------------------------------------
;-| Movimientos Hypers |--------------------------------------------------------------

[command]
name = "Hyper-Long-walk-hell"
command = ~D,F,D,B,c
time = 30
;------------------------------------------------------------------------------
;-| Movimientos Dobles|--------------------------------------------------------------

[command]
name = "Super-Long-walk-hell"
command = ~D,F,D,B,a+b
time = 30

[command]
name = "Doble-Zake-FireBall"
command = ~D,DF,F,D,DF,F,c
time = 30
;------------------------------------------------------------------------------
;-| Movimientos especiales |-----------------------------------------------------------------

[command]
name = "Long-walk-hell"
command = ~D,F,D,B,a
time = 25

[command]
name = "Long-walk-hell"
command = ~D,F,D,B,b
time = 25

[command]
name = "Zake-FireBall-x"
command = ~D,DF,F,D,DF,F,x
time = 25

[command]
name = "Zake-FireBall-y"
command = ~D,DF,F,D,DF,F,y
time = 25

[command]
name = "Take-Explotion"
command = ~D,B,D,B,x
time = 25

[command]
name = "Take-Explotion"
command = ~D,B,D,B,y
time = 25
;------------------------------------------------------------------------------
;-| Movimientos Vasicos |-------------------------------------------------------------------

[command]
name = "Zake-Atack"
command = ~D,DB,B,x
time = 20

[command]
name = "Zake-Atack-2"
command = ~D,DB,B,y
time = 20

[command]
name = "Fire-Zake"
command = ~D,DF,F,x
time = 20

[command]
name = "Fire-Zake-2"
command = ~D,DF,F,y
time = 20

[command]
name = "upper_x"
command = ~F,D,DF,x
time = 20

[command]
name = "upper_y"
command = ~F,D,DF,y
time = 20

[Command]
name = "Drunkard-Mode"
command = D, D, a
time = 20

[Command]
name = "Drunkard-Mode"
command = D, D, b
time = 20

[command]
name = "Drunkard-Mode-1"
command = D,D,x
time = 20

[command]
name = "Drunkard-Mode-2"
command = D,D,y
time = 20

[command]
name = "Flash-Punch"
command = ~D,DF,F,a
time = 20

[command]
name = "Flash-Punch-2"
command = ~D,DF,F,b
time = 20

;-| �K�E�Z |-------------------------------------------------------------------
[Command]
name = "jump"    
command = D, $U
time = 12

;------------------------------------------------------------------------------
;-| �L�[�Q��A������ |---------------------------------------------------------
[Command]
name = "FF"     ;�v���ς� (�L�[�̕ύX�͉\�ł������O��ς����薳���ɂ��Ă͂����܂���)
command = F, F
time = 10

[Command]
name = "BB"     ;�v���ς� (�L�[�̕ύX�͉\�ł������O��ς����薳���ɂ��Ă͂����܂���)
command = B, B
time = 10

;------------------------------------------------------------------------------
;-| �������� |-----------------------------------------------------------------
[Command]
name = "recovery"   ;�v���ς� (�L�[�̕ύX�͉\�ł������O��ς����薳���ɂ��Ă͂����܂���)
command = x+a
time = 1

[Command]
name = "recovery"   ;�v���ς� (�L�[�̕ύX�͉\�ł������O��ς����薳���ɂ��Ă͂����܂���)
command = z
time = 1

[Command]
name = "�ӂ��Ƃ΂�"
command = y+b
time = 1

[Command]
name = "�ӂ��Ƃ΂�"
command = c
time = 1

[Command]
name = "x+y"
command = x+y
time = 1

[Command]
name = "a+b"
command = a+b
time = 1

[Command]
name = "hold_a"
command = /$a
time = 1

[Command]
name = "hold_y"
command = /$y
time = 1

[Command]
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_x"
command = /$F,x
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

;------------------------------------------------------------------------------
;-| �����L�[�{�{�^�� |---------------------------------------------------------

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;------------------------------------------------------------------------------
;-| �{�^���P�� |---------------------------------------------------------------
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

;------------------------------------------------------------------------------
;-| �����L�[�������ςȂ� |-----------------------------------------------------
[Command]
name = "holdfwd"   ;�v���ς� (�L�[�̕ύX�͉\�ł������O��ς����薳���ɂ��Ă͂����܂���)
command = /$F
time = 1

[Command]
name = "holdback"  ;�v���ς� (�L�[�̕ύX�͉\�ł������O��ς����薳���ɂ��Ă͂����܂���)
command = /$B
time = 1

[Command]
name = "holdup"    ;�v���ς� (�L�[�̕ύX�͉\�ł������O��ς����薳���ɂ��Ă͂����܂���)
command = /$U
time = 1

[Command]
name = "holddown"  ;�v���ς� (�L�[�̕ύX�͉\�ł������O��ς����薳���ɂ��Ă͂����܂���)
command = /$D
time = 1

[Command]
name = "holdxy"
command = /$x+y
time = 1

[Command]
name = "holdc"
command = /$c
time = 1

[Command]
name = "holdx"
command = /$x
time = 1

[Command]
name = "holdy"
command = /$y
time = 1

;------------------------------------------------------------------------------
;==============================================================================
;------------------------------------------------------------------------------

[Statedef -1]

;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;Take Explotion
[State -1, Take Explotion]
type = ChangeState
value = 1950
triggerall = command = "Take-Explotion"
triggerall = power >= 1000
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 300
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 210
trigger6 = movecontact
trigger7 = stateno = 235
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 245
trigger9 = movecontact
trigger10 = stateno = 240
trigger10 = movecontact
trigger11 = stateno = 400
trigger11 = movecontact
trigger12 = stateno = 410
trigger12 = movecontact
trigger13 = stateno = 430
trigger13 = movecontact
trigger14 = stateno = 440
trigger14 = movecontact
;-------------------------------------------------------------------------------
;Drunkard Mode 2
[State -1, Drunkard Mode 2]
type = ChangeState
value = 1461
triggerall = command = "Drunkard-Mode-2"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 300
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 210
trigger6 = movecontact
trigger7 = stateno = 235
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 245
trigger9 = movecontact
trigger10 = stateno = 240
trigger10 = movecontact
trigger11 = stateno = 400
trigger11 = movecontact
trigger12 = stateno = 410
trigger12 = movecontact
trigger13 = stateno = 430
trigger13 = movecontact
trigger14 = stateno = 440
trigger14 = movecontact

;-------------------------------------------------------------------------------
;Drunkard Mode 1
[State -1, Drunkard Mode 1]
type = ChangeState
value = 1460
triggerall = command = "Drunkard-Mode-1"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 300
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 210
trigger6 = movecontact
trigger7 = stateno = 235
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 245
trigger9 = movecontact
trigger10 = stateno = 240
trigger10 = movecontact
trigger11 = stateno = 400
trigger11 = movecontact
trigger12 = stateno = 410
trigger12 = movecontact
trigger13 = stateno = 430
trigger13 = movecontact
trigger14 = stateno = 440
trigger14 = movecontact

;-------------------------------------------------------------------------------
;Doble Zake FireBall
[State -1, Doble Zake FireBall]
type = ChangeState
value = 1920
triggerall = command = "Doble-Zake-FireBall"
triggerall = power >= 2000
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 300
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 210
trigger6 = movecontact
trigger7 = stateno = 235
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 245
trigger9 = movecontact
trigger10 = stateno = 240
trigger10 = movecontact
trigger11 = stateno = 400
trigger11 = movecontact
trigger12 = stateno = 410
trigger12 = movecontact
trigger13 = stateno = 430
trigger13 = movecontact
trigger14 = stateno = 440
trigger14 = movecontact
trigger15 = Stateno = 1400 && movecontact && AnimElem = 1, < = 80
trigger15 = movecontact
trigger16 = Stateno = 1550 && movecontact && AnimElem = 1, < = 150
trigger16 = movecontact
trigger17 = Stateno = 1900 && AnimElem = 1, < = 90
trigger18 = Stateno = 1910 && AnimElem = 1, < = 90
;-------------------------------------------------------------------------------
;Zake FireBall Y
[State -1, Zake FireBall Y]
type = ChangeState
value = 1910
triggerall = command = "Zake-FireBall-y"
triggerall = power >= 1000
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 300
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 210
trigger6 = movecontact
trigger7 = stateno = 235
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 245
trigger9 = movecontact
trigger10 = stateno = 240
trigger10 = movecontact
trigger11 = stateno = 400
trigger11 = movecontact
trigger12 = stateno = 410
trigger12 = movecontact
trigger13 = stateno = 430
trigger13 = movecontact
trigger14 = stateno = 440
trigger14 = movecontact
trigger15 = Stateno = 1400 && movecontact && AnimElem = 1, < = 80
trigger15 = movecontact

;-------------------------------------------------------------------------------
;Zake FireBall X
[State -1, Zake FireBall X]
type = ChangeState
value = 1900
triggerall = command = "Zake-FireBall-x"
triggerall = power >= 1000
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 300
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 210
trigger6 = movecontact
trigger7 = stateno = 235
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 245
trigger9 = movecontact
trigger10 = stateno = 240
trigger10 = movecontact
trigger11 = stateno = 400
trigger11 = movecontact
trigger12 = stateno = 410
trigger12 = movecontact
trigger13 = stateno = 430
trigger13 = movecontact
trigger14 = stateno = 440
trigger14 = movecontact
trigger15 = Stateno = 1400 && movecontact && AnimElem = 1, < = 80
trigger15 = movecontact

;-------------------------------------------------------------------------------
;Super Long walk hell
[State -1, Super Long walk hell]
type = ChangeState
value = 1750
triggerall = command = "Super-Long-walk-hell"
triggerall = power >= 2000
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 300
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 210
trigger6 = movecontact
trigger7 = stateno = 235
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 245
trigger9 = movecontact
trigger10 = stateno = 240
trigger10 = movecontact
trigger11 = stateno = 400
trigger11 = movecontact
trigger12 = stateno = 410
trigger12 = movecontact
trigger13 = stateno = 430
trigger13 = movecontact
trigger14 = stateno = 440
trigger14 = movecontact
trigger15 = Stateno = 1550 && movecontact && AnimElem = 1, < = 150
trigger15 = movecontact
trigger16 = Stateno = 1400 && movecontact && AnimElem = 1, < = 80
trigger16 = movecontact

;-------------------------------------------------------------------------------
;Hyper Long walk hell
[State -1, Hyper Long walk hell]
type = ChangeState
value = 1800
triggerall = command = "Hyper-Long-walk-hell"
triggerall = power >= 3000
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 300
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 210
trigger6 = movecontact
trigger7 = stateno = 235
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 245
trigger9 = movecontact
trigger10 = stateno = 240
trigger10 = movecontact
trigger11 = stateno = 400
trigger11 = movecontact
trigger12 = stateno = 410
trigger12 = movecontact
trigger13 = stateno = 430
trigger13 = movecontact
trigger14 = stateno = 440
trigger14 = movecontact
trigger15 = Stateno = 1400 && movecontact && AnimElem = 1, < = 80
trigger15 = movecontact


;-------------------------------------------------------------------------------
;Long walk hell
[State -1, Long walk hell]
type = ChangeState
value = 1550
triggerall = command = "Long-walk-hell"
triggerall = power >= 1000
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 300
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 210
trigger6 = movecontact
trigger7 = stateno = 235
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 245
trigger9 = movecontact
trigger10 = stateno = 240
trigger10 = movecontact
trigger11 = stateno = 400
trigger11 = movecontact
trigger12 = stateno = 410
trigger12 = movecontact
trigger13 = stateno = 430
trigger13 = movecontact
trigger14 = stateno = 440
trigger14 = movecontact
trigger15 = Stateno = 1400 && movecontact && AnimElem = 1, < = 80
trigger15 = movecontact

;-------------------------------------------------------------------------------
;Flash Punch
[State -1, Flash Punch]
type = ChangeState
value = 1200
triggerall = command = "Flash-Punch"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 300
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 210
trigger6 = movecontact
trigger7 = stateno = 235
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 245
trigger9 = movecontact
trigger10 = stateno = 240
trigger10 = movecontact
trigger11 = stateno = 400
trigger11 = movecontact
trigger12 = stateno = 410
trigger12 = movecontact
trigger13 = stateno = 430
trigger13 = movecontact
trigger14 = stateno = 440
trigger14 = movecontact

;-------------------------------------------------------------------------------
;Flash Punch 2
[State -1, Flash Punch 2]
type = ChangeState
value = 1205
triggerall = command = "Flash-Punch-2"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 300
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 210
trigger6 = movecontact
trigger7 = stateno = 235
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 245
trigger9 = movecontact
trigger10 = stateno = 240
trigger10 = movecontact
trigger11 = stateno = 400
trigger11 = movecontact
trigger12 = stateno = 410
trigger12 = movecontact
trigger13 = stateno = 430
trigger13 = movecontact
trigger14 = stateno = 440
trigger14 = movecontact

;-------------------------------------------------------------------------------
;Drunkard Mode
[State -1, Drunkard Mode]
type = ChangeState
value = 1500
triggerall = command = "Drunkard-Mode"
trigger1 = (statetype = s) && ctrl
trigger1 = ctrl
trigger2 = stateno = 300
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 210
trigger6 = movecontact
trigger7 = stateno = 235
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 245
trigger9 = movecontact
trigger10 = stateno = 240
trigger10 = movecontact
trigger11 = stateno = 400
trigger11 = movecontact
trigger12 = stateno = 410
trigger12 = movecontact
trigger13 = stateno = 430
trigger13 = movecontact
trigger14 = stateno = 440
trigger14 = movecontact

;-------------------------------------------------------------------------------
;upper x
[State -1, upper x]
type = ChangeState
value = 1450
triggerall = command = "upper_x"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 300
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 210
trigger6 = movecontact
trigger7 = stateno = 235
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 245
trigger9 = movecontact
trigger10 = stateno = 240
trigger10 = movecontact
trigger11 = stateno = 400
trigger11 = movecontact
trigger12 = stateno = 410
trigger12 = movecontact
trigger13 = stateno = 430
trigger13 = movecontact
trigger14 = stateno = 440
trigger14 = movecontact

;-------------------------------------------------------------------------------
;upper y
[State -1, upper y]
type = ChangeState
value = 1400
triggerall = command = "upper_y"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 300
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 210
trigger6 = movecontact
trigger7 = stateno = 235
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 245
trigger9 = movecontact
trigger10 = stateno = 240
trigger10 = movecontact
trigger11 = stateno = 400
trigger11 = movecontact
trigger12 = stateno = 410
trigger12 = movecontact
trigger13 = stateno = 430
trigger13 = movecontact
trigger14 = stateno = 440
trigger14 = movecontact

;-------------------------------------------------------------------------------
;Fire Zake 2
[State -1, Fire Zake 2]
type = ChangeState
value = 1203
triggerall = command = "Fire-Zake-2"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 300
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 210
trigger6 = movecontact
trigger7 = stateno = 235
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 245
trigger9 = movecontact
trigger10 = stateno = 240
trigger10 = movecontact
trigger11 = stateno = 400
trigger11 = movecontact
trigger12 = stateno = 410
trigger12 = movecontact
trigger13 = stateno = 430
trigger13 = movecontact
trigger14 = stateno = 440
trigger14 = movecontact

;-------------------------------------------------------------------------------
;Fire Zake
[State -1, Fire Zake]
type = ChangeState
value = 1300
triggerall = command = "Fire-Zake"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 300
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 210
trigger6 = movecontact
trigger7 = stateno = 235
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 245
trigger9 = movecontact
trigger10 = stateno = 240
trigger10 = movecontact
trigger11 = stateno = 400
trigger11 = movecontact
trigger12 = stateno = 410
trigger12 = movecontact
trigger13 = stateno = 430
trigger13 = movecontact
trigger14 = stateno = 440
trigger14 = movecontact
;-------------------------------------------------------------------------------

;Zake Atack
[State -1, Zake Atack]
type = ChangeState
value = 1000
triggerall = command = "Zake-Atack"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 300
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 210
trigger6 = movecontact
trigger7 = stateno = 235
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 245
trigger9 = movecontact
trigger10 = stateno = 240
trigger10 = movecontact
trigger11 = stateno = 400
trigger11 = movecontact
trigger12 = stateno = 410
trigger12 = movecontact
trigger13 = stateno = 430
trigger13 = movecontact
trigger14 = stateno = 440
trigger14 = movecontact
;-------------------------------------------------------------------------------
;Zake Atack 2
[State -1, Zake Atack 2]
type = ChangeState
value = 1100
triggerall = command = "Zake-Atack-2"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 300
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 210
trigger6 = movecontact
trigger7 = stateno = 235
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 245
trigger9 = movecontact
trigger10 = stateno = 240
trigger10 = movecontact
trigger11 = stateno = 400
trigger11 = movecontact
trigger12 = stateno = 410
trigger12 = movecontact
trigger13 = stateno = 430
trigger13 = movecontact
trigger14 = stateno = 440
trigger14 = movecontact
;-------------------------------------------------------------------------------
; Power charge
[State -1]
type = ChangeState
value = 910
triggerall = statetype = S
triggerall = Power < 3000
triggerall = var(9) = 0
triggerall = ctrl = 1
trigger1 = command = "hold_a"
trigger1 = command = "hold_y"
;---------------------------------------------------------------------------
;��ً}���
[State -1, T S]
type = ChangeState
value = 710
triggerall = command = "recovery" && command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = power >= 1000
trigger2 = stateno = [150,151]
						Triggerall = var(50) = 0

;---------------------------------------------------------------------------
;�O�ً}���
[State -1, T S]
type = ChangeState
value = 700
triggerall = command = "recovery"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = power >= 1000
trigger2 = stateno = [150,151]
trigger3 = stateno = 100
						Triggerall = var(50) = 0

;---------------------------------------------------------------------------
;��g
[State -1, UKEMI]
type = ChangeState
value = 52000
triggerall = command = "recovery"
triggerall = alive = 1
trigger1 = stateno = 5050
trigger1 = pos y > -30
						Triggerall = var(50) = 0

;------------------------------------------------------------------------------
;�ӂ��Ƃ΂�
[State -1, Throw]
type = ChangeState
value = 300
triggerall = command = "�ӂ��Ƃ΂�"
triggerall = statetype = S
triggerall = stateno != 100
trigger1 = ctrl
trigger2 = power >= 1000
trigger2 = stateno = [150,151]
						Triggerall = var(50) = 0

;------------------------------------------------------------------------------
;�󒆂ӂ��Ƃ΂�
[State -1, CD]
type = ChangeState
value = 650
triggerall = command = "�ӂ��Ƃ΂�"
triggerall = statetype = A
trigger1 = ctrl
						Triggerall = var(50) = 0

;------------------------------------------------------------------------------
;P����
[State -1, Throw]
type = ChangeState
value = 850
triggerall = command = "y"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = statetype = S
triggerall = stateno != 100
trigger1 = p2bodydist X < 15
trigger1 = p2statetype != A && p2movetype != H
trigger1 = ctrl
						Triggerall = var(50) = 0

;------------------------------------------------------------------------------
;K����
[State -1, Throw]
type = ChangeState
value = 880
triggerall = command = "b"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = statetype = S
triggerall = stateno != 100
trigger1 = p2bodydist X < 15
trigger1 = p2statetype != A && p2movetype != H
trigger1 = ctrl
						Triggerall = var(50) = 0

;------------------------------------------------------------------------------
;�O���E�����@�z
[State -1, GOUHU]
type = ChangeState
value = 310
triggerall = command = "x"
triggerall = command = "holdfwd"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
						Triggerall = var(50) = 0

;------------------------------------------------------------------------------
;�_�b�V��
[State -1, Dash]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
						Triggerall = var(50) = 0

;�o�b�N�X�e�b�v
[State -1, Back Step]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
						Triggerall = var(50) = 0

;==============================================================================
;�ߋ���������p���`
[State -1, Stand Light Punch]
type = ChangeState
value = 205
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = p2bodydist X < 18
trigger1 = ctrl
						Triggerall = var(50) = 0

;������������p���`
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
						Triggerall = var(50) = 0

;�ߋ����������p���`
[State -1, Stand Strong Punch]
type = ChangeState
value = 215
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = p2bodydist X < 24
trigger1 = ctrl
						Triggerall = var(50) = 0

;�������������p���`
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
						Triggerall = var(50) = 0

;------------------------------------------------------------------------------
;�ߋ���������L�b�N
[State -1, Stand Light Kick]
type = ChangeState
value = 235
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = p2bodydist X < 14
trigger1 = ctrl
						Triggerall = var(50) = 0

;������������L�b�N
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
						Triggerall = var(50) = 0

;�ߋ����������L�b�N
[State -1, Standing Strong Kick]
type = ChangeState
value = 245
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = p2bodydist X < 20
trigger1 = ctrl
						Triggerall = var(50) = 0

;�������������L�b�N
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
						Triggerall = var(50) = 0

;------------------------------------------------------------------------------
;����
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
triggerall = var(20) = 0
trigger1 = statetype != A
trigger1 = ctrl
						Triggerall = var(50) = 0

;------------------------------------------------------------------------------
;���Ⴊ�ݎ�p���`
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430 && time >= 4 && movecontact
						Triggerall = var(50) = 0

;���Ⴊ�݋��p���`
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
						Triggerall = var(50) = 0

;------------------------------------------------------------------------------
;���Ⴊ�ݎ�L�b�N
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
						Triggerall = var(50) = 0

;���Ⴊ�݋��L�b�N
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
						Triggerall = var(50) = 0

;------------------------------------------------------------------------------
;�W�����v��p���`
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl
						Triggerall = var(50) = 0

;�W�����v���p���`
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl
						Triggerall = var(50) = 0

;------------------------------------------------------------------------------
;�����W�����v��L�b�N
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
triggerall = stateno != 105
triggerall = vel X = 0
trigger1 = statetype = A
trigger1 = ctrl
						Triggerall = var(50) = 0

;�΂߃W�����v��L�b�N
[State -1, Jump Light Kick]
type = ChangeState
value = 635
triggerall = command = "a"
triggerall = stateno != 105
triggerall = vel X != 0
trigger1 = statetype = A
trigger1 = ctrl
						Triggerall = var(50) = 0

;�����W�����v���L�b�N
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
triggerall = stateno != 105
triggerall = vel X = 0
trigger1 = statetype = A
trigger1 = ctrl
						Triggerall = var(50) = 0

;�΂߃W�����v���L�b�N
[State -1, Jump Strong Kick]
type = ChangeState
value = 645
triggerall = command = "b"
triggerall = stateno != 105
triggerall = vel X != 0
trigger1 = statetype = A
trigger1 = ctrl
						Triggerall = var(50) = 0

