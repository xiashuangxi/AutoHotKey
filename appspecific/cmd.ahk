#IfWinActive, ahk_class ConsoleWindowClass
    ^v::SendInput, {Raw}%clipboard%
    ^l::SendInput, {Esc}cls{Enter}
#IfWinActive