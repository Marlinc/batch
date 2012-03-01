@echo off
set bgkey=HKEY_CURRENT_USER\Control Panel\Desktop
set bgvalue=Wallpaper
if [%1] == [] (
	set bgimage="C:\Users\Public\Pictures\Sample Pictures\Lighthouse.jpg"
) else (
	set bgimage=%1
)
reg add "%bgkey%" /v %bgvalue% /d %bgimage% /f