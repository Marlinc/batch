@echo off

call env.bat

if "%1" == "" (
	echo Hello
)
if "%1" == "startup" (
	start tools\alert.vbs Hoi
	tools\runquite.vbs tools\setbg.bat '%shitpath%\misc\bg.jpg'
)