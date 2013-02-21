@echo off
title Game Server Console
call :init
:: ----- Setting java memory usage and other parameters -----
set javaheap=1024m

set java_param=com.l2jserver.gameserver.GameServer
set java_param=-cp "%iii%libs\*";"%LLL%l2jserver.jar" %java_param%
set java_param=-Xms%javaheap% -Xmx%javaheap% %java_param%
:: set java_param=-XX:PermSize=50m %java_param%
:: set java_param=-XX:MaxPermSize=100m %java_param%
set java_param=-XX:+CMSIncrementalMode %java_param%
set java_param=-XX:+UseCMSCompactAtFullCollection %java_param%
set java_param=-XX:+UseParNewGC %java_param%
set java_param=-XX:+CMSParallelRemarkEnabled %java_param%
set java_param=-XX:+UseParNewGC %java_param%
set java_param=-XX:+CMSParallelRemarkEnabled %java_param%
set java_param=-XX:+UseConcMarkSweepGC %java_param%
set java_param=-Djava.util.logging.manager=com.l2jserver.util.L2LogManager %java_param%
:: set java_param=-Djava.util.logging.manager=com.l2jserver.util.L2LogManager -XX:+UseConcMarkSweepGC -XX:+CMSParallelRemarkEnabled -XX:+UseParNewGC -XX:+UseCMSCompactAtFullCollection -XX:+CMSIncrementalMode -Xms%javaheap% -Xmx%javaheap% -cp "%iii%libs\*";"%LLL%l2jserver.jar" com.l2jserver.gameserver.GameServer
goto start

:init
set LLL=%~dp0
::FOR /F "delims=game" %%i IN ("%LLL%") do set iii=%%i
set iii=%LLL:~0,-5%
call :check_libs
call :try_java
goto :eof

:check_libs
REM ------------------------------------------------------
if not exist ..\libs\*.jar (
	echo You must unzip the compilation is completed "GS can continue
	echo.
	pause
	exit
)
goto :eof
REM ------------------------------------------------------

:check_java
if "%found%"=="1" goto :eof
if not exist %1 goto :eof
set found=1
set PATH=%~dp1
echo %Path% java location
goto :eof

:set_java
echo Search java location
call :check_java "%ProgramFiles%\Java\jre7\bin\java.exe"
call :check_java "%ProgramFiles(x86)%\Java\jre7\bin\java.exe"
call :check_java "%windir%\system32\java.exe"
if "%found%"=="" (
	echo Can not find java.exe
	echo Please install java v1.7
	echo Download and install Reference Forum
	echo http://www.l2jtw.com/l2jtwbbs/viewtopic.php?f=42^&t=6264
	echo.
	pause
	exit
)
goto :eof

:try_java
java -version:1.7 -cp "%iii%libs\*";"%LLL%l2jserver.jar" com.l2jserver.JavaTest
if not %ERRORLEVEL% == 0 call :set_java
goto :eof

:start
java %java_param%
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
