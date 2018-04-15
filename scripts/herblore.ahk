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
BlockInput On
click right
RandSleep(50,120)
random,a,-2,2
mousemove,0,70+a,0,R
RandSleep(50,70)
click
RandSleep(50,120)
mousemove,0,39-(70+a),0,R
BlockInput Off
return

XButton1::
send {ESC}
return