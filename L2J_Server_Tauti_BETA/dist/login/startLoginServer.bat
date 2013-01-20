@echo off
REM ------------------------------------------------------
if not exist ..\libs\*.jar echo 您必須重新解壓縮「編譯完成」的 GS，才可以繼續執行
if not exist ..\libs\*.jar echo.
if not exist ..\libs\*.jar pause
if not exist ..\libs\*.jar exit
REM ------------------------------------------------------
title Login Server Console
:start
echo Starting L2J Login Server.
echo.
java -Xms128m -Xmx128m  -cp ./../libs/*;l2jlogin.jar com.l2jserver.loginserver.L2LoginServer
if ERRORLEVEL 2 goto path_change1
if ERRORLEVEL 1 goto path_change1
goto end
:path_change1
if not exist "%ProgramFiles%\Java\jre7\bin\java.exe" goto path_change2
set PATH=%ProgramFiles%\Java\jre7\bin;%PATH%
echo test > %temp%\check.txt
FOR /F %%L IN (%temp%\check.txt) DO set LLL=%%~dpL
echo %LLL% > %temp%\check.txt
FOR /F "delims=login" %%i IN (%temp%\check.txt) do set iii=%%i
"%ProgramFiles%\Java\jre7\bin\java.exe" -Xms128m -Xmx128m -cp "%iii%libs\*";"%LLL%l2jlogin.jar" com.l2jserver.loginserver.L2LoginServer
if ERRORLEVEL 2 goto restart
if ERRORLEVEL 1 goto error
goto end
:path_change2
if not exist "%ProgramFiles(x86)%\Java\jre7\bin\java.exe" goto path_change3
set PATH=%ProgramFiles(x86)%\Java\jre7\bin;%PATH%
echo test > %temp%\check.txt
FOR /F %%L IN (%temp%\check.txt) DO set LLL=%%~dpL
echo %LLL% > %temp%\check.txt
FOR /F "delims=login" %%i IN (%temp%\check.txt) do set iii=%%i
"%ProgramFiles(x86)%\Java\jre7\bin\java.exe" -Xms128m -Xmx128m -cp "%iii%libs\*";"%LLL%l2jlogin.jar" com.l2jserver.loginserver.L2LoginServer
if ERRORLEVEL 2 goto restart
if ERRORLEVEL 1 goto error
goto end
:path_change3
set PATH=%windir%\system32;%PATH%
echo test > %temp%\check.txt
FOR /F %%L IN (%temp%\check.txt) DO set LLL=%%~dpL
echo %LLL% > %temp%\check.txt
FOR /F "delims=login" %%i IN (%temp%\check.txt) do set iii=%%i
"%windir%\system32\java.exe" -Xms128m -Xmx128m -cp "%iii%libs\*";"%LLL%l2jlogin.jar" com.l2jserver.loginserver.L2LoginServer
if ERRORLEVEL 2 goto restart
if ERRORLEVEL 1 goto error
goto end
:restart
echo.
echo Admin Restart ...
echo.
goto start
:error
echo.
echo Server terminated abnormally
echo.
:end
echo.
echo server terminated
echo.
pause
