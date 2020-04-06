#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Ins::ExitApp

^!z::  ; Control+Alt+Z hotkey.
Sleep, 500
MouseGetPos, MouseX, MouseY	
PixelGetColor, colorOriginal, %MouseX%, %MouseY%
send {Down down}
send {Ctrl down}
newX := MouseX
failX1 := newX - 5
failX2 := newX - 10
failX3 := newX - 15
failX4 := newX - 20
while (true) {
	newX := newX + 0.02
	
	PixelGetColor, colorNew, %newX%, %MouseY%
	

	if (colorNew != colorOriginal) { ;if bottom is dark
		send {Down up}
		send {Up down}
		Sleep, 500
		send {Up up}
		send {Down down}
	}
	; else {
	; 	failX1 := newX - 5
	
	; 	PixelGetColor, failsafe, %failX1%, %MouseY%
	; 	if (failsafe != colorOriginal) { ;if bottom is dark
	; 		send {Down up}
	; 		send {Up down}
	; 		Sleep, 500
	; 		send {Up up}
	; 		send {Down down}
	; 	}
	; 	else {
	; 		failX2 := newX - 10
	
	; 		PixelGetColor, failsafe, %failX2%, %MouseY%
	; 		if (failsafe != colorOriginal) { ;if bottom is dark
	; 			send {Down up}
	; 			send {Up down}
	; 			Sleep, 500
	; 			send {Up up}
	; 			send {Down down}
	; 		}
	; 		else {
	; 			failX3 := newX - 15

	; 			PixelGetColor, failsafe, %failX3%, %MouseY%
	; 			if (failsafe != colorOriginal) { ;if bottom is dark
	; 				send {Down up}
	; 				send {Up down}
	; 				Sleep, 500
	; 				send {Up up}
	; 				send {Down down}
	; 			}
	; 			else {
	; 				failX4 := newX - 20
	; 				PixelGetColor, failsafe, %failX4%, %MouseY%
	; 				if (failsafe != colorOriginal) { ;if bottom is dark
	; 					send {Down up}
	; 					send {Up down}
	; 					Sleep, 500
	; 					send {Up up}
	; 					send {Down down}
	; 				}
	; 				else {
	; 					failX5 := newX - 50
	; 					PixelGetColor, failsafe, %failX5%, %MouseY%
	; 					if (failsafe != colorOriginal) { ;if bottom is dark
	; 						send {Down up}
	; 						send {Up down}
	; 						Sleep, 500
	; 						send {Up up}
	; 						send {Down down}
	; 					}
	; 				}
	; 			}
	; 		}
	; 	}
	; }
}
return