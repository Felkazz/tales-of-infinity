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
;   time = time (optional -- defaults to 15 if omitted)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas.
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
;   You can combine them:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;   It's recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This matches the way most
;   popular fighting games implement their command detection.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. Defaults to 15
;   if omitted
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
; 

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
command.time = 30

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

;-| AI Commands |----------------------------------------------------------
[command]
name = "AI_1"
command = D,D,D,D,D,D,D,D,D,D,D,D
time = 1

[command]
name = "AI_2"
command = U,U,U,U,U,U,U,U,U,U,U,U
time = 1

[command]
name = "AI_3"
command = F,F,F,F,F,F,F,F,F,F,F,F
time = 1

[command]
name = "AI_4"
command = B,B,B,B,B,B,B,B,B,B,B,B
time = 1

[command]
name = "AI_5"
command = a,a,a,a,a,a,a,a,a,a,a,a
time = 1

[command]
name = "AI_6"
command = b,b,b,b,b,b,b,b,b,b,b,b
time = 1

[command]
name = "AI_7"
command = c,c,c,c,c,c,c,c,c,c,c,c
time = 1

[command]
name = "AI_8"
command = x,x,x,x,x,x,x,x,x,x,x,x
time = 1

[command]
name = "AI_9"
command = y,y,y,y,y,y,y,y,y,y,y,y
time = 1

[command]
name = "AI_10"
command = z,z,z,z,z,z,z,z,z,z,z,z
time = 1

[command]
name = "AI_11"
command = s,s,s,s,s,s,s,s,s,s,s,s
time = 1

[command]
name = "AI_12"
command = D,F,D,F,D,F,D,F,D,F,D,F
time = 1

[command]
name = "AI_13"
command = D,B,D,B,D,B,D,B,D,B,D,B
time = 1

[command]
name = "AI_14"
command = D,U,D,U,D,U,D,U,D,U,D,U
time = 1

[command]
name = "AI_15"
command = U,F,U,F,U,F,U,F,U,F,U,F
time = 1

[command]
name = "AI_16"
command = U,B,U,B,U,B,U,B,U,B,U,B
time = 1

[command]
name = "AI_17"
command = U,D,U,D,U,D,U,D,U,D,U,D
time = 1

[command]
name = "AI_18"
command = F,D,F,D,F,D,F,D,F,D,F,D
time = 1

[command]
name = "AI_19"
command = F,U,F,U,F,U,F,U,F,U,F,U
time = 1

[command]
name = "AI_20"
command = F,B,F,B,F,B,F,B,F,B,F,B
time = 1

[command]
name = "AI_21"
command = B,D,B,D,B,D,B,D,B,D,B,D
time = 1

[command]
name = "AI_22"
command = B,U,B,U,B,U,B,U,B,U,B,U
time = 1

[command]
name = "AI_23"
command = B,F,B,F,B,F,B,F,B,F,B,F
time = 1

[command]
name = "AI_24"
command = DF,DF,DF,DF,DF,DF,DF,DF,DF,DF,DF,DF
time = 1

[command]
name = "AI_25"
command = DB,DB,DB,DB,DB,DB,DB,DB,DB,DB,DB,DB
time = 1

[command]
name = "AI_26"
command = UF,UF,UF,UF,UF,UF,UF,UF,UF,UF,UF,UF
time = 1

[command]
name = "AI_27"
command = UB,UB,UB,UB,UB,UB,UB,UB,UB,UB,UB,UB
time = 1

[command]
name = "AI_28"
command = D,F,U,B,D,F,U,B,D,F,U,B
time = 1

[command]
name = "AI_29"
command = F,U,B,D,F,U,B,D,F,U,B,D
time = 1

[command]
name = "AI_30"
command = U,B,D,F,U,B,D,F,U,B,D,F
time = 1

[command]
name = "AI_31"
command = B,D,F,U,B,D,F,U,B,D,F,U
time = 1

[command]
name = "AI_32"
command = a,b,c,x,y,z,a,b,c,x,y,z
time = 1

[command]
name = "AI_33"
command = b,c,x,y,z,a,b,c,x,y,z,a
time = 1

[command]
name = "AI_34"
command = c,x,y,z,a,b,c,x,y,z,a,b
time = 1

[command]
name = "AI_35"
command = x,y,z,a,b,c,x,y,z,a,b,c
time = 1

[command]
name = "AI_36"
command = y,z,a,b,c,x,y,z,a,b,c,x
time = 1

[command]
name = "AI_37"
command = z,a,b,c,x,y,z,a,b,c,x,y
time = 1

[command]
name = "AI_38"
command = a+b,a+b,a+b,a+b,a+b,a+b,a+b,a+b,a+b,a+b,a+b,a+b
time = 1

[command]
name = "AI_39"
command = a+c,a+c,a+c,a+c,a+c,a+c,a+c,a+c,a+c,a+c,a+c,a+c
time = 1

[command]
name = "AI_40"
command = a+x,a+x,a+x,a+x,a+x,a+x,a+x,a+x,a+x,a+x,a+x,a+x
time = 1

[command]
name = "AI_41"
command = a+y,a+y,a+y,a+y,a+y,a+y,a+y,a+y,a+y,a+y,a+y,a+y
time = 1

[command]
name = "AI_42"
command = a+z,a+z,a+z,a+z,a+z,a+z,a+z,a+z,a+z,a+z,a+z,a+z
time = 1

[command]
name = "AI_43"
command = a+s,a+s,a+s,a+s,a+s,a+s,a+s,a+s,a+s,a+s,a+s,a+s
time = 1

[command]
name = "AI_44"
command = b+c,b+c,b+c,b+c,b+c,b+c,b+c,b+c,b+c,b+c,b+c,b+c
time = 1

[command]
name = "AI_45"
command = b+x,b+x,b+x,b+x,b+x,b+x,b+x,b+x,b+x,b+x,b+x,b+x
time = 1

[command]
name = "AI_46"
command = b+y,b+y,b+y,b+y,b+y,b+y,b+y,b+y,b+y,b+y,b+y,b+y
time = 1

[command]
name = "AI_47"
command = b+z,b+z,b+z,b+z,b+z,b+z,b+z,b+z,b+z,b+z,b+z,b+z
time = 1

[command]
name = "AI_48"
command = b+s,b+s,b+s,b+s,b+s,b+s,b+s,b+s,b+s,b+s,b+s,b+s
time = 1

[command]
name = "AI_49"
command = c+x,c+x,c+x,c+x,c+x,c+x,c+x,c+x,c+x,c+x,c+x,c+x
time = 1

[command]
name = "AI_50"
command = c+y,c+y,c+y,c+y,c+y,c+y,c+y,c+y,c+y,c+y,c+y,c+y
time = 1

;-| Super Motions |--------------------------------------------------------

;-| Special Motions |------------------------------------------------------
[Command]
Name = "Kogahazan"
Command = D+a
Time = 20

[Command]
Name = "Majinken"
Command = D,F,a
Time = 20

[Command]
Name = "Majinken"
Command = D,DF,F,a
Time = 20

[Command]
Name = "Kirisazame"
Command = F,B,F,a
Time = 20

[Command]
Name = "Akisazame"
Command = F,B,F,b
Time = 20

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
name = "recovery" ;Required (do not remove)
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

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "back_x"
command = /$B,x
time = 1

[Command]
name = "back_y"
command = /$B,y
time = 1

[Command]
name = "back_z"
command = /$B,z
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
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
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "up_y"
command = /$U,y
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "back_a"
command = /$B,a
time = 1

[Command]
name = "back_b"
command = /$B,b
time = 1

[Command]
name = "back_c"
command = /$B,c
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
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
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "up_c"
command = /$U,c
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
name = "s"
command = s
time = 1

;-| Single Dir |------------------------------------------------------------
[Command]
name = "fwd" ;Required (do not remove)
command = $F
time = 1

[Command]
name = "downfwd"
command = $DF
time = 1

[Command]
name = "down"
command = $D
Time = 1

[Command]
name = "downback"
command = $DB
time = 1

[Command]
name = "back" ;Required (do not remove)
command = $B
time = 1

[Command]
name = "upback"
command = $UB
time = 1

[Command]
name = "up" ;Required (do not remove)
command = $U
time = 1

[Command]
name = "upfwd"
command = $UF
time = 1

;-| Hold Button |--------------------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_a"
command = /a
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
name = "hold_s"
command = /s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holddown"
command = /$D
Time = 1

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holdupfwd"
command = /$UF
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
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------
;-------------------------------------AI------------------------------------
;---------------------------------------------------------------------------
[State -1, AI VarSet]
type = VarSet
trigger1 = command = "AI_1"
trigger2 = command = "AI_2"
trigger3 = command = "AI_3"
trigger4 = command = "AI_4"
trigger5 = command = "AI_5"
trigger6 = command = "AI_6"
trigger7 = command = "AI_7"
trigger8 = command = "AI_8"
trigger9 = command = "AI_9"
trigger10 = command = "AI_10"
trigger11 = command = "AI_11"
trigger12 = command = "AI_12"
trigger13 = command = "AI_13"
trigger14 = command = "AI_14"
trigger15 = command = "AI_15"
trigger16 = command = "AI_16"
trigger17 = command = "AI_17"
trigger18 = command = "AI_18"
trigger19 = command = "AI_19"
trigger20 = command = "AI_20"
trigger21 = command = "AI_21"
trigger22 = command = "AI_22"
trigger23 = command = "AI_23"
trigger24 = command = "AI_24"
trigger25 = command = "AI_25"
trigger26 = command = "AI_26"
trigger27 = command = "AI_27"
trigger28 = command = "AI_28"
trigger29 = command = "AI_29"
trigger30 = command = "AI_30"
trigger31 = command = "AI_31"
trigger32 = command = "AI_32"
trigger33 = command = "AI_33"
trigger34 = command = "AI_34"
trigger35 = command = "AI_35"
trigger36 = command = "AI_36"
trigger37 = command = "AI_37"
trigger38 = command = "AI_38"
trigger39 = command = "AI_39"
trigger40 = command = "AI_40"
trigger41 = command = "AI_41"
trigger42 = command = "AI_42"
trigger43 = command = "AI_43"
trigger44 = command = "AI_44"
trigger45 = command = "AI_45"
trigger46 = command = "AI_46"
trigger47 = command = "AI_47"
trigger48 = command = "AI_48"
trigger49 = command = "AI_49"
trigger50 = command = "AI_50"
v = 40
value = 1

[State -1, AI Hop Backwards]
Type = ChangeState
Trigger1 = Ctrl
Trigger1 = RoundState = 2
Trigger1 = Var(40) != 0
Trigger1 = Random <= 499
Trigger1 = P2BodyDist X <= 75
Trigger1 = StateType = S
Trigger1 = P2MoveType = A
Value = 105

[State -1, AI Stand Guard]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(40) != 0
trigger1 = Random <= 499
trigger1 = P2BodyDist X <= 50
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 130

[State -1, AI Air Guard]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(40) != 0
trigger1 = Random <= 499
trigger1 = P2BodyDist X <= 50
trigger1 = StateType = A
trigger1 = P2MoveType = A
value = 132

[State -1, AI Sword Hit 1]
Type = ChangeState
Trigger1 = StateType = S
Trigger1 = Ctrl
Trigger1 = RoundState = 2
Trigger1 = Var(40) != 0
Trigger1 = Random <= 199
Trigger1 = P2BodyDist X <= 35
Value = 200

[State -1, AI Sword Hit 2]
Type = ChangeState
TriggerAll = StateType = S
TriggerAll = RoundState = 2
TriggerAll = Var(40) != 0
Trigger1 = Ctrl
Trigger1 = Random <= 199
Trigger1 = P2BodyDist X <= 35
Trigger2 = StateNo = 200
Trigger2 = MoveContact && Time >= 14
Value = 210

[State -1, AI Sword Hit 3]
Type = ChangeState
TriggerAll = StateType = S
TriggerAll = RoundState = 2
TriggerAll = Var(40) != 0
Trigger1 = Ctrl
Trigger1 = Random <= 199
Trigger1 = P2BodyDist X <= 35
Trigger2 = StateNo = 200
Trigger2 = MoveContact && Time >= 14
Trigger3 = StateNo = 210
Trigger3 = MoveContact && Time >= 9
Value = 220

[State -1, AI Air Sword Hit]
Type = ChangeState
Trigger1 = StateType = A
Trigger1 = Ctrl
Trigger1 = RoundState = 2
Trigger1 = Var(40) != 0
Trigger1 = Random <= 799
Trigger1 = P2BodyDist X <= 35
Value = 230

[State -1, AI Majinken]
Type = ChangeState
TriggerAll = StateType = S
TriggerAll = RoundState = 2
TriggerAll = Var(40) != 0
TriggerAll = NumHelper(6000) = 0
Trigger1 = Ctrl
Trigger1 = Random <= 9
Trigger1 = P2BodyDist X > 50
Trigger2 = StateNo = 220
Trigger2 = MoveContact && Time >= 17
Trigger2 = Random <= 299
Value = 240

[State -1, AI Kirisazame]
Type = ChangeState
TriggerAll = Var(40) != 0
TriggerAll = StateType = S
TriggerAll = RoundState = 2
Trigger1 = Ctrl
Trigger1 = Random <= 299
Trigger1 = P2BodyDist X <= 35
Trigger2 = StateNo = 220
Trigger2 = MoveContact
Trigger2 = Time >= 17
Trigger2 = Random <= 299
Value = 990

[State -1, AI Akisazame (PARTE 1)]
Type = ChangeState
TriggerAll = Var(40) != 0
TriggerAll = StateType = S
TriggerAll = RoundState = 2
Trigger1 = Ctrl
Trigger1 = Random <= 99
Trigger1 = P2BodyDist X <= 35
Trigger2 = StateNo = 220
Trigger2 = MoveContact
Trigger2 = Time >= 17
Trigger2 = Random <= 99
Trigger3 = StateNo = 990
Trigger3 = Time >= 42
Trigger3 = MoveContact
Value = 1000

[State -1, Kogahazan (PARTE 1)]
Type = ChangeState
TriggerAll = StateType = S
TriggerAll = RoundState = 2
TriggerAll = Var(40) != 0
Trigger1 = Random <= 199
Trigger1 = P2BodyDist X <= 35
Trigger1 = Ctrl
Trigger2 = StateNo = 220
Trigger2 = MoveContact
Trigger2 = Time >= 17
Trigger2 = Random <= 299
Value = 1001

;===========================================================================
;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Sword Hit 1
[State -1, Sword Hit 1]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "Majinken"
TriggerAll = Command != "holddown"
TriggerAll = Command != "Chimisazame"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Sword Hit 2
[State -1, Sword Hit 2]
type = ChangeState
value = 210
TriggerAll = Command != "Akisazame"
trigger1 = statetype = S
trigger1 = command = "b"
trigger1 = ctrl
trigger2 = command = "b" || command = "a"
Trigger2 = Command != "holddown"
trigger2 = StateNo = 200
Trigger2 = MoveContact || Time >= 14

;---------------------------------------------------------------------------
; Sword Hit 3
[State -1, Sword Hit 3]
type = ChangeState
value = 220
trigger1 = command = "c"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = command = "c"
trigger2 = StateNo = 200
Trigger2 = MoveContact || Time >= 14
trigger3 = command = "c" || command = "a" || command = "b"
Trigger3 = Command != "holddown"
trigger3 = StateNo = 210
Trigger3 = MoveContact || Time >= 9

;---------------------------------------------------------------------------
; Air Sword Hit
[State -1, Air Sword Hit]
type = ChangeState
value = 230
triggerAll = statetype = A
triggerAll = ctrl
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"

;---------------------------------------------------------------------------
; Majinken
[State -1, Majinken]
type = ChangeState
value = 240
triggerall = command = "Majinken"
triggerall = NumHelper(6000) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 200
Trigger2 = MoveContact || Time >= 14
trigger3 = StateNo = 210
Trigger3 = MoveContact || Time >= 9
trigger4 = StateNo = 220
Trigger4 = MoveContact || Time >= 17

;---------------------------------------------------------------------------
; Kirisazame (PARTE 1)
[State -1, Kirisazame]
type = ChangeState
value = 990
TriggerAll = Command = "Kirisazame"
TriggerAll = StateType = S
Trigger1 = StateNo = 210 && MoveContact
Trigger2 = Ctrl
Trigger3 = StateNo = 200 && MoveContact
Trigger4 = StateNo = 220 && MoveContact

;---------------------------------------------------------------------------
; Akisazame (PARTE 1)
[State -1, Akisazame (PARTE 1)]
type = ChangeState
value = 1000
TriggerAll = Command = "Akisazame"
TriggerAll = StateType = S
Trigger1 = StateNo = 210 && MoveContact
Trigger2 = Ctrl
Trigger3 = StateNo = 200 && MoveContact
Trigger4 = StateNo = 220 && MoveContact
trigger5 = StateNo = 990
Trigger5 = Time >= 42

;---------------------------------------------------------------------------
; Akisazame (PARTE 2)
[State -1, Kogahazan (PARTE 1)]
type = ChangeState
value = 1001
TriggerAll = Command = "holddown"
TriggerAll = Command = "a"
Trigger1 = Ctrl
Trigger1 = StateType = S
Trigger2 = StateNo = 200
Trigger2 = MoveContact || Time >= 14
Trigger3 = StateNo = 210
Trigger3 = MoveContact || Time >= 9
Trigger4 = StateNo = 220
Trigger4 = MoveContact || Time >= 17
