@echo off
rem laad standaard omgeving
call env.bat

rem configureer opties
set startupkey=HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run
set startupcommand=\"%shitpath%\tools\runquite.vbs\" main.bat startup
set quote=^^"

rem startup script instellen
reg add %startupkey% /v shit /d "%startupcommand%" /f

rem set wallpaper
tools\setbg.bat "%shitpath%\misc\bg.jpg"