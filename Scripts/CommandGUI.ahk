gui_state = closed

!c::
gui_spawn:
    if gui_state  != closed
    {
        gui_destroy()
        return
    }
    Menu, Tray, Icon, % A_ScriptDir "\Images\icon_command.png"
    gui_state = main
    Gui, +AlwaysOnTop -SysMenu +ToolWindow -caption +Border +MinSize350
    Gui, Add, Edit, w600 vCommand -WantReturn
    Gui, Add, Button, x-10 y-10 w1 h1 +default gExecuteEnter
    Gui, Show,, __Command_Gui 
    Return

GuiEscape:
    gui_destroy()
    Return

ExecuteEnter:
    Gui, Submit
    gui_destroy()

    Loop_Input(Command)
    Return

#WinActivateForce
gui_destroy() 
{
    global gui_state

    gui_state = closed

    Gui, Destroy
    Menu, Tray, Icon, % A_ScriptDir "\Images\icon_main.png"
    WinActivate
}