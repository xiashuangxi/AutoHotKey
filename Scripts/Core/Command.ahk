Loop_Input(str)
{
    __sp_index :=InStr(str, " ")
    __sp_str := SubStr(str,1, __sp_index-1)
    __sp_count := SubStr(str,__sp_index,StrLen(str))

    inputstring := ""
    Loop, % __sp_count
    {
        inputstring .= __sp_str
    }
    Clipboard := inputstring
    Send, ^v
}