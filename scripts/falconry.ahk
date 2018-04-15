#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


CoordMode,Pixel,Screen

SetTimer Click, 900

F8::
Toggle := !Toggle

return

Click:
    If (!Toggle)
        Return
    
PixelGetColor,bank,982,143,RGB

If(bank=0x131313)
{
SoundPlay,*16

}
return

XButton2::
click right
sleep 50
MouseMove, 0, 36, 0, R
sleep 50

click

return