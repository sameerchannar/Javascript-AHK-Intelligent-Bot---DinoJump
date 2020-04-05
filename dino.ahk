#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Ins::ExitApp

^!z::  ; Control+Alt+Z hotkey.
	MouseGetPos, MouseX, MouseY	
	PixelGetColor, colorOriginal, %MouseX%, %MouseY%
	send {Down down}
	while (true) {
		MouseGetPos, MouseX, MouseY	

		PixelGetColor, colorNew, %MouseX%, %MouseY%
		;MsgBox %MouseY% %aboveVal%
		;MsgBox The color at the current cursor position is %color%.
		if (colorNew != colorOriginal) { ;if bottom is dark
			send {Down up}
			send {Up down}
			Sleep, 500
			send {Up up}
			send {Down down}
		}
		;MsgBox %MouseY% %aboveVal%
		;MsgBox The color at the current cursor position is %color%.
		PixelGetColor, colorNew, %MouseX%, %MouseY%
		;MsgBox %MouseY% %aboveVal%
		;MsgBox The color at the current cursor position is %color%.
		if (colorNew != colorOriginal) { ;if bottom is dark
			send {Down up}
			send {Up down}
			Sleep, 500
			send {Up up}
			send {Down down}
		}
		;MsgBox %MouseY% %aboveVal%
		;MsgBox The color at the current cursor position is %color%.
		PixelGetColor, colorNew, %MouseX%, %MouseY%
		;MsgBox %MouseY% %aboveVal%
		;MsgBox The color at the current cursor position is %color%.
		if (colorNew != colorOriginal) { ;if bottom is dark
			send {Down up}
			send {Up down}
			Sleep, 500
			send {Up up}
			send {Down down}
		}
		;MsgBox %MouseY% %aboveVal%
		;MsgBox The color at the current cursor position is %color%.
		PixelGetColor, colorNew, %MouseX%, %MouseY%
		;MsgBox %MouseY% %aboveVal%
		;MsgBox The color at the current cursor position is %color%.
		if (colorNew != colorOriginal) { ;if bottom is dark
			send {Down up}
			send {Up down}
			Sleep, 500
			send {Up up}
			send {Down down}
		}
		;MsgBox %MouseY% %aboveVal%
		;MsgBox The color at the current cursor position is %color%.
		
	}
	return

	;potentially add mouseX mover every 1000 cycles or something