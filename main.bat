@echo off

call env.bat

if "%1" == "" (
	echo Hello
)
if "%1" == "startup" (
	tools\alert.vbs Hoi
)