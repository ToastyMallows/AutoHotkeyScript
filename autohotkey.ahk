; make the capslock key behave as menu/AppsKey
CapsLock::AppsKey


; F1 to activate Sound Level control (Volume Mixer)
; $F1::Run "C:\Windows\System32\SndVol.exe"


; Make scroll lock open up the Mouse Control Panel window
; I use my mouse on my left hand at work and this is an easy
; way to bring up the config screen so that other people
; can use my computer or I can use it when remoted in.
$ScrollLock::Run "C:\Users\<username>\Desktop\mouse.lnk"


; Uncomment the following if you want nice quick shortcuts
; for your right hand when your left hand is on the mouse.

; For the FlexPro keyboard
; make ctrl+; function like ctrl+s
; >^`;::
; Send ^S
; return

; For the FlexPro
; make ctrl+/ function like ctrl+z (and alt+backspace) (undo)
; >^/::
; Send ^z
; return

; For the FlexPro
; make ctr+shift+/ function like ctrl+y (redo)
; >^>+/::
; Send ^y
; return


; The following allow Alt+Ctrl on the left and right side
; function as a Windows (Super) key when pressed together.
; All additional hotkeys will need to be programmed separately.


; Open explorer
>^>!e::
Send #e
return

<^<!e::
Send #e
return



; Lock workstation, #L and downLup don't work
>^>!L::
DllCall("LockWorkStation")
return

<^<!L::
DllCall("LockWorkStation")
return



; Minimize/Maximize everything (Show Desktop)
<^<!d::
Send {RWin down}d{RWin up}
return

>^>!d::
Send {RWin down}d{RWin up}
return



; Run dialog
<^<!r::
Send {RWin down}r{RWin up}
return

>^>!r::
Send {RWin down}r{RWin up}
return




; Move windows around
>^>!Left::
Send #{Left}
return

<^<!Left::
Send #{Left}
return

>^>!Right::
Send #{Right}
return

<^<!Right::
Send #{Right}
return

>^>!Up::
Send #{Up}
return

<^<!Up::
Send #{Up}
return

>^>!Down::
Send #{Down}
return

<^<!Down::
Send #{Down}
return
