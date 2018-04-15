#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#IfWinActive OSBuddy
RandSleep(T0,T1){
Random, SleepTime,T0,T1
Sleep, SleepTime
}
XButton2::
random,o,-2,2
click right
RandSleep(100,120)
mousemove,0,70+o,0,R
RandSleep(50,70)
click
RandSleep(50,70)
send {ESC}
return

XButton1::
LShift & XButton1::
click
RandSleep(40,70)
mousemove,0,39,0,R
RandSleep(40,70)
click
RandSleep(40,70)
mousemove,0,39,0,R
RandSleep(40,70)
click
return