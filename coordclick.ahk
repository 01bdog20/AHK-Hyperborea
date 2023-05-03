; ------- AHK Hyperborea Scripts -------
; Backspace = Ends execution
; Ctrl + h = /hyperborea
; Ctrl + c = /achievements
; Ctrl + r = Respawns on death screen
; Ctrl + 0 = Auto-Initialize a run from hub to start (Based on preset sensitivity & monitor coordinates)
; Numpad 5 = Janky attack spin

; My info:
; In-game Sensitivity: 103%
; 3840, 2160 (bottom right corner)
; 0,0 (top left corner)

;####################################

^h:: 
hyperborea()
return

^c::
achievements()
return

^r:: 
respawn()
return

^x:: ;moves up
CoordMode, Mouse, Screen
MouseGetPos, x, y
MouseMove, x, 0, 0
return

^y:: ;moves middle
CoordMode, Mouse, Screen
MouseGetPos, x, y
MouseMove, x, 0, 0
MouseMove, 1, 52, 0
return

Numpad5:: 
attack_spin()
return

;####################################

hyperborea()
{
    SendInput, {t}
    Sleep 100
    SendInput, /hyperborea
    Sleep 100
    SendInput, {Enter}
    Sleep 5050
    return
}

achievements()
{
    SendInput, {t}
    Sleep 100
    SendInput, /achievements
    Sleep 100
    SendInput, {Enter}
    return
}

respawn()
{
    MouseMove, 1800, 1024, 0
    Sleep 1000
    SendInput, {LButton}
    return
}

attack()
{
    CoordMode, Mouse, Screen
    MouseGetPos, x, y
    MouseMove, x, 0, 0
    MouseMove, 1, 52, 0 
    SendInput, {LButton}
    Sleep 100
    return
}

attack_spin()
{
    Loop 24 {
        attack()
    }
    return
}


;####################################

;hyperborea start
^0::
{
    SendInput, {t}
    Sleep 100
    SendInput, /hub
    Sleep 100
    SendInput, {Enter}
    Sleep 5010
    SendInput, {w down}
    SendInput, {Ctrl down}
    Sleep 3400
    SendInput, {w up}
    SendInput, {Ctrl up}

    CoordMode, Mouse, Screen
    MouseGetPos, x, y
    Sleep 50
    MouseMove, x, 0, 0
    MouseMove, 1, 52, 0    
    Sleep 50
    MouseMove, x, 0, 0
    MouseMove, 1, 52, 0  
    Sleep 50
    MouseMove, x, 0, 0
    MouseMove, 1, 52, 0 
    Sleep 50
    MouseMove, x, 0, 0
    MouseMove, 1, 52, 0 
    Sleep 50
    MouseMove, x, 0, 0
    MouseMove, 1, 52, 0 
    
    SendInput, {w down}
    SendInput, {Ctrl down}
    Sleep 4000
    SendInput, {w up}
    SendInput, {Ctrl up}

    Sleep 20
    MouseMove, x, 0, 0
    MouseMove, 1, 52, 0 
    Sleep 50
    MouseMove, x, 0, 0
    MouseMove, 1, 52, 0 
    Sleep 50
    MouseMove, x, 0, 0
    MouseMove, 1, 52, 0 

    SendInput, {w down}
    SendInput, {Ctrl down}
    Sleep 800
    SendInput, {w up}
    SendInput, {Ctrl up}
    Sleep 20

    SendInput, {RButton down}
    Sleep 1000
    SendInput, {RButton up}

    ;long hallway
    SendInput, {w down}
    SendInput, {Ctrl down}
    SendInput, {Space down}
    Sleep 17000
    SendInput, {Space up}
    Sleep 1500
    SendInput, {w up}
    SendInput, {Ctrl up}
 
    
    CoordMode, Mouse, Screen
    MouseGetPos, x, y
    Sleep 50
    MouseMove, x, 0, 0
    MouseMove, 1, 52, 0    
    Sleep 50
    MouseMove, x, 0, 0
    MouseMove, 1, 52, 0  
    Sleep 50
    MouseMove, x, 0, 0
    MouseMove, 1, 52, 0 
    Sleep 50
    MouseMove, x, 0, 0
    MouseMove, 1, 52, 0 
    Sleep 50
    MouseMove, x, 0, 0
    MouseMove, 1, 52, 0 

    SendInput, {RButton down}   
    SendInput, {w down}  
    SendInput, {1}
    Sleep 2000
    SendInput, {RButton up}
    SendInput, {w up}  

    CoordMode, Mouse, Screen
    MouseGetPos, x, y
    MouseMove, x, 0, 0
    MouseMove, 1, 52, 0 
    Sleep 50
    MouseMove, x, 0, 0
    MouseMove, 1, 52, 0 
    Sleep 50
    MouseMove, x, 0, 0
    MouseMove, 1, 52, 0 
    Sleep 50
    MouseMove, x, 0, 0
    MouseMove, 1, 52, 0 
    Sleep 50
    MouseMove, x, 0, 0
    MouseMove, 1, 52, 0 
    Sleep 50
    MouseMove, x, 0, 0
    MouseMove, 1, 52, 0 
    Sleep 50
    MouseMove, x, 0, 0
    MouseMove, 1, 52, 0 
    Sleep 50
    MouseMove, x, 0, 0
    MouseMove, 1, 52, 0 

    Sleep 6000

    ;equip items
    SendInput, {RButton down} 
    Sleep 20
    SendInput, {4}
    Sleep 200
    SendInput, {3}
    Sleep 200
    SendInput, {2}
    Sleep 200
    SendInput, {1}

    Sleep 29400
    hyperborea()

    return
}


;####################################
;Press backspace to emergency end execution

Backspace::
Suspend
Pause,, 1
ExitApp
