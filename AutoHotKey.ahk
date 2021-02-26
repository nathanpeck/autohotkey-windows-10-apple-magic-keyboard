;-----------------------------------------
; Mac keyboard to Windows Key Mappings
;=========================================

; --------------------------------------------------------------
; NOTES
; --------------------------------------------------------------
; ! = ALT
; ^ = CTRL
; + = SHIFT
; # = WIN
;
; Debug action snippet: MsgBox You pressed Control-A while Notepad is active.

#InstallKeybdHook
SetTitleMatchMode 2
SendMode Input

; --------------------------------------------------------------
; media/function keys all mapped to the right option key
; --------------------------------------------------------------

F7::SendInput {Media_Prev}
F8::SendInput {Media_Play_Pause}
F9::SendInput {Media_Next}
F10::SendInput {Volume_Mute}
F11::SendInput {Volume_Down}
F12::SendInput {Volume_Up}

; F13-15, standard windows mapping
F13::SendInput {PrintScreen}
F14::SendInput {ScrollLock}
F15::SendInput {Pause}

; -------------------------------
;  Cursor Movement
;
; cmd + arrows - start & end of lines, with shift for selecting text
; -------------------------------
#Left::SendInput {Home}
+#Up::SendInput ^+{Home}
+#Down::SendInput ^+{End}
#Right::SendInput {End}
+#Left::SendInput +{Home}
+#Right::SendInput +{End}
!Left::SendInput ^{Left}
!Right::SendInput ^{Right}
!+Left::SendInput ^+{Left}
!+Right::SendInput ^+{Right}

; -------------------------------
;  Extra text selection
;
; cmd + backspace to delete from cursor position until beginning of current line
; cmd + delete to delete from cursor position until end of current line
; -------------------------------
#Backspace::SendInput +{Home}{Backspace}
#Del::SendInput +{End}{Backspace}

; --------------------------------------------------------------
; OS X system shortcuts
; --------------------------------------------------------------



; Close windows (cmd + q to Alt + F4)
#q::Send !{F4}

; Minimize windows
#m::WinMinimize,a

; Screenshot (cmd + shift + 4 to Windows + Shift + S)
+#4::SendInput +#{s}

; Force quit (cmd + option + esc to ctrl + shift + esc)
!#Esc::SendInput ^+{Esc}

#s::SendInput ^{s}
#a::SendInput ^{a}
#c::SendInput ^{c}
#v::SendInput ^{v}
#x::SendInput ^{x}
#o::SendInput ^{o}
#f::SendInput ^{f}
#z::SendInput ^{z}
#y::SendInput ^{y}
#t::SendInput ^{t}
#w::SendInput ^{w}



; --------------------------------------------------------------
; Window & desktop management - none of this is working and i dont have the energy to deal with it
; --------------------------------------------------------------

; Mission Control - Remap F4 (mission control on the magic keyboard) to Win + Tab.
F4::SendInput #Tab

; Mission Control - Remap Ctrl + Up to Win + Tab.
;^Up ::SendInput #Tab

; Mission Control - Remap Ctrl + Down to leave Windows Task View.
;#IfWinActive, ahk_class MultitaskingViewFrame
;    ^Down::SendInput Esc
;#IfWinActive

; Spaces - Remap Ctrl + Left to Win + Ctrl + Left
;^{Left}::SendInput ^#{Left}

; Spaces - Remap Ctrl + Right to Win + Ctrl + Right
;^{Right}::SendInput ^#{Right}

; --------------------------------------------------------------
; OS X keyboard mappings for special chars
; --------------------------------------------------------------

; Map Alt + L to @
!l::SendInput {@}

; Map Alt + N to \
+!7::SendInput {\}

; Map Alt + N to ©
!g::SendInput {©}

; Map Alt + o to ø
!o::SendInput {ø}

; Map Alt + 5 to [
!5::SendInput {[}

; Map Alt + 6 to ]
!6::SendInput {]}

; Map Alt + E to €
!e::SendInput {€}

; Map Alt + - to –
!-::SendInput {–}

; Map Alt + 8 to {
!8::SendInput {{}

; Map Alt + 9 to }
!9::SendInput {}}

; Map Alt + - to ±
!+::SendInput {±}

; Map Alt + R to ®
!r::SendInput {®}

; Map Alt + N to |
!7::SendInput {|}

; Map Alt + W to ∑
!w::SendInput {∑}

; Map Alt + N to ~
!n::SendInput {~}

; Map Alt + 3 to #
!3::SendInput {#}



; --------------------------------------------------------------
; Custom mappings for special chars
; --------------------------------------------------------------

;#ö::SendInput {[} 
;#ä::SendInput {]} 

;^ö::SendInput {{} 
;^ä::SendInput {}} 


; --------------------------------------------------------------
; Application specific
; --------------------------------------------------------------

; Google Chrome
#IfWinActive, ahk_class Chrome_WidgetWin_1

; Show Web Developer Tools with cmd + alt + i
#!i::Send {F12}

; Show source code with cmd + alt + u
#!u::Send ^u

; On macOS, hitting escape while the force quit panel is open closes the panel. This replicates that behavior with the Task Manager
#IfWinActive, ahk_exe Taskmgr.exe
#Esc::SendInput !{F4}
