;맥시마 커맨드 설정파일
;가고일이 작성
;-----------------------------------------------------------------------------
;초필살기
;-----------------------------------------------------------------------------
[Command]
name = "mr1"
command = ~D, B, D, B, a
time = 25

[Command]
name = "mr2"
command = ~D, B, D, B, b
time = 25

[Command]
name = "mr3"
command = ~D, B, D, B, a+b
time = 25

[Command]
name = "mr3"
command = ~D, B, D, B, c
time = 25

[Command]
name = "br1"
command = ~D, F, D, F, a
time = 25

[Command]
name = "br2"
command = ~D, F, D, F, b
time = 25

[Command]
name = "br3"
command = ~D, F, D, F, a+b
time = 25

[Command]
name = "br3"
command = ~D, F, D, F, c
time = 25

[Command]
name = "buster1"
command = ~D, F, D, B, x
time = 25

[Command]
name = "buster2"
command = ~D, F, D, B, y
time = 25

[Command]
name = "buster3"
command = ~D, F, D, B, x+y
time = 25

[Command]
name = "buster3"
command = ~D, F, D, B, z
time = 25

[Command]
name = "final1"
command = ~D, F, D, F, x
time = 25

[Command]
name = "final2"
command = ~D, F, D, F, y
time = 25

[Command]
name = "final3"
command = ~D, F, D, F, x+y
time = 25

[Command]
name = "final3"
command = ~D, F, D, F, z
time = 25

;-----------------------------------------------------------------------------
;필살기
;-----------------------------------------------------------------------------
[Command]
name = "M-41"
command = ~D, B, x
time = 20

[Command]
name = "M-42"
command = ~D, B, y
time = 20

[Command]
name = "system1"
command = ~D, DF, F, x
time = 20

[Command]
name = "system2"
command = ~D, DF, F, y
time = 20

[Command]
name = "1000t"
command = ~D,DF, F, b
time = 20

[Command]
name = "system31"
command = ~F, DF, D, DB, B, a
time = 25

[Command]
name = "system32"
command = ~F, DF, D, DB, B, b
time = 25

[Command]
name = "darch1"
command = ~B, DB, D, DF, F, a
time = 30

[Command]
name = "darch2"
command = ~B, DB, D, DF, F, b
time = 30

[Command]
name = "m191"
command = ~F, D, DF, a
time = 25

[Command]
name = "m192"
command = ~F, D, DF, b
time = 25

;--------------------------------------------------------------------------

[Command]
name = "longjump"
command = D, $U
time = 18

[Command]
name = "dizzyrecover"
command = F,B
time = 20

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

;-| 2 Button Combination |-----------------------------------------------
[Command]
name = "recovery"
command = x+a
time = 1

[Command]
name = "dodge"
command = x+a
time = 1

[Command]
name = "cd"
command = b+y
time = 1

[Command]
name = "max"
command = a+y
time = 1

[Command]
name = "counter"
command = c
time = 1

[Command]
name = "armor"
command = z
time = 1

;-| Hold Button |-----------------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /a
time = 1

[Command]
name = "hold_z"
command = /y
time = 1

[Command]
name = "hold_a"
command = /b
time = 1

;-| Hold Dir |--------------------------------------------------------------
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

[Command]
name = "holddownfwd"
command = /$DF
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "throw1"
command = /F,y
time = 1

[Command]
name = "throw1"
command = /B,y
time = 1

[Command]
name = "throw2"
command = /F,b
time = 1

[Command]
name = "throw2"
command = /B,b
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = a
time = 1

[Command]
name = "z"
command = y
time = 1

[Command]
name = "a"
command = b
time = 1

[Command]
name = "b"
command = c
time = 1

[Command]
name = "c"
command = z
time = 1

[Command]
name = "s"
command = s
time = 1

;---------------------------------------------------------------------------
[Statedef -1]
;---------------------------------------------------------------------------
; 초필살기
;---------------------------------------------------------------------------
;벙커 버스터 진
[State -1]
type = ChangeState
value = 3050
triggerall = Power >= ifelse (Var(12), 1000, 2000)
triggerall = Command = "buster3"
triggerall = StateType != A
trigger1 = Ctrl
trigger2 = (StateNo = 201 || StateNo = 203 || StateNo = 205 || StateNo = 207 || (StateNo = [300, 402])) && MoveContact
trigger3 = StateNo = 500 && MoveContact
trigger4 = Var(12) && (StateNo = [1000, 1015]) && MoveContact
trigger5 = Var(12) && StateNo = 1060

;----------------------------------------------------------------------
;벙커 버스터
[State -1]
type = ChangeState
value = 3000
triggerall = Power >= 1000 || Var(12)
triggerall = Command = "buster1" || Command = "buster2"
triggerall = StateType != A
trigger1 = Ctrl
trigger2 = (StateNo = 201 || StateNo = 203 || StateNo = 205 || StateNo = 207 || (StateNo = [300, 402])) && MoveContact
trigger3 = StateNo = 500 && MoveContact
trigger4 = Var(12) && (StateNo = [1000, 1015]) && MoveContact
trigger5 = Var(12) && StateNo = 1060

;---------------------------------------------------------------------
;멕시마 리벤져 진
[State -1]
type = ChangeState
value = 3150
triggerall = !Var(12) && Power >= 2000
triggerall = Command = "mr3"
triggerall = StateType != A
trigger1 = Ctrl
trigger2 = (StateNo = 201 || StateNo = 203 || StateNo = 205 || StateNo = 207 || (StateNo = [400, 402])) && MoveContact
trigger3 = StateNo = 500 && MoveContact
trigger4 = Var(12) && (StateNo = [1000, 1015]) && MoveContact
trigger5 = Var(12) && StateNo = 1060

;---------------------------------------------------------------------
; 멕시마 리벤져
[State -1]
type = ChangeState
value = 3100
triggerall = Power >= 1000 || Var(12)
triggerall = Command = "mr1" || Command = "mr2"
triggerall = StateType != A
trigger1 = Ctrl
trigger2 = (StateNo = 201 || StateNo = 203 || StateNo = 205 || StateNo = 207 || (StateNo = [400, 402])) && MoveContact
trigger3 = StateNo = 500 && MoveContact
trigger4 = Var(12) && (StateNo = [1000, 1015]) && MoveContact
trigger5 = Var(12) && StateNo = 1060

;---------------------------------------------------------------------
;브릿츠 리벤져 진
[State -1]
type = ChangeState
value = 3250
triggerall = !Var(12) && Power >= 2000
triggerall = Command = "br3"
triggerall = StateType != A
trigger1 = Ctrl
trigger2 = (StateNo = 201 || StateNo = 203 || StateNo = 205 || StateNo = 207 || (StateNo = [400, 402])) && MoveContact
trigger3 = StateNo = 500 && MoveContact
trigger4 = Var(12) && (StateNo = [1000, 1015]) && MoveContact
trigger5 = Var(12) && StateNo = 1060

;----------------------------------------------------------------------
;브릿츠 리벤져
[State -1]
type = ChangeState
value = 3200
triggerall = Power >= 1000 || Var(12)
triggerall = Command = "br1" || Command = "br2"
triggerall = StateType != A
trigger1 = Ctrl
trigger2 = (StateNo = 201 || StateNo = 203 || StateNo = 205 || StateNo = 207 || (StateNo = [400, 402])) && MoveContact
trigger3 = StateNo = 500 && MoveContact
trigger4 = Var(12) && (StateNo = [1000, 1015]) && MoveContact
trigger5 = Var(12) && StateNo = 1060

;---------------------------------------------------------------------
;파이널 맥시마 빔
[State -1]
type = ChangeState
value = 3300
triggerall = Power >= 1000 || Var(12)
triggerall = Command = "final1" || Command = "final2"
triggerall = StateType != A
trigger1 = Ctrl
trigger2 = (StateNo = 201 || StateNo = 203 || StateNo = 205 || StateNo = 207 || (StateNo = [400, 402])) && MoveContact
trigger3 = StateNo = 500 && MoveContact
trigger4 = Var(12) && (StateNo = [1000, 1015]) && MoveContact
trigger5 = Var(12) && StateNo = 1060

;---------------------------------------------------------------------
; 필살기
;---------------------------------------------------------------------
; M-4 베이퍼 캐논
[State -1]
type = ChangeState
value = 1000
triggerall = Command = "M-41" || Command = "M-42"
triggerall = StateType != A
trigger1 = Ctrl
trigger2 = (StateNo = 201 || StateNo = 203 || StateNo = 205 || StateNo = 207 || (StateNo = [300, 402])) && MoveContact
trigger3 = StateNo = 500 && MoveContact
trigger4 = Var(12) && (StateNo = [1000, 1015]) && MoveContact
trigger5 = Var(12) && StateNo = 1060

;--------------------------------------------------------------------------
; SYSTEM - 1 : 멕시마 스크램블
[State -1]
type = ChangeState
value = ifelse (Command = "system1", 1010, 1011)
triggerall = Command = "system1" || Command = "system2"
triggerall = StateType != A
trigger1 = Ctrl
trigger2 = (StateNo = 201 || StateNo = 203 || StateNo = 205 || StateNo = 207 || (StateNo = [300, 402])) && MoveContact
trigger3 = StateNo = 500 && MoveContact
trigger4 = Var(12) && (StateNo = [1000, 1015]) && MoveContact
trigger5 = Var(12) && StateNo = 1060

;--------------------------------------------------------------------------
; 데인져러스 아치
[State -1]
type = ChangeState
value = 1050
triggerall = Command = "darch1" || Command = "darch2"
triggerall = StateType != A
trigger1 = Ctrl
trigger2 = (StateNo = 201 || StateNo = 203 || StateNo = 205 || StateNo = 207 || (StateNo = [300, 402])) && MoveContact
trigger3 = StateNo = 500 && MoveContact
trigger4 = Var(12) && (StateNo = [1000, 1015]) && MoveContact
trigger5 = Var(12) && StateNo = 1060

;--------------------------------------------------------------------------
; SYSTEM-3 : 멕시마 리프트
[State -1]
type = ChangeState
value = 1060
triggerall = Command = "system31" || Command = "system32"
triggerall = StateType != A
trigger1 = Ctrl
trigger2 = (StateNo = 201 || StateNo = 203 || StateNo = 205 || StateNo = 207 || (StateNo = [300, 402])) && MoveContact
trigger3 = StateNo = 500 && MoveContact
trigger4 = Var(12) && (StateNo = [1000, 1015]) && MoveContact
trigger5 = Var(12) && StateNo = 1060

;--------------------------------------------------------------------------
; M-19 브릿츠 캐논
[State -1]
type = ChangeState
value = 1080
triggerall = Command = "m191" || Command = "m192"
triggerall = StateType != A
trigger1 = Ctrl
trigger2 = (StateNo = 201 || StateNo = 203 || StateNo = 205 || StateNo = 207 || (StateNo = [300, 402])) && MoveContact
trigger3 = StateNo = 500 && MoveContact
trigger4 = Var(12) && (StateNo = [1000, 1015]) && MoveContact
trigger5 = Var(12) && StateNo = 1060

;--------------------------------------------------------------------------
; 기본 동작
;--------------------------------------------------------------------------
; MAX 모드
[State -1]
type = ChangeState
value = 1100
triggerall = !Var(12) && Power >= 1000
triggerall = Command = "max"
triggerall = StateType != A
trigger1 = Ctrl

;---------------------------------------------------------------------------
;가드 캔슬 카운터
[State -1]
type = ChangeState
value = 815
triggerall = power >= 1000
triggerall = command = "cd"
trigger1 = stateno = 150 || stateno = 152

;---------------------------------------------------------------------------
;가드 캔슬 회피
[State -1]
type = ChangeState
value = 811
triggerall = power >= 1000
triggerall = command = "dodge"
trigger1 = stateno = 150 || stateno = 152

;---------------------------------------------------------------------------
;회피
[State -1]
type = ChangeState
value = 810
triggerall = command = "dodge"
trigger1 = statetype = S && Ctrl

;---------------------------------------------------------------------------
;기 저축
[State -1]
type = ChangeState
value = 1200
triggerall = !Var(12) && Power < 4000 && (command = "hold_x" && command = "hold_a")
trigger1 = StateType != A && Ctrl

;---------------------------------------------------------------------------
; 전방대시
[State -1]
type = ChangeState
value = 100
triggerall = Command = "FF"
trigger1 = StateType = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; 후방대시
[State -1]
type = ChangeState
value = 105
triggerall = Command = "BB"
trigger1 = StateType = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; 도발
[State -1]
type = ChangeState
value = 195
triggerall = StateNo != 195
triggerall = Command = "s"
triggerall = Command != "holddown"
trigger1 = StateType = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; 기본기
;---------------------------------------------------------------------------
; 다이너마이트 드롭 && 쵸킹 바이스
[State -1]
type = ChangeState
value = 800
triggerall = StateNo != 100
triggerall = StateType = S && Ctrl
triggerall = P2BodyDist X < 6 && P2StateType != A && P2MoveType != H
trigger1 = Command = "throw1" || Command = "throw2"

;---------------------------------------------------------------------------
; 날려버리기
[State -1]
type = ChangeState
value = 300
triggerall = Command = "cd" && Command != "holddown"
trigger1 = StateType = S && Ctrl

;---------------------------------------------------------------------------
;M-9 멕시마 미사일
[State -1]
type = ChangeState
value = 500
triggerall = Command = "z"
triggerall = Command = "holddown" && Command = "holdfwd"
trigger1 = StateType = C && Ctrl
trigger2 = (StateNo = 201 || StateNo = 203 || StateNo = 205 || StateNo = 207 || (StateNo = [400, 402])) && MoveContact

;---------------------------------------------------------------------------
; 몽고리안
[State -1]
type = ChangeState
value = 301
triggerall = Command = "holdfwd" && Command = "x"
triggerall = Command != "holddown"
trigger1 = statetype = S && Ctrl
trigger2 = (StateNo = 201 || StateNo = 203 || StateNo = 205 || StateNo = 207 || (StateNo = [400, 402])) && MoveContact
trigger3 = Var(12) && StateNo = 302 && MoveContact

;---------------------------------------------------------------------------
; 넥브레이커
[State -1]
type = ChangeState
value = 302
triggerall = Command = "holdfwd" && Command = "y"
triggerall = Command != "holddown"
trigger1 = statetype = S && Ctrl
trigger2 = (StateNo = 201 || StateNo = 203 || StateNo = 205 || StateNo = 207 || (StateNo = [400, 402])) && MoveContact

;---------------------------------------------------------------------------
; 상단 약펀치
[State -1]
type = ChangeState
value = ifelse (P2bodydist X >= 18, 200, 201)
triggerall = Command = "x" && Command != "holddown"
trigger1 = StateType = S && Ctrl

;---------------------------------------------------------------------------
; 상단 강펀치
[State -1]
type = ChangeState
value = ifelse (P2bodydist X >= 18, 202, 203)
triggerall = Command = "z" && Command != "holddown"
trigger1 = StateType = S && Ctrl

;---------------------------------------------------------------------------
; 상단 약킥
[State -1]
type = ChangeState
value = ifelse (P2bodydist X >= 18, 204, 205)
triggerall = Command = "y" && Command != "holddown"
trigger1 = StateType = S && Ctrl

;---------------------------------------------------------------------------
; 상단 강킥
[State -1]
type = ChangeState
value = ifelse (P2bodydist X >= 18, 206, 207)
triggerall = Command = "a" && Command != "holddown"
trigger1 = StateType = S && Ctrl

;---------------------------------------------------------------------------
; 하단 약펀치
[State -1]
type = ChangeState
value = 400
triggerall = Command = "x" && Command = "holddown"
trigger1 = StateType = C && Ctrl

;---------------------------------------------------------------------------
; 하단 강펀치
[State -1]
type = ChangeState
value = 401
triggerall = Command = "z" && Command = "holddown"
trigger1 = StateType = C && Ctrl

;---------------------------------------------------------------------------
; 하단 약킥
[State -1]
type = ChangeState
value = 402
triggerall = Command = "y" && Command = "holddown"
trigger1 = StateType = C && Ctrl

;---------------------------------------------------------------------------
; 하단 강킥
[State -1]
type = ChangeState
value = 403
triggerall = Command = "a" && Command = "holddown"
trigger1 = StateType = C && Ctrl

;---------------------------------------------------------------------------
; 공중 날려버리기
[State -1]
type = ChangeState
value = 700
triggerall = Command = "cd"
trigger1 = StateType = A && Ctrl

;---------------------------------------------------------------------------
; 점프 약펀치
[State -1]
type = ChangeState
value = ifelse (!Var(7) && Vel X, 601, 600)
triggerall = Command = "x"
trigger1 = StateType = A && Ctrl

;---------------------------------------------------------------------------
; 점프 강펀치
[State -1]
type = ChangeState
value = ifelse (!Var(7) && Vel X, 603, 602)
triggerall = Command = "z"
trigger1 = StateType = A && Ctrl

;---------------------------------------------------------------------------
; 점프 약킥
[State -1]
type = ChangeState
value = ifelse (!Var(7) && !Vel X, 604, 605)
triggerall = Command = "y"
trigger1 = StateType = A && Ctrl

;---------------------------------------------------------------------------
; 점프 강킥
[State -1]
type = ChangeState
value = ifelse (!Var(7) && Vel X, 607, 606)
triggerall = Command = "a"
trigger1 = StateType = A && Ctrl

;---------------------------------------------------------------------------