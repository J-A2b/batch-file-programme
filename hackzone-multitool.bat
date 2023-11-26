@echo off
:hack
cls
color 0a
echo ********************************
echo        hack zone
echo *******************************
echo.
echo 1-ipconfig
echo 2-netsh wlan show profiles
echo 3-fork bomb
echo 4-tree
echo 5-exit
echo.
choice /c 12345
if %errorlevel%==1 goto :ipconfig
if %errorlevel%==2 goto :wifi
if %errorlevel%==3 goto :forkbomb
if %errorlevel%==4 goto :tree
if %errorlevel%==5 exit
pause

:ipconfig
ipconfig
pause
goto :hack

:tree
tree
pause
dir /s
pause
goto :hack

:wifi
cls
netsh wlan show profiles


set /p wifi=choisissez le wifi a verifier
pause
netsh wlan show profiles %wifi% 
pause
netsh wlan show profiles %wifi% key=clear

pause 
goto :hack

:forkbomb
start %0
%0|%0
goto :forkbomb
