#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
`::Suspend
2::
	BlockInput On
	X=0
	BlockInput Off
	return
1::
	BlockInput On
	X+=1
		if (X==1 or X==3){
			Click
		}
		if (X==2){
			MouseMove, 42, 0, 0, R
		}
		if (X==4){
			MouseMove, -42, 0, 0, R
			X=0
		}
	BlockInput Off
	return

; Start hovered over the left item and have both items side-by-side
; Hold 1 to add feathers to bolts
; Press 2 to reset the script
; Press ~ ' to suspend/unsuspend the script