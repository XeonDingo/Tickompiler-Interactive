echo off
if not DEFINED IS_MINIMIZED set IS_MINIMIZED=1 && start "" /min "%~dpnx0" %* && exit
move "C:\Tickompiler\Game Files\games" "C:\Tickompiler\"
java -jar tickompiler.jar p games base.bin C00.bin
move "C:\Tickompiler\c00.bin" "C:\Tickompiler\Game Files"
exit