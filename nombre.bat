:Restart
echo off
title mon jeu
cls
echo ******************************************************************************
echo                   trouver le nombre
echo ******************************************************************************
set /a Nba=%random% %%1000
set /a Nc=0
set /a a=15
set /a b=0

:Question
set /p Nb=votre nombre?
set /a Nc=Nc+1
set /a b=b+1

if %Nb% lss %Nba% goto :PP
if %Nb% gtr %Nba% goto :PG
if %Nb% == %Nba% goto :WIN
if %b% == %a% goto :lose

:PP
echo c est plus
goto :Question

:PG
echo c est moins
goto :Question

:WIN
echo vous avez gagne
echo nombre de tentative %nc%
pause
goto :Restart

:lose
echo tu as perdu 
pause 
goto :Restart