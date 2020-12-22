:*:;d:: 
    SendInput, % Date()
    Return

:*:;zd:: 
    SendInput, % Date("yyyy年MM月dd日")
    Return

:*:;t::
    SendInput, % Time()
    Return

:*:;zt::
    SendInput, % Time("hh点mm分ss秒")
    Return

;; localhost ip
::;lip::127.0.0.1