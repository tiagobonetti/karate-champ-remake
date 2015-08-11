; The CMD file.
;
; Two parts: 1. Command definition and  2. State entry
; (state entry is after the commands def section)
;
; 1. Command definition
; ---------------------
; Note: The commands are CASE-SENSITIVE, and so are the command names.
; The eight directions are:
;   B, DB, D, DF, F, UF, U, UB     (all CAPS)
;   corresponding to back, down-back, down, downforward, etc.
; The six buttons are:
;   a, b, c, x, y, z               (all lower case)
;   In default key config, abc are are the bottom, and xyz are on the
;   top row. For 2 button characters, we recommend you use a and b.
;   For 6 button characters, use abc for kicks and xyz for punches.
;
; Each [Command] section defines a command that you can use for
; state entry, as well as in the CNS file.
; The command section should look like:
;
;   [Command]
;   name = some_name
;   command = the_command
;   time = time (optional)
;   buffer.time = time (optional)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas. Each of these
;   buttons or directions is referred to as a "symbol".
;   Directions and buttons can be preceded by special characters:
;   slash (/) - means the key must be held down
;          egs. command = /D       ;hold the down direction
;               command = /DB, a   ;hold down-back while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
;   dollar ($) - Direction-only: detect as 4-way
;          egs. command = $D       ;will detect if D, DB or DF is held
;               command = $B       ;will detect if B, DB or UB is held
;   plus (+) - Buttons only: simultaneous press
;          egs. command = a+b      ;press a and b at the same time
;               command = x+y+z    ;press x, y and z at the same time
;   greater-than (>) - means there must be no other keys pressed or released
;                      between the previous and the current symbol.
;          egs. command = a, >~a   ;press a and release it without having hit
;                                  ;or released any other keys in between
;   You can combine the symbols:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;
;   Note: Successive direction symbols are always expanded in a manner similar
;         to this example:
;           command = F, F
;         is expanded when MUGEN reads it, to become equivalent to:
;           command = F, >~F, >F
;
;   It is recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This makes the command easier
;   to do.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. The default
;   value for this is set in the [Defaults] section below. A typical
;   value is 15.
;
; - buffer.time (optional)
;   Time that the command will be buffered for. If the command is done
;   successfully, then it will be valid for this time. The simplest
;   case is to set this to 1. That means that the command is valid
;   only in the same tick it is performed. With a higher value, such
;   as 3 or 4, you can get a "looser" feel to the command. The result
;   is that combos can become easier to do because you can perform
;   the command early. Attacks just as you regain control (eg. from
;   getting up) also become easier to do. The side effect of this is
;   that the command is continuously asserted, so it will seem as if
;   you had performed the move rapidly in succession during the valid
;   time. To understand this, try setting buffer.time to 30 and hit
;   a fast attack, such as KFM's light punch.
;   The default value for this is set in the [Defaults] section below. 
;   This parameter does not affect hold-only commands (eg. /F). It
;   will be assumed to be 1 for those commands.
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands examples are given below.
;
; [Command] ;Quarter circle forward + x
; name = "QCF_x"
; command = ~D, DF, F, x
;
; [Command] ;Half circle back + a
; name = "HCB_a"
; command = ~F, DF, D, DB, B, a
;
; [Command] ;Two quarter circles forward + y
; name = "2QCF_y"
; command = ~D, DF, F, D, DF, F, y
;
; [Command] ;Tap b rapidly
; name = "5b"
; command = b, b, b, b, b
; time = 30
;
; [Command] ;Charge back, then forward + z
; name = "charge_B_F_z"
; command = ~60$B, F, z
; time = 10
;
; [Command] ;Charge down, then up + c
; name = "charge_D_U_c"
; command = ~60$D, U, c
; time = 10

;***************************************************************************
; CMD AI ACTIVATION CODE HUMAN IMPOSIBLE COMMANDS METHOD
;***************************************************************************

;-| CPU |--------------------------------------------------------------

[Command]
name = "cpu1"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu2"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu3"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu4"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu5"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu6"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu7"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu8"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu9"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

; Add more as desired.  The greater the number of uniquely-named CPU-only
; commands you use, the faster the AI will tend to activate.  Mugen allows up
; to 128 total unique command names.
; Note that the command input strings do not need to be unique, but the command
; names do.  Having 32 commands named "cpu" won't make the computer any more
; likely to choose one of them than having a single "cpu" command would.


;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;
[Command]
name = "MAX3"
command = ~D, F, D, F, a
time = 20

[Command]
name = "MAX31"
command = ~D, F, D, F, a
time = 20

[Command]
name = "MAX1"
command = c
time = 20

[Command]
name = "MAX13"
command = ~D , F, D, F, b
time = 20

[Command]
name = "MAX132"
command = ~D , F, D, F, b
time = 20

[Command]
name = "MAX2"
command = a+b
time = 20

[Command]
name = "MAX10"
command = c
time = 20

[Command]
name = "MAX12"
command = z
time = 20

[Command]
name = "desesperate_move"   
command = b+x
time = 20

[Command]
name = "HSDM"   
command = a+y
time = 20

[Command]
name = "MAX2SVC"   
command = x+y
time = 20

;-| Special Motions |------------------------------------------------------

[Command]
name = "aerial"
command = ~F, D, DF, x

[Command]
name = "aerial2"
command = ~F, D, DF, y

[Command]
name = "blue_proj"
command = ~D, F, x

[Command]
name = "blue_proj2"
command = ~D, F, y

[Command]
name = "first_hit"
command = ~D, B, x

[Command]
name = "first_hit2"
command = ~D, B, y
time = 18

[Command]
name = "run_attack"
command = ~D, B, a

[Command]
name = "run_attack2"
command = ~D, B, b

[Command]
name = "take_over"
command = ~D, B, F, x

[Command]
name = "take_over2"
command = ~D, B, F, y







;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "tap"
command = a, a, a
time = 20

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+a
time = 1

[Command]
name = "longjump"
command = ~D, $U
time = 11

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| Hold Button |---------------------------------------------------------
[Command]
name = "hold_a"
command = /$a
[Command]
name = "hold_b"
command = /$b
[Command]
name = "hold_x"
command = /$x
[Command]
name = "hold_y"
command = /$y
[Command]
name = "hold_c"
command = /$c
[Command]
name = "hold_z"
command = /$z

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

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

; The main purpose of having these next two controllers here at the top of
; StateDef -1 is to make sure the AI helper never changes to a different state,
; nor encounters any VarSets within State -1.
; But they also improve efficiency by preventing Mugen from wasting time
; processing the entire State -1 for the helper.
[State -1, AI Helper Check]
type = ChangeState
trigger1 = IsHelper(9741)
value = 9741

[State -1, AI Helper Check 2]
type = ChangeState
trigger1 = IsHelper(9742)
value = 9742

;===========================================================================
;Smash Kung Fu Upper (uses one super bar)
;MAX 2
[State -1, 180 Shiki]
type = ChangeState
value = 2400
triggerall = var(58) != 1 
triggerall = command = "MAX13"   || command = "MAX132"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = stateno != [2000,4999]
trigger1 = ctrl
trigger2 = stateno = 211 && movecontact
trigger3 = stateno = 206 && movecontact
trigger4 = stateno = 236 && movecontact

;===========================================================================
;Smash Kung Fu Upper (uses one super bar)
;MAX 2
[State -1, 100 Shiki]
type = ChangeState
value = 2300
triggerall = var(58) != 1 
triggerall = p2stateno != [3225,3234]
triggerall = command = "MAX2SVC" 
triggerall = NumProjID(2335) = 0 
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3050,3100)
trigger2 = movecontact

;===========================================================================
;Smash Kung Fu Upper (uses one super bar)
;MAX 2
[State -1, Ya Sakazuki]
type = ChangeState
value = 4000
triggerall = var(58) != 1 
triggerall = command = "MAX3"  || command = "MAX31" 
triggerall = power >= 2000
triggerall = statetype != A
triggerall = var(58) != 1
triggerall = stateno != [2051,2052]
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3050,3100]
trigger2 = movecontact

;---------------------------------------------------------------------------

;===========================================================================
;Smash Kung Fu Upper (uses one super bar)
;MAX 2
[State -1, 212 Shiki]
type = ChangeState
value = 3980
triggerall = var(58) != 1 
triggerall = command = "HSDM"  
triggerall = power >= 2000
triggerall = statetype != A
triggerall = stateno != [2051,2052]
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3050,3100)
trigger2 = movecontact

;---------------------------------------------------------------------------
;Smash Kung Fu Upper (uses one super bar)
;MAX 2
[State -1, 311 Shiki]
type = ChangeState
value = 3800
triggerall = var(58) != 1 
triggerall = command = "desesperate_move" 
triggerall = power >= 2000
triggerall = statetype != A
triggerall = stateno != [2051,2052]
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3050,3100)
trigger2 = movecontact

;---------------------------------------------------------------------------
;Smash Kung Fu Upper (uses one super bar)
;MAX 2
[State -1, Ge Shiki]
type = ChangeState
value = 3000
triggerall = var(58) != 1 
triggerall = command = "MAX2"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = stateno != [2051,2052]
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3050,3100)
trigger2 = movecontact
trigger3 = stateno = 3903 && movecontact
trigger4 = stateno = 3906 && movecontact
;---------------------------------------------------------------------------
;Triple Kung Fu Palm (uses one super bar)
;MAX 1.
[State -1, Saika - after 180 Shiki Last Hit]
type = ChangeState
value = 2500
triggerall = var(58) != 1 
triggerall = command = "MAX10"
triggerall = power >= 1000
triggerall = stateno = 2052 && movecontact
triggerall = stateno != 2050
triggerall = stateno != 2060
triggerall = stateno != 2051
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger3 = p2bodydist x <= 20

;---------------------------------------------------------------------------
;Triple Kung Fu Palm (uses one super bar)
;MAX 1
[State -1,  SDM Ura 306 Shiki]
type = ChangeState
value = 3900
triggerall = var(58) != 1 
triggerall = command = "MAX12"
triggerall = power >= 1000
triggerall = stateno != [2051,2052]
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact

;---------------------------------------------------------------------------
;Triple Kung Fu Palm (uses one super bar)
;MAX 1
[State -1, Ya Otome]
type = ChangeState
value = 2000
triggerall = var(58) != 1 
triggerall = command = "MAX1"
triggerall = power >= 1000
triggerall = stateno != [2000,4999]
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 3903 && movecontact
trigger3 = stateno = 3906 && movecontact
trigger4 = hitdefattr = SC, NA, SA, HA
trigger4 = stateno != [3000,3050]
trigger4 = movecontact

;===========================================================================
;This is not a move, but it sets up var(1) to be 1 if conditions are right
;for a combo into a special move (used below).
;Since a lot of special moves rely on the same conditions, this reduces
;redundant logic.
[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
var(1) = 1


;------  Roll Backward  ------
[State -1, Roll Backward]
type = ChangeState
value = 750
triggerall = var(58) != 1 
triggerall = (command = "a" && command = "x") && command != "holddown" && statetype = S && command = "holdback"
trigger1 = ctrl 
trigger2 = (stateno = 150 || stateno = 151) && power >= 1000
;---------------------------------------------------------------------------
;------  Roll Forward  ------
[State -1,Roll Forward]
type = ChangeState
value = 700
triggerall = var(58) != 1 
triggerall = (command = "a" && command = "x") && command != "holddown" && statetype = S
trigger1 = ctrl 
trigger2 = (stateno = 150 || stateno = 151) && power >= 1000
;---------------------------------------------------------------------------
;--take_over--
[State -1, Kuzu Kaze]
type = ChangeState
value = 1600
triggerall = var(58) != 1 
triggerall = command = "take_over" || command = "take_over2"
triggerall = statetype != A
trigger1 = ctrl 


;---------------------------------------------------------------------------
;--run attack 2--
[State -1, Kototsuki]
type = ChangeState
value = 1550
triggerall = var(58) != 1 
triggerall = command = "run_attack2"
triggerall = statetype != A
trigger1 = ctrl 
trigger2 = stateno = 211 && movecontact
trigger3 = stateno = 1356 && movecontact

;---------------------------------------------------------------------------
;--run attack--
[State -1, Tsumagushi] 
type = ChangeState
value = 1500
triggerall = var(58) != 1 
triggerall = command = "run_attack"
triggerall = statetype != A
trigger1 = ctrl 
trigger2 = stateno = 211 && movecontact

;---------------------------------------------------------------------------
;3 hit strong combo ,first hit
[State -1, Aoi Hana-3 hit combo]
type = ChangeState
value = 1355
triggerall = var(58) != 1 
triggerall = command = "first_hit2" 
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 206 && movecontact
trigger3 = stateno = 211 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 1000 && movecontact
trigger6 = stateno = 1100 && movecontact

;---------------------------------------------------------------------------
;3 hit combo ,first hit
[State -1, Aoi Hana-3 hit combo]
type = ChangeState
value = 1300
triggerall = var(58) != 1 
triggerall = command = "first_hit"
triggerall = statetype != A
trigger1 = ctrl 
trigger2 = stateno = 206 && movecontact
trigger3 = stateno = 211 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 1000 && movecontact
trigger6 = stateno = 1100 && movecontact

;---------------------------------------------------------------------------
;blue projectile 2
[State -1, Yami Barai]
type = ChangeState
value = 1250
triggerall = var(58) != 1 
triggerall = command = "blue_proj2"
triggerall = statetype != A
trigger1 = ctrl 

;---------------------------------------------------------------------------
;blue projectile 
[State -1, Yami Barai]
type = ChangeState
value = 1200
triggerall = var(58) != 1 
triggerall = command = "blue_proj"
triggerall = statetype != A
trigger1 = ctrl 

;---------------------------------------------------------------------------
;anti-aereal blue flames 2
[State -1, Oni Yaki]
type = ChangeState
value = 1100
triggerall = var(58) != 1 
triggerall = command = "aerial2"
triggerall = statetype != A
trigger1 = ctrl 
trigger2 = stateno = 211 && movecontact
trigger3 = stateno = 1570 && movecontact
;---------------------------------------------------------------------------
;anti-aereal blue flames
[State -1, Oni Yaki]
type = ChangeState
value = 1000
triggerall = var(58) != 1 
triggerall = command = "aerial"
triggerall = statetype != A
trigger1 = ctrl 
trigger2 = stateno = 211 && movecontact
trigger3 = stateno = 1570 && movecontact
;===========================================================================
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
[State -1, Jump Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Iori Throw Kick
;投げ
[State -1, Iori Throw Kick]
type = ChangeState
value = 800
triggerall = var(58) != 1 
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

;---------------------------------------------------------------------------
;Iori Throw Punch
;投げ
[State -1, Iori Throw Punch]
type = ChangeState
value = 900
triggerall = var(58) != 1 
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


;===========================================================================
;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(58) != 1 
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = command != "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;Stand Light special Punch 
;立ち弱パンチ
[State -1, Yumebiki]
type = ChangeState
value = 205
triggerall = var(58) != 1 
triggerall = command = "x"
triggerall = command =  "holdfwd"
triggerall = command != "holddown" && command != "holdup"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 235 && movecontact

;---------------------------------------------------------------------------

;Stand Strong Punch
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = var(58) != 1 
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2bodydist X > 40
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Strong Punch near
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 211
triggerall = var(58) != 1 
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2bodydist X < 40
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------


;Stand Light Kick far
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(58) != 1 
triggerall = command = "a"
triggerall = command != "holdfwd"
triggerall = P2bodydist X > 40
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Light Kick near
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 235
triggerall = var(58) != 1 
triggerall = command = "a"
triggerall = command != "holdfwd"
triggerall = P2bodydist X < 40
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Light Kick anti-crouch
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 236
triggerall = var(58) != 1 
triggerall = command = "a"
triggerall = command =  "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl

;Stand Light Kick anti-crouch 2
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 237
triggerall = var(58) != 1 
triggerall = command = "a"
triggerall = command =  "holdfwd"
triggerall = p2statetype = C
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Standing Strong Kick
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = var(58) != 1 
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2bodydist X > 40
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------
;Standing Strong Kick near
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 241
triggerall = var(58) != 1 
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2bodydist X < 40
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Strong Hit Throw Away 
[State -1,knock down]
type = ChangeState
value = 250
triggerall = var(58) != 1 
triggerall = (command = "hold_b" && command = "hold_y")
triggerall = statetype != A 
trigger1 = ctrl = 1


;Counter
[State -1]
type = changestate
value = 255
triggerall = var(58) != 1 
triggerall = (command = "hold_b" && command = "hold_y")
trigger1 = (stateno = 150 || stateno = 151) && power >= 1000

;---------------------------------------------------------------------------

;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(58) != 1 
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430 && movecontact
;---------------------------------------------------------------------------
;Crouching Strong Punch
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = var(58) != 1 
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Light Kick
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(58) != 1 
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Strong Kick
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = var(58) != 1 
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(58) != 1 
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7
trigger3 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = var(58) != 1 
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking

;------  百合折り  ------
[State -1, Yuri Ori]
type = ChangeState
value = 615
triggerall = var(58) != 1 
trigger1 = statetype = A && winko = 0 && ctrl
trigger1 = P2bodydist X < 0 && ((command = "holdfwd" || command = "holdback") && command = "a")
trigger2 = statetype = A && winko = 0 && ctrl
trigger2 = P2bodydist X >= 0 && (command = "holdback" && command = "a")
trigger3 = winko = 0 && stateno = 106 && (command = "holdback" && command = "a")

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = var(58) != 1 
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Strong Kick
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = var(58) != 1 
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;K.O into jump hit
[State -1]
type = ChangeState
value = 650
triggerall = var(58) != 1 
trigger1 = (command = "hold_b" && command = "hold_y")
trigger1 = statetype = A  && ctrl = 1 



;-|AI outine|--------------------------------------------------------------------
;--------------------------------------------------------------------------
;normal moves
[State -1, 200]
type = ChangeState
value = ifelse(random <= 500, 235, (ifelse(random <= 500, 430, (ifelse(random <= 500, 1600,235)))))
triggerall = var(58) = 1 && p2statetype != L && statetype != A && P2Life != 0 && ctrl
trigger1 = (p2bodydist x <= 20) && p2statetype = S  
trigger2 = (p2bodydist x <= 20) && p2statetype = C && p2stateno = 5011

[State -1, 400]
type = ChangeState
value = 400
triggerall = var(58) = 1 
trigger1 = stateno = 430 && movecontact 

[State -1, 205]
type = ChangeState
value = 205
triggerall = var(58) = 1 
trigger1 = stateno = 235 && movecontact

[State -1, 206]
type = ChangeState
value = 206
triggerall = var(58) = 1 
trigger1 = stateno = 205 && movecontact

[State -1, 210]
type = ChangeState
value = 210
triggerall = var(58) = 1 
trigger1 = p2stateno = 1621 && ctrl 

[State -1, 640]
type = ChangeState
value = 640
triggerall = var(58) = 1 && p2statetype != L && statetype = A && P2Life != 0 && ctrl
trigger1 = (p2bodydist x = [0, 60]) && p2statetype = S
trigger2 = (p2bodydist x = [0, 60]) && p2statetype = C

[State -1, 650]
type = ChangeState
value = 650
triggerall = var(58) = 1 && p2statetype != L && statetype = A && P2Life != 0 && ctrl
trigger1 = (p2bodydist x = [0, 60]) && p2statetype = A

[State -1, 615]
type = ChangeState
value = 615
triggerall = var(58) = 1 && p2statetype != L && statetype = A && P2Life != 0 && ctrl
trigger1 = (p2bodydist x = [-1, -100]) && p2statetype = S
trigger2 = (p2bodydist x = [-1, -100]) && p2statetype = C

[State -1, 236]
type = ChangeState
value = 236
triggerall = var(58) = 1 && p2statetype != L && statetype != A && P2Life != 0 && ctrl
trigger1 = (p2bodydist x <= 50) && p2statetype = C 

;--------------------------------------------------------------------------
;specials moves
[State -1, 1300]
type = ChangeState
value = 1300
triggerall = var(58) = 1 
trigger1 = stateno = 206 && movecontact
trigger2 = stateno = 400 && movecontact

[State -1, 1310]
type = ChangeState
value = 1310
triggerall = var(58) = 1 
trigger1 = stateno = 1300 && movecontact

[State -1, 1320]
type = ChangeState
value = 1320
triggerall = var(58) = 1 
trigger1 = stateno = 1310 && movecontact

[State -1, 1355]
type = ChangeState
value = ifelse(power >= 1000,2400,1355)
triggerall = var(58) = 1 
trigger1 = stateno = 210 && movecontact

[State -1, 1356]
type = ChangeState
value = 1356
triggerall = var(58) = 1 
trigger1 = stateno = 1355 && movecontact

[State -1, 1357]
type = ChangeState
value = 1357
triggerall = var(58) = 1 
trigger1 = stateno = 1356 && movecontact

[State -1, 1000]
type = ChangeState
value = ifelse(random <=500,1000,1100)
triggerall = var(58) = 1 && p2statetype != L && statetype != A && P2Life != 0 && p2stateno != 5050 && ctrl 
trigger1 = p2statetype = A && (P2bodydist X <= 100) 

[State -1, 1200]
type = ChangeState
value = ifelse(random <=500,1200,1250)
triggerall = var(58) = 1 && p2statetype != L && statetype != A && P2Life != 0 && ctrl 
trigger1 = p2statetype = S && (P2bodydist X >= 40) && random <= 50
trigger2 = p2movetype != H && (P2bodydist X >= 50) && random <= 500
trigger3 = (P2bodydist X >= 50) && random <= 100

[State -1, 1500]
type = ChangeState
value = ifelse(random <=500,1500,1550)
triggerall = var(58) = 1 && p2statetype != L && statetype != A && P2Life != 0 && ctrl 
trigger1 = p2statetype = S && (P2bodydist X >= 100) && random <= 50
trigger2 = p2statetype = C && p2movetype = A && (P2bodydist X >= 50) && random <= 500
trigger3 = (P2bodydist X >= 50) && random <= 100
;--------------------------------------------------------------------------
;hyper moves
[State -1, 2000]
type = ChangeState
value = 2000
triggerall = var(58) = 1 && p2statetype != L && statetype != A && P2Life != 0 && power >= 1000 && ctrl
trigger1 = (P2bodydist X >= 50) && p2statetype = S && random <= 100  

[State -1, 2400]
type = ChangeState
value = 2400
triggerall = var(58) = 1 && p2statetype != L && statetype != A && P2Life != 0 && power >= 1000 && ctrl
trigger1 = p2statetype = S && (p2bodydist x = [80,150]) && random <= 100 
trigger2 = (p2bodydist x = [80,150]) && random <= 100
trigger3 = (p2bodydist x < 150) && p2stateno = [3226,3234] 

[State -1, 2500]
type = ChangeState
value = 2500
triggerall = var(58) = 1 
trigger1 = stateno = 2052 && p2stateno = 5050 && power >= 1000    

[State -1, 3000]
type = ChangeState
value = 3000
triggerall = var(58) = 1 && p2statetype != L && statetype != A && P2Life != 0 && power >= 2000 && ctrl
trigger1 = (p2bodydist x >= 50) && p2statetype = S && random <= 500
trigger2 = random <= 50


[State -1, 2300]
type = ChangeState
value = 2300
triggerall = var(58) = 1 && p2statetype != L && statetype != A && P2Life != 0 && power >= 2000 && NumProjID(2335) = 0 && ctrl
trigger1 = (p2bodydist x >= 100) && p2statetype = S && random <= 500
trigger2 = (p2bodydist x >= 100) && random > 100


[State -1, 3900]
type = ChangeState
value = 3900
triggerall = var(58) = 1 && p2statetype != L && statetype != A && P2Life != 0 && power >= 1000 && ctrl
trigger1 = p2statetype = A && (P2bodydist X <= 60) 
trigger2 = (P2bodydist X = [21,40]) && random <= 100
trigger3 = random <= 50

[State -1, 3980]
type = ChangeState
value = 3980
triggerall = var(58) = 1 && p2statetype != L && statetype != A && P2Life != 0 && power >= 2000 && ctrl
trigger1 = (p2bodydist x <= 15) && p2statetype != A  && random <= 500 
trigger2 = (p2bodydist x <= 15) && random <= 800


[State -1, 3800]
type = ChangeState
value = 3800
triggerall = var(58) = 1 && p2statetype != L && statetype != A && P2Life != 0 && power >= 2000 && ctrl
trigger1 = (p2bodydist x >= 150) && p2statetype != A 
trigger2 = (p2bodydist x >= 150) && p2statetype = S  && random <= 100
trigger3 = (p2bodydist x >= 150) && p2statetype = C  && random <= 100
trigger4 = (p2bodydist x >= 150) && random <= 100
trigger5 = (p2bodydist x >= 150) && p2stateno = [3226,3234] 

[State -1, 3800]
type = ChangeState
value = 4000
triggerall = var(58) = 1 && p2statetype != L && statetype != A && P2Life != 0 && power >= 2000 && ctrl
trigger1 = (p2bodydist x <= 60) && p2movetype = A && random <= 500
trigger2 = (p2bodydist x <= 60) && random <= 100

;--------------------------------------------------------------------------
;defence moves
[State -1, 700]
type = ChangeState
value = 700
triggerall = var(58) = 1 && p2statetype != L && statetype != A && P2Life != 0 && ctrl
triggerall = p2stateno != 5050
trigger1 = (p2bodydist x >= 200) && p2movetype = A && random <= 100
trigger2 = enemy,numproj = 1
trigger3 = p2movetype = A && random <= 100

; ==========================
; AI Standing Guard
; ==========================
[State -1]
type = ChangeState
triggerall = var(58) = 1 ;AI trigger used
triggerall = Statetype != A ;Player is not in the air
triggerall = P2statetype != C ;Player is not crouching
triggerall = Statetype = S ;Player is currently standing
triggerall = P2Movetype = A ;Opponent is attacking
triggerall = Pos Y != [-1,-999]
triggerall = ctrl = 1
trigger1 = random <= 800 ;triggers at 80% probability
value = 130 ;Default standing guard state

; =============================
; AI Stand to Crouch Guard Transition
; =============================
[State -1]
type = ChangeState
triggerall = var(58) = 1
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
trigger1 = stateno = 150
trigger1 = 1
value = 152

; =============================
; AI Crouching Guard
; =============================
[State -1]
type = ChangeState
value = 131
triggerall = var(58) = 1 && StateType != A 
triggerall = stateno != [10,5999]
trigger1 = P2statetype = C && p2movetype = A && random <= 500
trigger2 = P2Movetype = A && random <= 100
trigger3 = enemy,numproj >= 1 
trigger4 = enemy,numhelper >= 1
trigger5 = p2stateno = [2000,4999]
trigger6 = enemy,stateno = [2000,4999]
trigger7 = random <= 100 && p2movetype = A
trigger8 = p2movetype = A && random >= 800
trigger9 = enemy,numproj = 1 && random <= 100
trigger10 = enemy,numproj >= 1 && random <= 800
trigger11 = enemy,numproj >= 1 && random >= 500
trigger12 = numenemy = 1 && enemy,movetype = A 
trigger13 = numenemy = 1 && enemy,numproj >= 1

; =============================
; AI Crouch to Stand Guard Transition
; =============================
[State -1]
type = ChangeState
triggerall = var(58) = 1
triggerall = Statetype != A
triggerall = P2statetype != C
triggerall = P2Movetype = A
trigger1 = 1
trigger1 = stateno = 152
value = 150

; =============================
; AI Aerial Guard
; =============================
[State -1]
type = ChangeState
triggerall = var(58) = 1
triggerall = Statetype = A
triggerall = P2Movetype = A
triggerall = ctrl = 1
trigger1 = random <= 800
value = 132


;--------------------------------------------------------------------------
;misc moves
; Do Jumping      ﾁ｡ﾇﾁ
[state -2]
type = ChangeState
value = 40
triggerall = var(58) = 1 && statetype != A && p2statetype != L && ctrl
trigger1 = p2statetype != L && random <= 2 && p2statetype = A
trigger2 = p2statetype != L && random <= 3 && p2statetype = S && p2bodydist X >= 60
trigger3 = p2statetype != L && p2statetype != A && p2bodydist X >= 50 && p2bodydist X <= 100 && (random <= 4)
trigger4 = p2statetype != L && random <= 20 && p2statetype != A && p2bodydist X <= 20
trigger5 = p2statetype != L && p2statetype != A && p2bodydist X > 100 && p2bodydist X <= 225 && (random <= 50)
trigger6 = p2statetype != L && p2statetype != A && p2bodydist X > 225 && (random <= 140)
trigger7 = p2stateno = 5120 && p2bodydist X <= 25 && p2movetype != H && (random <= 200)
trigger8 = (p2bodydist Y < -80 && p2bodydist Y > -125 && p2bodydist X <= 15 && p2bodydist X >= -30) && (random < 20)
trigger9 = p2bodydist Y < -80 && p2bodydist Y > -125 && p2bodydist X <= 15 && p2bodydist X >= -30
trigger10 = random < 20
trigger11 = stateno != 100 || (stateno = 100 && random < 3)
trigger12 = p2bodydist x <= 90 && p2statetype !=A && random <= 100 
trigger13 = (p2bodydist x = [90,180]) && p2movetype !=H && random <= 50 
trigger14 = p2bodydist x <= 90 && p2statetype != A && backedgebodydist <= 70 && random <= 100 
trigger15 = p2bodydist x <= 40 && p2statetype = L && p2stateno = 5120 && random <= 100 
trigger16 =  p2bodydist x <= 90 && p2statetype = C
trigger17 = stateno != 100 || (stateno = 100 && random <= 50)

; =============================
; AI Auto Taunt
; =============================
[State -1, 195]
type = ChangeState
value = 195
triggerall = var(58) = 1 && (p2bodydist x >= 100) && statetype != A && P2Life != 0 && ctrl
trigger1 = p2movetype != A && random <= 50
trigger2 = p2movetype = I && random <= 50
trigger3 = p2statetype = L && random <= 50

; Run.
[State -1,Run]
type = ChangeState
value = 100
triggerall = var(58) = 1
triggerall = p2bodydist x > 50 && p2movetype != A && statetype = S && ctrl
trigger1 = stateno != 100 && random <= 800 
trigger2 = stateno != 100 && random <= 100
trigger3 = p2statetype != L && random <= 100
trigger4 = p2statetype != L && random <= 50

; Get Crazy
[State -1, Get Crazy]
type = ChangeState
value = 108
triggerall = var(58) = 1 && p2stateno != 5120 && statetype != A && stateno != 108 && ctrl
trigger1 = p2bodydist x > 121 && p2movetype != A && random <= 100
trigger2 = (p2bodydist x >= 121) && p2statetype = L 
trigger3 = (p2bodydist x <= 120) && p2stateno = 5120 && ctrl && random <= 100 
trigger4 = (p2bodydist x <= 120) && enemy,stateno = 5120 && ctrl && random <= 100  
trigger5 = (p2bodydist x <= 14) && p2statetype = L 
trigger6 = random <= 50 