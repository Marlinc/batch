@echo off
if "%1" == "" (
	echo Hello
)
if "%1" == "startup" (
	start calc.exe
)