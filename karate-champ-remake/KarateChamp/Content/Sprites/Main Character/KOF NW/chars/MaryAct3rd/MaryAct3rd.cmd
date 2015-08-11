;----------------------------------------------------------------------------
; Char = "Blue Mary"  
; Criado por = "ActJapan" 
; URL= http://www.mzp.com.br 
; 
; ## NÛs n„o Temos Nenhuma Responsabilidade por esse char ##             
;----------------------------------------------------------------------------
;		http://www.mzp.com.br
;----------------------------------------------------------------------------
; Divulgue seu Char em nosso Site Gratuitamente !!!!!!!!!!!
; Mais InformaÁıes www.mzp.com.br  ou www.mugenzpower.hpg.com.br
;----------------------------------------------------------------------------
;		http://www.mzp.com.br
;----------------------------------------------------------------------------
; Esse Char foi pego no Site MugenZPower www.mugenzpower.rg3.net
; Se vocÍ pegou esse char em outro site com o nosso link, porfavor nos avise.
;----------------------------------------------------------------------------
;		http://www.mzp.com.br
;----------------------------------------------------------------------------
; Tire todas Suas Duvidas sobre Mugen no nosso FÚrum
; http://www.mzp.com.br/forum
;----------------------------------------------------------------------------
;		http://www.mzp.com.br
:=============================================================================================
;Distribuido pela = "MugenZPower"							      
;URL  = WWW.mzp.com.br     OU   WWW.MUGENZPOWER.RG3.NET   OU  WWW.MUGENZPOWER.HPG.COM.BR  
;=============================================================================================
;=====================================================================
;MUGEN CharData (01.04.14)
;"MaryAct3rd"                                                 ActJapan
;=====================================================================

;=====================================================================
; Definition of the Commands
;=====================================================================

;-| CPU Function |----------------------------------------------------
[Command]
name = "cpu01"
command = ~F,DF,D,DB,B,F,DF,D,DB,B,a+b+c
time = 0

;-| Super Motions |---------------------------------------------------

;---------------------------------------------------------------------
; ÇlÅEÉ^ÉCÉtÅ[Éì MAX2
[Command]
name = "MTyphoon"
command = ~DB, D, DF, F, UF, U, D, a+b
time = 35

;---------------------------------------------------------------------

; ÇlÅEÉcÉCÉXÉ^Å[ÉçÅ[ÉY
[Command]
name = "SplashRose_MAX"
command = ~D, DF, F, DF, D, DB, B, x+y
time = 23


; ÇlÅEÉXÉvÉâÉbÉVÉÖÉçÅ[ÉY
[Command]
name = "SplashRose_x"
command = ~D, DF, F, DF, D, DB, B, x
time = 23

[Command]
name = "SplashRose_y"
command = ~D, DF, F, DF, D, DB, B, y
time = 23

;---------------------------------------------------------------------
; ÇlÅEÉ_ÉCÉiÉ}ÉCÉgÉXÉEÉBÉìÉO
[Command]
name = "DynamiteSwingMAX"
command = x, x, B, a, y
time = 65

[Command]
name = "DynamiteSwing"
command = x, x, F, a, y
time = 65

[Command]
name = "DynamiteSwingMAX"
command = /B, c

[Command]
name = "DynamiteSwing"
command = /F, c


;---------------------------------------------------------------------
; ï‚èï
[Command]
name = "HojoxxF"
command = x, x, F
time = 10
[Command]
name = "HojoxxB"
command = x, x, B
time = 10

;---------------------------------------------------------------------

;-| Special Motions |-------------------------------------------------
; ÉoÅ[É`ÉJÉãÉAÉçÅ[Å^ÇlÅEÉXÉiÉbÉ`ÉÉÅ[

[Command]
name = "Vertical_a"
command = ~F, D ,DF, a
time = 18

[Command]
name = "Vertical_b"
command = ~F, D ,DF, b
time = 18

;---------------------------------------------------------------------
; ÉXÉsÉìÉtÉHÅ[ÉãÅ^ÇlÅEÉXÉpÉCÉ_Å[

[Command]
name = "Spinfall_x"
command = ~D, DF, F, x
time = 15

[Command]
name = "Spinfall_y"
command = ~D, DF, F, y
time = 15

;---------------------------------------------------------------------
; ÉXÉgÉåÅ[ÉgÉXÉâÉCÉTÅ[

[Command]
name = "Slicer_a"
command = ~25$B, F, a

[Command]
name = "Slicer_b"
command = ~25$B, F, b

; Å^ÉNÉâÉuÉNÉâÉbÉ`
[Command]
name = "Crouch_a"
command = ~D, DF, F, a
time = 15

[Command]
name = "Crouch_b"
command = ~D, DF, F, b
time = 15
;---------------------------------------------------------------------
; ÉäÉAÉãÉJÉEÉìÉ^Å[
[Command]
name = "RealCtr_x"
command = ~D, DB, B, x
time = 15

[Command]
name = "RealCtr_y"
command = ~D, DB, B, y
time = 15

; Å^ÉoÉbÉNÉhÉçÉbÉvÅEÉäÉAÉã
[Command]
name = "BkDrpReal_y"
command = ~B, DB, D, DF, F, y
time = 18

; Å^ÉwÉbÉhÉNÉâÉbÉVÉÖ
[Command]
name = "HdCsh_b"
command = ~B, DB, D, DF, F, b
time = 18

;---------------------------------------------------------------------
; ÉoÉbÉNÉhÉçÉbÉvÅEÉäÉAÉã ÇXÇW
[Command]
name = "BkDrpReal98_x"
command = ~F ,DF, D, DB, B, F, x
time = 20

[Command]
name = "BkDrpReal98_y"
command = ~F ,DF, D, DB, B, F, y
time = 20

;---------------------------------------------------------------------
; ÉwÉbÉhÉNÉâÉbÉVÉÖ ÇXÇW
[Command]
name = "HdCsh98_a"
command = ~F ,DF, D, DB, B, F, a
time = 20

[Command]
name = "HdCsh98_b"
command = ~F ,DF, D, DB, B, F, b
time = 20

;---------------------------------------------------------------------
; ÇlÅEÉäÉoÅ[ÉXÉtÉFÉCÉXÉçÉbÉN
[Command]
name = "Reversal_a"
command = ~D, DB, B, a
time = 15

;---------------------------------------------------------------------
; ÇlÅEÉwÉbÉhÉoÉXÉ^Å[
[Command]
name = "Reversal_b"
command = ~D, DB, B, b
time = 15

;---------------------------------------------------------------------

;-| Double Tap |------------------------------------------------------
[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10

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
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_c"
command = /F,c
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
name = "fwd_z"
command = /F,z
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
name = "back_c"
command = /B,c
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
name = "back_z"
command = /B,z
time = 1

[Command]
name = "downfwd_y"
command = /DF,y
time = 1

;-----------------------------For KOF Seriese only
[Command]
name = "gc_fwd"
command = /DF, a+x
time = 1

;[Command]
;name = "gc_fwd"
;command = /DF, z
;time = 1

[Command]
name = "gc_fwd"
command = /F, a+x
time = 1

;[Command]
;name = "gc_fwd"
;command = /F, z
;time = 1

[Command]
name = "gc_back"
command = /DB, a+x
time = 1

;[Command]
;name = "gc_back"
;command = /DB, z
;time = 1

[Command]
name = "gc_back"
command = /B, a+x
time = 1

;[Command]
;name = "gc_back"
;command = /B, z
;time = 1

[Command]
name = "q_fwd"
command = /F, a+x
time = 1

;[Command]
;name = "q_fwd"
;command = /F, z
;time = 1

[Command]
name = "q_back"
command = /B, a+x
time = 1

;[Command]
;name = "q_back"
;command = /B, z
;time = 1

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

;[Command]
;name = "recovery"
;command = z
;time = 1

;----------------------------- KOF Seriese only
;[Command]
;name = "gc_fwd"
;command = z
;time = 1

;[Command]
;name = "q_fwd"
;command = z
;time = 1

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

;------------------------ Or
[Command]
name = "Selectfwd"
command = F
time = 1

[Command]
name = "Selectback"
command = B
time = 1

;=====================================================================
; State Entry for Commands
;=====================================================================

[Statedef -1]

;=====================================================================
; CPU Function
;=====================================================================

; ÇbÇoÇtêÍópÉtÉâÉO
;[State -1,cpu01]
;type = VarSet
;triggerall = var(30)=0
;trigger1 = Command = "cpu01"
;persistent = 0
;v = 30
;value = 1

;=====================================================================
; Super Arts
;=====================================================================

; ÇlÅEÉ^ÉCÉtÅ[Éì
[State -1]
type = ChangeState
value = 3400
triggerall = Command = "MTyphoon" && Var(32)!=0 && Life<=Var(7) && Power >= 2000-fVar(2)
trigger1 = StateType != A && Ctrl = 1
trigger2 = StateNo = 100 || StateNo = 40 || StateNo = 2040
trigger3 = (StateNo = 200 && AnimElemTime(3) >= 1 && AnimElemTime(5) <= 0)
trigger4 = (StateNo = 210 && AnimElemTime(2) >= 1 && AnimElemTime(4) <= 1)
trigger5 = (StateNo = 220 && AnimElemTime(4) >= 1 && AnimElemTime(10) <= 2)
trigger6 = (StateNo = 230 && AnimElemTime(7) >= 1 && AnimElemTime(11) <= 2)
trigger7 = (StateNo = 225 && AnimElemTime(7) >= 1 && AnimElemTime(13) <= 1)
trigger8 = (StateNo = 400 && AnimElemTime(3) >= 1 && AnimElemTime(5) <= 1)
trigger9 = MoveContact && (StateNo = 410 && AnimElemTime(3) >= 1 && AnimElemTime(6) <= 1)
trigger10 = MoveContact && (StateNo = 420 && AnimElemTime(4) >= 1 && AnimElemTime(7) <= 4)
trigger11 = MoveContact && (StateNo = 430 && AnimElemTime(6) >= 1 && AnimElemTime(11) <= 2)
trigger12 = MoveContact && (StateNo = 730 && AnimElemTime(11) >= 1 && AnimElemTime(14) <= 3)
trigger13 = MoveContact && (StateNo = 700 && AnimElemTime(14) >= 1 && AnimElemTime(17) <= 11)
trigger14 = MoveContact && (StateNo = 710 && AnimElemTime(14) >= 1 && AnimElemTime(17) <= 11)
trigger15 = (StateNo = 600 && AnimElemTime(6) >= 0 && AnimElemTime(8) <= 0)
trigger16 = !MoveContact && (StateNo = 410 && AnimElemTime(3) >= 1 && AnimElemTime(6) <= 1) && Var(32)!=0
trigger17 = !MoveContact && (StateNo = 420 && AnimElemTime(4) >= 1 && AnimElemTime(7) <= 4) && Var(32)!=0
trigger18 = !MoveContact && (StateNo = 430 && AnimElemTime(6) >= 1 && AnimElemTime(11) <= 2) && Var(32)!=0
trigger19 = !MoveContact && (StateNo = 600 && AnimElemTime(6) >= 0 && AnimElemTime(8) <= 0) && Var(32)!=0
trigger20 = (StateNo = 5120 && Anim = 5120 && AnimElemNo(0) >= 3) || (StateNo = 5120 && Anim = 5121 && AnimElemNo(0) >= 4) || (StateNo = 5120 && Anim = 5122 && AnimElemNo(0) >= 4)
trigger21 = (StateNo = 3230 || StateNo = 3250) && Power>=3000-fVar(2)
trigger22 = MoveContact && (StateNo = 1212 && AnimElemTime(9) <= 0) && Power>=3000-fVar(2)
trigger23 = (StateNo = 215 && AnimElemTime(5) >= 2 && AnimElemTime(9) <= 1)

;---------------------------------------------------------------------
; ÇlÅEÉ_ÉCÉiÉ}ÉCÉgÉXÉEÉBÉìÉO MAX
[State -1]
type = ChangeState
value = 3300
triggerall = Command = "DynamiteSwingMAX" && Var(32)!=0 && Power >= 2000-fVar(2)
trigger1 = StateType != A && Ctrl = 1
trigger2 = StateNo = 100
trigger3 = (StateNo = 200 && AnimElemTime(3) >= 1 && AnimElemTime(5) <= 0)
trigger4 = (StateNo = 210 && AnimElemTime(2) >= 1 && AnimElemTime(4) <= 1)
trigger5 = (StateNo = 220 && AnimElemTime(4) >= 1 && AnimElemTime(10) <= 2)
trigger6 = (StateNo = 230 && AnimElemTime(7) >= 1 && AnimElemTime(11) <= 2)
trigger7 = (StateNo = 225 && AnimElemTime(7) >= 1 && AnimElemTime(13) <= 1)
trigger8 = (StateNo = 400 && AnimElemTime(3) >= 1 && AnimElemTime(5) <= 1)
trigger9 = MoveContact && (StateNo = 410 && AnimElemTime(3) >= 1 && AnimElemTime(6) <= 1)
trigger10 = MoveContact && (StateNo = 420 && AnimElemTime(4) >= 1 && AnimElemTime(7) <= 4)
trigger11 = MoveContact && (StateNo = 430 && AnimElemTime(6) >= 1 && AnimElemTime(11) <= 2)
trigger12 = MoveContact && (StateNo = 730 && AnimElemTime(11) >= 1 && AnimElemTime(14) <= 3)
trigger13 = MoveContact && (StateNo = 700 && AnimElemTime(14) >= 1 && AnimElemTime(17) <= 11)
trigger14 = MoveContact && (StateNo = 710 && AnimElemTime(14) >= 1 && AnimElemTime(17) <= 11)
trigger15 = (StateNo = 600 && AnimElemTime(6) >= 0 && AnimElemTime(8) <= 0)
trigger16 = !MoveContact && (StateNo = 410 && AnimElemTime(3) >= 1 && AnimElemTime(6) <= 1) && Var(32)!=0
trigger17 = !MoveContact && (StateNo = 420 && AnimElemTime(4) >= 1 && AnimElemTime(7) <= 4) && Var(32)!=0
trigger18 = !MoveContact && (StateNo = 430 && AnimElemTime(6) >= 1 && AnimElemTime(11) <= 2) && Var(32)!=0
trigger19 = !MoveContact && (StateNo = 600 && AnimElemTime(6) >= 0 && AnimElemTime(8) <= 0) && Var(32)!=0
trigger20 = (StateNo = 5120 && Anim = 5120 && AnimElemNo(0) >= 3) || (StateNo = 5120 && Anim = 5121 && AnimElemNo(0) >= 4) || (StateNo = 5120 && Anim = 5122 && AnimElemNo(0) >= 4)
trigger21 = (StateNo = 3230 || StateNo = 3250) && Power>=3000-fVar(2)
trigger22 = MoveContact && (StateNo = 1212 && AnimElemTime(9) <= 0) && Power>=3000-fVar(2)
trigger23 = (StateNo = 215 && AnimElemTime(5) >= 2 && AnimElemTime(9) <= 1)

; ÇlÅEÉ_ÉCÉiÉ}ÉCÉgÉXÉEÉBÉìÉO
[State -1]
type = ChangeState
value = 3100
triggerall = Command = "DynamiteSwing" && Power>=1000-fVar(2)
trigger1 = StateType != A && Ctrl = 1
trigger2 = StateNo = 100
trigger3 = (StateNo = 200 && AnimElemTime(3) >= 1 && AnimElemTime(5) <= 0)
trigger4 = (StateNo = 210 && AnimElemTime(2) >= 1 && AnimElemTime(4) <= 1)
trigger5 = (StateNo = 220 && AnimElemTime(4) >= 1 && AnimElemTime(10) <= 2)
trigger6 = (StateNo = 230 && AnimElemTime(7) >= 1 && AnimElemTime(11) <= 2)
trigger7 = (StateNo = 225 && AnimElemTime(7) >= 1 && AnimElemTime(13) <= 1)
trigger8 = (StateNo = 400 && AnimElemTime(3) >= 1 && AnimElemTime(5) <= 1)
trigger9 = MoveContact && (StateNo = 410 && AnimElemTime(3) >= 1 && AnimElemTime(6) <= 1)
trigger10 = MoveContact && (StateNo = 420 && AnimElemTime(4) >= 1 && AnimElemTime(7) <= 4)
trigger11 = MoveContact && (StateNo = 430 && AnimElemTime(6) >= 1 && AnimElemTime(11) <= 2)
trigger12 = MoveContact && (StateNo = 730 && AnimElemTime(11) >= 1 && AnimElemTime(14) <= 3)
trigger13 = MoveContact && (StateNo = 700 && AnimElemTime(14) >= 1 && AnimElemTime(17) <= 11)
trigger14 = MoveContact && (StateNo = 710 && AnimElemTime(14) >= 1 && AnimElemTime(17) <= 11)
trigger15 = (StateNo = 600 && AnimElemTime(6) >= 0 && AnimElemTime(8) <= 0)
trigger16 = !MoveContact && (StateNo = 410 && AnimElemTime(3) >= 1 && AnimElemTime(6) <= 1) && Var(32)!=0
trigger17 = !MoveContact && (StateNo = 420 && AnimElemTime(4) >= 1 && AnimElemTime(7) <= 4) && Var(32)!=0
trigger18 = !MoveContact && (StateNo = 430 && AnimElemTime(6) >= 1 && AnimElemTime(11) <= 2) && Var(32)!=0
trigger19 = !MoveContact && (StateNo = 600 && AnimElemTime(6) >= 0 && AnimElemTime(8) <= 0) && Var(32)!=0
trigger20 = (StateNo = 5120 && Anim = 5120 && AnimElemNo(0) >= 3) || (StateNo = 5120 && Anim = 5121 && AnimElemNo(0) >= 4) || (StateNo = 5120 && Anim = 5122 && AnimElemNo(0) >= 4)
trigger21 = (StateNo = 3230 || StateNo = 3250) && Power>=2000-fVar(2)
trigger22 = MoveContact && (StateNo = 1212 && AnimElemTime(9) <= 0) && Power>=2000-fVar(2)
trigger23 = (StateNo = 215 && AnimElemTime(5) >= 2 && AnimElemTime(9) <= 1)

;---------------------------------------------------------------------
; ÇlÅEÉcÉCÉXÉ^Å[ÉçÅ[ÉY
[State -1]
type = ChangeState
value = 3600
triggerall = Command = "SplashRose_MAX" && Var(32)!=0 && Power>=2000-fVar(2)
trigger1 = StateType != A && Ctrl = 1
trigger2 = StateNo = 100
trigger3 = (StateNo = 200 && AnimElemTime(3) >= 1 && AnimElemTime(5) <= 0)
trigger4 = (StateNo = 210 && AnimElemTime(2) >= 1 && AnimElemTime(4) <= 1)
trigger5 = (StateNo = 220 && AnimElemTime(4) >= 1 && AnimElemTime(10) <= 2)
trigger6 = (StateNo = 230 && AnimElemTime(7) >= 1 && AnimElemTime(11) <= 2)
trigger7 = (StateNo = 225 && AnimElemTime(7) >= 1 && AnimElemTime(13) <= 1)
trigger8 = (StateNo = 400 && AnimElemTime(3) >= 1 && AnimElemTime(5) <= 1)
trigger9 = MoveContact && (StateNo = 410 && AnimElemTime(3) >= 1 && AnimElemTime(6) <= 1)
trigger10 = MoveContact && (StateNo = 420 && AnimElemTime(4) >= 1 && AnimElemTime(7) <= 4)
trigger11 = MoveContact && (StateNo = 430 && AnimElemTime(6) >= 1 && AnimElemTime(11) <= 2)
trigger12 = MoveContact && (StateNo = 730 && AnimElemTime(11) >= 1 && AnimElemTime(14) <= 3)
trigger13 = MoveContact && (StateNo = 700 && AnimElemTime(14) >= 1 && AnimElemTime(17) <= 11)
trigger14 = MoveContact && (StateNo = 710 && AnimElemTime(14) >= 1 && AnimElemTime(17) <= 11)
trigger15 = (StateNo = 600 && AnimElemTime(6) >= 0 && AnimElemTime(8) <= 0)
trigger16 = !MoveContact && (StateNo = 410 && AnimElemTime(3) >= 1 && AnimElemTime(6) <= 1) && Var(32)!=0
trigger17 = !MoveContact && (StateNo = 420 && AnimElemTime(4) >= 1 && AnimElemTime(7) <= 4) && Var(32)!=0
trigger18 = !MoveContact && (StateNo = 430 && AnimElemTime(6) >= 1 && AnimElemTime(11) <= 2) && Var(32)!=0
trigger19 = !MoveContact && (StateNo = 600 && AnimElemTime(6) >= 0 && AnimElemTime(8) <= 0) && Var(32)!=0
trigger20 = (StateNo = 5120 && Anim = 5120 && AnimElemNo(0) >= 3) || (StateNo = 5120 && Anim = 5121 && AnimElemNo(0) >= 4) || (StateNo = 5120 && Anim = 5122 && AnimElemNo(0) >= 4)
trigger21 = MoveContact && (StateNo = 1212 && AnimElemTime(9) <= 0) && Power>=3000-fVar(2)
trigger22 = (StateNo = 215 && AnimElemTime(5) >= 2 && AnimElemTime(9) <= 1)

;---------------------------------------------------------------------
; ÇlÅEÉXÉvÉâÉbÉVÉÖÉçÅ[ÉY
[State -1]
type = ChangeState
value = 3200
triggerall = Command = "SplashRose_x" && Power>=1000-fVar(2)
trigger1 = StateType != A && Ctrl = 1
trigger2 = StateNo = 100
trigger3 = (StateNo = 200 && AnimElemTime(3) >= 1 && AnimElemTime(5) <= 0)
trigger4 = (StateNo = 210 && AnimElemTime(2) >= 1 && AnimElemTime(4) <= 1)
trigger5 = (StateNo = 220 && AnimElemTime(4) >= 1 && AnimElemTime(10) <= 2)
trigger6 = (StateNo = 230 && AnimElemTime(7) >= 1 && AnimElemTime(11) <= 2)
trigger7 = (StateNo = 225 && AnimElemTime(7) >= 1 && AnimElemTime(13) <= 1)
trigger8 = (StateNo = 400 && AnimElemTime(3) >= 1 && AnimElemTime(5) <= 1)
trigger9 = MoveContact && (StateNo = 410 && AnimElemTime(3) >= 1 && AnimElemTime(6) <= 1)
trigger10 = MoveContact && (StateNo = 420 && AnimElemTime(4) >= 1 && AnimElemTime(7) <= 4)
trigger11 = MoveContact && (StateNo = 430 && AnimElemTime(6) >= 1 && AnimElemTime(11) <= 2)
trigger12 = MoveContact && (StateNo = 730 && AnimElemTime(11) >= 1 && AnimElemTime(14) <= 3)
trigger13 = MoveContact && (StateNo = 700 && AnimElemTime(14) >= 1 && AnimElemTime(17) <= 11)
trigger14 = MoveContact && (StateNo = 710 && AnimElemTime(14) >= 1 && AnimElemTime(17) <= 11)
trigger15 = (StateNo = 600 && AnimElemTime(6) >= 0 && AnimElemTime(8) <= 0)
trigger16 = !MoveContact && (StateNo = 410 && AnimElemTime(3) >= 1 && AnimElemTime(6) <= 1) && Var(32)!=0
trigger17 = !MoveContact && (StateNo = 420 && AnimElemTime(4) >= 1 && AnimElemTime(7) <= 4) && Var(32)!=0
trigger18 = !MoveContact && (StateNo = 430 && AnimElemTime(6) >= 1 && AnimElemTime(11) <= 2) && Var(32)!=0
trigger19 = !MoveContact && (StateNo = 600 && AnimElemTime(6) >= 0 && AnimElemTime(8) <= 0) && Var(32)!=0
trigger20 = (StateNo = 5120 && Anim = 5120 && AnimElemNo(0) >= 3) || (StateNo = 5120 && Anim = 5121 && AnimElemNo(0) >= 4) || (StateNo = 5120 && Anim = 5122 && AnimElemNo(0) >= 4)
trigger21 = MoveContact && (StateNo = 1212 && AnimElemTime(9) <= 0) && Power>=2000-fVar(2)
trigger22 = (StateNo = 215 && AnimElemTime(5) >= 2 && AnimElemTime(9) <= 1)

; ÇlÅEÉXÉvÉâÉbÉVÉÖÉçÅ[ÉY
[State -1]
type = ChangeState
value = 3205
triggerall = Command = "SplashRose_y" && Power>=1000-fVar(2)
trigger1 = StateType != A && Ctrl = 1
trigger2 = StateNo = 100
trigger3 = (StateNo = 200 && AnimElemTime(3) >= 1 && AnimElemTime(5) <= 0)
trigger4 = (StateNo = 210 && AnimElemTime(2) >= 1 && AnimElemTime(4) <= 1)
trigger5 = (StateNo = 220 && AnimElemTime(4) >= 1 && AnimElemTime(10) <= 2)
trigger6 = (StateNo = 230 && AnimElemTime(7) >= 1 && AnimElemTime(11) <= 2)
trigger7 = (StateNo = 225 && AnimElemTime(7) >= 1 && AnimElemTime(13) <= 1)
trigger8 = (StateNo = 400 && AnimElemTime(3) >= 1 && AnimElemTime(5) <= 1)
trigger9 = MoveContact && (StateNo = 410 && AnimElemTime(3) >= 1 && AnimElemTime(6) <= 1)
trigger10 = MoveContact && (StateNo = 420 && AnimElemTime(4) >= 1 && AnimElemTime(7) <= 4)
trigger11 = MoveContact && (StateNo = 430 && AnimElemTime(6) >= 1 && AnimElemTime(11) <= 2)
trigger12 = MoveContact && (StateNo = 730 && AnimElemTime(11) >= 1 && AnimElemTime(14) <= 3)
trigger13 = MoveContact && (StateNo = 700 && AnimElemTime(14) >= 1 && AnimElemTime(17) <= 11)
trigger14 = MoveContact && (StateNo = 710 && AnimElemTime(14) >= 1 && AnimElemTime(17) <= 11)
trigger15 = (StateNo = 600 && AnimElemTime(6) >= 0 && AnimElemTime(8) <= 0)
trigger16 = !MoveContact && (StateNo = 410 && AnimElemTime(3) >= 1 && AnimElemTime(6) <= 1) && Var(32)!=0
trigger17 = !MoveContact && (StateNo = 420 && AnimElemTime(4) >= 1 && AnimElemTime(7) <= 4) && Var(32)!=0
trigger18 = !MoveContact && (StateNo = 430 && AnimElemTime(6) >= 1 && AnimElemTime(11) <= 2) && Var(32)!=0
trigger19 = !MoveContact && (StateNo = 600 && AnimElemTime(6) >= 0 && AnimElemTime(8) <= 0) && Var(32)!=0
trigger20 = (StateNo = 5120 && Anim = 5120 && AnimElemNo(0) >= 3) || (StateNo = 5120 && Anim = 5121 && AnimElemNo(0) >= 4) || (StateNo = 5120 && Anim = 5122 && AnimElemNo(0) >= 4)
trigger21 = MoveContact && (StateNo = 1212 && AnimElemTime(9) <= 0) && Power>=2000-fVar(2)
trigger22 = (StateNo = 215 && AnimElemTime(5) >= 2 && AnimElemTime(9) <= 1)

;=====================================================================
; Special Arts 
;=====================================================================
; ÉoÉbÉNÉhÉçÉbÉvÅEÉäÉAÉã ÇXÇW
[State -1]
type = ChangeState
value = 1000
triggerall = (Command = "BkDrpReal98_x" || Command = "BkDrpReal98_y") && Var(36)!=0
trigger1 = StateType != A && Ctrl = 1
trigger2 = StateNo = 100
trigger3 = (StateNo = 200 && AnimElemTime(3) >= 1 && AnimElemTime(5) <= 0)
trigger4 = (StateNo = 210 && AnimElemTime(2) >= 1 && AnimElemTime(4) <= 1)
trigger5 = (StateNo = 220 && AnimElemTime(4) >= 1 && AnimElemTime(10) <= 2)
trigger6 = (StateNo = 230 && AnimElemTime(7) >= 1 && AnimElemTime(11) <= 2)
trigger7 = (StateNo = 225 && AnimElemTime(7) >= 1 && AnimElemTime(13) <= 1)
trigger8 = (StateNo = 400 && AnimElemTime(3) >= 1 && AnimElemTime(5) <= 1)
trigger9 = (StateNo = 410 && AnimElemTime(3) >= 1 && AnimElemTime(6) <= 1)
trigger10 = MoveContact && (StateNo = 420 && AnimElemTime(4) >= 1 && AnimElemTime(7) <= 4)
trigger11 = MoveContact && (StateNo = 430 && AnimElemTime(6) >= 1 && AnimElemTime(11) <= 2)
trigger12 = MoveContact && (StateNo = 730 && AnimElemTime(11) >= 1 && AnimElemTime(14) <= 3)
trigger13 = MoveContact && (StateNo = 700 && AnimElemTime(14) >= 1 && AnimElemTime(17) <= 11)
trigger14 = MoveContact && (StateNo = 710 && AnimElemTime(14) >= 1 && AnimElemTime(17) <= 11)
trigger15 = (StateNo = 600 && AnimElemTime(6) >= 0 && AnimElemTime(8) <= 0)
trigger16 = (StateNo = 225 && AnimElemTime(2) >= 0 && AnimElemTime(7) < 0) && Var(32)!=0
trigger17 = !MoveContact && (StateNo = 420 && AnimElemTime(4) >= 1 && AnimElemTime(7) <= 4) && Var(32)!=0
trigger18 = !MoveContact && (StateNo = 430 && AnimElemTime(6) >= 1 && AnimElemTime(11) <= 2) && Var(32)!=0
trigger19 = !MoveContact && (StateNo = 600 && AnimElemTime(6) >= 0 && AnimElemTime(8) <= 0) && Var(32)!=0
trigger20 = (StateNo = 5120 && Anim = 5120 && AnimElemNo(0) >= 3) || (StateNo = 5120 && Anim = 5121 && AnimElemNo(0) >= 4) || (StateNo = 5120 && Anim = 5122 && AnimElemNo(0) >= 4)
trigger21 = MoveContact && (StateNo = 1212 && AnimElemTime(9) <= 0) && Var(32)!=0
trigger22 = MoveContact && (StateNo = 1232 && AnimElemTime(12) <= 0) && Var(32)!=0
trigger23 = (StateNo = 215 && AnimElemTime(5) >= 2 && AnimElemTime(9) <= 1)


; ÉwÉbÉhÉNÉâÉbÉVÉÖ ÇXÇW
[State -1]
type = ChangeState
value = 1900
triggerall = (Command = "HdCsh98_a" || Command = "HdCsh98_b") && Var(36)!=0
trigger1 = StateType != A && Ctrl = 1
trigger2 = StateNo = 100
trigger3 = (StateNo = 200 && AnimElemTime(3) >= 1 && AnimElemTime(5) <= 0)
trigger4 = (StateNo = 210 && AnimElemTime(2) >= 1 && AnimElemTime(4) <= 1)
trigger5 = (StateNo = 220 && AnimElemTime(4) >= 1 && AnimElemTime(10) <= 2)
trigger6 = (StateNo = 230 && AnimElemTime(7) >= 1 && AnimElemTime(11) <= 2)
trigger7 = MoveContact && (StateNo = 225 && AnimElemTime(7) >= 1 && AnimElemTime(13) <= 1)
trigger8 = (StateNo = 400 && AnimElemTime(3) >= 1 && AnimElemTime(5) <= 1)
trigger9 = (StateNo = 410 && AnimElemTime(3) >= 1 && AnimElemTime(6) <= 1)
trigger10 = MoveContact && (StateNo = 420 && AnimElemTime(4) >= 1 && AnimElemTime(7) <= 4)
trigger11 = MoveContact && (StateNo = 430 && AnimElemTime(6) >= 1 && AnimElemTime(11) <= 2)
trigger12 = MoveContact && (StateNo = 730 && AnimElemTime(11) >= 1 && AnimElemTime(14) <= 3)
trigger13 = MoveContact && (StateNo = 700 && AnimElemTime(14) >= 1 && AnimElemTime(17) <= 11)
trigger14 = MoveContact && (StateNo = 710 && AnimElemTime(14) >= 1 && AnimElemTime(17) <= 11)
trigger15 = (StateNo = 600 && AnimElemTime(6) >= 0 && AnimElemTime(8) <= 0)
trigger16 = (StateNo = 225 && AnimElemTime(2) >= 0 && AnimElemTime(7) < 0) && Var(32)!=0
trigger17 = !MoveContact && (StateNo = 420 && AnimElemTime(4) >= 1 && AnimElemTime(7) <= 4) && Var(32)!=0
trigger18 = !MoveContact && (StateNo = 430 && AnimElemTime(6) >= 1 && AnimElemTime(11) <= 2) && Var(32)!=0
trigger19 = !MoveContact && (StateNo = 600 && AnimElemTime(6) >= 0 && AnimElemTime(8) <= 0) && Var(32)!=0
trigger20 = (StateNo = 5120 && Anim = 5120 && AnimElemNo(0) >= 3) || (StateNo = 5120 && Anim = 5121 && AnimElemNo(0) >= 4) || (StateNo = 5120 && Anim = 5122 && AnimElemNo(0) >= 4)
trigger21 = MoveContact && (StateNo = 1212 && AnimElemTime(9) <= 0) && Var(32)!=0
trigger22 = MoveContact && (StateNo = 1232 && AnimElemTime(12) <= 0) && Var(32)!=0
trigger23 = (StateNo = 215 && AnimElemTime(5) >= 2 && AnimElemTime(9) <= 1)

; ÉäÉAÉãÉJÉEÉìÉ^Å[
[State -1]
type = ChangeState
value = 970
triggerall = (Command = "RealCtr_x" || Command = "RealCtr_y") && Var(30)=0
trigger1 = StateType != A && Ctrl = 1
trigger2 = StateNo = 100
trigger3 = (StateNo = 200 && AnimElemTime(3) >= 1 && AnimElemTime(5) <= 0)
trigger4 = (StateNo = 210 && AnimElemTime(2) >= 1 && AnimElemTime(4) <= 1)
trigger5 = (StateNo = 220 && AnimElemTime(4) >= 1 && AnimElemTime(10) <= 2)
trigger6 = (StateNo = 230 && AnimElemTime(7) >= 1 && AnimElemTime(11) <= 2)
trigger7 = (StateNo = 225 && AnimElemTime(7) >= 1 && AnimElemTime(13) <= 1)
trigger8 = (StateNo = 400 && AnimElemTime(3) >= 1 && AnimElemTime(5) <= 1)
trigger9 = (StateNo = 410 && AnimElemTime(3) >= 1 && AnimElemTime(6) <= 1)
trigger10 = MoveContact && (StateNo = 420 && AnimElemTime(4) >= 1 && AnimElemTime(7) <= 4)
trigger11 = MoveContact && (StateNo = 430 && AnimElemTime(6) >= 1 && AnimElemTime(11) <= 2)
trigger12 = MoveContact && (StateNo = 730 && AnimElemTime(11) >= 1 && AnimElemTime(14) <= 3)
trigger13 = MoveContact && (StateNo = 700 && AnimElemTime(14) >= 1 && AnimElemTime(17) <= 11)
trigger14 = MoveContact && (StateNo = 710 && AnimElemTime(14) >= 1 && AnimElemTime(17) <= 11)
trigger15 = (StateNo = 600 && AnimElemTime(6) >= 0 && AnimElemTime(8) <= 0)
trigger16 = (StateNo = 225 && AnimElemTime(2) >= 0 && AnimElemTime(7) < 0) && Var(32)!=0
trigger17 = !MoveContact && (StateNo = 420 && AnimElemTime(4) >= 1 && AnimElemTime(7) <= 4) && Var(32)!=0
trigger18 = !MoveContact && (StateNo = 430 && AnimElemTime(6) >= 1 && AnimElemTime(11) <= 2) && Var(32)!=0
trigger19 = !MoveContact && (StateNo = 600 && AnimElemTime(6) >= 0 && AnimElemTime(8) <= 0) && Var(32)!=0
trigger20 = (StateNo = 5120 && Anim = 5120 && AnimElemNo(0) >= 3) || (StateNo = 5120 && Anim = 5121 && AnimElemNo(0) >= 4) || (StateNo = 5120 && Anim = 5122 && AnimElemNo(0) >= 4)
trigger21 = MoveContact && (StateNo = 1212 && AnimElemTime(9) <= 0) && Var(32)!=0
trigger22 = MoveContact && (StateNo = 1232 && AnimElemTime(12) <= 0) && Var(32)!=0
trigger23 = (StateNo = 215 && AnimElemTime(5) >= 2 && AnimElemTime(9) <= 1)

; Å^ÉoÉbÉNÉhÉçÉbÉvÅEÉäÉAÉã
[State -1]
type = ChangeState
value = 1000
triggerall = Command = "BkDrpReal_y"
trigger1 = (StateNo = 970 && AnimElemTime(2) >= 2 && AnimElemTime(7) <= 5)

; Å^ÉwÉbÉhÉNÉâÉbÉVÉÖ
[State -1]
type = ChangeState
value = 1050
triggerall = Command = "HdCsh_b" && Var(36)!=0
trigger1 = (StateNo = 970 && AnimElemTime(2) >= 2 && AnimElemTime(7) <= 5)

;---------------------------------------------------------------------

; ÉoÅ[É`ÉJÉãÉAÉçÅ[Å^ÇlÅEÉXÉiÉbÉ`ÉÉÅ[
[State -1]
type = ChangeState
value = IfElse(Command = "Vertical_a",1300,1350)
triggerall = (Command = "Vertical_a" || Command = "Vertical_b")
trigger1 = StateType != A && Ctrl = 1
trigger2 = StateNo = 100
trigger3 = (StateNo = 200 && AnimElemTime(3) >= 1 && AnimElemTime(5) <= 0) && (Var(30)=0 || Var(30)!=0 && P2BodyDist X = [0,15])
trigger4 = (StateNo = 210 && AnimElemTime(2) >= 1 && AnimElemTime(4) <= 1) && (Var(30)=0 || Var(30)!=0 && P2BodyDist X = [0,15])
trigger5 = (StateNo = 220 && AnimElemTime(4) >= 1 && AnimElemTime(10) <= 2) && (Var(30)=0 || Var(30)!=0 && P2BodyDist X = [0,15])
trigger6 = (StateNo = 230 && AnimElemTime(7) >= 1 && AnimElemTime(11) <= 2) && (Var(30)=0 || Var(30)!=0 && P2BodyDist X = [0,15])
trigger7 = (StateNo = 225 && AnimElemTime(7) >= 1 && AnimElemTime(13) <= 1) && (Var(30)=0 || Var(30)!=0 && P2BodyDist X = [0,15])
trigger8 = (StateNo = 400 && AnimElemTime(3) >= 1 && AnimElemTime(5) <= 1) && (Var(30)=0 || Var(30)!=0 && P2BodyDist X = [0,15])
trigger9 = (StateNo = 410 && AnimElemTime(3) >= 1 && AnimElemTime(6) <= 1) && (Var(30)=0 || Var(30)!=0 && P2BodyDist X = [0,15])
trigger10 = MoveContact && (StateNo = 420 && AnimElemTime(4) >= 1 && AnimElemTime(7) <= 4) && (Var(30)=0 || Var(30)!=0 && P2BodyDist X = [0,15])
trigger11 = MoveContact && (StateNo = 430 && AnimElemTime(6) >= 1 && AnimElemTime(11) <= 2) && (Var(30)=0 || Var(30)!=0 && P2BodyDist X = [0,15])
trigger12 = MoveContact && (StateNo = 730 && AnimElemTime(11) >= 1 && AnimElemTime(14) <= 3) && (Var(30)=0 || Var(30)!=0 && P2BodyDist X = [0,15])
trigger13 = MoveContact && (StateNo = 700 && AnimElemTime(14) >= 1 && AnimElemTime(17) <= 11) && (Var(30)=0 || Var(30)!=0 && P2BodyDist X = [0,15])
trigger14 = MoveContact && (StateNo = 710 && AnimElemTime(14) >= 1 && AnimElemTime(17) <= 11) && (Var(30)=0 || Var(30)!=0 && P2BodyDist X = [0,15])
trigger15 = (StateNo = 600 && AnimElemTime(6) >= 0 && AnimElemTime(8) <= 0) && (Var(30)=0 || Var(30)!=0 && P2BodyDist X = [0,15])
trigger16 = (StateNo = 225 && AnimElemTime(2) >= 0 && AnimElemTime(7) < 0) && Var(32)!=0 && (Var(30)=0 || Var(30)!=0 && P2BodyDist X = [0,15])
trigger17 = !MoveContact && (StateNo = 420 && AnimElemTime(4) >= 1 && AnimElemTime(7) <= 4) && Var(32)!=0 && (Var(30)=0 || Var(30)!=0 && P2BodyDist X = [0,15])
trigger18 = !MoveContact && (StateNo = 430 && AnimElemTime(6) >= 1 && AnimElemTime(11) <= 2) && Var(32)!=0 && (Var(30)=0 || Var(30)!=0 && P2BodyDist X = [0,15])
trigger19 = !MoveContact && (StateNo = 600 && AnimElemTime(6) >= 0 && AnimElemTime(8) <= 0) && Var(32)!=0 && (Var(30)=0 || Var(30)!=0 && P2BodyDist X = [0,15])
trigger20 = (StateNo = 5120 && Anim = 5120 && AnimElemNo(0) >= 3) || (StateNo = 5120 && Anim = 5121 && AnimElemNo(0) >= 4) || (StateNo = 5120 && Anim = 5122 && AnimElemNo(0) >= 4)
trigger21 = MoveContact && (StateNo = 1212 && AnimElemTime(9) <= 0) && Var(32)!=0 && (Var(30)=0 || Var(30)!=0 && P2BodyDist X = [0,15])
trigger22 = MoveContact && (StateNo = 1232 && AnimElemTime(12) <= 0) && Var(32)!=0 && (Var(30)=0 || Var(30)!=0 && P2BodyDist X = [0,15])
trigger23 = (StateNo = 215 && AnimElemTime(5) >= 2 && AnimElemTime(9) <= 1)

;---------------------------------------------------------------------
; ÇlÅEÉäÉoÅ[ÉXÉtÉFÉCÉXÉçÉbÉNorÇlÅEÉwÉbÉhÉoÉXÉ^Å[
[State -1]
type = ChangeState
value = IfElse(Command = "Reversal_a",1400,1500)
triggerall = (Command = "Reversal_a" || Command = "Reversal_b")
triggerall = Var(30)=0
trigger1 = StateType != A && Ctrl = 1
trigger2 = StateNo = 100
trigger3 = (StateNo = 200 && AnimElemTime(3) >= 1 && AnimElemTime(5) <= 0)
trigger4 = (StateNo = 210 && AnimElemTime(2) >= 1 && AnimElemTime(4) <= 1)
trigger5 = (StateNo = 220 && AnimElemTime(4) >= 1 && AnimElemTime(10) <= 2)
trigger6 = (StateNo = 230 && AnimElemTime(7) >= 1 && AnimElemTime(11) <= 2)
trigger7 = (StateNo = 225 && AnimElemTime(7) >= 1 && AnimElemTime(13) <= 1)
trigger8 = (StateNo = 400 && AnimElemTime(3) >= 1 && AnimElemTime(5) <= 1)
trigger9 = (StateNo = 410 && AnimElemTime(3) >= 1 && AnimElemTime(6) <= 1)
trigger10 = MoveContact && (StateNo = 420 && AnimElemTime(4) >= 1 && AnimElemTime(7) <= 4)
trigger11 = MoveContact && (StateNo = 430 && AnimElemTime(6) >= 1 && AnimElemTime(11) <= 2)
trigger12 = MoveContact && (StateNo = 730 && AnimElemTime(11) >= 1 && AnimElemTime(14) <= 3)
trigger13 = MoveContact && (StateNo = 700 && AnimElemTime(14) >= 1 && AnimElemTime(17) <= 11)
trigger14 = MoveContact && (StateNo = 710 && AnimElemTime(14) >= 1 && AnimElemTime(17) <= 11)
trigger15 = (StateNo = 600 && AnimElemTime(6) >= 0 && AnimElemTime(8) <= 0)
trigger16 = (StateNo = 225 && AnimElemTime(2) >= 0 && AnimElemTime(7) < 0) && Var(32)!=0
trigger17 = !MoveContact && (StateNo = 420 && AnimElemTime(4) >= 1 && AnimElemTime(7) <= 4) && Var(32)!=0
trigger18 = !MoveContact && (StateNo = 430 && AnimElemTime(6) >= 1 && AnimElemTime(11) <= 2) && Var(32)!=0
trigger19 = !MoveContact && (StateNo = 600 && AnimElemTime(6) >= 0 && AnimElemTime(8) <= 0) && Var(32)!=0
trigger20 = (StateNo = 5120 && Anim = 5120 && AnimElemNo(0) >= 3) || (StateNo = 5120 && Anim = 5121 && AnimElemNo(0) >= 4) || (StateNo = 5120 && Anim = 5122 && AnimElemNo(0) >= 4)
trigger21 = MoveContact && (StateNo = 1212 && AnimElemTime(9) <= 0) && Var(32)!=0
trigger22 = MoveContact && (StateNo = 1232 && AnimElemTime(12) <= 0) && Var(32)!=0
trigger23 = (StateNo = 215 && AnimElemTime(5) >= 2 && AnimElemTime(9) <= 1)

;---------------------------------------------------------------------

; ÉXÉsÉìÉtÉHÅ[ÉãÅ^ÇlÅEÉXÉpÉCÉ_Å[
[State -1]
type = ChangeState
value = IfElse(Command = "Spinfall_x",1100,1150)
triggerall = (Command = "Spinfall_x" || Command = "Spinfall_y")
trigger1 = StateType != A && Ctrl = 1
trigger2 = StateNo = 100
trigger3 = (StateNo = 200 && AnimElemTime(3) >= 1 && AnimElemTime(5) <= 0)
trigger4 = (StateNo = 210 && AnimElemTime(2) >= 1 && AnimElemTime(4) <= 1)
trigger5 = (StateNo = 220 && AnimElemTime(4) >= 1 && AnimElemTime(10) <= 2)
trigger6 = (StateNo = 230 && AnimElemTime(7) >= 1 && AnimElemTime(11) <= 2)
trigger7 = (StateNo = 225 && AnimElemTime(7) >= 1 && AnimElemTime(13) <= 1)
trigger8 = (StateNo = 400 && AnimElemTime(3) >= 1 && AnimElemTime(5) <= 1)
trigger9 = (StateNo = 410 && AnimElemTime(3) >= 1 && AnimElemTime(6) <= 1)
trigger10 = MoveContact && (StateNo = 420 && AnimElemTime(4) >= 1 && AnimElemTime(7) <= 4)
trigger11 = MoveContact && (StateNo = 430 && AnimElemTime(6) >= 1 && AnimElemTime(11) <= 2)
trigger12 = MoveContact && (StateNo = 730 && AnimElemTime(11) >= 1 && AnimElemTime(14) <= 3)
trigger13 = MoveContact && (StateNo = 700 && AnimElemTime(14) >= 4 && AnimElemTime(17) <= 11)
trigger14 = MoveContact && (StateNo = 710 && AnimElemTime(14) >= 4 && AnimElemTime(17) <= 11)
trigger15 = (StateNo = 600 && AnimElemTime(6) >= 0 && AnimElemTime(8) <= 0)
trigger16 = (StateNo = 225 && AnimElemTime(2) >= 0 && AnimElemTime(7) < 0) && Var(32)!=0
trigger17 = !MoveContact && (StateNo = 420 && AnimElemTime(4) >= 1 && AnimElemTime(7) <= 4) && Var(32)!=0
trigger18 = !MoveContact && (StateNo = 430 && AnimElemTime(6) >= 1 && AnimElemTime(11) <= 2) && Var(32)!=0
trigger19 = !MoveContact && (StateNo = 600 && AnimElemTime(6) >= 0 && AnimElemTime(8) <= 0) && Var(32)!=0
trigger20 = (StateNo = 5120 && Anim = 5120 && AnimElemNo(0) >= 3) || (StateNo = 5120 && Anim = 5121 && AnimElemNo(0) >= 4) || (StateNo = 5120 && Anim = 5122 && AnimElemNo(0) >= 4)
trigger21 = MoveContact && (StateNo = 1212 && AnimElemTime(9) <= 0) && Var(32)!=0
trigger22 = MoveContact && (StateNo = 1232 && AnimElemTime(12) <= 0) && Var(32)!=0
trigger23 = (StateNo = 215 && AnimElemTime(5) >= 2 && AnimElemTime(9) <= 1)

; Å^ÇlÅEÉXÉpÉCÉ_Å[
[State -1]
type = ChangeState
value = 1120
triggerall = (Command = "Spinfall_x" || Command = "Spinfall_y")
trigger1 = StateType = A && MoveHit && (StateNo = 1105 || StateNo = 1155)

;---------------------------------------------------------------------

; ÉXÉgÉåÅ[ÉgÉXÉâÉCÉTÅ[
[State -1]
type = ChangeState
value = IfElse(Command = "Slicer_a",1200,1220)
triggerall = (Command = "Slicer_a" || Command = "Slicer_b")
triggerall = !(Command = "q_fwd" && !Command = "holdback")
trigger1 = StateType != A && Ctrl = 1
trigger2 = StateNo = 100
trigger3 = (StateNo = 200 && AnimElemTime(3) >= 1 && AnimElemTime(5) <= 0)
trigger4 = (StateNo = 210 && AnimElemTime(2) >= 1 && AnimElemTime(4) <= 1)
trigger5 = (StateNo = 220 && AnimElemTime(4) >= 1 && AnimElemTime(10) <= 2)
trigger6 = (StateNo = 230 && AnimElemTime(7) >= 1 && AnimElemTime(11) <= 2)
trigger7 = (StateNo = 225 && AnimElemTime(7) >= 1 && AnimElemTime(13) <= 1)
trigger8 = (StateNo = 400 && AnimElemTime(3) >= 1 && AnimElemTime(5) <= 1)
trigger9 = (StateNo = 410 && AnimElemTime(3) >= 1 && AnimElemTime(6) <= 1)
trigger10 = MoveContact && (StateNo = 420 && AnimElemTime(4) >= 1 && AnimElemTime(7) <= 4)
trigger11 = MoveContact && (StateNo = 430 && AnimElemTime(6) >= 1 && AnimElemTime(11) <= 2)
trigger12 = MoveContact && (StateNo = 730 && AnimElemTime(11) >= 1 && AnimElemTime(14) <= 3)
trigger13 = MoveContact && (StateNo = 700 && AnimElemTime(14) >= 1 && AnimElemTime(17) <= 11)
trigger14 = MoveContact && (StateNo = 710 && AnimElemTime(14) >= 1 && AnimElemTime(17) <= 11)
trigger15 = (StateNo = 600 && AnimElemTime(6) >= 0 && AnimElemTime(8) <= 0)
trigger16 = (StateNo = 225 && AnimElemTime(2) >= 0 && AnimElemTime(7) < 0) && Var(32)!=0
trigger17 = !MoveContact && (StateNo = 420 && AnimElemTime(4) >= 1 && AnimElemTime(7) <= 4) && Var(32)!=0
trigger18 = !MoveContact && (StateNo = 430 && AnimElemTime(6) >= 1 && AnimElemTime(11) <= 2) && Var(32)!=0
trigger19 = !MoveContact && (StateNo = 600 && AnimElemTime(6) >= 0 && AnimElemTime(8) <= 0) && Var(32)!=0
trigger20 = (StateNo = 5120 && Anim = 5120 && AnimElemNo(0) >= 3) || (StateNo = 5120 && Anim = 5121 && AnimElemNo(0) >= 4) || (StateNo = 5120 && Anim = 5122 && AnimElemNo(0) >= 4)
trigger21 = (StateNo = 215 && AnimElemTime(5) >= 2 && AnimElemTime(9) <= 1)

;---------------------------------------------------------------------

; ÉfÉìÉWÉÉÉâÉXÉXÉpÉCÉ_Å[
[State -1]
type = Null ;ChangeState
value = IfElse(Vel X = 0,1810,1800)
triggerall = (Command = "Spinfall_x" || Command = "Spinfall_y")
trigger1 = StateType = A && Ctrl = 1
trigger2 = MoveHit && StateNo = 500
trigger3 = MoveHit && StateNo = 510
trigger4 = MoveHit && StateNo = 520
trigger5 = MoveHit && StateNo = 530

;---------------------------------------------------------------------

;---------------------------------------------------------------------
;=====================================================================
; Basic Animation
;=====================================================================
;---------------------------------------------------------------------
;RunFwd
[State -1]
type = ChangeState
value = 100
trigger1 = Command = "FF" && StateType = S && Ctrl = 1 && StateNo != 100

;---------------------------------------------------------------------
;RunBack
[State -1]
type = ChangeState
value = 105
trigger1 = Command = "BB" && StateType = S && Ctrl = 1

;=====================================================================
; 2/3 Buttons
;=====================================================================

;----------------------------------
;ÉNÉCÉbÉN ÇlÇ`ÇwÉÇÅ[Éh î≠ìÆ

[State -1]
type = ChangeState
value = 965
triggerall = Command = "ay"
triggerall = NumHelper(8888)=0
triggerall = Var(32)=0 && Power >= 1000
triggerall = StateType != A
trigger1 = MoveContact && StateNo = [200,430]
trigger2 = MoveContact && StateNo = 600
trigger3 = MoveContact && StateNo = [700,799]

;-----------------------------------
;í èÌ ÇlÇ`ÇwÉÇÅ[Éh î≠ìÆ
[State -1]
type = ChangeState
value = 960
triggerall = Command = "ay"
triggerall = NumHelper(8888)=0
triggerall = Var(32)=0 && Power >= 1000
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)


;---------------------------------------------------------------------
; ÉXÉgÉâÉCÉJÅ[
;----------------
[State -1]
type = Null ;ChangeState
value = 950
triggerall = Command = "ay" && Power >= 1000-fVar(31)
triggerall = NumHelper(Var(40))=0
triggerall = NumHelper(Var(41))=0
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
;---------------------------------------------------------------------
;=====================================================================
; Basic Throws
;=====================================================================

;---------------------------------------------------------------------
; ÉrÉNÉgÉãìäÇ∞ÅiÇoí èÌìäÇ∞Åj
[State -1]
type = ChangeState
value = 800
triggerall = StateNo != 100 && StateType = S && Ctrl = 1
triggerall = P2MoveType != H && !P2StateType = A
trigger1 = Command = "fwd_y" && P2BodyDist X < 8
trigger2 = Command = "back_y" && P2BodyDist X < 12

;---------------------------------------------------------------------
; ÉwÉbÉhÉXÉçÅ[ÅiÇjí èÌìäÇ∞Åj
[State -1]
type = ChangeState
value = 850
triggerall = StateNo != 100 && StateType = S && Ctrl = 1
triggerall = P2MoveType != H && !P2StateType = A
trigger1 = Command = "fwd_b" && P2BodyDist X < 8
trigger2 = Command = "back_b" && P2BodyDist X < 12

;---------------------------------------------------------------------
; Special Attacks , Moves and so on.
;---------------------------------------------------------------------
;---------------------------------------------------------------------
; Ç”Ç¡Ç∆ÇŒÇµçUåÇ
[State -1]
type = ChangeState
value = 600
triggerall = Command = "by"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100) & Var(30)=0
trigger2 = StateType = S && (Ctrl = 1 || StateNo = 100) & Var(30)!=0
trigger2 = P2BodyDist X != [-20,80]
trigger3 = MoveContact && StateType != A && Var(32)!=0 && Var(36)=2

;---------------------------------------------------------------------
; ãÛíÜÇ”Ç¡Ç∆ÇŒÇµçUåÇ
[State -1]
type = ChangeState
value = 610
triggerall = Command = "by"
triggerall = StateType = A
trigger1 =  Ctrl = 1
trigger2 = MoveContact && (StateNo = 500 || StateNo = 510) && Var(36)=1 && Var(32)!=0

;---------------------------------------------------------------------
; ÉKÅ[ÉhÉLÉÉÉìÉZÉããŸã}âÒîìÆçÏÅiëOÅEå„Åj&& ÉLÉÉÉìÉZÉããŸã}âÒîìÆçÏ
[State -1]
type = ChangeState
value = 4000
triggerall = Command = "gc_fwd" && Power >= 1000
trigger1 = Var(4) = 1 && StateType != A
trigger1 = StateNo = 150 || StateNo = 152
trigger2 = MoveContact && StateType != A && StateNo=[200,430] 
trigger3 = MoveContact && StateType != A && StateNo=[600,699] 
trigger4 = MoveContact && StateType != A && StateNo=[700,799] 

;---------------------------------------------------------------------
; ãŸã}âÒîìÆçÏÅiëOÅj
[State -1]
type = ChangeState
value = 4050
triggerall = Command = "q_fwd" && !Command = "holdback"
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)

;---------------------------------------------------------------------
; ãŸã}âÒîìÆçÏÅiå„Åj
[State -1]
type = ChangeState
value = 4150
triggerall = Command = "q_back" && !Command = "holdfwd"
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)

;---------------------------------------------------------------------
; ÉKÅ[ÉhÉLÉÉÉìÉZÉãêÅÇ¡îÚÇŒÇµçUåÇ
[State -1]
type = ChangeState
value = 4500
triggerall = Command = "by"
triggerall = Var(4) = 1 && Power >= 1000 && StateType != A
trigger1 = StateNo = 150 || StateNo = 152

;=====================================================================
; Dir + Button
;=====================================================================
; ÉnÉìÉ}Å[ÉAÅ[É` ÉLÉÉÉìÉZÉãéû
[State -1]
type = ChangeState
value = 700
triggerall = Command = "x" && Command != "holddown" && (Command = "holdfwd" || Command = "holdback")
trigger1 = (StateNo = 200 && AnimElemTime(3) >= 1 && AnimElemTime(5) <= 0)
trigger2 = (StateNo = 210 && AnimElemTime(2) >= 1 && AnimElemTime(4) <= 1)
trigger3 = (StateNo = 220 && AnimElemTime(4) >= 1 && AnimElemTime(10) <= 2)
trigger4 = (StateNo = 230 && AnimElemTime(7) >= 1 && AnimElemTime(11) <= 2)
trigger5 = (StateNo = 225 && AnimElemTime(7) >= 1 && AnimElemTime(13) <= 1)
trigger6 = (StateNo = 400 && AnimElemTime(3) >= 1 && AnimElemTime(5) <= 1)
trigger7 = (StateNo = 410 && AnimElemTime(3) >= 1 && AnimElemTime(6) <= 1)
trigger8 = MoveContact && (StateNo = 420 && AnimElemTime(4) >= 1 && AnimElemTime(7) <= 4)
trigger9 = (StateNo = 430 && AnimElemTime(6) >= 1 && AnimElemTime(11) <= 2)
trigger10 = (StateNo = 215 && AnimElemTime(5) >= 2 && AnimElemTime(9) <= 1)

; ÉnÉìÉ}Å[ÉAÅ[É`
[State -1]
type = ChangeState
value = 710
triggerall = Command = "x" && Command != "holddown" && (Command = "holdfwd" || Command = "holdback")
trigger1 = StateType = S && Ctrl = 1
trigger2 = StateNo = 100

; ÉNÉâÉCÉ~ÉìÉOÉAÉçÅ[
[State -1]
type = Null ;ChangeState
value = 720
triggerall = Command = "a" && (Command = "holddown" && Command = "holdback")
trigger1 = (StateType = S || Stateno = 10) && Ctrl = 1
trigger2 = StateNo = 100
trigger3 = (StateNo = 200 && AnimElemTime(3) >= 1 && AnimElemTime(5) <= 0)
trigger4 = (StateNo = 210 && AnimElemTime(2) >= 1 && AnimElemTime(4) <= 1)
trigger5 = (StateNo = 220 && AnimElemTime(4) >= 1 && AnimElemTime(10) <= 2)
trigger6 = (StateNo = 230 && AnimElemTime(7) >= 1 && AnimElemTime(11) <= 2)
trigger7 = (StateNo = 225 && AnimElemTime(7) >= 1 && AnimElemTime(13) <= 1)
trigger8 = (StateNo = 400 && AnimElemTime(3) >= 1 && AnimElemTime(5) <= 1)
trigger9 = (StateNo = 410 && AnimElemTime(3) >= 1 && AnimElemTime(6) <= 1)
trigger10 = MoveContact && (StateNo = 420 && AnimElemTime(4) >= 1 && AnimElemTime(7) <= 4)
trigger11 = (StateNo = 430 && AnimElemTime(6) >= 1 && AnimElemTime(11) <= 2)
trigger12 = (StateNo = 215 && AnimElemTime(5) >= 2 && AnimElemTime(9) <= 1)

; É_ÉuÉãÉçÅ[ÉäÉìÉO
[State -1]
type = ChangeState
value = 730
triggerall = Command = "a" && Command != "holddown" && (Command = "holdfwd" || Command = "holdback")
triggerall = Command != "HojoxxF" && Command != "HojoxxB"
trigger1 = StateType != A && Ctrl = 1
trigger2 = StateNo = 100
trigger3 = (StateNo = 200 && AnimElemTime(3) >= 1 && AnimElemTime(5) <= 0)
trigger4 = (StateNo = 210 && AnimElemTime(2) >= 1 && AnimElemTime(4) <= 1)
trigger5 = (StateNo = 220 && AnimElemTime(4) >= 1 && AnimElemTime(10) <= 2)
trigger6 = (StateNo = 230 && AnimElemTime(7) >= 1 && AnimElemTime(11) <= 2)
trigger7 = (StateNo = 225 && AnimElemTime(7) >= 1 && AnimElemTime(13) <= 1)
trigger8 = (StateNo = 400 && AnimElemTime(3) >= 1 && AnimElemTime(5) <= 1)
trigger9 = (StateNo = 410 && AnimElemTime(3) >= 1 && AnimElemTime(6) <= 1)
trigger10 = MoveContact && (StateNo = 420 && AnimElemTime(4) >= 1 && AnimElemTime(7) <= 4)
trigger11 = (StateNo = 430 && AnimElemTime(6) >= 1 && AnimElemTime(11) <= 2)
trigger12 = (StateNo = 215 && AnimElemTime(5) >= 2 && AnimElemTime(9) <= 1)

;=====================================================================
; Taunts
;=====================================================================
;---------------------------------------------------------------------
; íßî≠
[State -1]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = StateType = S && Ctrl = 1

;=====================================================================
; Basic Arts
;=====================================================================

;---------------------------------------------------------------------
; é„ÉpÉìÉ`
[State -1]
type = ChangeState
value = 200
triggerall = Command = "x" && !Command = "holddown"
triggerall = P2BodyDist X = [0,18]
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)
trigger2 = (StateNo = 200 && AnimElemTime(3) >= 1 && AnimElemTime(5) <= 0)
trigger3 = (StateNo = 210 && AnimElemTime(2) >= 4 && AnimElemTime(4) <= 1)
trigger4 = (StateNo = 400 && AnimElemTime(3) >= 1 && AnimElemTime(5) <= 1)
trigger5 = (StateNo = 410 && AnimElemTime(3) >= 4 && AnimElemTime(6) <= 1)

; é„ÉpÉìÉ`
[State -1]
type = ChangeState
value = 205
triggerall = Command = "x" && !Command = "holddown"
triggerall = P2BodyDist X != [0,18]
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)
trigger2 = (StateNo = 200 && AnimElemTime(3) >= 2 && AnimElemTime(5) <= 0)
trigger3 = (StateNo = 210 && AnimElemTime(2) >= 4 && AnimElemTime(4) <= 1)
trigger4 = (StateNo = 400 && AnimElemTime(3) >= 1 && AnimElemTime(5) <= 1)
trigger5 = (StateNo = 410 && AnimElemTime(3) >= 4 && AnimElemTime(6) <= 1)

;---------------------------------------------------------------------
; é„ÉLÉbÉN
[State -1]
type = ChangeState
value = 210
triggerall = Command = "a" && !Command = "holddown"
triggerall = P2BodyDist X = [0,18]
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)
trigger2 = (StateNo = 200 && AnimElemTime(3) >= 2 && AnimElemTime(5) <= 0)
trigger3 = (StateNo = 210 && AnimElemTime(2) >= 4 && AnimElemTime(4) <= 1)
trigger4 = (StateNo = 400 && AnimElemTime(3) >= 1 && AnimElemTime(5) <= 1)
trigger5 = (StateNo = 410 && AnimElemTime(3) >= 4 && AnimElemTime(6) <= 1)

; é„ÉLÉbÉN
[State -1]
type = ChangeState
value = 215
triggerall = Command = "a" && !Command = "holddown"
triggerall = P2BodyDist X != [0,18]
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)
trigger2 = (StateNo = 200 && AnimElemTime(3) >= 2 && AnimElemTime(5) <= 0)
trigger3 = (StateNo = 210 && AnimElemTime(2) >= 4 && AnimElemTime(4) <= 1)
trigger4 = (StateNo = 400 && AnimElemTime(3) >= 1 && AnimElemTime(5) <= 1)
trigger5 = (StateNo = 410 && AnimElemTime(3) >= 4 && AnimElemTime(6) <= 1)

;---------------------------------------------------------------------
; ã≠ÉpÉìÉ`
[State -1]
type = ChangeState
value = 220
triggerall = Command = "y" && !Command = "holddown"
triggerall = P2BodyDist X = [0,20]
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)

;---------------------------------------------------------------------
; ã≠ÉpÉìÉ`
[State -1]
type = ChangeState
value = 225
triggerall = Command = "y" && !Command = "holddown"
triggerall = P2BodyDist X != [0,20]
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)

;---------------------------------------------------------------------
; ã≠ÉLÉbÉN
[State -1]
type = ChangeState
value = 230
triggerall = Command = "b" && !Command = "holddown"
triggerall = P2BodyDist X = [0,25]
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)

;---------------------------------------------------------------------
; ã≠ÉLÉbÉN
[State -1]
type = ChangeState
value = 235
triggerall = Command = "b" && !Command = "holddown"
triggerall = P2BodyDist X != [0,25]
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)

;---------------------------------------------------------------------
; ÇµÇ·Ç™Ç›é„ÉpÉìÉ`
[State -1]
type = ChangeState
value = 400
triggerall = Command = "x" && Command = "holddown"
trigger1 = StateType = C && Ctrl = 1
trigger2 = StateNo = 100
trigger3 = (StateNo = 200 && AnimElemTime(3) >= 2 && AnimElemTime(5) <= 0)
trigger4 = (StateNo = 210 && AnimElemTime(2) >= 4 && AnimElemTime(4) <= 1)
trigger5 = (StateNo = 400 && AnimElemTime(3) >= 1 && AnimElemTime(5) <= 1)
trigger6 = (StateNo = 410 && AnimElemTime(3) >= 4 && AnimElemTime(6) <= 1)

;---------------------------------------------------------------------
; ÇµÇ·Ç™Ç›é„ÉLÉbÉN
[State -1]
type = ChangeState
value = 410
triggerall = Command = "a" && Command = "holddown"
trigger1 = StateType = C && Ctrl = 1
trigger2 = StateNo = 100
trigger3 = (StateNo = 200 && AnimElemTime(3) >= 2 && AnimElemTime(5) <= 0)
trigger4 = (StateNo = 210 && AnimElemTime(2) >= 4 && AnimElemTime(4) <= 1)
trigger5 = (StateNo = 400 && AnimElemTime(3) >= 1 && AnimElemTime(5) <= 1)
trigger6 = (StateNo = 410 && AnimElemTime(3) >= 4 && AnimElemTime(6) <= 1)

;---------------------------------------------------------------------
; ÇµÇ·Ç™Ç›ã≠ÉpÉìÉ`
[State -1]
type = ChangeState
value = 420
triggerall = Command = "y" && Command = "holddown"
trigger1 = StateType = C && Ctrl = 1
trigger2 = StateNo = 100

;---------------------------------------------------------------------
; ÇµÇ·Ç™Ç›ã≠ÉLÉbÉN
[State -1]
type = ChangeState
value = 430
triggerall = Command = "b" && Command = "holddown"
trigger1 = StateType = C && Ctrl = 1
trigger2 = StateNo = 100

;---------------------------------------------------------------------
; ÉWÉÉÉìÉvé„ÉpÉìÉ`
[State -1]
type = ChangeState
value = IfElse(Var(25) = 0 && Vel X = 0,500,500)
triggerall = Command = "x" && StateType = A
trigger1 = StateNo != 105 && Ctrl = 1

;---------------------------------------------------------------------
; ÉWÉÉÉìÉvã≠ÉpÉìÉ`
[State -1]
type = ChangeState
value = IfElse(Var(25) = 0 && Vel X = 0,520,520)
triggerall = Command = "y" && StateType = A
trigger1 = StateNo != 105 && Ctrl = 1

;---------------------------------------------------------------------
; ÉWÉÉÉìÉvé„ÉLÉbÉN
[State -1]
type = ChangeState
value = IfElse(Var(25) = 0 && Vel X = 0,510,510)
triggerall = Command = "a" && StateType = A
trigger1 = StateNo != 105 && Ctrl = 1

;---------------------------------------------------------------------
; ÉWÉÉÉìÉvã≠ÉLÉbÉN
[State -1]
type = ChangeState
value = IfElse(Var(25) = 0 && Vel X = 0,530,530)
triggerall = Command = "b" && StateType = A
trigger1 = StateNo != 105 && Ctrl = 1

;---------------------------------------------------------------------
; 
[State -1, 5050] ;Recover near ground
type = ChangeState
triggerall = Stateno = 5050
triggerall = Vel Y > 0 && Pos Y >= -20
triggerall = alive && CanRecover
trigger1 = Var(30)!=0 && Random < 200
value = 5200 ;HITFALL_RECOVER

[State -1, 5050]; Recover in mid air
type = ChangeState
triggerall = Stateno = 5050
triggerall = Vel Y > -1
triggerall = alive && CanRecover
trigger1 = Var(30)!=0 && Random < 200
value = 5210 ;HITFALL_AIRRECOVER
