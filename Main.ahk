#NoEnv
#WinActivateForce
#SingleInstance force
#InstallKeybdHook
#UseHook, On

SendMode Input
SetWorkingDir %A_ScriptDir% ;; 改变脚本的工作路径为当前路径

#Include *i %A_ScriptDir%\core\Functions.ahk
#Include *i %A_ScriptDir%\core\AppSpecific.ahk
#Include *i %A_ScriptDir%\lib\Notify.ahk
#Include, %A_ScriptDir%\keybinding\navigation.ahk

RCtrl & Delete::Show_Or_Run_Application("Google Chrome", "C:\Users\xiash\AppData\Local\Google\Chrome\Application\chrome.exe")
RCtrl & Home::Show_Or_Run_Application("Hotmail", "C:\Users\xiash\AppData\Local\Google\Chrome\Application\chrome.exe","--app=https://outlook.live.com/mail")
RCtrl & End::Show_Or_Run_Application("VSCode", "D:\Program Files\Microsoft VS Code\Code.exe")