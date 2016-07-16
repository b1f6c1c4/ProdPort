#`::
    Run, powershell.exe, ~\Documents\
    WinWait, C:\WINDOWS\System32\WindowsPowerShell\v1.0\powershell.exe
    WinMove, 369, 117
Return

^#`::
    WinMove, A, , 200, 100
Return

ScrollLock::
    Suspend
Return

^CtrlBreak::
    ExitApp
Return

g_LastCtrlKeyDownTime := 0
g_AbortSendEsc := false
g_ControlRepeatDetected := false

*CapsLock::
    if (g_ControlRepeatDetected)
    {
        Return
    }

    send,{Ctrl down}
    g_LastCtrlKeyDownTime := A_TickCount
    g_AbortSendEsc := false
    g_ControlRepeatDetected := true

Return

*CapsLock Up::
    send,{Ctrl up}
    g_ControlRepeatDetected := false
    if (g_AbortSendEsc)
    {
        Return
    }
    current_time := A_TickCount
    time_elapsed := current_time - g_LastCtrlKeyDownTime
    if (time_elapsed <= 250)
    {
        SendInput {Esc}
    }
Return

~*^a::
    g_AbortSendEsc := true
Return
~*^b::
    g_AbortSendEsc := true
Return
~*^c::
    g_AbortSendEsc := true
Return
~*^d::
    g_AbortSendEsc := true
Return
~*^e::
    g_AbortSendEsc := true
Return
~*^f::
    g_AbortSendEsc := true
Return
~*^g::
    g_AbortSendEsc := true
Return
~*^h::
    g_AbortSendEsc := true
Return
~*^i::
    g_AbortSendEsc := true
Return
~*^j::
    g_AbortSendEsc := true
Return
~*^k::
    g_AbortSendEsc := true
Return
~*^l::
    g_AbortSendEsc := true
Return
~*^m::
    g_AbortSendEsc := true
Return
~*^n::
    g_AbortSendEsc := true
Return
~*^o::
    g_AbortSendEsc := true
Return
~*^p::
    g_AbortSendEsc := true
Return
~*^q::
    g_AbortSendEsc := true
Return
~*^r::
    g_AbortSendEsc := true
Return
~*^s::
    g_AbortSendEsc := true
Return
~*^t::
    g_AbortSendEsc := true
Return
~*^u::
    g_AbortSendEsc := true
Return
~*^v::
    g_AbortSendEsc := true
Return
~*^w::
    g_AbortSendEsc := true
Return
~*^x::
    g_AbortSendEsc := true
Return
~*^y::
    g_AbortSendEsc := true
Return
~*^z::
    g_AbortSendEsc := true
Return
~*^0::
    g_AbortSendEsc := true
Return
~*^1::
    g_AbortSendEsc := true
Return
~*^2::
    g_AbortSendEsc := true
Return
~*^3::
    g_AbortSendEsc := true
Return
~*^4::
    g_AbortSendEsc := true
Return
~*^5::
    g_AbortSendEsc := true
Return
~*^6::
    g_AbortSendEsc := true
Return
~*^7::
    g_AbortSendEsc := true
Return
~*^8::
    g_AbortSendEsc := true
Return
~*^9::
    g_AbortSendEsc := true
Return
~*^Left::
    g_AbortSendEsc := true
Return
~*^Right::
    g_AbortSendEsc := true
Return
~*^Up::
    g_AbortSendEsc := true
Return
~*^Down::
    g_AbortSendEsc := true
Return
