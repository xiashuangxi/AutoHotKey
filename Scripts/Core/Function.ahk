Date(format = "yyyy-MM-dd")
{
    FormatTime, today, A_Now, %format%
    Return today
}

Time(format = "hh:mm:ss")
{
    FormatTime, now, A_Now, %format%
    Return now
}

NotifyEx(title, message, duration = 4)
{
    Notify(title, message, duration, "Style=Win10")
}

RunOrActivate(mark, exe)
{
    global Caches
    IsExists := False
    SetTitleMatchMode, 2
    If (Caches.HasKey(mark))
    {
        obj := ObjRawGet(Caches, mark)
        if obj.shell == exe
        {
                IfWinExist, % obj.title
                {
                    IsExists := True
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
        }        
    }
    Else If !IsExists
    {
        IfWinExist, ahk_exe %exe%
        {
            IsExists := True
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
    }
    iF !IsExists
    {
        Run, %exe%, UseErrorLevel
        if ErrorLevel
        {
            Notify("找不到可执行的文件", path,-3,"Style=Win10")
            Return
        }
        Else
        {   
            ; WinWait, ahk_exe %exe%
            WinActivate ahk_exe %exe%
            Sleep, 1000 
            WinGet, currentWindow, ID, A
            WinGetTitle, __title, A
            
            __new_title:=SubStr(__title, InStr(__title, "-", false, -1) + 1)
           
            If (!Caches.HasKey(mark))
            {
                Caches[mark] := {"title":__new_title, "shell": exe}
            }
            Return
        }
    }
}

; GetWinTitle()
; {
;     WinGet, ActiveProcess, ProcessName, A
;     WinGet, OpenWindowsAmount, Count, ahk_exe %ActiveProcess%

;     If OpenWindowsAmount = 1
;         MsgBox, "1"
;     Else
;     {
;         WinGetTitle, FullTitle, A
;         AppTitle := SubStr(FullTitle, InStr(FullTitle, " ", false, -1) + 1)
;         SetTitleMatchMode, 2
;         WinGet, WindowsWithSameTitleList, List, %AppTitle%
        
;         If WindowsWithSameTitleList > 1
;         {
;             WinActivate, ,
;         }
;     }
; }

; Show_Or_Run_App_Path(title, path, params = "")
; {
;     SetTitleMatchMode, 2
;     SplitPath, path, exeName, , , name_no_ext
;     IfWinExist, %title%
;     {
;         IfWinActive 
;         {
;             WinMinimize
;             Return
;         }
;         Else
;         {
;             WinActivate
;             Return
;         }
;     }
;     else {
;         Run, %path% %params% , UseErrorLevel
;         if ErrorLevel
;         {
;             Notify("找不到可执行的文件", path,-3,"Style=Win10")
;             Return
;         }
;         Else
;         {
;             WinActivate
;             Return
;         }
;     }
;     Return
; }

; Show_Or_Run_App_Commnad(title, command, params = "")
; {
;     SetTitleMatchMode, 2
;     IfWinExist, %title%
;     {
;         IfWinActive 
;         {
;             WinMinimize
;             Return
;         }
;         Else
;         {
;             WinActivate
;             Return
;         }
;     }
;     else {
;         Run, %command% %params%, UseErrorLevel
;         if ErrorLevel
;         {
;             Notify("命令不存在", command,-3,"Style=Win10")
;             Return
;         }
;         Else
;         {
;             WinActivate
;             Return
;         }
;     }
;     Return
; }