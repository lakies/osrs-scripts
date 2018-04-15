#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetTimer Click, 1600
#IfWinActive OSBuddy
f12::suspend


RandSleep(){
Random sleeptime,50,350
Sleep sleeptime
return sleeptime
}

f8::
Toggle := !Toggle
return

Click:
If (!Toggle)
        Return
Random randdelay,4,8
delaytimer:=1600
delaytimer+=randdelay
N++
If(N=1){
Random x,1035,1039
Random y,770,774
MouseMove x,y,1
delaytimer-=RandSleep()
click
delaytimer-=RandSleep()
Random x,608,612
Random y,460,464
MouseMove x,y,1
delaytimer-=RandSleep()
click
delaytimer-=RandSleep()
}
If(N=2){
Random x,1131,1135
Random y,675,679
MouseMove x,y,1
delaytimer-=RandSleep()
click
delaytimer-=RandSleep()
click
delaytimer-=RandSleep()
N:=0
}
SetTimer Click,%delaytimer%
return