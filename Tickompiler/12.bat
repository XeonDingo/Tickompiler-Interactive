echo off
if not DEFINED IS_MINIMIZED set IS_MINIMIZED=1 && start "" /min "%~dpnx0" %* && exit
%SystemRoot%\explorer.exe "C:\Tickompiler\Credits.txt" 
exit