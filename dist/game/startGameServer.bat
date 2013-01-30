@echo off
REM ------------------------------------------------------
if not exist ..\libs\*.jar echo "*.jar Not Found"
if not exist ..\libs\*.jar echo.
if not exist ..\libs\*.jar pause
if not exist ..\libs\*.jar exit
REM ------------------------------------------------------
title Game Server Console
:start
echo Starting L2J Game Server.
echo.
REM -------------------------------------
REM Default parameters for a basic server.
REM l2jtw start
REM java -Djava.util.logging.manager=com.l2jserver.util.L2LogManager -Xms1024m -Xmx1024m -cp ./../libs/*;l2jserver.jar com.l2jserver.gameserver.GameServer
java -Djava.util.logging.manager=com.l2jserver.util.L2LogManager -XX:+UseConcMarkSweepGC -XX:+CMSParallelRemarkEnabled -XX:+UseParNewGC -XX:+UseCMSCompactAtFullCollection -XX:+CMSIncrementalMode -XX:PermSize=50m -XX:MaxPermSize=100m -Xms1024m -Xmx1024m -cp ./../libs/*;l2jserver.jar com.l2jserver.gameserver.GameServer
REM l2jtw stop
REM
REM If you have a big server and lots of memory, you could experiment for example with
REM java -server -Xmx1536m -Xms1024m -Xmn512m -XX:PermSize=256m -XX:SurvivorRatio=8 -Xnoclassgc -XX:+AggressiveOpts
REM -------------------------------------
if ERRORLEVEL 2 goto path_change1
if ERRORLEVEL 1 goto path_change1
goto end
:path_change1
if not exist "%ProgramFiles%\Java\jre7\bin\java.exe" goto path_change2
set PATH=%ProgramFiles%\Java\jre7\bin;%PATH%
echo test > %temp%\check.txt
FOR /F %%L IN (%temp%\check.txt) DO set LLL=%%~dpL
echo %LLL% > %temp%\check.txt
FOR /F "delims=game" %%i IN (%temp%\check.txt) do set iii=%%i
"%ProgramFiles%\Java\jre7\bin\java.exe" -Djava.util.logging.manager=com.l2jserver.util.L2LogManager -XX:+UseConcMarkSweepGC -XX:+CMSParallelRemarkEnabled -XX:+UseParNewGC -XX:+UseCMSCompactAtFullCollection -XX:+CMSIncrementalMode -XX:PermSize=50m -XX:MaxPermSize=100m -Xms1024m -Xmx1024m -cp "%iii%libs\*";"%LLL%l2jserver.jar" com.l2jserver.gameserver.GameServer
if ERRORLEVEL 2 goto restart
if ERRORLEVEL 1 goto error
goto end
:path_change2
if not exist "%ProgramFiles(x86)%\Java\jre7\bin\java.exe" goto path_change3
set PATH=%ProgramFiles(x86)%\Java\jre7\bin;%PATH%
echo test > %temp%\check.txt
FOR /F %%L IN (%temp%\check.txt) DO set LLL=%%~dpL
echo %LLL% > %temp%\check.txt
FOR /F "delims=game" %%i IN (%temp%\check.txt) do set iii=%%i
"%ProgramFiles(x86)%\Java\jre7\bin\java.exe" -Djava.util.logging.manager=com.l2jserver.util.L2LogManager -XX:+UseConcMarkSweepGC -XX:+CMSParallelRemarkEnabled -XX:+UseParNewGC -XX:+UseCMSCompactAtFullCollection -XX:+CMSIncrementalMode -XX:PermSize=50m -XX:MaxPermSize=100m -Xms1024m -Xmx1024m -cp "%iii%libs\*";"%LLL%l2jserver.jar" com.l2jserver.gameserver.GameServer
if ERRORLEVEL 2 goto restart
if ERRORLEVEL 1 goto error
goto end
:path_change3
set PATH=%windir%\system32;%PATH%
echo test > %temp%\check.txt
FOR /F %%L IN (%temp%\check.txt) DO set LLL=%%~dpL
echo %LLL% > %temp%\check.txt
FOR /F "delims=game" %%i IN (%temp%\check.txt) do set iii=%%i
"%windir%\system32\java.exe" -Djava.util.logging.manager=com.l2jserver.util.L2LogManager -XX:+UseConcMarkSweepGC -XX:+CMSParallelRemarkEnabled -XX:+UseParNewGC -XX:+UseCMSCompactAtFullCollection -XX:+CMSIncrementalMode -XX:PermSize=50m -XX:MaxPermSize=100m -Xms1024m -Xmx1024m -cp "%iii%libs\*";"%LLL%l2jserver.jar" com.l2jserver.gameserver.GameServer
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