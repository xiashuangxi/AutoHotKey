#NoEnv
#WinActivateForce
#SingleInstance force
#InstallKeybdHook
#UseHook, On

SetCapsLockState, AlwaysOff

SendMode Input
SetWorkingDir %A_ScriptDir% ;; 改变脚本的工作路径为当前路径

;; Include (Libs)
#Include, Libs/Notify.ahk

;; Include (Scripts/Core)
#Include, Scripts/Core/Config.ahk
#Include, Scripts/Core/Function.ahk

;; Include (Scripts)
#Include, Scripts/Hotstrings.ahk
#Include, Scripts/Shortcutes.ahk

; #Include, Scripts/CustomFunctions.ahk