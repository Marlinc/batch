@echo off
rem laad standaard omgeving
call env.bat

rem configureer opties
set startupkey=HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run
set startupcommand=cmd /c start /D \"%shitpath%\" cmd /K \"%shitpath%\main.bat\" startup
set quote=^^"

reg add %startupkey% /v shit /d "%startupcommand%" /f

pause
exit