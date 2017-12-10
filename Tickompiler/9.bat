echo off
if not DEFINED IS_MINIMIZED set IS_MINIMIZED=1 && start "" /min "%~dpnx0" %* && exit
start http://tickompiler.readthedocs.io/en/latest/index.html
exit