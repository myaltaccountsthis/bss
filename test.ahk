#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force
SetKeyDelay, -1
CoordMode, Mouse, Window

F3::
Click, 1294, 804, 0
Sleep, 10
Click, 1293, 805, 0
Sleep, 10
Click, 1292, 806, 0
Sleep, 10
Loop {
    Click, 1292, 806 Left
    PixelSearch, FoundX, FoundY, 1138, 454, 1433, 640, 0xbda4ff, 2, Fast RGB
    If (ErrorLevel = 0) {
        MsgBox, MYTHIC
        ExitApp, 0
    }
    Sleep, 800
}
Return

F8::
MsgBox, Reloading Script...
Reload
Return