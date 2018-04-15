#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#MaxHotkeysPerInterval 1000


LAlt & i::
MouseMove, 20, 30, 50, R
return

delay = 30


LAlt & WheelUp::
click
return


LAlt & WheelDown::
click
sleep 10
click
return

delay = 30

LAlt & m::
MouseMove 785,284 ;lemon
Loop,64
{
click
sleep 30
}
MouseMove 797,451 ;newspaper
Loop,75
{
click
sleep 30
}
MouseMove 797,612 ;car
Loop,75
{
click
sleep 30
}
MouseMove 797,786 ;pizza
Loop,75
{
click
sleep 30
}
MouseMove 797,958 ;donut
Loop,75
{
click
sleep 30
}
MouseMove 1448,284 ;shrimp
Loop,15
{
click
sleep 30
}
MouseMove 1448,451 ;hockey
Loop,35
{
click
sleep 30
}
MouseMove 1448,612 ;movie
Loop,65
{
click
sleep 30
}
MouseMove 1448,786 ;bank
Loop,65
{
click
sleep 30
}
MouseMove 1448,958 ;oil
Loop,65
{
click
sleep 30
}