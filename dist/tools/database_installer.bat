@echo off
REM Function: every once in a while to delete libs and cache to prevent GS error
if not exist ..\libs\*.jar echo GS, you must re-unzip the compilation is completed before they can proceed with the installation database
if not exist ..\libs\*.jar echo.
if not exist ..\libs\*.jar pause
if not exist ..\libs\*.jar exit

REM Libs cache does not exist, said that has not started server, skip the check
if not exist ..\libs\cachedir\ md ..\libs\cachedir\
if not exist ..\libs\cachedir\packages\*.pkc goto _lib_update

REM If the log does not exist, that also did not start the server, skip the check
if not exist ..\game\log\*.log goto _lib_update

REM ------------------------------------------------------
REM _lib_check1 Inspections begin
REM If the the Windows CMD version information already exists, the jump to check 1
if exist ..\libs\cachedir\check_w_ver.txt goto _lib_check1

REM If the Windows CMD version information does not exist, the establishment of information
ver > ..\libs\cachedir\check_w_ver.txt
goto _lib_del

:_lib_check1
REM To Windows CMD get the current version information
ver > %temp%\check.txt
FOR /F "skip=1 delims=*" %%a IN (%temp%\check.txt) do set aaa=%%a

REM To obtain existing Windows CMD version information
FOR /F "skip=1 delims=*" %%b IN (..\libs\cachedir\check_w_ver.txt) do set bbb=%%b

REM Windows-CMD version information
if "%aaa%"=="%bbb%" goto _lib_check2
echo Update your version of Windows, so you must remove the old libs and cache to prevent errors of GS
echo.
pause
goto _lib_del
REM _lib_check1 Check the end of
REM ------------------------------------------------------


REM ------------------------------------------------------
REM _lib_check2 Inspections begin
REM If the Java path does not exist, skip to the next check
if not exist "%ProgramFiles%\Java\jdk1.7.*" goto _lib_check3

REM If the Java version information already exists, the jump to check 2
if exist ..\libs\cachedir\check_j_ver.txt goto _lib_check2

REM If the Java version information does not exist, the establishment of information
dir "%ProgramFiles%\Java\jdk1.7.*" /A:D /B /O > ..\libs\cachedir\check_j_ver.txt
goto _lib_del

:_lib_check2
REM Get the current version of Java information
dir "%ProgramFiles%\Java\jdk1.7.*" /A:D /B /O > %temp%\check.txt
FOR /F %%j IN (%temp%\check.txt) DO set jjj=%%j

REM To obtain existing Java version information
FOR /F %%k IN (..\libs\cachedir\check_j_ver.txt) do set kkk=%%k

REM Java version information
if "%jjj%"=="%kkk%" goto _lib_check3
echo Update your Java version, so you must remove the old libs and cache to prevent errors of GS
echo.
pause
goto _lib_del
REM _lib_check2 Check the end of
REM ------------------------------------------------------


REM ------------------------------------------------------
REM _lib_check3 Inspections begin
REM Date - month, skip checking 3
if exist ..\libs\cachedir\check_d_ver.txt goto _lib_check3

REM Date - the month of the information does not exist, the establishment of information
date/t > ..\libs\cachedir\check_d_ver.txt
goto _lib_del

:_lib_check3
REM Get the current date - month information
date/t > %temp%\check.txt
FOR /F "tokens=2 delims=/" %%d IN (%temp%\check.txt) DO set ddd=%%d

REM Date - Month Information made ​​existing
FOR /F "tokens=2 delims=/" %%m IN (..\libs\cachedir\check_d_ver.txt) do set mmm=%%m

REM Comparison Date - Month Information
if "%ddd%"=="%mmm%" goto _lib_end
echo This is the month automatically clean up the old libs and cache to prevent errors of GS
echo.
pause
goto _lib_del
REM _lib_check3 Check the end of
REM ------------------------------------------------------


REM ------------------------------------------------------
:_lib_del
echo.
if not exist ..\libs\backup\ md ..\libs\backup\
copy ..\libs\*.* ..\libs\backup\ /Y > nul
del ..\libs\*.* /F /Q > nul
del ..\libs\cachedir\packages\*.* /F /Q > nul
if exist ..\libs\*.jar echo You can not delete libs and cache! Turn off the server or reboot and try again
if exist ..\libs\*.jar echo.
if exist ..\libs\*.jar pause
if exist ..\libs\*.jar exit
if exist ..\libs\cachedir\packages\*.pkc echo You can not delete libs and cache! Turn off the server or reboot and try again
if exist ..\libs\cachedir\packages\*.pkc echo.
if exist ..\libs\cachedir\packages\*.pkc pause
if exist ..\libs\cachedir\packages\*.pkc exit
ver > ..\libs\cachedir\check_w_ver.txt
dir "%ProgramFiles%\Java\jdk1.7.*" /A:D /B /O > ..\libs\cachedir\check_j_ver.txt
date/t > ..\libs\cachedir\check_d_ver.txt
CLS
echo Old libs and cache cleared!
echo GS, you must re-unzip the compilation is completed before they can proceed with the installation database
echo.
pause
exit

:_lib_update
ver > ..\libs\cachedir\check_w_ver.txt
dir "%ProgramFiles%\Java\jdk1.7.*" /A:D /B /O > ..\libs\cachedir\check_j_ver.txt
date/t > ..\libs\cachedir\check_d_ver.txt

:_lib_end
REM ------------------------------------------------------


REM ##############################################
REM ## L2JDP Database Installer - (by DrLecter) ##
REM ##############################################
REM ## Interactive script setup -  (by TanelTM) ##
REM ##############################################
REM Copyright (C) 2012 L2J DataPack
REM This program is free software; you can redistribute it and/or modify
REM it under the terms of the GNU General Public License as published by
REM the Free Software Foundation; either version 3 of the License, or (at
REM your option) any later version.
REM
REM This program is distributed in the hope that it will be useful, but
REM WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
REM or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License
REM for more details.
REM
REM You should have received a copy of the GNU General Public License along
REM with this program; if not, write to the Free Software Foundation, Inc.,
REM 675 Mass Ave, Cambridge, MA 02139, USA. Or contact the Official L2J
REM DataPack Project at http://www.l2jdp.com, http://www.l2jdp.com/forum or
REM #l2j @ irc://irc.freenode.net

set config_file=vars.txt
set config_version=0

set workdir="%cd%"
set full=0
set stage=0
set logging=0

set upgrade_mode=0
set backup=.
set logdir=.
set safe_mode=1
set cmode=c
set fresh_setup=0

:loadconfig
cls
title L2JKR Datapack Installation - For:L2JKR GameServer HighFive Alpha
if not exist %config_file% goto configure
ren %config_file% vars.bat
call vars.bat
ren vars.bat %config_file%
call :colors 17
if /i %config_version% == 2 goto ls_backup
set upgrade_mode=2
echo You seem to be the first to use this version of database_installer
echo However, I found that to install the database profile already exists
echo Therefore, I will ask you a few questions, and guide you to proceed with the installation
echo.
echo Update setting options:
echo.
echo (1) Import & continue to use the old settings: the original old data and update job
echo.
echo (2) Import & new set: import new data and re-set data
echo.
echo (3) Import brand new: all old data will be removed and the import of new information
echo.
echo (4) See setting access
echo.
echo (5) Quit
echo.
set /P upgrade_mode="Enter a number, press Enter (the default value is "%upgrade_mode%):"
if %upgrade_mode%==1 goto ls_backup
if %upgrade_mode%==2 goto configure
if %upgrade_mode%==3 goto configure
if %upgrade_mode%==4 (cls&type %config_file%&pause&goto loadconfig)
if %upgrade_mode%==5 goto :eof
goto loadconfig

:colors
if /i "%cmode%"=="n" (
if not "%1"=="17" (	color F ) else ( color )
) else ( color %1 )
goto :eof

:configure
cls
call :colors 17
title L2JKR Datapack Installation - For:L2JKR GameServer HighFive Alpha
set config_version=2
if NOT %upgrade_mode% == 2 (
set fresh_setup=1
set mysqlBinPath=%ProgramFiles%\MySQL\MySQL Server 5.0\bin

:_MySQL51
if not exist "%ProgramFiles%\MySQL\MySQL Server 5.1\bin\mysql.exe" goto _MySQL55
set mysqlBinPath=%ProgramFiles%\MySQL\MySQL Server 5.1\bin

:_MySQL55
if not exist "%ProgramFiles%\MySQL\MySQL Server 5.5\bin\mysql.exe" goto _MySQL56
set mysqlBinPath=%ProgramFiles%\MySQL\MySQL Server 5.5\bin

:_MySQL56
if not exist "%ProgramFiles%\MySQL\MySQL Server 5.6\bin\mysql.exe" goto _MySQL60
set mysqlBinPath=%ProgramFiles%\MySQL\MySQL Server 5.6\bin

:_MySQL60
if not exist "%ProgramFiles%\MySQL\MySQL Server 6.0\bin\mysql.exe" goto _AppServ
set mysqlBinPath=%ProgramFiles%\MySQL\MySQL Server 6.0\bin

:_AppServ
if not exist "%SystemDrive%\AppServ\MySQL\bin\mysql.exe" goto _other
set mysqlBinPath=%SystemDrive%\AppServ\MySQL\bin

:_other
set lsuser=root
set lspass=
set lsdb=l2jls
set lshost=localhost
set cbuser=root
set cbpass=
set cbdb=l2jcs
set cbhost=localhost
set gsuser=root
set gspass=
set gsdb=l2jgs
set gshost=localhost
set cmode=c
set backup=.
set logdir=.
)
set mysqlPath=%mysqlBinPath%\mysql.exe
echo New Setting:
echo.
echo 1.MySQL Program
echo --------------------
echo Please set mysql.exe and mysqldump.exe position
echo.
if "%mysqlBinPath%" == "" (
set mysqlBinPath=use path
echo Did not find the location of MySQL
) else (
echo Please test the MySQL location below to find whether the import job
echo.
echo %mysqlPath%
)
if not "%mysqlBinPath%" == "use path" call :binaryfind
echo.
path|find "MySQL">NUL
if %errorlevel% == 0 (
echo Above is found MySQL, this location will be set to the default value, if you want to change the location to modify the...
set mysqlBinPath=use path
) else (
echo Can not find the MySQL Please to enter the mysql.exe the position...
echo.
echo If you are not sure what this means and how to do this, please go to the website or to L2JKR official Web site to ask questions or find relevant information
)
echo.
echo Requests the input mysql.exe position:
set /P mysqlBinPath="(default %mysqlBinPath%): "
cls
echo.
echo 2.Login to the server settings
echo --------------------
echo This job will connect to the specified MySQL server, and import jobs
echo.
set /P lsuser="Username (default "%lsuser%"):"
:_lspass
set /P lspass="User password (default "%lspass%"):"
if "%lspass%"=="" goto _lspass
set /P lsdb="Database (default "%lsdb%"):"
set /P lshost="Location (default "%lshost%"):"
echo.
cls
echo.
echo 3-Forums Server Settings
echo --------------------
echo This job will connect to the "discussion" MySQL server, and import jobs
echo.
set /P cbuser="Username (default "%cbuser%"):"
:_cbpass
set /P cbpass="User password (default "%cbpass%"):"
if "%cbpass%"=="" goto _cbpass
set /P cbdb="Database (default "%cbdb%"):"
set /P cbhost="Location (default "%cbhost%"):"
echo.
cls
echo.
echo 4.Game server settings
echo --------------------
set /P gsuser="Username (default "%gsuser%"):"
:_gspass
set /P gspass="User password (default "%gspass%"):"
if "%gspass%"=="" goto _gspass
set /P gsdb="Database (default "%gsdb%"):"
set /P gshost="Location (default "%gshost%"):"
echo.
cls
echo.
echo 5.Other Settings
echo --------------------
set /P cmode="Color mode for color or (n), (c) color (default "%cmode%):"
set /P backup="Backup location (default %backup%):"
set /P logdir="Logs message position (default "%logdir%"):"
:safe1
set safemode=y
set /P safemode="Debug mode (y / n, default "%safemode%"):"
if /i %safemode%==y (set safe_mode=1&goto safe2)
if /i %safemode%==n (set safe_mode=0&goto safe2)
goto safe1

:safe2
cls
echo.
if "%mysqlBinPath%" == "use path" (
set mysqlBinPath=
set mysqldumpPath=mysqldump
set mysqlPath=mysql
) else (
set mysqldumpPath=%mysqlBinPath%\mysqldump.exe
set mysqlPath=%mysqlBinPath%\mysql.exe
)
echo @echo off > %config_file%
echo set config_version=%config_version% >> %config_file%
echo set cmode=%cmode%>> %config_file%
echo set safe_mode=%safe_mode% >> %config_file%
echo set mysqlPath=%mysqlPath%>> %config_file%
echo set mysqlBinPath=%mysqlBinPath%>> %config_file%
echo set mysqldumpPath=%mysqldumpPath%>> %config_file%
echo set lsuser=%lsuser%>> %config_file%
echo set lspass=%lspass%>> %config_file%
echo set lsdb=%lsdb%>> %config_file%
echo set lshost=%lshost% >> %config_file%
echo set cbuser=%cbuser%>> %config_file%
echo set cbpass=%cbpass%>> %config_file%
echo set cbdb=%cbdb%>> %config_file%
echo set cbhost=%cbhost% >> %config_file%
echo set gsuser=%gsuser%>> %config_file%
echo set gspass=%gspass%>> %config_file%
echo set gsdb=%gsdb%>> %config_file%
echo set gshost=%gshost%>> %config_file%
echo set logdir=%logdir%>> %config_file%
echo set backup=%backup%>> %config_file%
echo.
echo Setting success!
echo Your settings will be saved in the "%config_file%", account password in clear text display
echo.
pause
goto loadconfig

:ls_backup
cls
call :colors 17
set cmdline=
set stage=1
title L2JKR Datapack Installation - For:L2JKR GameServer HighFive Alpha
echo.
echo Login to the server being backed up database...
set cmdline="%mysqldumpPath%" --add-drop-table -h %lshost% -u %lsuser% --password=%lspass% %lsdb% ^> "%backup%\ls_backup.sql" 2^> NUL
%cmdline%
if %ERRORLEVEL% == 0 goto ls_db_ok

:ls_err1
cls
set lsdbprompt=y
call :colors 47
title L2JKR Datapack Installation - For:L2JKR GameServer HighFive Alpha
echo.
echo Backup failed!
echo The reason is because the database does not exist
echo Now can help you establish %lsdb% command to, or continue to other settings
echo.
echo Create a database to login to the server?
echo.
echo (y)Determine
echo.
echo (n)Cancel
echo.
echo (r)Reconfigure
echo.
echo (q)Quit
echo.
set /p lsdbprompt=Please select (default - OK):
if /i %lsdbprompt%==y goto ls_db_create
if /i %lsdbprompt%==n goto cs_backup
if /i %lsdbprompt%==r goto configure
if /i %lsdbprompt%==q goto end
goto ls_err1

:ls_db_create
cls
call :colors 17
set cmdline=
set stage=2
title L2JKR Datapack Installation- For:L2JKR GameServer HighFive Alpha
echo.
echo Being set up to log on to the server database...
set cmdline="%mysqlPath%" -h %lshost% -u %lsuser% --password=%lspass% -e "CREATE DATABASE %lsdb%" 2^> NUL
%cmdline%
if %ERRORLEVEL% == 0 goto ls_db_ok
if %safe_mode% == 1 goto omfg

:ls_err2
cls
set omfgprompt=q
call :colors 47
title L2JKR Datapack Installation - For:L2JKR GameServer HighFive Alpha
echo.
echo Login to the server database creation failed!
echo.
echo Possible reasons:
echo 1.Input data errors, such as: username / user password / other relevant information
echo 2.User "%lsuser%" of insufficient permissions
echo 3.Existing database
echo.
echo Please check the settings and correction or reset
echo.
echo (c)Continue
echo.
echo (r)Reconfigure
echo.
echo (q)Quit
echo.
set /p omfgprompt=Please choose (default - exit):
if /i %omfgprompt%==c goto cs_backup
if /i %omfgprompt%==r goto configure
if /i %omfgprompt%==q goto end
goto ls_err2

:ls_db_ok
cls
set loginprompt=u
call :colors 17
title L2JKR Datapack Installation - For:L2JKR GameServer HighFive Alpha
echo.
echo Login to the server database installation:
echo.
echo (f) Full: will remove all the old data and re-import the new information
echo.
echo (u) Update: I will try to keep all of the login
echo.
echo (s) Omitted: skip this option
echo.
echo (r) Reconfigure
echo.
echo (q) Quit
echo.
set /p loginprompt=Please choose (default - Updated):
if /i %loginprompt%==f goto ls_cleanup
if /i %loginprompt%==u goto ls_upgrade
if /i %loginprompt%==s goto cs_backup
if /i %loginprompt%==r goto configure
if /i %loginprompt%==q goto end
goto ls_db_ok

:ls_cleanup
call :colors 17
set cmdline=
title L2JKR Datapack Installation - For:L2JKR GameServer HighFive Alpha
echo.
echo Removing login to the server database, and then import the new database...
set cmdline="%mysqlPath%" -h %lshost% -u %lsuser% --password=%lspass% -D %lsdb% ^< ls_cleanup.sql 2^> NUL
%cmdline%
if not %ERRORLEVEL% == 0 goto omfg
set full=1
echo.
echo Login to the server database has been deleted
goto ls_install

:ls_upgrade
cls
echo.
echo Update login to the server database structure
echo.
echo @echo off> temp.bat
if exist ls_errors.log del ls_errors.log
for %%i in (..\sql\login\updates\*.sql) do echo "%mysqlPath%" -h %lshost% -u %lsuser% --password=%lspass% -D %lsdb% --force ^< %%i 2^>^> ls_errors.log >> temp.bat
call temp.bat> nul
del temp.bat
move ls_errors.log %workdir%
goto ls_install

:ls_install
cls
set cmdline=
if %full% == 1 (
title L2JKR Login to the server database is being installed...
echo.
echo Database contents are installing a new login server
echo.
) else (
title L2JKR Login to the server database is being updated...
echo.
echo Log on to the server database content being updated
echo.
)
if %logging% == 0 set output=NUL
set dest=ls
for %%i in (..\sql\login\*.sql) do call :dump %%i

echo Complete...
echo.
goto cs_backup

:cs_backup
cls
call :colors 17
set cmdline=
set stage=3
title L2JKR Datapack Installation - For:L2JKR GameServer HighFive Alpha
echo.
echo Being backed up "discussion" database...
set cmdline="%mysqldumpPath%" --add-drop-table -h %cbhost% -u %cbuser% --password=%cbpass% %cbdb% ^> "%backup%\cs_backup.sql" 2^> NUL
%cmdline%
if %ERRORLEVEL% == 0 goto cs_db_ok

:cs_err1
cls
set cbdbprompt=y
call :colors 47
title L2JKR Datapack Installation - For:L2JKR GameServer HighFive Alpha
echo.
echo Backup failed!
echo The reason is because there is no discussion boards dedicated database
echo Can help you create %cbdb%, or continue to other settings
echo.
echo Create a special version of the discussion "database"?
echo.
echo (y)Determine
echo.
echo (n)Cancel
echo.
echo (r)Reconfigure
echo.
echo (q)Quit
echo.
set /p cbdbprompt=Please select (default - OK):
if /i %cbdbprompt%==y goto cs_db_create
if /i %cbdbprompt%==n goto gs_backup
if /i %cbdbprompt%==r goto configure
if /i %cbdbprompt%==q goto end
goto cs_err1

:cs_db_create
cls
call :colors 17
set cmdline=
set stage=4
title L2JKR Datapack Installation - For:L2JKR GameServer HighFive Alpha
echo.
echo Forums dedicated database being created...
set cmdline="%mysqlPath%" -h %cbhost% -u %cbuser% --password=%cbpass% -e "CREATE DATABASE %cbdb%" 2^> NUL
%cmdline%
if %ERRORLEVEL% == 0 goto cs_db_ok
if %safe_mode% == 1 goto omfg

:cs_err2
cls
set omfgprompt=q
call :colors 47
title L2JKR Datapack Installation - For:L2JKR GameServer HighFive Alpha
echo.
echo Forums dedicated database creation failed!
echo.
echo Possible reasons:
echo 1.Input data errors, such as: username / user password / other relevant information
echo 2.Users "%cbuser%" permissions, insufficient
echo 3.Existing database
echo.
echo Please check the settings and correction or reset
echo.
echo (c)Continue
echo.
echo (r)Reconfigure
echo.
echo (q)Quit
echo.
set /p omfgprompt=Please choose (default - exit):
if /i %omfgprompt%==c goto gs_backup
if /i %omfgprompt%==r goto configure
if /i %omfgprompt%==q goto end
goto cs_err2

:cs_db_ok
cls
set communityprompt=u
call :colors 17
title L2JKR Datapack Installation - For:L2JKR GameServer HighFive Alpha
echo.
echo Forums dedicated database installation:
echo.
echo (f)Full: will remove all the old data and re-import the new information
echo.
echo (u)Update: will keep all the old data and update job
echo.
echo (s)Omitted: skip this option
echo.
echo (r)Reconfigure
echo.
echo (q)Quit
echo.
set /p communityprompt=Please choose (default - Updated):
if /i %communityprompt%==f goto cs_cleanup
if /i %communityprompt%==u goto cs_upgrade
if /i %communityprompt%==s goto gs_backup
if /i %communityprompt%==r goto configure
if /i %communityprompt%==q goto end
goto cs_db_ok

:cs_cleanup
call :colors 17
set cmdline=
title L2JKR Datapack Installation - For:L2JKR GameServer HighFive Alpha
echo.
echo Removing the "discussion" database, and then import the new database...
set cmdline="%mysqlPath%" -h %cbhost% -u %cbuser% --password=%cbpass% -D %cbdb% ^< cs_cleanup.sql 2^> NUL
%cmdline%
if not %ERRORLEVEL% == 0 goto omfg
set full=1
echo.
echo Forums dedicated database has been deleted
goto cs_install

:cs_upgrade
cls
echo.
echo Update Forum dedicated database structure
echo.
echo @echo off> temp.bat
if exist cs_errors.log del cs_errors.log
for %%i in (..\sql\community\updates\*.sql) do echo "%mysqlPath%" -h %cbhost% -u %cbuser% --password=%cbpass% -D %cbdb% --force ^< %%i 2^>^> cs_errors.log >> temp.bat
call temp.bat> nul
del temp.bat
move cs_errors.log %workdir%
goto cs_install

:cs_install
cls
set cmdline=
if %full% == 1 (
title L2JKR Datapack Installation- For:L2JKR GameServer HighFive Alpha
echo.
echo Installation of a new discussion dedicated database...
echo.
) else (
title L2JKR Datapack Installation - For:L2JKR GameServer HighFive Alpha
echo.
echo Update "discussion dedicated" database...
echo.
)
if %logging% == 0 set output=NUL
set dest=cb
for %%i in (..\sql\community\*.sql) do call :dump %%i

echo done...
echo.
goto gs_backup

:gs_backup
cls
call :colors 17
set cmdline=
set stage=5
title L2JKR Datapack Installation- For:L2JKR GameServer HighFive Alpha
echo.
echo Database being backed up game servers...
set cmdline="%mysqldumpPath%" --add-drop-table -h %gshost% -u %gsuser% --password=%gspass% %gsdb% ^> "%backup%\gs_backup.sql" 2^> NUL
%cmdline%
if %ERRORLEVEL% == 0 goto gs_db_ok

:gs_err1
cls
set gsdbprompt=y
call :colors 47
title L2JKR Datapack Installation - For:L2JKR GameServer HighFive Alpha
echo.
echo Backup failed!
echo The reason is because the database does not exist
echo Can help you create %gsdb%, or continue to other settings
echo.
echo Create a database server of the game?
echo.
echo (y)Determine
echo.
echo (n)Cancel
echo.
echo (r)Reconfigure
echo.
echo (q)Quit
echo.
set /p gsdbprompt=Please select (default - OK):
if /i %gsdbprompt%==y goto gs_db_create
if /i %gsdbprompt%==n goto eof
if /i %gsdbprompt%==r goto configure
if /i %gsdbprompt%==q goto end
goto gs_err1

:gs_db_create
cls
call :colors 17
set stage=6
set cmdline=
title L2JKR Datapack Installation- For:L2JKR GameServer HighFive Alpha
echo.
echo Is to create a game server database...
set cmdline="%mysqlPath%" -h %gshost% -u %gsuser% --password=%gspass% -e "CREATE DATABASE %gsdb%" 2^> NUL
%cmdline%
if %ERRORLEVEL% == 0 goto gs_db_ok
if %safe_mode% == 1 goto omfg

:gs_err2
cls
set omfgprompt=q
call :colors 47
title L2JKR Datapack Installation - For:L2JKR GameServer HighFive Alpha
echo.
echo Game server database creation failed!
echo.
echo Possible reasons:
echo 1.Input data errors, such as: user name / user password / other relevant information
echo 2.User "%gsuser%" of insufficient permissions
echo 3.Existing database
echo.
echo Please check the settings and correction or reset
echo.
echo (r)Re-run and set
echo.
echo (q)Quit
echo.
set /p omfgprompt=Please choose (default - exit):
if /i %omfgprompt%==r goto configure
if /i %omfgprompt%==q goto end
goto gs_err2

:gs_db_ok
cls
set installtype=u
call :colors 17
title L2JKR Datapack Installation - For:L2JKR GameServer HighFive Alpha
echo.
echo Game Server database installation:
echo.
echo (f)Full: will remove all the old data and re-import the new information
echo.
echo (u)Update: will keep all the old data and update job
echo.
echo (s)Omitted: skip this option
echo.
echo (q)Quit
echo.
set /p installtype=Please choose (default - Updated):
if /i %installtype%==f goto gs_cleanup
if /i %installtype%==u goto gs_upgrade
if /i %installtype%==s goto custom_ask
if /i %installtype%==q goto end
goto gs_db_ok

:gs_cleanup
call :colors 17
set cmdline=
title L2JKR Datapack Installation - For:L2JKR GameServer HighFive Alpha
echo.
echo Removing the game server database, and then import the new database...
set cmdline="%mysqlPath%" -h %gshost% -u %gsuser% --password=%gspass% -D %gsdb% ^< gs_cleanup.sql 2^> NUL
%cmdline%
if not %ERRORLEVEL% == 0 goto omfg
set full=1
echo.
echo Game database Remove
goto gs_install

:gs_upgrade
cls
echo.
echo Update the game database structure
echo.
echo @echo off> temp.bat
if exist gs_errors.log del gs_errors.log
for %%i in (..\sql\game\updates\*.sql) do echo "%mysqlPath%" -h %gshost% -u %gsuser% --password=%gspass% -D %gsdb% --force ^< %%i 2^>^> gs_errors.log >> temp.bat
call temp.bat> nul
del temp.bat
move gs_errors.log %workdir%
goto gs_install

:gs_install
cls
set cmdline=
if %full% == 1 (
title L2JKR Datapack Installation - For:L2JKR GameServer HighFive Alpha
echo.
echo Install the new game database...
echo.
) else (
title L2JKR Datapack Installation - For:L2JKR GameServer HighFive Alpha
echo.
echo Update the game database...
echo.
)
if %logging% == 0 set output=NUL
set dest=gs
for %%i in (..\sql\game\*.sql) do call :dump %%i
for %%i in (..\sql\game\mods\*.sql) do call :dump %%i
for %%i in (..\sql\game\custom\*.sql) do call :dump %%i
for %%i in (..\sql\L2JKR\*.sql) do call :dump %%i

echo Complete...
echo.
set charprompt=y
set /p charprompt=Installation skills / items / career / NPC speak in culture: (y) is determined or (N) to cancel? (Default - OK):
if /i %charprompt%==n goto custom_ask
for %%i in (..\sql\L2JKR_2\*.sql) do call :dump %%i
echo Complete...
echo.
echo Note: Some systems installed in culture will fail, resulting in game garbled
echo 　　　　If you encounter this situation, and then manually import SQL inside
echo 　　　　skill_tw.sql / item_tw.sql / messagetable /
echo 　　　　auto_chat_text_kr / char_templates_kr 5 SQL
goto custom_ask

:dump
set cmdline=
if /i %full% == 1 (set action=Installation) else (set action=Update)
echo %action% %1>>"%output%"
echo %action% %~nx1
if "%dest%"=="ls" set cmdline="%mysqlPath%" -h %lshost% -u %lsuser% --password=%lspass% -D %lsdb% ^< %1 2^>^>"%output%"
if "%dest%"=="cb" set cmdline="%mysqlPath%" -h %cbhost% -u %cbuser% --password=%cbpass% -D %cbdb% ^< %1 2^>^>"%output%"
if "%dest%"=="gs" set cmdline="%mysqlPath%" -h %gshost% -u %gsuser% --password=%gspass% -D %gsdb% ^< %1 2^>^>"%output%"
%cmdline%
if %logging%==0 if NOT %ERRORLEVEL%==0 call :omfg2 %1
goto :eof

:omfg2
cls
set ntpebcak=c
call :colors 47
title L2JKR Datapack Installation - For:L2JKR GameServer HighFive Alpha
echo.
echo Error:
echo %mysqlPath% -h %gshost% -u %gsuser% --password=%gspass% -D %gsdb%
echo.
echo File %~nx1
echo.
echo Approach?
echo.
echo (l)Create a message file and easily accessible
echo.
echo (c)Continue
echo.
echo (r)Reconfigure
echo.
echo (q)Quit
echo.
set /p ntpebcak=Please select (default - continue):
if /i %ntpebcak%==c (call :colors 17 & goto :eof)
if /i %ntpebcak%==l (call :logginon %1 & goto :eof)
if /i %ntpebcak%==r (call :configure & exit)
if /i %ntpebcak%==q (call :end)
goto omfg2

:logginon
cls
call :colors 17
title L2JKR Datapack Installation - For:L2JKR GameServer HighFive Alpha
set logging=1
if %full% == 1 (
  set output=%logdir%\install-%~nx1.log
) else (
  set output=%logdir%\upgrade-%~nx1.log
)
echo.
echo Create a message file...
echo.
echo File "%output%"
echo.
echo If this file already exists, backup, otherwise it will overwrite the past
echo.
pause
set cmdline="%mysqlPath%" -h %gshost% -u %gsuser% --password=%gspass% -D %gsdb% ^<..\sql\%1 2^>^>"%output%"
date /t >"%output%"
time /t >>"%output%"
%cmdline%
echo Create messages INFORMATION...
call :colors 17
set logging=0
set output=NUL
goto :eof

:custom_ask
title L2JTW Datapack Installation - For:L2JKR GameServer HighFive Alpha
cls
set cstprompt=y
echo.
echo custom tables added to the database to complete
echo All error information will be placed in the "custom_errors.log"
echo.
echo Please note, if you want these custom tables can be enabled
echo You must modify the config file settings
echo.
set /p cstprompt=Install custom custom tables: (y) determine (N) to cancel (the default - OK):
if /i %cstprompt%==y goto custom_install
if /i %cstprompt%==n goto mod_ask

:custom_install
cls
echo.
echo Custom install custom content
echo @echo off> temp.bat
if exist custom_errors.log del custom_errors.log
for %%i in (..\sql\game\custom\*.sql) do echo "%mysqlPath%" -h %gshost% -u %gsuser% --password=%gspass% -D %gsdb% ^< %%i 2^>^> custom_errors.log >> temp.bat
call temp.bat> nul
del temp.bat
move custom_errors.log %workdir%
goto mod_ask

:mod_ask
title L2JKR Datapack Installation - For:L2JKR GameServer HighFive Alpha
cls
set cstprompt=y
echo.
echo Mod custom tables added to the database to complete
echo All error information will be placed in the "mod_errors.log"
echo.
echo Please note, if you want these custom tables can be enabled
echo You must modify the config file settings
echo.
echo.
set /p cstprompt=Install Mods custom data tables: (y) determine (N) to cancel (the default - OK):
if /i %cstprompt%==y goto mod_install
if /i %cstprompt%==n goto end

:mod_install
cls
echo.
echo Custom content installed Mods
echo @echo off> temp.bat
if exist mods_errors.log del mods_errors.log
for %%i in (..\sql\game\mods\*.sql) do echo "%mysqlPath%" -h %gshost% -u %gsuser% --password=%gspass% -D %gsdb% ^< %%i 2^>^> mods_errors.log >> temp.bat
call temp.bat> nul
del temp.bat
move mods_errors.log %workdir%
goto end

:omfg
set omfgprompt=q
call :colors 57
cls
title L2JKR Datapack Installation - For:L2JKR GameServer HighFive Alpha
echo.
echo Execution error:
echo.
echo "%cmdline%"
echo.
echo Recommended to check the data set, all input values ​​to ensure there are no errors!
echo.
if %stage% == 1 set label=ls_err1
if %stage% == 2 set label=ls_err2
if %stage% == 3 set label=cs_err1
if %stage% == 4 set label=cs_err2
if %stage% == 5 set label=gs_err1
if %stage% == 6 set label=gs_err2
echo.
echo (c)Continue
echo.
echo (r)Reconfigure
echo.
echo (q)Quit
echo.
set /p omfgprompt=Please choose (default - exit):
if /i %omfgprompt%==c goto %label%
if /i %omfgprompt%==r goto configure
if /i %omfgprompt%==q goto end
goto omfg

:binaryfind
if EXIST "%mysqlBinPath%" (echo Found MySQL) else (echo Did not find MySQL, please enter the correct location below...)
goto :eof

:end
call :colors 17
title L2JKR DataPack Installation - For:L2JKR GameServer HighFive Alpha
cls
echo.
echo L2JKR DataPack Installation - For:L2JKR GameServer HighFive Alpha
echo (C) 2007-2013 L2JKR DataPack Developer Team
echo.
echo L2JKR
echo https://code.google.com/p/l2jkr/
echo.
pause
