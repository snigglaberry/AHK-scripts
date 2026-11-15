
#Requires AutoHotkey v2.0
#SingleInstance Force

*XButton2::ClickLoop()

*XButton2 Up::SetTimer(ClickLoop, 0)

ClickLoop() {
    if !GetKeyState("XButton2", "P")
        return

    Click()

    SetTimer(ClickLoop, -Random(70, 130))
}
