SetCapsLockState, AlwaysOff

CAPSLOCK & h::MoveCursor("{LEFT}")
CAPSLOCK & l::MoveCursor("{RIGHT}")
CAPSLOCK & k::MoveCursor("{UP}")
CAPSLOCK & j::MoveCursor("{DOWN}")

CAPSLOCK & u::MoveCursor("{HOME}")
CAPSLOCK & p::MoveCursor("{END}")
CAPSLOCK & o::MoveCursor("{PGUP}")
CAPSLOCK & i::MoveCursor("{PGDN}")

MoveCursor(key) {
    s := GetKeyState("SHIFT","P") ? "+" : ""
    c := GetKeyState("CONTROL","P") ? "^" : ""
    a := GetKeyState("ALT","P") ? "!" : ""
    
    Send, %a%%s%%c%%key%
}