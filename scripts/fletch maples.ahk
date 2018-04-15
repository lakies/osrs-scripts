#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#IfWinActive OSBuddy

RandDelay(time){
a:=time/4
Random,b,-%a%,%a%
b+=%time%
Sleep b
}

XButton2::

PixelGetColor,bank,482,52,RGB
PixelGetColor,maples,209,730,RGB

if(bank=0xFF981F){
Random,xoffset,-3,3
Random,yoffset,-3,3
x:=1040
x+=xoffset
y:=572
y+=xoffset
MouseMove,x,y
RandDelay(40)
click right
RandDelay(40)
x:=70
x+=%yoffset%
Mousemove,%xoffset%,%x%,0,R
RandDelay(40)
click
RandDelay(50)

Random,xoffset,-3,3
Random,yoffset,-3,3
x:=638
x+=xoffset
y:=234
y+=xoffset
MouseMove,x,y
RandDelay(40)
click right
RandDelay(40)
x:=70
x+=%yoffset%
Mousemove,%xoffset%,%x%,0,R
RandDelay(40)
click
RandDelay(50)

Send,{Esc}
}


if(maples=0x800000){
Random,xoffset,-3,3
Random,yoffset,-3,3
x:=273
x+=xoffset
y:=759
y+=xoffset
MouseMove,x,y
RandDelay(40)
click right
RandDelay(40)
x:=70
x+=%yoffset%
Mousemove,%xoffset%,%x%,0,R
RandDelay(40)
click
RandDelay(1500)

Random,number,40,120
Send,%number%
RandDelay(30)
Send,{Enter}


}

return

