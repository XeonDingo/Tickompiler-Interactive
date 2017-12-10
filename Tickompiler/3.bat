echo off
if not DEFINED IS_MINIMIZED set IS_MINIMIZED=1 && start "" /min "%~dpnx0" %* && exit
move "C:\Tickompiler\Game Files\*.bin" "C:\Tickompiler\"
if exist agb*.bin (
	java -jar tickompiler.jar d agb*.bin
	move "C:\Tickompiler\*.tickflow" "C:\Tickompiler\Game Files\"
	del "C:\Tickompiler\agb*.bin" 
)
if exist ctr*.bin (
	java -jar tickompiler.jar d ctr*.bin
	move "C:\Tickompiler\*.tickflow" "C:\Tickompiler\Game Files\"
	del "C:\Tickompiler\ctr*.bin" 
)
if exist ntr*.bin (
	java -jar tickompiler.jar d ntr*.bin
	move "C:\Tickompiler\*.tickflow" "C:\Tickompiler\Game Files\"
	del "C:\Tickompiler\ntr*.bin" 
)
if exist rvl*.bin (
	java -jar tickompiler.jar d rvl*.bin
	move "C:\Tickompiler\*.tickflow" "C:\Tickompiler\Game Files\"
	del "C:\Tickompiler\rvl*.bin" 
)
if exist remix*.bin (
	java -jar tickompiler.jar d remix*.bin
	move "C:\Tickompiler\*.tickflow" "C:\Tickompiler\Game Files\"
	del "C:\Tickompiler\remix*.bin" 
)
exit