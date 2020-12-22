IniRead, __editor__, .\config.ini, tools, editor
IniRead, __code__, .\config.ini, tools, code
IniRead, __cmd__, .\config.ini, tools, cmd
IniRead, __browser__, .\config.ini, tools, browser
IniRead, __mail__, .\config.ini, tools, mail

Caches:={}

SetTimer, check_caches, 3000, On

check_caches()
{
    ;; check windows
    SetTitleMatchMode, 2
    global Caches
    for k,v in Caches
    {
        IfWinExist, % v.title
        {
        }
        Else
        {
            Caches.Delete(k)
        }
    }
}