echo off
set theme=Dark 
color F0
if exist "C:\Tickompiler\code.bin" (
goto test2
) else (
cls
echo You must provide your own code.bin file for specific legal reasons.
echo Sorry for the inconvenience.
echo Pute code.bin into C:\Tickompiler
echo ~X.
pause
goto end
)
:test2
if exist "C:\Tickompiler\Game Files" (
%SystemRoot%\explorer.exe "C:\Tickompiler\Game Files"
goto repeat
) else (
mkdir "C:\Tickompiler\Game Files" 
echo "Important Folder Created!" 
pause
%SystemRoot%\explorer.exe "C:\Tickompiler\Game Files"
goto repeat
)
:repeat
cls
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~Tickompiler Interactive (1.2.5)~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo [                                                 Say 1 to extract games                                               ]
echo [                                          say 2 to convert *.bin to *.tickflow                                        ]
echo [                                          say 3 to convert *.tickflow to *.bin                                        ]
echo [                                           say 4 to put the games into C00.bin                                        ]
echo [                                         say 5 to convert all *.bin to *.tickflow                                     ]
echo [                                         say 6 to convert all *.tickflow to *.bin                                     ]
echo [                                        say 7 to extract all games with tempo files                                   ]
echo [                                                   say R for Credits                                                  ]
echo [                                                  say C for Changelog                                                 ]
echo [                                                say D for Documentation                                               ]
echo [                                              say L for Tickompiler License                                           ]
echo [                                          Say RE to Reopen the Game Files folder                                      ]
echo [                                             Say S to switch to %theme% theme                                           ]
echo [                                                      Say E to Exit                                                   ]
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
set /p answer=Input Selection: 
IF "%answer%"=="1" goto gameextract
IF "%answer%"=="4" goto c00end
IF "%answer%"=="2" goto bintik
IF "%answer%"=="3" goto tikbin
IF "%answer%"=="l" goto lic
IF "%answer%"=="L" goto lic
IF "%answer%"=="A=Debug" goto debug
IF "%answer%"=="e" goto exit
IF "%answer%"=="E" goto exit
IF "%answer%"=="5" goto convall
IF "%answer%"=="6" goto convallttb
IF "%answer%"=="r" goto credit
IF "%answer%"=="R" goto credit
IF "%answer%"=="C" goto changel
IF "%answer%"=="c" goto changel
IF "%answer%"=="D" goto docs
IF "%answer%"=="d" goto docs
IF "%answer%"=="7" goto extracttempo
IF "%answer%"=="S" goto Theme
IF "%answer%"=="s" goto Theme
IF "%answer%"=="FunkyFish" goto secret
IF "%answer%"=="RE" goto ReOpen
:gameextract
java -jar tickompiler.jar e code.bin games
IF exist "C:\Tickompiler\games" (
del "C:\Tickompiler\games\base.bin"
move "C:\Tickompiler\games" "C:\Tickompiler\Game Files"
) else (
echo FAILED
)
cls
echo Complete!
goto repeat
:c00end
move "C:\Tickompiler\Game Files\games" "C:\Tickompiler\"
java -jar tickompiler.jar p games base.bin C00.bin
move "C:\Tickompiler\c00.bin" "C:\Tickompiler\Game Files"
cls
echo Complete!
goto repeat
:bintik
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
cls
echo Complete!
goto repeat
:tikbin
move "C:\Tickompiler\Game Files\*.tickflow" "C:\Tickompiler\"
java -jar tickompiler.jar c *.tickflow
move "C:\Tickompiler\agb*bin" "C:\Tickompiler\Game Files\"
move "C:\Tickompiler\ctr*bin" "C:\Tickompiler\Game Files\"
move "C:\Tickompiler\ntr*bin" "C:\Tickompiler\Game Files\"
move "C:\Tickompiler\rvl*bin" "C:\Tickompiler\Game Files\"
move "C:\Tickompiler\remix*bin" "C:\Tickompiler\Game Files\"
move "C:\Tickompiler\Game Files\*.bin" "C:\Tickompiler\Game Files\games"
cls
echo Complete!
goto repeat
:lic
cls
echo MIT License
echo.
echo Copyright (c) 2017 
echo. 
echo Permission is hereby granted, free of charge, to any person obtaining a copy
echo of this software and associated documentation files (the "Software"), to deal
echo in the Software without restriction, including without limitation the rights
echo to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
echo furnished to do so, subject to the following conditions:
echo.
echo The above copyright notice and this permission notice shall be included in all
echo copies or substantial portions of the Software.
echo. 
echo THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
echo IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
echo FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
echo AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
echo LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
echo OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
echo SOFTWARE.
pause
goto repeat
:convall
cls
move "C:\Tickompiler\Game Files\games" "C:\Tickompiler\"
java -jar tickompiler.jar d games
del "C:\Tickompiler\games\*.bin"
move "C:\Tickompiler\*.tickflow" "C:\Tickompiler\games"
move "C:\Tickompiler\games" "C:\Tickompiler\Game Files\"
cls
echo Converted everything!
pause
goto repeat
:convallttb
move "C:\Tickompiler\Game Files\games" "C:\Tickompiler\"
java -jar tickompiler.jar c games
move "C:\Tickompiler\agb*bin" "C:\Tickompiler\Games\"
move "C:\Tickompiler\ctr*bin" "C:\Tickompiler\Games\"
move "C:\Tickompiler\ntr*bin" "C:\Tickompiler\Games\"
move "C:\Tickompiler\rvl*bin" "C:\Tickompiler\Games\"
move "C:\Tickompiler\remix*bin" "C:\Tickompiler\Games\"
del C:\Tickompiler\Games\*.tickflow
move "C:\Tickompiler\Games" "C:\Tickompiler\Game Files\"
cls
echo Converted everything!
pause
goto repeat
:debug
cls
echo Debug ON
pause 
echo on
goto repeat
:changel
cls
echo Ver. 1.2.5
echo 		  - Bug fixes
echo Ver. 1.2.4
echo 		  - Added the link to download Tickompiler online
echo 		  - Added the Tickompiler MIT License
echo 		  - Renamed from just "Tickompiler" to "Tickompier Interactive"
echo 		  - Added the ability to reopen the "Game Files" folder if it is accedentally closed
echo 		  - Bug Fixes
echo 		  - Removed Funky Fish.
echo Ver. 1.2.3
echo 		  - Slightly altered the code.bin error message
echo 		  - Added in theme switch option (Swap Between Dark and Lighth Themes!)
echo 		  - Secrets...
echo Ver. 1.2.2
echo 		  - Added the need for your own code.bin file
echo 		  - Added the ability to extract games with the tempo files
echo Ver. 1.2.1
echo 		  - Added Changelog
echo 		  - Added Credits
echo 		  - Added the ability to convert all game files into *.tickflow or *.bin
echo 		  - Added link to documentation
echo Ver. 1.2.0
echo 		  -Release 1
pause
goto repeat
:credit
cls
echo Credits
echo Creator of Tickompiler: Tiesoul and chrislo27
echo Creator of the RHMM Patch: Neobeo
echo Working editors on Tickflow Documentation: Tiesoul and Megaminerzero
echo Thanks to Nintendo for creating Rhythm Heaven Megamix
echo Tickompiler Download: https://github.com/SneakySpook/Tickompiler/releases
echo Tickompiler uses the MIT License
echo Tickompiler version: 1.6.6
echo *NOTE
echo If you would like your name changed in the credits mesage @Xeon#6218 on Discord
pause
goto repeat
:docs
cls
start http://tickompiler.readthedocs.io/en/latest/index.html
echo Documentation Website Opened!
pause
goto repeat
:extracttempo
java -jar tickompiler.jar e -t code.bin games
IF exist "C:\Tickompiler\games" (
del "C:\Tickompiler\games\base.bin"
move "C:\Tickompiler\games" "C:\Tickompiler\Game Files"
) else (
echo FAILED
)
cls
echo Complete!
goto repeat
:theme
cls
IF "%theme%"=="Dark" (
color 0F
echo Theme Changed!
set theme=Light
pause
goto repeat
) else (
color F0
echo Theme Changed!
set theme=Dark
pause
goto repeat
)
:secret
cls
echo What's This? A secret room? 
echo I wonder what the password could be...
echo.
set /p password=Password:
IF "%password%"=="ThemeCoCo" goto sectheme
IF "%password%"=="Portal" goto portal
IF NOT "%password%"=="ThemeCoCo" goto goto incorpass
:sectheme
cls
echo Sneaky Sneaky...
color 0A
set theme=Light
pause
goto repeat
:incorpass
cls
echo Incorrect!
pause
goto repeat
:ReOpen
cls
%SystemRoot%\explorer.exe "C:\Tickompiler\Game Files
cls
echo Game Files Folder Reopened!
pause 
goto repeat
:portal
cls
echo               .,-:;//;:=,
echo           . :H@@@MM@M#H/.,+%;,
echo        ,/X+ +M@@M@MM%=,-%HMMM@X/,
echo      -+@MM; $M@@MH+-,;XMMMM@MMMM@+-
echo     ;@M@@M- XM@X;. -+XXXXXHHH@M@M#@/.
echo   ,%MM@@MH ,@%=             .---=-=:=,.
echo   =@#@@@MX.,                -%HX$$%%%:;
echo  =-./@M@M$                   .;@MMMM@MM:
echo  X@/ -$MM/                    . +MM@@@M$
echo ,@M@H: :@:                    . =X#@@@@-
echo ,@@@MMX, .                    /H- ;@M@M=
echo .H@@@@M@+,                    %MM+..%#$.
echo  /MMMM@MMH/.                  XM@MH; =;
echo   /%+%$XHH@$=              , .H@@@@MX,
echo    .=--------.           -%H.,@@@@@MX,
echo    .%MM@@@HHHXX$$$%+- .:$MMX =M@@MM%.
echo      =XMMM@MM@MM#H;,-+HMM@M+ /MMMX=
echo        =%@M@M#@$-.=$@MM@@@M; %M%=
echo          ,:+$+-,/H#MMMMMMM@= =,
echo                =++%%%%+/:-.
echo Welcome back employee #445615
set /p password2=Enter Password: 
IF "%password2%"=="AAABCD" goto TryHard
IF NOT "%password2%"=="AAABCD" goto incorpass
pause
:TryHard
cls
echo You have made it to the level of nerd.
echo Congrats.
echo.
echo why were you doing this and not using the program for its inteded use?
echo.
echo I hope you feel acomplished.
echo.
echo Here is your reward:
timeout 3
echo you get a Portal theme!
color 03
set theme=dark 
pause
goto repeat
:exit
exit