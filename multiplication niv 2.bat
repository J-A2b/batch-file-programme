@echo off
set /a nbr=0
set /a mr=0
set /a br=0

:rell
cls
echo.
color 0b
echo ***************************************************
echo          multiplications
echo ***************************************************
echo.

set /a caa=%random% %%20+1
set /a cbb=%random% %%20+1
set /a resuu=%cbb%*%caa%
echo.

echo.
echo.
echo         ****************
echo            %caa%X%cbb% =
echo         ****************



echo.
set /p trouvv= trouve le resultat :
if %trouvv%==%resuu% goto :brr
if %trouvv% neq %resuu% goto :mrr

:mrr
set /a mr=mr+1
echo tu t es trompe
echo le resultat etait %resuu%
echo.
echo.
echo tu as %mr% mauvaises reponse
echo tu as %br% bonnes reponses
pause>nul 
goto :rell

:brr
set /a br=br+1
echo      c est exact bravo
echo.
echo.
echo tu as %mr% mauvaises reponse
echo tu as %br% bonnes reponses
pause>nul
goto :rell