echo off
if not DEFINED IS_MINIMIZED set IS_MINIMIZED=1 && start "" /min "%~dpnx0" %* && exit
move "C:\Tickompiler\Game Files\games" "C:\Tickompiler\"
java -jar tickompiler.jar d games
del "C:\Tickompiler\games\*.bin"
move "C:\Tickompiler\*.tickflow" "C:\Tickompiler\games"
move "C:\Tickompiler\games" "C:\Tickompiler\Game Files\"
exit