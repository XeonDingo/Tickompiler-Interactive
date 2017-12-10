echo off
if not DEFINED IS_MINIMIZED set IS_MINIMIZED=1 && start "" /min "%~dpnx0" %* && exit
java -jar tickompiler.jar e code.bin games
IF exist "C:\Tickompiler\games" (
del "C:\Tickompiler\games\base.bin"
move "C:\Tickompiler\games" "C:\Tickompiler\Game Files"
) else (
echo FAILED
)
exit