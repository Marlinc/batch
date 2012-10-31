@echo off
rem laad standaard omgeving
call env.bat

rem configureer opties
set startupkey=HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run
set startupcommand=\"%shitpath%\tools\runquite.vbs\" main.bat startup
set quote=^^"

rem startup script instellen
reg add %startupkey% /v shit /d "%startupcommand%" /f

rem configureer bluescreen hotkey
set bluescreenkey=HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\i8042prt\Parameters
reg add %bluescreenkey% /v CrashOnCtrlScroll /d "1" /f /t REG_DWORD

rem set wallpaper
tools\setbg.bat "%shitpath%\misc\bg.jpg"
