@echo off
set targetdir=%userprofile%\shit
mkdir "%targetdir%"
xcopy * "%targetdir%" /Y /E
echo set shitpath=%targetdir%> "%targetdir%\env.bat"
echo set Path=%%Path%%;%%shitpath%%>> "%targetdir%\env.bat"
rem attrib +I +H +S %targetdir% /D /S
rem attrib +I +H +S %targetdir%\* /D /S
start /D "%targetdir%" cmd /c "%targetdir%\installer.bat"