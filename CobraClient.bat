@echo off
chcp 65001 >nul
title Cobra Client
Color B

 if exist "C:\CobraClient\CobraClientInstall\resources\CustomColor.txt" (
    goto BetaLock
 ) else (
    goto StartColor
 )

:StartColor
cd C:\CobraClient\CobraClientInstall\resources\
echo A CUSTOM COLOER IS SET! >>CustomColor.txt
:ColorsMenu
title Cobra Client - Colors Menu
cls
echo.
echo ░█████╗░░█████╗░██████╗░██████╗░░█████╗░
echo ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗
echo ██║░░╚═╝██║░░██║██████╦╝██████╔╝███████║
echo ██║░░██╗██║░░██║██╔══██╗██╔══██╗██╔══██║
echo ╚█████╔╝╚█████╔╝██████╦╝██║░░██║██║░░██║
echo ░╚════╝░░╚════╝░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝
echo ===========================================
echo Please pick the color of your Cobra Client.
echo More Options SOON!
echo ==========================================
echo (1) Red
echo ==========================================
echo (2) Blue
echo ==========================================
echo (3) Pink
echo ==========================================
echo (4) Lime
echo ==========================================
echo (5) White
echo ==========================================
echo (6) Defalt
echo ==========================================
choice /c 123456 /n
if %errorlevel% == 1 goto ColorRed
if %errorlevel% == 2 goto ColorBlue
if %errorlevel% == 3 goto ColorPink
if %errorlevel% == 4 goto ColorLime
if %errorlevel% == 5 goto ColorWhite
if %errorlevel% == 6 goto ColorDefalt
pause

:ColorRed
color 04
goto Main
:ColorBlue
color 09
goto Main
:ColorPink
color 0D
goto Main
:ColorLime
color 0A
goto Main
:ColorWhite
color 0F
goto Main
:ColorDefalt
color B 
goto Main

:DevLock
title Cobra Client - Dev Locked
cls
echo.
echo ░█████╗░░█████╗░██████╗░██████╗░░█████╗░
echo ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗
echo ██║░░╚═╝██║░░██║██████╦╝██████╔╝███████║
echo ██║░░██╗██║░░██║██╔══██╗██╔══██╗██╔══██║
echo ╚█████╔╝╚█████╔╝██████╦╝██║░░██║██║░░██║
echo ░╚════╝░░╚════╝░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝
echo ==========================================
set /p DevPass=Enter Dev ID:
If %DevPass% == CobraDev5 goto DevMain
echo Incorrect passcode! Press any key to try again.
pause >nul
Goto Main

:DevMain
title Cobra Client - Dev Menu
cls
echo.
echo ░█████╗░░█████╗░██████╗░██████╗░░█████╗░
echo ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗
echo ██║░░╚═╝██║░░██║██████╦╝██████╔╝███████║
echo ██║░░██╗██║░░██║██╔══██╗██╔══██╗██╔══██║
echo ╚█████╔╝╚█████╔╝██████╦╝██║░░██║██║░░██║
echo ░╚════╝░░╚════╝░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝
echo ==========================================
echo User : %USERNAME
echo Date & Time : %date% @ %time%
echo Version - 1.0 - In DEV
echo Press O to open Options
echo ==========================================
echo More to be coming soon in this menu.
echo Please check back later.
pause
goto Main

:Main
title Cobra Client
cls
echo.
echo ░█████╗░░█████╗░██████╗░██████╗░░█████╗░
echo ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗
echo ██║░░╚═╝██║░░██║██████╦╝██████╔╝███████║
echo ██║░░██╗██║░░██║██╔══██╗██╔══██╗██╔══██║
echo ╚█████╔╝╚█████╔╝██████╦╝██║░░██║██║░░██║
echo ░╚════╝░░╚════╝░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝
echo ==========================================
echo User : %USERNAME%
echo Date : %date%
echo Version - 1.0
echo Press D to open DEV MENU
echo Press O to open Options
echo ==========================================
echo (1) Drivers
echo ==========================================
echo (2) Diskpart
echo ==========================================
echo (3) Windows Tools
echo ==========================================
echo (4) Ip Tools
echo ==========================================
echo (5) Logs
echo ==========================================
echo (6) Install Tron -Malware Remover-
echo ==========================================
echo (7) Shutdown Options
echo ==========================================
choice /c 1234567do /n
if %errorlevel% == 1 goto DriverQuery
if %errorlevel% == 2 goto DiskPart
if %errorlevel% == 3 goto WinTools
if %errorlevel% == 4 goto iptools
if %errorlevel% == 5 goto Logs
if %errorlevel% == 6 goto RunTron
if %errorlevel% == 7 goto ShutDownMenu
if %errorlevel% == 8 goto DevLock
if %errorlevel% == 9 goto Options

:iptools
title Cobra Client - IP Tools
cls
echo.
echo ░█████╗░░█████╗░██████╗░██████╗░░█████╗░
echo ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗
echo ██║░░╚═╝██║░░██║██████╦╝██████╔╝███████║
echo ██║░░██╗██║░░██║██╔══██╗██╔══██╗██╔══██║
echo ╚█████╔╝╚█████╔╝██████╦╝██║░░██║██║░░██║
echo ░╚════╝░░╚════╝░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝
echo ==========================================
echo Ip Tools
echo ==========================================
echo (1) Ip Lookup
echo ==========================================
echo (2) IP Config
echo ==========================================
echo (3) Reset Priv IP (LAN)
echo ==========================================
echo (4) Flush DNS
echo ==========================================
echo (5) Show DNS Table
echo ==========================================
echo (6) Exit
echo ==========================================
choice /c 123456 /n
if %errorlevel% == 1 goto ipLookup
if %errorlevel% == 2 goto ipconf
if %errorlevel% == 3 goto Renew
if %errorlevel% == 4 goto DNSFlush
if %errorlevel% == 5 goto DNSTable
if %errorlevel% == 6 goto Main

:ipLookup:
title Cobra Client - IP Lookup
cls
setlocal ENABLEDELAYEDEXPANSION
set webclient=webclient
if exist "%temp%\%webclient%.vbs" del "%temp%\%webclient%.vbs" /f /q /s >nul
if exist "%temp%\response.txt" del "%temp%\response.txt" /f /q /s >nul
:menu
cls
echo.
echo ░█████╗░░█████╗░██████╗░██████╗░░█████╗░
echo ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗
echo ██║░░╚═╝██║░░██║██████╦╝██████╔╝███████║
echo ██║░░██╗██║░░██║██╔══██╗██╔══██╗██╔══██║
echo ╚█████╔╝╚█████╔╝██████╦╝██║░░██║██║░░██║
echo ░╚════╝░░╚════╝░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝
echo ==========================================
echo            Enter IP Address. 
echo.
set ip=127.0.0.1
set /p ip=IP: 
echo sUrl = "http://ipinfo.io/%ip%/json" > %temp%\%webclient%.vbs
:localip
echo set oHTTP = CreateObject("MSXML2.ServerXMLHTTP.6.0") >> %temp%\%webclient%.vbs
echo oHTTP.open "GET", sUrl,false >> %temp%\%webclient%.vbs
echo oHTTP.setRequestHeader "Content-Type", "application/x-www-form-urlencoded" >> %temp%\%webclient%.vbs
echo oHTTP.setRequestHeader "Content-Length", Len(sRequest) >> %temp%\%webclient%.vbs
echo oHTTP.send sRequest >> %temp%\%webclient%.vbs
echo HTTPGET = oHTTP.responseText >> %temp%\%webclient%.vbs
echo strDirectory = "%temp%\response.txt" >> %temp%\%webclient%.vbs
echo set objFSO = CreateObject("Scripting.FileSystemObject") >> %temp%\%webclient%.vbs
echo set objFile = objFSO.CreateTextFile(strDirectory) >> %temp%\%webclient%.vbs
echo objFile.Write(HTTPGET) >> %temp%\%webclient%.vbs
echo objFile.Close >> %temp%\%webclient%.vbs
echo Wscript.Quit >> %temp%\%webclient%.vbs
start %temp%\%webclient%.vbs
set /a requests=0
echo.
rem echo Waiting for API response. . .
echo  Looking up IP Address. . .
:checkresponseexists
if %requests% gtr 7 goto failed
IF EXIST "%temp%\response.txt" (
goto response_exist
) ELSE (
ping 127.0.0.1 -n 2 -w 1000 >nul
goto checkresponseexists
)
color 4
:failed
taskkill /f /im wscript.exe >nul
del "%temp%\%webclient%.vbs" /f /q /s >nul
echo.
echo Did not receive a response from the API.
echo.
pause
goto menu
:response_exist
echo.
echo   IP Results Listed Below
set /a num=(%Random%%%9)+1
for /f "delims= 	" %%i in ('findstr /i "," %temp%\response.txt') do (
        set data=%%i
        set data=!data:,=!
	set data=!data:""=Not Listed!
	set data=!data:"=!
	set data=!data:ip:=IP:		!
	set data=!data:hostname:=Hostname:	!
	set data=!data:org:=ISP:		!
	set data=!data:city:=City:		!
	set data=!data:region:=State:	!
	set data=!data:country:=Country:	!
	set data=!data:postal:=Postal Code:	!
	set data=!data:loc:=Location:	!
	set data=!data:timezone:=Timezone:	!
        echo !data!
)
echo.
del "%temp%\%webclient%.vbs" /f /q /s >nul
del "%temp%\response.txt" /f /q /s >nul
pause
goto Main

:ipconf
title Cobra Client - IP Config
cls
echo.
echo ░█████╗░░█████╗░██████╗░██████╗░░█████╗░
echo ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗
echo ██║░░╚═╝██║░░██║██████╦╝██████╔╝███████║
echo ██║░░██╗██║░░██║██╔══██╗██╔══██╗██╔══██║
echo ╚█████╔╝╚█████╔╝██████╦╝██║░░██║██║░░██║
echo ░╚════╝░░╚════╝░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝
echo ==========================================
echo (1) Breif Summary
echo ==========================================
echo (2) Full Summary
echo ==========================================
echo (3) Exit
echo ==========================================
choice /c 123 /n
if %errorlevel% == 1 goto BreifSum
if %errorlevel% == 2 goto FullSum
if %errorlevel% == 3 goto Main

:BreifSum
title Cobra Client - IP Config _ Breif Summary
cls
echo.
echo ░█████╗░░█████╗░██████╗░██████╗░░█████╗░
echo ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗
echo ██║░░╚═╝██║░░██║██████╦╝██████╔╝███████║
echo ██║░░██╗██║░░██║██╔══██╗██╔══██╗██╔══██║
echo ╚█████╔╝╚█████╔╝██████╦╝██║░░██║██║░░██║
echo ░╚════╝░░╚════╝░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝
echo ==========================================
echo.
ipconfig
echo ==========================================
pause
goto Main

:FullSum
title Cobra Client - IP Config _ Full Summary
cls
echo.
echo ░█████╗░░█████╗░██████╗░██████╗░░█████╗░
echo ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗
echo ██║░░╚═╝██║░░██║██████╦╝██████╔╝███████║
echo ██║░░██╗██║░░██║██╔══██╗██╔══██╗██╔══██║
echo ╚█████╔╝╚█████╔╝██████╦╝██║░░██║██║░░██║
echo ░╚════╝░░╚════╝░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝
echo ==========================================
echo.
ipconfig /all
echo ==========================================
pause
goto Main

:Renew
title Cobra Client - Renew IP
cls
echo.
echo ░█████╗░░█████╗░██████╗░██████╗░░█████╗░
echo ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗
echo ██║░░╚═╝██║░░██║██████╦╝██████╔╝███████║
echo ██║░░██╗██║░░██║██╔══██╗██╔══██╗██╔══██║
echo ╚█████╔╝╚█████╔╝██████╦╝██║░░██║██║░░██║
echo ░╚════╝░░╚════╝░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝
echo ==========================================
echo Are you sure you would like to renew your
echo local LAN IP addressed to your PC with a
echo new IP? 
echo This process will take awhile.  Y/N
echo ==========================================
choice /c yn /n
if %errorlevel% == 1 goto RenewStep2
if %errorlevel% == 2 goto Main

:RenewStep2
echo Starting on IPv4 renewal...
ipconfig /release >nul
ipconfig /renew >nul
echo IPv4 just renewed
echo Now starting on IPv6 renewal...
ipconfig /release6 >nul
ipconfig /renew6 >nul
echo IPv6 just renewed
echo Now exiting...
timeout 3 >nul
goto Main

:DNSFlush
title Cobra Client - DNS Flush
cls
echo.
echo ░█████╗░░█████╗░██████╗░██████╗░░█████╗░
echo ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗
echo ██║░░╚═╝██║░░██║██████╦╝██████╔╝███████║
echo ██║░░██╗██║░░██║██╔══██╗██╔══██╗██╔══██║
echo ╚█████╔╝╚█████╔╝██████╦╝██║░░██║██║░░██║
echo ░╚════╝░░╚════╝░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝
echo ==========================================
echo Are you sure that you would like to flush
echo your PC's whole DNS settings?  Y/N
echo ==========================================
choice /c yn /n
if %errorlevel% == 1 goto DNSFlushStep2
if %errorlevel% == 2 goto Main

:DNSFlushStep2
ipconfig /flushdns >nul
echo Step 1 of 2 flushing DNS complete...
echo Moving onto final part of DNS flush...
ipconfig /registerdns >nul
echo Step 2 of 2 flushing DNS complete...
echo Now exiting...
timeout 3 >nul
goto Main

:DNSTable
title Cobra Client - DNS Table
cls
echo.
echo ░█████╗░░█████╗░██████╗░██████╗░░█████╗░
echo ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗
echo ██║░░╚═╝██║░░██║██████╦╝██████╔╝███████║
echo ██║░░██╗██║░░██║██╔══██╗██╔══██╗██╔══██║
echo ╚█████╔╝╚█████╔╝██████╦╝██║░░██║██║░░██║
echo ░╚════╝░░╚════╝░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝
echo ==========================================
echo.
ipconfig /displaydns
echo ==========================================
pause
goto Main

:RunTron
title Cobra Client - Tron
cls
echo.
echo ░█████╗░░█████╗░██████╗░██████╗░░█████╗░
echo ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗
echo ██║░░╚═╝██║░░██║██████╦╝██████╔╝███████║
echo ██║░░██╗██║░░██║██╔══██╗██╔══██╗██╔══██║
echo ╚█████╔╝╚█████╔╝██████╦╝██║░░██║██║░░██║
echo ░╚════╝░░╚════╝░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝
echo ==========================================
echo Are your sure that you want to install Tron
echo on this device?  Y/N
echo ==========================================
choice /c yn /n
if %errorlevel% == 1 goto tron
if %errorlevel% == 2 goto Main  

:tron
title Cobra Client - Installing Tron
cls
echo.
echo ░█████╗░░█████╗░██████╗░██████╗░░█████╗░
echo ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗
echo ██║░░╚═╝██║░░██║██████╦╝██████╔╝███████║
echo ██║░░██╗██║░░██║██╔══██╗██╔══██╗██╔══██║
echo ╚█████╔╝╚█████╔╝██████╦╝██║░░██║██║░░██║
echo ░╚════╝░░╚════╝░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝
echo ==========================================
echo Installing Tron
echo ==========================================
start https://bmrf.org/repos/tron/
goto Main

:ShutDownMenu
title Cobra Client - Shutdown Menu
cls
echo.
echo ░█████╗░░█████╗░██████╗░██████╗░░█████╗░
echo ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗
echo ██║░░╚═╝██║░░██║██████╦╝██████╔╝███████║
echo ██║░░██╗██║░░██║██╔══██╗██╔══██╗██╔══██║
echo ╚█████╔╝╚█████╔╝██████╦╝██║░░██║██║░░██║
echo ░╚════╝░░╚════╝░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝
echo ==========================================
echo What type of SHUTDOWN do you want?
echo ==========================================
echo (1) Shutdown
echo ==========================================
echo (2) Restart
echo ==========================================
echo (3) Sleep
echo ==========================================
echo (4) Hibernate
echo ==========================================
echo (5) Exit
echo ==========================================
choice /c 12345 /n
if %errorlevel% == 1 goto Shutdown
if %errorlevel% == 2 goto Restart
if %errorlevel% == 3 goto Sleep
if %errorlevel% == 4 goto Hibernate
if %errorlevel% == 5 goto Main

:Shutdown
shutdown.exe /s /t 05
:Restart
shutdown.exe /r /t 05
:Sleep
rundll32.exe powrprof.dll, SetSuspendState Sleep
:Hibernate
shutdown.exe /h

:Temp
title Cobra Client - Error
cls
echo.
echo ░█████╗░░█████╗░██████╗░██████╗░░█████╗░
echo ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗
echo ██║░░╚═╝██║░░██║██████╦╝██████╔╝███████║
echo ██║░░██╗██║░░██║██╔══██╗██╔══██╗██╔══██║
echo ╚█████╔╝╚█████╔╝██████╦╝██║░░██║██║░░██║
echo ░╚════╝░░╚════╝░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝
echo ==========================================
echo There is nothing here idiot what did you 
echo think was gonna happen.
echo ==========================================
pause
goto Main

:Logs
title Cobra Client - Note Logs
cls
echo.
echo ░█████╗░░█████╗░██████╗░██████╗░░█████╗░
echo ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗
echo ██║░░╚═╝██║░░██║██████╦╝██████╔╝███████║
echo ██║░░██╗██║░░██║██╔══██╗██╔══██╗██╔══██║
echo ╚█████╔╝╚█████╔╝██████╦╝██║░░██║██║░░██║
echo ░╚════╝░░╚════╝░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝
echo ==========================================
echo Note Logs
echo ==========================================
echo (1) Add Log
echo ==========================================
echo (2) Remove Log
echo ==========================================
echo (3) View Log
echo ==========================================
echo (4) Edit Log
echo ==========================================
choice /c 1234 /n
if %errorlevel% == 1 goto LAdd
if %errorlevel% == 2 goto LRemove
if %errorlevel% == 3 goto LView
if %errorlevel% == 4 goto LEdit

:LAdd
title Cobra Client - Add Log
cls
echo.
echo ░█████╗░░█████╗░██████╗░██████╗░░█████╗░
echo ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗
echo ██║░░╚═╝██║░░██║██████╦╝██████╔╝███████║
echo ██║░░██╗██║░░██║██╔══██╗██╔══██╗██╔══██║
echo ╚█████╔╝╚█████╔╝██████╦╝██║░░██║██║░░██║
echo ░╚════╝░░╚════╝░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝
echo ==========================================
echo Add Logs
echo ==========================================
set /p LogName=Name of log: 
echo ==========================================
set /p LogCont=Content in log: 
echo ==========================================
echo Adding to log...
goto LogContentCheck

:LogContinueAdd
cd C:\CobraFiles\Notes
echo %LogCont%>> "%LogName%.CobraClient"
echo Added to log!
pause
goto Main

:LRemove
title Cobra Client - Remove Log
cls
echo.
echo ░█████╗░░█████╗░██████╗░██████╗░░█████╗░
echo ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗
echo ██║░░╚═╝██║░░██║██████╦╝██████╔╝███████║
echo ██║░░██╗██║░░██║██╔══██╗██╔══██╗██╔══██║
echo ╚█████╔╝╚█████╔╝██████╦╝██║░░██║██║░░██║
echo ░╚════╝░░╚════╝░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝
echo ==========================================
echo List Of All Logs
echo ==========================================
cd C:\CobraFiles\Notes
dir /b /a-d 
echo ==========================================
echo The Cobra Client Logs are CASE SENSITIVE
echo Please enter in all Charachters.
echo ==========================================
set /p RemoveLog=Which log would you like to delete? 

cd C:\CobraFiles\Notes
del /Q /F "%RemoveLog%.CobraClient"
echo Removed Log.
pause
goto Main

:LView
title Cobra Cobra - View Log
cls
echo.
echo ░█████╗░░█████╗░██████╗░██████╗░░█████╗░
echo ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗
echo ██║░░╚═╝██║░░██║██████╦╝██████╔╝███████║
echo ██║░░██╗██║░░██║██╔══██╗██╔══██╗██╔══██║
echo ╚█████╔╝╚█████╔╝██████╦╝██║░░██║██║░░██║
echo ░╚════╝░░╚════╝░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝
echo ==========================================
echo List Of All Logs
echo ==========================================
cd C:\CobraFiles\Notes
dir /b /a-d 
echo ==========================================
echo The Cobra Client Logs are CASE SENSITIVE
echo Please enter in all Charachters.
echo ==========================================
set /p ViewLog=Which log would you like view? 

cd C:\CobraFiles
title Cobra Client - Now Viewing %ViewLog%.
cls
echo.
echo ░█████╗░░█████╗░██████╗░██████╗░░█████╗░
echo ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗
echo ██║░░╚═╝██║░░██║██████╦╝██████╔╝███████║
echo ██║░░██╗██║░░██║██╔══██╗██╔══██╗██╔══██║
echo ╚█████╔╝╚█████╔╝██████╦╝██║░░██║██║░░██║
echo ░╚════╝░░╚════╝░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝
echo ==========================================
type "C:\CobraFiles\Notes\%ViewLog%.CobraClient"
echo ==========================================
echo (1) Edit Log
echo ==========================================
echo (2) Log Add
echo ==========================================
echo (3) Log Remove
echo ==========================================
echo (4) Export Log
echo ==========================================
echo (5) Exit
echo ==========================================
choice /c 12345 /n
if %errorlevel% == 1 goto EditLog
if %errorlevel% == 2 goto LAdd
if %errorlevel% == 3 goto ViewRemove
if %errorlevel% == 4 goto LogExport
if %errorlevel% == 5 goto Main

:EditLog
cd C:\CobraFiles\Notes
start "C:\CobraFiles\Notes\%ViewLog%"
goto Main

:ViewRemove
cd C:\CobraFiles\Notes
del "C:\CobraFiles\Notes\%ViewLog%.CobraClient"
echo Log Removed.
pause
goto Main

:LEdit
title Cobra Client - Edit Log
cls
echo.
echo ░█████╗░░█████╗░██████╗░██████╗░░█████╗░
echo ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗
echo ██║░░╚═╝██║░░██║██████╦╝██████╔╝███████║
echo ██║░░██╗██║░░██║██╔══██╗██╔══██╗██╔══██║
echo ╚█████╔╝╚█████╔╝██████╦╝██║░░██║██║░░██║
echo ░╚════╝░░╚════╝░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝
echo ==========================================
echo List Of All Logs
echo ==========================================
cd C:\CobraFiles\Notes
dir /b /a-d 
echo ==========================================
echo The Cobra Client Logs are CASE SENSITIVE
echo Please enter in all Charachters.
echo ==========================================
set /p EditLog=Which log would you like to edit? 

cd C:\CobraFiles\Notes
start "C:\CobraFiles\Notes\%EditLog%.CobraClient"
goto Main

:LogExport
title Cobra Client - Export Log
cls
echo.
echo ░█████╗░░█████╗░██████╗░██████╗░░█████╗░
echo ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗
echo ██║░░╚═╝██║░░██║██████╦╝██████╔╝███████║
echo ██║░░██╗██║░░██║██╔══██╗██╔══██╗██╔══██║
echo ╚█████╔╝╚█████╔╝██████╦╝██║░░██║██║░░██║
echo ░╚════╝░░╚════╝░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝
echo ==========================================
echo List Of All Logs
echo ==========================================
cd C:\CobraFiles\Notes
dir /b /a-d
echo ==========================================
echo The Cobra Client Logs are CASE SENSITIVE
echo Please enter in all Charachters.
echo ==========================================
set /p ExportLog=Which log would you like to export? 

cd C:\CobraFiles\Notes
echo ==========================================
echo Where would you like to export the Log to?
echo.
echo (1) Desktop
echo.
echo (2) Downloads
echo.
echo (3) Documents
echo.
echo ==========================================
choice /c 123 /n
if %errorlevel% == 1 goto ExportDesktopCheck
if %errorlevel% == 2 goto ExportDownloadsCheck
if %errorlevel% == 3 goto ExportDocumentsCheck



:ExportDesktopCheck
if exist "C:\Users\%USERNAME%\OneDrive\Desktop" (
	goto DesktopONEExist
) else (
	goto DesktopExist
)

:DesktopONEExist
set /p rename=What would you like to rename the log to?
cd C:\CobraFiles\Notes
move /Y "C:\CobraFiles\Notes\%ExportLog%.CobraClient" "C:\Users\%USERNAME%\OneDrive\Desktop"
rename "C:\Users\%USERNAME%\OneDrive\Desktop\%Exportlog%.CobraClient" "%rename%.txt"
cls
echo %rename% has been put into C:\Users\%USERNAME%\OneDrive\Desktop\
pause
goto Main

:DesktopExist
set /p rename=What would you like to rename the log to?
cd C:\CobraFiles\Notes
move /Y "C:\CobraFiles\Notes\%ExportLog%.CobraClient" "C:\Users\%USERNAME%\Desktop"
rename "C:\Users\%USERNAME%\Desktop\%Exportlog%.CobraClient" "%rename%.txt"
cls
echo %rename% has been put into C:\Users\%USERNAME%\Desktop\
pause
goto Main



:ExportDownloadsCheck
if exist "C:\Users\%USERNAME%\OneDrive\Downloads" (
	goto DownloadsONEExist
) else (
	goto DownloadsExist
)

:DownloadsONEExist
set /p rename=What would you like to rename the log to?
cd C:\CobraFiles\Notes
move /Y "C:\CobraFiles\Notes\%ExportLog%.CobraClient" "C:\Users\%USERNAME%\OneDrive\Downloads"
rename "C:\Users\%USERNAME%\OneDrive\Downloads\%Exportlog%.CobraClient" "%rename%.txt"
cls
echo %rename% has been put into C:\Users\%USERNAME%\OneDrive\Downloads\
pause
goto Main

:DownloadsExist
set /p rename=What would you like to rename the log to?
cd C:\CobraFiles\Notes
move /Y "C:\CobraFiles\Notes\%ExportLog%.CobraClient" "C:\Users\%USERNAME%\Downloads"
rename "C:\Users\%USERNAME%\Downloads\%Exportlog%.CobraClient" "%rename%.txt"
cls
echo %rename% has been put into C:\Users\%USERNAME%\Downloads\
pause
goto Main



:ExportDocumentsCheck
if exist "C:\Users\%USERNAME%\OneDrive\Documents" (
	goto DocumentsONEExist
) else (
	goto DocumentsExist
)

:DocumentsONEExist
set /p rename=What would you like to rename the log to?
cd C:\CobraFiles\Notes
move /Y "C:\CobraFiles\Notes\%ExportLog%.CobraClient" "C:\Users\%USERNAME%\OneDrive\Documents"
rename "C:\Users\%USERNAME%\OneDrive\Documents\%Exportlog%.CobraClient" "%rename%.txt"
cls
echo %rename% has been put into C:\Users\%USERNAME%\OneDrive\Documents\
pause
goto Main

:DocumentsExist
set /p rename=What would you like to rename the log to?
cd C:\CobraFiles\Notes
move /Y "C:\CobraFiles\Notes\%ExportLog%.CobraClient" "C:\Users\%USERNAME%\Documents"
rename "C:\Users\%USERNAME%\Documents\%Exportlog%.CobraClient" "%rename%.txt"
cls
echo %rename% has been put into C:\Users\%USERNAME%\Documents\
pause
goto Main

:LogContentCheck

if exist "C:/CobraFiles" (
	goto CheckFilesForNote
) else (
	goto CobraFilesMakeForAdd
)

:CobraFilesMakeForAdd

cd C:\
mkdir CobraFiles
attrib +H C:\CobraFiles >nul
attrib +R C:\CobraFiles >nul
goto LogContentCheck

:CheckFilesForNote

if exist "C:\CobraFiles\Notes" (
	goto LogContinueAdd
) else (
	goto MakeFilesForNote
)

:MakeFilesForNote

cd C:\CobraFiles
mkdir Notes
attrib +H C:\CobraFiles\Notes >nul
attrib +R C:\CobraFiles\Notes >nul
goto CheckFilesForNote

:Options
title Cobra Client - Options
cls
echo.
echo ░█████╗░░█████╗░██████╗░██████╗░░█████╗░
echo ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗
echo ██║░░╚═╝██║░░██║██████╦╝██████╔╝███████║
echo ██║░░██╗██║░░██║██╔══██╗██╔══██╗██╔══██║
echo ╚█████╔╝╚█████╔╝██████╦╝██║░░██║██║░░██║
echo ░╚════╝░░╚════╝░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝
echo ==========================================
echo Options Menu
echo ==========================================
echo (1) Headless Mode ( Broken )
echo ==========================================
echo (2) Colors
echo ==========================================
echo (3) Back
echo ==========================================
choice /c 1234 /n
if %errorlevel% == 1 goto HeadlessMenu
if %errorlevel% == 2 goto ColorsMenu
if %errorlevel% == 3 goto OpenOnBootMenu
if %errorlevel% == 4 goto Main

:HeadlessMenu
title Cobra Client - Error
cls
echo.
echo ░█████╗░░█████╗░██████╗░██████╗░░█████╗░
echo ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗
echo ██║░░╚═╝██║░░██║██████╦╝██████╔╝███████║
echo ██║░░██╗██║░░██║██╔══██╗██╔══██╗██╔══██║
echo ╚█████╔╝╚█████╔╝██████╦╝██║░░██║██║░░██║
echo ░╚════╝░░╚════╝░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝
echo ==========================================
echo Headless Menu is currently not working,
echo please check in on the next Cobra Client
echo update, thank you for your time and patience.
pause
goto Main

:RealHeadlessMenu
title Cobra Client - Headless Menu
cls
echo.
echo ░█████╗░░█████╗░██████╗░██████╗░░█████╗░
echo ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗
echo ██║░░╚═╝██║░░██║██████╦╝██████╔╝███████║
echo ██║░░██╗██║░░██║██╔══██╗██╔══██╗██╔══██║
echo ╚█████╔╝╚█████╔╝██████╦╝██║░░██║██║░░██║
echo ░╚════╝░░╚════╝░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝
echo ==========================================
echo Are you sure that you would like to turn
echo on headless mode for Cobra Client? This
echo will turn off any other programs that are
echo running in the background and only run
echo Cobra Client. Are you s urew that you would
echo like to proceeed?  Y/N?
echo ===========================================
choice /c yn /n

if %errorlevel% == 1 goto  HeadlessContinue
if %errorlevel% == 1 goto Main

:HeadlessContinue
cls

if exist "C:\CobraFiles" (
	goto MakeHeadlessFiles
) else (
	goto HeadlessMakeCobra
)

:HeadlessMakeCobra

cd C:\
mkdir CobraFiles
goto HeadlessContinue

:MakeHeadlessFiles

if exist "C:\CobraFiles\Headless" (
	goto HeadlessFilesContinue
) else (
	goto HeadlessFilesMake
)

:HeadlessFilesMake
cd C:\CobraFiles
mkdir Headless
cd C:\CobraFiles\Headless
echo @echo off >>headless.bat
echo chcp 65001 >nul >>headless.bat
echo title Headless Mode >>headless.bat
echo TASKKILL /F /IM explorer.exe >>headless.bat
echo cls >>headless.bat
echo echo. >>headless.bat
echo echo Please do not exit out of this menu, if you do then you will not be able to exit out of headless mode and will be forced to force restart your PC. Press any key to turn off headless mode >>headless.bat
echo pause >nul >>headless.bat
echo start explorer.exe >>headless.bat
echo exit >>headless.bat

powershell -Command "Start-Process cmd -Verb RunAs"

echo set x=createobject("wscript.shell") >>headless.vbs
echo wscript.sleep 1000  >>headless.vbs
echo x.sendkeys "call C:\CobraFiles\Headless\headless.bat" >>headless.vbs
echo x.sendkeys "{enter}" >>headless.vbs

start C:\CobraFiles\Headless\headless.vbs
goto Main

:HeadlessFilesContinue
powershell -Command "Start-Process cmd -Verb RunAs"
start C:\CobraFiles\Headless\headless.vbs
goto Main

:WinTools
title Cobra Client - Windows Tools
cls
echo.
echo ░█████╗░░█████╗░██████╗░██████╗░░█████╗░
echo ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗
echo ██║░░╚═╝██║░░██║██████╦╝██████╔╝███████║
echo ██║░░██╗██║░░██║██╔══██╗██╔══██╗██╔══██║
echo ╚█████╔╝╚█████╔╝██████╦╝██║░░██║██║░░██║
echo ░╚════╝░░╚════╝░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝
echo ==========================================
echo In this menu there is a bunch of tools
echo that are bundled into Windows
echo ==========================================
echo (1) SFC Scan
echo ==========================================
echo (2) Defrag
echo ==========================================
echo (3) Date And Time
echo ==========================================
echo (4) Current User
echo ==========================================
echo (5) Move A File
echo ==========================================
echo (6) Back
echo ==========================================
choice /c 123456 /n
if %errorlevel% == 1 goto SFC
if %errorlevel% == 2 goto Defrag
if %errorlevel% == 3 goto DAT
if %errorlevel% == 4 goto CurrentUser
if %errorlevel% == 5 goto MoveAFile
if %errorlevel% == 6 goto Main

:SFC
title Cobra Client - SFC Scan
cls
echo.
echo ░█████╗░░█████╗░██████╗░██████╗░░█████╗░
echo ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗
echo ██║░░╚═╝██║░░██║██████╦╝██████╔╝███████║
echo ██║░░██╗██║░░██║██╔══██╗██╔══██╗██╔══██║
echo ╚█████╔╝╚█████╔╝██████╦╝██║░░██║██║░░██║
echo ░╚════╝░░╚════╝░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝
echo ==========================================
sfc /scannow
echo Scan Complete!
timeout 3 >nul
goto Main

:Defrag
title Cobra Client - Disk Defrag
cls
echo.
echo ░█████╗░░█████╗░██████╗░██████╗░░█████╗░
echo ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗
echo ██║░░╚═╝██║░░██║██████╦╝██████╔╝███████║
echo ██║░░██╗██║░░██║██╔══██╗██╔══██╗██╔══██║
echo ╚█████╔╝╚█████╔╝██████╦╝██║░░██║██║░░██║
echo ░╚════╝░░╚════╝░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝
echo ==========================================
defrag C:\
echo Defrag Complete!
timeout 3 >nul
goto Main

:DAT
title Cobra Client - Date And Time
cls
echo.
echo ░█████╗░░█████╗░██████╗░██████╗░░█████╗░
echo ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗
echo ██║░░╚═╝██║░░██║██████╦╝██████╔╝███████║
echo ██║░░██╗██║░░██║██╔══██╗██╔══██╗██╔══██║
echo ╚█████╔╝╚█████╔╝██████╦╝██║░░██║██║░░██║
echo ░╚════╝░░╚════╝░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝
echo ==========================================
echo The current date is %date%, and the current time is %time%.
pause
goto Main

:CurrentUser
title Cobra Client - Current User
cls
echo.
echo ░█████╗░░█████╗░██████╗░██████╗░░█████╗░
echo ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗
echo ██║░░╚═╝██║░░██║██████╦╝██████╔╝███████║
echo ██║░░██╗██║░░██║██╔══██╗██╔══██╗██╔══██║
echo ╚█████╔╝╚█████╔╝██████╦╝██║░░██║██║░░██║
echo ░╚════╝░░╚════╝░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝
echo ==========================================
echo The current user account that is signed
echo into this desktop %username%,
echo on %date%, at %time%
pause
goto Main

:MoveAFile
title Cobra Client - Move A File
cls
echo.
echo ░█████╗░░█████╗░██████╗░██████╗░░█████╗░
echo ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗
echo ██║░░╚═╝██║░░██║██████╦╝██████╔╝███████║
echo ██║░░██╗██║░░██║██╔══██╗██╔══██╗██╔══██║
echo ╚█████╔╝╚█████╔╝██████╦╝██║░░██║██║░░██║
echo ░╚════╝░░╚════╝░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝
echo ==========================================
set /p Dir1=Please enter the file path of the first directory:
echo ==========================================
set /p Dir2=Please enter the destination path of the directory:

move /Y %Dir1% %Dir2%
echo Move Complete!
goto Main

:DiskPart
diskpart
goto Main

:DriverQuery
title Cobra Client - Driver Query
cls
echo.
echo ░█████╗░░█████╗░██████╗░██████╗░░█████╗░
echo ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗
echo ██║░░╚═╝██║░░██║██████╦╝██████╔╝███████║
echo ██║░░██╗██║░░██║██╔══██╗██╔══██╗██╔══██║
echo ╚█████╔╝╚█████╔╝██████╦╝██║░░██║██║░░██║
echo ░╚════╝░░╚════╝░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝
echo ==========================================
driverquery
pause
goto Main

:exit
exit