;; Navigation
CapsLock & j:: CapsLockNavigation("Down")
CapsLock & k:: CapsLockNavigation("Up")
CapsLock & h:: CapsLockNavigation("Left")
CapsLock & l:: CapsLockNavigation("Right")

CapsLock & u:: CapsLockNavigation("PgDn")
CapsLock & i:: CapsLockNavigation("PgUp")

CapsLock & o:: CapsLockNavigation("Left", "^")
CapsLock & m:: CapsLockNavigation("Right", "^")

CapsLock & p:: CapsLockNavigation("End")
CapsLock & n:: CapsLockNavigation("Home")

CapsLockNavigation( action, initkey = "" , key = "+")
{
    If ! GetKeyState("Alt")
    {
        Send % initkey "{" action "}"
    }
    Else
    {
        Send % key . initkey "{" action "}"
    }
}

RCtrl & Delete:: 
    RunOrActivate("browser", __browser__)
    Return

RCtrl & Home:: 
    RunOrActivate("mail",__mail__)
    Return

RCtrl & End:: 
    RunOrActivate("code",__code__)
    Return
    
CapsLock & Tab::
    RunOrActivate("cmd",__cmd__)
    Return

CapsLock & c::Send, ^c
CapsLock & v:: Send, ^v
CapsLock & z::Send, ^z