/*
F3::Play
F8::Reload (Stop)

Version 3
made by myaltaccountsthis using Pulover's Macro Creator
must be at 4th hive (3rd to red cannon)
bug run macro
original version made for 2560x1440 display
done with coco clogs (33.6 movespeed, 77 jump power)
tested with bear bee --------------------------------------------------------------------------------------------------------------------------------------
resets at the start and waits 20 seconds
contains pixel searching to align beesmas stockings and go correct distance on ramp
--------------------------------------------------------------------------------------------------------------------------------------
path: mushroom, spider, strawberry, cactus, pumpkin, pine tree, rose, clover, beesmas stocking, wealth clock, bluf, bamboo, pineapple
*/

#NoEnv
SetWorkingDir %A_ScriptDir%
CoordMode, Mouse, Window
SendMode Input
#SingleInstance Force
SetTitleMatchMode 2
SetWinDelay 0
SetKeyDelay -1
SetMouseDelay -1

HiveNumber := 2 ; how many from red cannon
If (HiveNumber != 3) {
    MsgBox, Using Hive %HiveNumber%
}

#IfWinActive Roblox
F3::
; 500 565
WalkDuration := 300  ; variables so i dont have to change everything
WalkDuration2 := 365 ; towards walls
WaitDuration := 5000
KeyDuration := 30
LoopTimes := 5
Start:
WinActivate, Roblox ahk_class WINDOWSCLIENT
Send, {w Up}
Send, {s Up}
Send, {d Up}
Send, {a Up}
Send, {LButton Up}
Send, {RButton Up}
Click, 100, 100, 0
Sleep, %KeyDuration%
Click, 101, 101, 0
Sleep, %KeyDuration%
Click, 1, 1, 0
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
Sleep, 18000  ; reset and wait a bit to let bees almost wake up
CoordMode, Pixel, Window
Loop, 5 {
    ImageSearch, FoundX, FoundY, 750, 440, 1800, 800, *50 hive.png
    If (ErrorLevel) {
        Loop, 4
        {
            Send, .
            Sleep, %KeyDuration%
        }
        Break
    }
    Sleep, 300
}

Sleep, 100  ; check rotation, make sure looking at mushroom, zoom out 5 times
Loop, 5
{
    Send, {o Down}
    Sleep, %KeyDuration%
    Send, {o Up}
    Sleep, 100
}
Sleep, 300
; second hive
If (HiveNumber = 2) {
    Send, {d Down}
    Sleep, 1000
    Send, {d Up}
    Sleep, 300
}

Send, {w Down}{Space Down}  ; go to mushroom
Sleep, 3000
Send, {Space Up}
Sleep, 5000
Send, {w Up}
Click, 5, 5, 0
Sleep, 10
Click, 4, 4, 0
Sleep, 10
Click, 3, 3, 0
Sleep, 10
Click, 2, 2, 0
Sleep, 10
Click, 1, 1, Left Down
Send, 1
Sleep, 4000
Sleep, %WaitDuration%  ; collect loot
Loop, 2 {
    Loop, %LoopTimes%
    {
        Send, {s Down}
        Sleep, % WalkDuration2 * 2
        Send, {s Up}{w Down}
        Sleep, % WalkDuration * 2
        Send, {w Up}
    }
    Temp := WalkDuration
    WalkDuration := WalkDuration2
    WalkDuration2 := Temp
}
Sleep, 250
Send, {w Down}  ; go to spider
Sleep, 1500
Send, {w Up}
Sleep, 100
Send, {Space Down}
Sleep, 140
Send, {Space Up}
Sleep, 200
Send, {w Down}
Sleep, 4000
Send, {d Down}
Sleep, 1200
Send, {d Up}
Sleep, 1500
Send, {w Up}
Send, 1
Sleep, %WaitDuration%  ; collect loot
Loop, 2 {
    Loop, %LoopTimes%
    {
        Send, {s Down}
        Sleep, %WalkDuration2%
        Send, {s Up}{d Down}
        Sleep, %WalkDuration%
        Send, {d Up}{w Down}
        Sleep, %WalkDuration2%
        Send, {w Up}{a Down}
        Sleep, %WalkDuration%
        Send, {a Up}
    }
    Temp := WalkDuration
    WalkDuration := WalkDuration2
    WalkDuration2 := Temp
}

Sleep, 100
Loop, 3
{
    Send, {o Down}
    Sleep, %KeyDuration%
    Send, {o Up}
    Sleep, 100
}
Sleep, 500
Send, {w Down}  ; go to strawberry
Sleep, 2000
Send, {w Up}
Sleep, 100
Send, {a Down}
Sleep, 2000
Send, {Space Down}
Sleep, 2500
Send, {Space Up}
Sleep, 2000
Send, {w Down}
Sleep, 300
Send, {w Up}{a Up}{s Down}
Sleep, 200
Send, {s Up}
Send, 1
Sleep, %WaitDuration%  ; collect loot
Loop, 2 {
    Loop, %LoopTimes%
    {
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

Sleep, 500
Send, {s Down}  ; go on ramp, align then go to pine tree
Sleep, 4000
Send, {s Up}{a Down}
Sleep, 2000
Send, {Space Down}
Sleep, 140
Send, {Space Up}
Sleep, 1650
Send, {a Up}
Sleep, 100
Send, {w Down}
Sleep, 5000
Send, {d Down}
Sleep, 350
Send, {d Up}
Sleep, 1000
Send, {Space Down}
Sleep, 2500
Send, {Space Up}
Sleep, 3000
Send, {w Up}
Sleep, 1000  ; wait to kill werewolf?
Send, {a Down}  ; go to pine tree top left corner
Sleep, 4300
Send, {a Up}
Sleep, 100
Send, {s Down}
Sleep, 500
Send, {s Up}{d Down}
Sleep, 400
Send, {d Up}
Send, 1
Sleep, %WaitDuration%  ; collect loot
Loop, 2 {
    Loop, %LoopTimes%
    {
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

Sleep, 500
Send, {a Down}  ; go to rose
Send, {w Down}
Sleep, 2000
Send, {a Up}{w Up}
Sleep, 100
Send, {d Down}
Sleep, 400
Send, {d Up}
Sleep, 100
Send, {s Down}
Sleep, 3000
Send, {Space Down}
Sleep, 4000
Send, {Space Up}
Sleep, 7000
Send, {s Up}
Sleep, 1000
Send, {w Down}
Sleep, 300
Send, {w Up}
Send, 1
Sleep, %WaitDuration%  ; collect loot
Loop, 2 {
    Loop, %LoopTimes%
    {
        Send, {w Down}
        Sleep, %WalkDuration2%
        Send, {w Up}{d Down}
        Sleep, %WalkDuration2%
        Send, {d Up}{s Down}
        Sleep, %WalkDuration%
        Send, {s Up}{a Down}
        Sleep, %WalkDuration%
        Send, {a Up}
    }
    Temp := WalkDuration
    WalkDuration := WalkDuration2
    WalkDuration2 := Temp
}

Sleep, 500
Send, {s Down}  ; align back
Sleep, 1300
Send, {s Up}
Sleep, 100
Send, {d Down}  ; go to clover
Sleep, 300
Send, {w Down}
Sleep, 80
Send, {w Up}
Sleep, 3000
Send, {s Down}
Sleep, 250
Send, {s Up}
Sleep, 10000
Send, {Space Down}
Sleep, 140
Send, {Space Up}
Sleep, 500
Send, {w Down}
Sleep, 1000
Send, {w Up}
Sleep, 500
Send, {Space Down}
Sleep, 140
Send, {Space Up}
Sleep, 600
Send, {d Up}
Send, 1
Sleep, %WaitDuration%  ; collect loot
Loop, 2 {
    Loop, %LoopTimes%
    {
        Send, {s Down}
        Sleep, %WalkDuration2%
        Send, {s Up}{d Down}
        Sleep, %WalkDuration2%
        Send, {d Up}{w Down}
        Sleep, %WalkDuration%
        Send, {w Up}{a Down}
        Sleep, %WalkDuration%
        Send, {a Up}
    }
    Temp := WalkDuration
    WalkDuration := WalkDuration2
    WalkDuration2 := Temp
}

Sleep, 500
Send, {s Down}
Sleep, 3000
Send, {s Up}
Sleep, 100
Send, {d Down}  ; go to beesmas stockings
Sleep, 3500
Send, {d Up}
Sleep, 100
Send, {s Down}{d Down}
Sleep, 500
Send, {d Up}{s Up}  ; realign
Sleep, 100
Loop, 3
{
    Send, {. Down}  ; new alignment technique
    Sleep, %KeyDuration%
    Send, {. Up}
}
Sleep, 300
Loop, 5
{
    Send, {o Down}
    Sleep, %KeyDuration%
    Send, {o Up}
    Sleep, 100
}
Sleep, 100
Send, {a Down}
Sleep, 300
Start := A_TickCount
Loop
{
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 680, 110, 700, 120, 0x5C6085, 35, Fast RGB  ; check night
    Sleep, 20
}
Until ErrorLevel = 0 Or A_TickCount - Start > 3000
; if timeout reached
If (ErrorLevel) {
    Goto, Start
}
Send, {a Up}
Sleep, 300
Send, {. Down}
Sleep, %KeyDuration%
Send, {. Up}
Sleep, 100
Send, {e Down}  ; use beesmas stockings
Sleep, %KeyDuration%
Send, {e Up}
Sleep, 100
Send, {w Down}
Sleep, 1000
Send, {w Up}
Sleep, 300
Loop, 4
{
    Send, {, Down}
    Sleep, %KeyDuration%
    Send, {, Up}
}
Sleep, 100
Send, {a Down}  ; get into beesmas stocking starting position
Sleep, 450
Send, {a Up}
Sleep, %KeyDuration%  ; collect beesmas stockings
Loop, 2
{
    Send, {w Down}
    Sleep, 100
    Send, {w Up}
    Sleep, 100
    Send, {d Down}
    Sleep, 800
    Send, {d Up}
    Sleep, 100
    Send, {w Down}
    Sleep, 100
    Send, {w Up}
    Sleep, 100
    Send, {a Down}
    Sleep, 800
    Send, {a Up}
    Sleep, 100
}
Send, {w Down}  ; align then go to clock
Sleep, 150
Send, {w Up}
Sleep, 100
Send, {d Down}
Sleep, 1200
Send, {d Up}
Sleep, 300
Send, {Space Down}
Sleep, 150
Send, {d Down}
Sleep, %KeyDuration%
Send, {Space Up}
Sleep, 2500
Send, {d Up}
Sleep, 300
Send, {s Down}
Sleep, 1200
Send, {s Up}
Sleep, 300
Send, {d Down}
Sleep, 300
Send, {Space Down}
Sleep, 140
Send, {Space Up}
Sleep, 500
Send, {d Up}
Sleep, 300
Send, {w Down}
Sleep, 800
Send, {w Up}
Sleep, 300  ; now behind brown bear
Send, {Space Down}
Sleep, 140
Send, {Space Up}
Sleep, 100
Send, {w Down}
Sleep, 200
Send, {w Up}
Sleep, 300
Send, {w Down}{d Down}
Loop, 16
{
    Send, {e Down}
    Sleep, %KeyDuration%
    Send, {e Up}
    Sleep, 70
}
Send, {d Up}{w Up}
Sleep, 300
Send, {w Down}{a Down}
Loop, 8
{
    Send, {e Down}
    Sleep, %KeyDuration%
    Send, {e Up}
    Sleep, 80
}
Send, {a Up}
Sleep, 1000
Send, {w Up}
Sleep, 300
Send, {s Down}  ; go next to block behind player
Sleep, 1500
Send, {s Up}
Sleep, 300
Send, {Space Down}
Sleep, 140
Send, {Space Up}
Sleep, 100
Send, {s Down}  ; go on block to side of wealth clock
Sleep, 150
Send, {s Up}
Sleep, 300
Send, {LShift Down}
Sleep, %KeyDuration%
Send, {LShift Up}
Sleep, 100
Send, {LShift Down}
Sleep, %KeyDuration%
Send, {LShift Up}
Sleep, 300
Send, {w Down}  ; going over blue hq
Sleep, 100
Send, {Space Down}
Sleep, 150
Send, {Space Up}
Sleep, 5500
Send, {w Up}
Sleep, 300
Send, {a Down}
Sleep, 2000
Send, {a Up}
Sleep, 300
Send, {d Down}
Sleep, 300
Send, {d Up}
Sleep, 300
Send, {s Down}  ; to the left of blue hq entrance (in current perspective, it is in front)
Sleep, 2000
Send, {s Up}
Sleep, 300
Send, {a Down}  ; go to bluf
Sleep, 1500
Send, {a Up}
Send, 1
Sleep, %WaitDuration%
Loop, 2 {
    Loop, %LoopTimes%
    {
        Send, {a Down}
        Sleep, %WalkDuration2%
        Send, {a Up}{w Down}
        Sleep, %WalkDuration%
        Send, {w Up}{d Down}
        Sleep, %WalkDuration%
        Send, {d Up}{s Down}
        Sleep, %WalkDuration2%
        Send, {s Up}
    }
    Temp := WalkDuration
    WalkDuration := WalkDuration2
    WalkDuration2 := Temp
}

Sleep, 500
Send, {w Down}  ; go against wall, heading to bamboo
Sleep, 2000
Send, {w Up}
Sleep, 300
Send, {d Down}  ; to blue hq
Sleep, 4000
Send, {d Up}
Sleep, 300
Send, {a Down}  ; go left a bit
Sleep, 300
Send, {a Up}
Sleep, 300
Send, {Space Down}
Sleep, 150
Send, {Space Up}
Sleep, 150
Send, {w Down}
Sleep, 300
Send, {w Up}
Sleep, 300
Send, {a Down}  ; go to ladder next to panda bear
Sleep, 3000
Send, {a Up}
Sleep, 300
Send, {w Down}
Sleep, 200
Send, {w Up}
Sleep, 300
Send, {d Down}  ; go next to ramp, then straight forward to bamboo
Sleep, 1000
Send, {d Up}
Sleep, 300
Send, {w Down}
Sleep, 4000  ; go to bamboo
Send, {w Up}
Sleep, 300
Send, {s Down}
Sleep, 300
Send, {s Up}
Send, 1
Sleep, %WaitDuration%
Loop, 2 {
    Loop, %LoopTimes%
    {
        Send, {s Down}
        Sleep, %WalkDuration2%
        Send, {s Up}{a Down}
        Sleep, %WalkDuration2%
        Send, {a Up}{w Down}
        Sleep, %WalkDuration%
        Send, {w Up}{d Down}
        Sleep, %WalkDuration%
        Send, {d Up}
    }
    Temp := WalkDuration
    WalkDuration := WalkDuration2
    WalkDuration2 := Temp
}

Sleep, 500
Send, {w Down}{d Down}
Sleep, 3000
Send, {d Up}{w Up}
Sleep, 300
Send, {s Down}  ; go up ramp
Loop
{
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 2150, 900, 2195, 1000, 0x00004F, 50, Fast RGB
    Sleep, 20
}
Until ErrorLevel = 0
Send, {s Up}
Sleep, 300
Send, {Space Down}
Sleep, 140
Send, {Space Up}
Sleep, 100
Send, {d Down}
Sleep, 1500
Send, {d Up}
Sleep, 300
Send, {w Down}
Sleep, 9000
Send, {w Up}
Sleep, 300
Send, {s Down}
Sleep, 200
Send, {s Up}
Send, 1
Sleep, %WaitDuration%
Loop, 2 {
    Loop, %LoopTimes%
    {
        Send, {s Down}
        Sleep, %WalkDuration2%
        Send, {s Up}{a Down}
        Sleep, %WalkDuration%
        Send, {a Up}{w Down}
        Sleep, %WalkDuration%
        Send, {w Up}{d Down}
        Sleep, %WalkDuration2%
        Send, {d Up}
    }
    Temp := WalkDuration
    WalkDuration := WalkDuration2
    WalkDuration2 := Temp
}

Sleep, 2000
Goto, Start
Return

#IfWinActive
F8::
MsgBox, Reloading Script...
Reload
Return