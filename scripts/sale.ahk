#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

X = 0
f12::
if(X == 0){
	send green:wave:sell d bones 15k ea
	X++
}
else if(X == 1){
	send purple:wave:sell d hasta 8m
	X++
}
else if(X == 2){
	send red:wave:sell crystal keys 200k ea
	X=0
}

send {enter}
return

f11::
send green:wave:sell bronze bars 800gp ea
send {enter}
return

