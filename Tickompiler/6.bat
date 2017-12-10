echo off
if not DEFINED IS_MINIMIZED set IS_MINIMIZED=1 && start "" /min "%~dpnx0" %* && exit
move "C:\Tickompiler\Game Files\games" "C:\Tickompiler\"
java -jar tickompiler.jar c games
move "C:\Tickompiler\agb*bin" "C:\Tickompiler\Games\"
move "C:\Tickompiler\ctr*bin" "C:\Tickompiler\Games\"
move "C:\Tickompiler\ntr*bin" "C:\Tickompiler\Games\"
move "C:\Tickompiler\rvl*bin" "C:\Tickompiler\Games\"
move "C:\Tickompiler\remix*bin" "C:\Tickompiler\Games\"
del C:\Tickompiler\Games\*.tickflow
move "C:\Tickompiler\Games" "C:\Tickompiler\Game Files\"
exit