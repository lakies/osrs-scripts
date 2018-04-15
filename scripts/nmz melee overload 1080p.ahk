#IfWinActive OSBuddy


SetTimer Clicker, 1200

PrayFlickTimer := A_TickCount
Overloads := Object()
asd := 4
arrowNumber := 0
arrowDur := 0
arrowTimer := A_TickCount
arrowPressed := false

Pow(n){
return n**2
}

RandomBezier( Xf, Yf,Relativ="", O="" ) {
	
	MouseGetPos X0,Y0
	If (Relativ="R"){
	Xf += X0
	Yf += Y0
	}
	
	n3 := Pow(Xf-X0)
	n4 := Pow(Yf-Y0)
	dist := Sqrt(n3+n4)
	
	g := -log(40/dist)/log(2)

	
    Time := g > 0.79 ? 150*g : 200
    RO := InStr(O,"RO",0) , RD := InStr(O,"RD",0)
    N:=!RegExMatch(O,"i)P(\d+)(-(\d+))?",M)||(M1<2)? 2: (M1>19)? 19: M1
    If ((M:=(M3!="")? ((M3<2)? 2: ((M3>19)? 19: M3)): ((M1=="")? 5: ""))!="")
        Random, N, 2, 4
    OfT:=RegExMatch(O,"i)OT(-?\d+)",M)? M1: 100, OfB:=RegExMatch(O,"i)OB(-?\d+)",M)? M1: 100
    OfL:=RegExMatch(O,"i)OL(-?\d+)",M)? M1: 100, OfR:=RegExMatch(O,"i)OR(-?\d+)",M)? M1: 100
    MouseGetPos, XM, YM
    If ( RO )
        X0 += XM, Y0 += YM
    If ( RD )
        Xf += XM, Yf += YM
    If ( X0 < Xf )
        sX := X0-OfL, bX := Xf+OfR
    Else
        sX := Xf-OfL, bX := X0+OfR
    If ( Y0 < Yf )
        sY := Y0-OfT, bY := Yf+OfB
    Else
        sY := Yf-OfT, bY := Y0+OfB
    Loop, % (--N)-1 {
        Random, X%A_Index%, %sX%, %bX%
        Random, Y%A_Index%, %sY%, %bY%
    }
    X%N% := Xf, Y%N% := Yf, E := ( I := A_TickCount ) + Time
    While ( A_TickCount < E ) {
        U := 1 - (T := (A_TickCount-I)/Time)
        Loop, % N + 1 + (X := Y := 0) {
            Loop, % Idx := A_Index - (F1 := F2 := F3 := 1)
                F2 *= A_Index, F1 *= A_Index
            Loop, % D := N-Idx
                F3 *= A_Index, F1 *= A_Index+Idx
            M:=(F1/(F2*F3))*((T+0.000001)**Idx)*((U-0.000001)**D), X+=M*X%Idx%, Y+=M*Y%Idx%
        }
        MouseMove, %X%, %Y%, 0
        Sleep, 1
    }
    MouseMove, X%N%, Y%N%, 0
    Return N+1
}

RandSleep(T0,T1){
Random, SleepTime,T0,T1
Sleep, SleepTime
}


class Overload{
	Doses := 4
	
	__New(xPos,yPos){
		this.X := xPos
		this.Y := yPos
	}

	UseDose(){
		Random x1,-2,2
		Random y1,-2,2
		x1 += this.X
		y1 += this.Y
		RandomBezier( x1,y1)
		RandSleep(200,400)
		click
		RandSleep(200,400)
		this.Doses -= 1
		
	}

	GetDoses(){
		return this.Doses
	}
}


Clicker:
    If (!Toggle)
        Return
   
    Random timer,100,200
    SetTimer Clicker,%timer%
	
	;Prayflickimine
    Random PrayFlickRand,15000,30000
	n := A_TickCount
	n -= PrayFlickTimer
	
	If(n>PrayFlickRand){
		Random x,-2,2
		Random y,-2,2
		x+=1488
		y+=968
		RandomBezier( x,y)
		RandSleep(400,600)
		click right
		RandSleep(400,600)
		click
		PrayFlickTimer := A_TickCount
	}   

	;Overloadide võtmine
	PixelGetColor hp,1473,98
	
	
	if (hp=0x04089C){
		RandSleep(1000,2000)
		counter := asd//4
		Overloads[counter].UseDose()
		asd++
		RandSleep(4000,6000)
	}
	
	;Suvaliselt ekraani liigutamine
	Random, decider,-20,200
	if(!arrowPressed){
		if (decider>198){
			arrowTimer := A_TickCount
			Random, arrowDur,400,600
			Random, arrowNumber,0,3
			if (arrowNumber = 0){
				Send {Up down}
			}
			if (arrowNumber = 1){
				Send {Down down}
			}
			if (arrowNumber = 2){
				Send {Left down}
			}
			if (arrowNumber = 3){
				Send {Right down}
			}
			arrowPressed := !arrowPressed
		}
	}else{
		n := A_TickCount
		n -= arrowTimer
		if(n>arrowDur){
			if (arrowNumber = 0){
				Send {Up up}
			}
			if (arrowNumber = 1){
				Send {Down up}
			}
			if (arrowNumber = 2){
				Send {Left up}
			}
			if (arrowNumber = 3){
				Send {Right up}
			}
			arrowPressed := !arrowPressed
		}
	}
	return



F9::
	MouseGetPos,x,y
	Overloads.Insert(new Overload(x,y))
	return

F8::
	Toggle := !Toggle
	return