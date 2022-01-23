#NoEnv
SetWorkingDir %A_ScriptDir%
CoordMode, Mouse, Window
SendMode Input
#SingleInstance Force
SetTitleMatchMode 2
SetWinDelay 0
SetKeyDelay -1
SetMouseDelay -1

#IfWinActive Roblox

F3::
KeyDuration := 30
WalkDuration := 300
WalkDuration2 := 380
Start:
WinActivate, Roblox ahk_class WINDOWSCLIENT
Send, {w Up}
Send, {s Up}
Send, {d Up}
Send, {a Up}
Send, {LButton Up}
Send, {RButton Up}
Click, 75, 75, 0
Sleep, %KeyDuration%
Click, 75, 75, 0
Sleep, %KeyDuration%
Click, 0, 0, 0
Sleep, %KeyDuration%
Click, 0, 0, 0
Sleep, 100
Send, {Escape Down}
Sleep, %KeyDuration%
Send, {Escape Up}{r Down}
Sleep, %KeyDuration%
Send, {r Up}
Sleep, %KeyDuration%
Send, {Enter Down}
Sleep, %KeyDuration%
Send, {Enter Up}
Sleep, 15000
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 750, 440, 1800, 800, *50 hive.png
If (ErrorLevel)
{
    Loop, 4
    {
        Send, .
        Sleep, %KeyDuration%
    }
}
Sleep, 100
Loop, 5
{
    Send, {o Down}
    Sleep, %KeyDuration%
    Send, {o Up}
    Sleep, 100
}
Sleep, 1000
Send, {w Down}
Sleep, 8000
Send, {w Up}
Sleep, 300
Send, {Space Down}
Sleep, 150
Send, {Space Up}
Sleep, 200
Send, {w Down}{a Down}
Sleep, 6000
Send, {w Up}{a Up}
Sleep, 300
Send, {s Down}{d Down}
Sleep, 1000
Send, {s Up}{d Up}
Send, 1
Sleep, 5000
Send, {LButton Down}
Loop, 4 {
    Send, {w Down}{a Down}
    Sleep, 2000
    Send, {w Up}{a Up}
    Sleep, 300
    Send, {s Down}{d Down}
    Sleep, 500
    Send, {s Up}{d Up}
    Sleep, 300
    Loop, 4 {
        Loop, 5 {
            Send, {d Down}
            Sleep, %WalkDuration2%
            Send, {d Up}{s Down}
            Sleep, %WalkDuration2%
            Send, {s Up}{a Down}
            Sleep, %WalkDuration%
            Send, {a Up}{w Down}
            Sleep, %WalkDuration%
            Send, {w Up}
        }
        Temp := WalkDuration
        WalkDuration := WalkDuration2
        WalkDuration2 := Temp
    }
}
Sleep, 2000
Goto, Start
Return

#IfWinActive
F8::
MsgBox, Reloading Script...
Reload
Return


