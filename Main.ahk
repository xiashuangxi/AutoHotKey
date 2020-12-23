;;==============================================================================
;;                                AutoHotkey
;;------------------------------------------------------------------------------
;; 文件名：Main.ahk
;;==============================================================================

#NoEnv
#WinActivateForce
#SingleInstance force
#InstallKeybdHook
#UseHook, On

SetCapsLockState, AlwaysOff

SendMode Input
SetWorkingDir %A_ScriptDir% ;; 改变脚本的工作路径为当前路径

;;==============================================================================
;; 设置图标
;;==============================================================================
Menu, Tray, Tip, 工作脚本
If (FileExist(A_ScriptDir "\Images\icon_main.png"))
	Menu, Tray, Icon, % A_ScriptDir "\Images\icon_main.png"

;; Include (Libs)
#Include, Libs/Notify.ahk

;; Include (Scripts/Core)
#Include, Scripts/Core/Config.ahk
#Include, Scripts/Core/Function.ahk
; #Include, Scripts/Core/Duplicate.ahk
#Include, Scripts/Core/Command.ahk
#Include, Scripts/CommandGUI.ahk

;; Include (Scripts)
#Include, Scripts/Hotstrings.ahk
#Include, Scripts/Shortcutes.ahk

; #Include, Scripts/CustomFunctions.ahk

