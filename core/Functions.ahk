Show_Or_Run_Application(title, exe, params = "")
{
    SetTitleMatchMode, 2
    SplitPath, exe, exeName, , , name_no_ext
    IfWinExist, %title%
    {
        IfWinActive 
        {
            WinMinimize
            Return
        }
        Else
        {
            WinActivate
            Return
        }
    }
    else {
        Run, %exe% %params% , UseErrorLevel
        if ErrorLevel
        {
            Notify("找不到可执行的文件", title,-3,"Style=Win10")
            Return
        }
        Else
        {
            ; WinWait, ahk_exe %exeName%
            ; WinActivate, ahk_exe %exeName%
            WinActivate
            Return
        }
    }
}