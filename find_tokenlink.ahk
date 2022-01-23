#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force

Return

F3::
Start := A_TickCount
Loop {
    ImageSearch, FoundX, FoundY, 0, 0, 2560, 1440, *100 *w100 *h-1 TokenLink.png
}
Until A_TickCount > 5000 or ErrorLevel = 0
If (ErrorLevel = 0) {
    MsgBox, Found at %FoundX%, %FoundY%
}
Return

F8::
MsgBox, Reloading Script...
Reload
Return