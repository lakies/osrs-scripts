SetTimer Click, 900

F8::
Toggle := !Toggle
MouseGetPos mX,mY
return

Click:
    If (!Toggle)
        Return
    Random timer,30000,50000
    SetTimer Click,%timer%
    Random x,-2,2
    Random y,-2,2
    Random z,600,700
    x+=mX
    y+=mY
    MouseMove x,y
    click
    sleep z
    click
return