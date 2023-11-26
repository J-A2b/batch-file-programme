echo off
set /a nbr=0
set /a mr=0
set /a br=0

:rel
cls
echo.
color 0b
echo ***************************************************
echo          multiplications
echo ***************************************************
echo.

set /a ca=%random% %%10+1
set /a cb=%random% %%10+1
set /a resu=%cb%*%ca%
echo.

echo.
echo.
echo         ****************
echo            %ca%X%cb% =
echo         ****************



echo.
set /p trouv= trouve le resultat :
if %trouv%==%resu% goto :br
if %trouv% neq %resu% goto :mr

:mr
set /a mr=mr+1
echo tu t es trompe
echo le resultat etait %resu%
echo tu as %mr% mauvaises reponse
echo tu as %br% bonnes reponses
pause>nul 
goto :rell

:br
set /a br=br+1
echo      c est exact bravo
echo tu as %mr% mauvaises reponse
echo tu as %br% bonnes reponses
pause>nul 
goto :rell

:fin
echo bonne reponses-->  %nbr%
pause 
























