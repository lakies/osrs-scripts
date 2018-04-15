`::Suspend
0::
4::
	BlockInput On
	X=0
	BlockInput Off
	return
1::
	BlockInput On
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
	BlockInput Off
	return
2::
	BlockInput On
	X+=1
		if (X==1 or X==5 or X==9 or X==13 or X==17 or X==21 or X==25 or X==29 or X==33 or X==37 or X==41 or X==45 or X==49 or X==53 or X==57 or X==61 or X==65 or X==69 or X==73 or X==77 or X==81 or X==85 or X==89 or X==93){
			Click right
		}
		if (X==2 or X==6 or X==10 or X==14 or X==18 or X==22 or X==26 or X==30 or X==34 or X==38 or X==42 or X==46 or X==50 or X==54 or X==58 or X==62 or X==66 or X==70 or X==74 or X==78 or X==82 or X==86 or X==90 or X==94){
			MouseMove, 0, 57, 0, R
		}
		if (X==3 or X==7 or X==11 or X==15 or X==19 or X==23 or X==27 or X==31 or X==35 or X==39 or X==43 or X==47 or X==51 or X==55 or X==59 or X==63 or X==67 or X==71 or X==75 or X==79 or X==83 or X==87 or X==91){
			Click
		}
		if (X==4 or X==8 or X==12 or X==16 or X==20 or X==28 or X==32 or X==36 or X==40 or X==44 or X==52 or X==56 or X==60 or X==64 or X==68 or X==76 or X==80 or X==84 or X==88 or X==92){
			MouseMove, 0, -21, 0, R
		}
		if (X==24 or X==48 or X==72){
			MouseMove, 42, -237, 0, R
		}
		if (X==95){
			Click
			X=0
			Sleep, 2000
		}
	BlockInput Off
	return
3::
	BlockInput On
	X+=1
		if (X==1 or X==5 or X==9 or X==13 or X==17 or X==21 or X==25 or X==29 or X==33 or X==37 or X==41 or X==45 or X==49 or X==53 or X==57 or X==61 or X==65 or X==69 or X==73 or X==77 or X==81 or X==85 or X==89 or X==93){
			Click right
		}
		if (X==2 or X==6 or X==10 or X==14 or X==18 or X==22 or X==26 or X==30 or X==34 or X==38 or X==42 or X==46 or X==50 or X==54 or X==58 or X==62 or X==66 or X==70 or X==74 or X==78 or X==82 or X==86 or X==90 or X==94){
			MouseMove, 0, 73, 0, R
		}
		if (X==3 or X==7 or X==11 or X==15 or X==19 or X==23 or X==27 or X==31 or X==35 or X==39 or X==43 or X==47 or X==51 or X==55 or X==59 or X==63 or X==67 or X==71 or X==75 or X==79 or X==83 or X==87 or X==91){
			Click
		}
		if (X==4 or X==8 or X==12 or X==16 or X==20 or X==28 or X==32 or X==36 or X==40 or X==44 or X==52 or X==56 or X==60 or X==64 or X==68 or X==76 or X==80 or X==84 or X==88 or X==92){
			MouseMove, 0, -38, 0, R
		}
		if (X==24 or X==48 or X==72){
			MouseMove, 42, -253, 0, R
		}
		if (X==95){
			Click
			X=0
			Sleep, 2000
		}
	BlockInput Off
	return

; Put items you want to keep in the bottom row, as it's ignored. Start hovered over the top-left item in your inventory.
; Hold 1 to drop items with "Drop" as option 2
; Hold 2 to drop items with "Drop" as option 3
; Hold 3 to drop items with "Drop" as option 4 / These probably work for "Release" too
; Press 4 or 0 to reset the script (if you have to, it's done automatically after each full inventory)
; Press ~ ' to suspend/unsuspend the script