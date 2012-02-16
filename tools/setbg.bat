@echo off
set bgkey=HKEY_CURRENT_USER\Control Panel\Desktop
set bgvalue=Wallpaper
set bgimage=C:\Users\Public\Pictures\Sample Pictures\Lighthouse.jpg

reg add "%bgkey%" /v %bgvalue% /d "%bgimage%" /f