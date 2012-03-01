@echo off
set targetdir=%userprofile%\shit
mkdir "%targetdir%"
xcopy * "%targetdir%" /Y /E
echo set shitpath=%targetdir%> "%targetdir%\env.bat"
echo set Path=%%Path%%;%%shitpath%%>> "%targetdir%\env.bat"
rem attrib +I +H +S "%targetdir%" /D /S
rem attrib +I +H +S "%targetdir%\*" /D /S

rem maak tools\runquite.vbs bestand
echo Set objArgs = WScript.Arguments> "%targetdir%\tools\runquite.vbs"
echo Set objShell = CreateObject("WScript.Shell")>> "%targetdir%\tools\runquite.vbs"
echo command = "">> "%targetdir%\tools\runquite.vbs"
echo For Each strArg in objArgs>> "%targetdir%\tools\runquite.vbs"
echo	command = command ^& " " ^& strArg>> "%targetdir%\tools\runquite.vbs"
echo Next>> "%targetdir%\tools\runquite.vbs"
echo objShell.CurrentDirectory = "%targetdir%">> "%targetdir%\tools\runquite.vbs"
echo objShell.Run Trim(Replace(command, "'", """")), 0, False >> "%targetdir%\tools\runquite.vbs"

"%targetdir%\tools\runquite.vbs" installer.bat