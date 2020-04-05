#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Ins::ExitApp

^!z::  ; Control+Alt+Z hotkey.
	while (true) {
		MouseGetPos, MouseX, MouseY	
		PixelGetColor, color, %MouseX%, %MouseY%
		;MsgBox The color at the current cursor position is %color%.
		if (color != 0xF7F7F7)
			send {Up}
	}
	return