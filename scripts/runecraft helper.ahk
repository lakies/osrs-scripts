#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#IfWinActive OSBuddy
f12::Suspend
1::
click right
return

2::
click right
sleep 50
MouseMove, 0, 36, 0, R
sleep 50
click
return

3::
click
return

`::
click right
sleep 50
MouseMove, 0, 70, 0, R
sleep 50
click
return