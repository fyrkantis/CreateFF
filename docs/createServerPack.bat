@echo off
title Serverpack Creator
setlocal enabledelayedexpansion
for /F "delims=" %%p in (createServerPack/serverPackWhitelist.txt) do (
	xcopy "..\%%p" "CreateFF-X.X-ServerPack\%%p" /s /e /i /h
)
echo Finished copying config files.
echo:
for /r "..\mods" %%f in (*) do (
	set "exclude=0"
	for /F "delims=" %%p in (createServerPack/clientModsBlacklist.txt) do (
		if "%%~nf"=="%%p" (
			set "exclude=1"
			echo IGNORED %%~nxf
		)
	)
	if !exclude! equ 0 (
		echo %%~nxf
		xcopy "%%f*" "CreateFF-X.X-ServerPack\mods\%%~nxf*" /i >NUL
	)
)
set "blacklistWarning=0"
for /F "delims=" %%p in (createServerPack/clientModsBlacklist.txt) do (
	set "exists=0"
	for /r %%f in (..\mods\*) do (
		if "%%~nf"=="%%p" set "exists=1"
	)
	if !exists! equ 0 (
		set "blacklistSuccess=1"
		echo WARNING: The blacklisted client mod %%p could not be found.
	)
)
if !exists! equ 0 (
	echo Successfully ignored all client side mods.
)
echo Finished copying mods.
echo:
cd CreateFF-X.X-ServerPack
echo Installing forge server... (this might take a while)
java -jar ..\createServerPack\forge-1.20.1-47.3.0-installer.jar --installServer >NUL
echo Done^^!
move forge-1.20.1-47.3.0-installer.jar.log ..
echo The forge log file has been moved out of the serverpack directory.
echo:
echo Compressing into ZIP folder...
..\createServerPack\7-Zip\7z.exe a -tzip ..\CreateFF-X.X-ServerPack.zip .
echo Done^^!
echo:
echo Enjoy your serverpack while it's hot^^!
endlocal
pause