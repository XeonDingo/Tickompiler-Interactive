#include <ButtonConstants.au3>
#include <Constants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#include <WinAPI.au3>

Local $hGUI = GUICreate("Tickompiler Interactive", 400, 450)
GUICtrlCreateLabel("Tickompiler Interactive", 145, 10)
GUICtrlCreateLabel("Less Supported GUI Version", 135, 27)
GUICtrlCreateLabel("Ver. 2.0.0 BETA", 3, 5)
Local $Extract = GUICtrlCreateButton("Extract Games", 130, 50, 150)
Local $Extractwtempo = GUICtrlCreateButton("Extract Games W/ Tempo files", 130, 80, 150)
Local $b2t = GUICtrlCreateButton(".bin to .tickflow", 130, 110, 150)
Local $ab2t = GUICtrlCreateButton("all .bin to .tickflow", 130, 140, 150)
Local $t2b = GUICtrlCreateButton(".tickflow to .bin", 130, 170, 150)
Local $at2b = GUICtrlCreateButton("all .tickflow to .bin", 130, 200, 150)
Local $c00 = GUICtrlCreateButton("Pack to c00.bin", 130, 230, 150)
Local $reopen = GUICtrlCreateButton("Reopen Game Files", 130, 260, 150)
Local $document = GUICtrlCreateButton("Tickflow Documentation", 130, 290, 150)
Local $lic = GUICtrlCreateButton("Tickompiler License", 130, 320, 150)
Local $clog = GUICtrlCreateButton("Changelog", 130, 350, 150)
Local $creds = GUICtrlCreateButton("Credits", 130, 380, 150)
Run ("8.bat")
GUISetState(@SW_SHOW, $hGUI)
Local $iMsg = 0
While 1
    $iMsg = GUIGetMsg()
    Switch $iMsg
        Case $Extract
            Run ("1.bat")
			Case $Extractwtempo
            Run ("2.bat")
			Case $b2t
            Run ("3.bat")
			Case $ab2t
            Run ("4.bat")
			Case $t2b
			Run ("5.bat")
			Case $at2b
			Run("6.bat")
			Case $c00
			run("7.bat")
			Case $reopen
			run("8.bat")
			Case $document
			Run ("9.bat")
			Case $lic
       			run("10.bat")
			Case $clog
			run("11.bat")
			Case $creds
			run("12.bat")
		Case $GUI_EVENT_CLOSE
            ExitLoop
    EndSwitch
WEnd

GUIDelete($hGUI)