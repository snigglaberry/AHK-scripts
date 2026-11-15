# 180 degree rotation thing inspired by the Razer Basilisk V4 Pro 
# uses xbutton1 you can replace this with any key
#Requires AutoHotkey v2.0
#SingleInstance Force

; ===== SETTINGS =====
turnAmount := 180
sensitivity := 1.0
smooth := false

; ===== HOTKEY =====
XButton1::
{
    global turnAmount, sensitivity, smooth

    ; Approximate 180-degree mouse movement
    pixels := Round(turnAmount * sensitivity * 20)

    if (!smooth)
    {
        DllCall("mouse_event",
            "UInt", 0x01,
            "Int", pixels,
            "Int", 0,
            "UInt", 0,
            "UPtr", 0)
    }
}
