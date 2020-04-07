#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Ins::
send {Down up}
send {Ctrl up}
ExitApp
return

^!z::  ; Control+Alt+Z hotkey.
Sleep, 500
MouseGetPos, MouseX, MouseY	
PixelGetColor, colorOriginal, %MouseX%, %MouseY%
send {Down down}
send {Ctrl down}
newX := MouseX
sleeptime := 500
while (true) {
	newX := newX + 0.06
	if (sleeptime > 300) {
		sleeptime := sleeptime - 0.08	
	}
	PixelGetColor, colorNew, %newX%, %MouseY%
	

	if (colorNew != colorOriginal) { ;if bottom is dark
		send {Down up}
		send {Up down}
		Sleep, sleeptime
		send {Up up}
		send {Down down}
	}
}
return