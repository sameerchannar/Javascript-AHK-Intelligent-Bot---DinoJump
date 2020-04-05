#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Ins::ExitApp

^!z::  ; Control+Alt+Z hotkey.
	MouseGetPos, MouseX, MouseY	
	PixelGetColor, colorOriginal, %MouseX%, %MouseY%
	while (true) {
		MouseGetPos, MouseX, MouseY	
		PixelGetColor, colorNew, %MouseX%, %MouseY%
		;PixelGetColor, colorUp, %MouseX%, %MouseY% + 10
		;MsgBox The color at the current cursor position is %color%.
		if (colorNew != colorOriginal) {
			send {Up}
			Sleep, 600
		}
		PixelGetColor, colorNew, %MouseX%, %MouseY%
		;PixelGetColor, colorUp, %MouseX%, %MouseY% + 10
		;MsgBox The color at the current cursor position is %color%.
		if (colorNew != colorOriginal) {
			send {Up}
			Sleep, 600
		}
		PixelGetColor, colorNew, %MouseX%, %MouseY%
		;PixelGetColor, colorUp, %MouseX%, %MouseY% + 10
		;MsgBox The color at the current cursor position is %color%.
		if (colorNew != colorOriginal) {
			send {Up}
			Sleep, 600
		}
	}
	return