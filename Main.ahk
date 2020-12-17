#NoEnv
#WinActivateForce
#SingleInstance force
#InstallKeybdHook
#UseHook, On

SendMode Input
SetWorkingDir %A_ScriptDir% ;; 改变脚本的工作路径为当前路径

#Include *i %A_ScriptDir%\core\AppSpecific.ahk

#Include, %A_ScriptDir%\keybinding\navigation.ahk