@echo off
:debut
set /a n=0
echo ce programme vous montre l importance d avoir un code solide
set /p mdp=choisir un code "chiffre"
goto :crack

:crack
set /a n=n+1
if %n%==%mdp% goto :win
echo %n%
goto :crack

:win 
echo votre code a ete crack code = %mdp%
pause
goto :debut