; hold to look behind you, release to go back to normal
; like in baldis basics
#Requires AutoHotkey v2.0
#SingleInstance Force

turnAmount := 90
sensitivity := 20
pixels := Round(turnAmount * sensitivity * 10)

XButton1::
{
    DllCall("mouse_event", "UInt", 0x01, "Int", pixels, "Int", 0, "UInt", 0, "UPtr", 0)
}

XButton1 Up::
{
    DllCall("mouse_event", "UInt", 0x01, "Int", -pixels, "Int", 0, "UInt", 0, "UPtr", 0)
}
