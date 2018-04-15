#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
f12::
Suspend,Toggle
return

a::
random b,65,75
click right
sleep %b%
MouseMove 0,65,0,R
click
return

s::
random b,65,75
click right
sleep %b%
MouseMove 0,54,0,R
click
return