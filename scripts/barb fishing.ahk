#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
CoordMode, Mouse,Screen
CoordMode, Pixel, Screen

a:=4000
SetTimer Click, %a%

F8::
Toggle := !Toggle
MouseGetPos mX,mY
return

Click:
If (!Toggle){
	Return
}
PixelGetColor,color,-40,796
If(color=0x0D1212 or color=0x09090F){
Random g,-165,-168
Random k,616,620
MouseMove %g%,%k%
BlockInput On
	Loop,75{
        X+=1
                if (X==1 or X==4 or X==7 or X==10 or X==13 or X==16 or X==20 or X==23 or X==26 or X==29 or X==32 or X==35 or X==39 or X==42 or X==45 or X==48 or X==51 or X==54 or X==58 or X==61 or X==64 or X==67 or X==70 or X==73){
                        Click right
                }
                if (X==2 or X==5 or X==8 or X==11 or X==14 or X==17 or X==21 or X==24 or X==27 or X==30 or X==33 or X==36 or X==40 or X==43 or X==46 or X==49 or X==52 or X==55 or X==59 or X==62 or X==65 or X==68 or X==71 or X==74){
                        MouseMove, 0, 36, 0, R
                }
                if (X==3 or X==6 or X==9 or X==12 or X==15 or X==18 or X==22 or X==25 or X==28 or X==31 or X==34 or X==37 or X==41 or X==44 or X==47 or X==50 or X==53 or X==56 or X==60 or X==63 or X==66 or X==69 or X==72){
                        Click
                }
                if (X==19 or X==38 or X==57){
                        MouseMove, 42, -216, 0, R
                }
                if (X==75){
                        Click
                        X=0
                        Sleep, 2000
                }
		Sleep,30
	}
	
        BlockInput Off
}

Random a,3500,4000
SetTimer Click, %a%
return

