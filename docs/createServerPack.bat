@echo off
title Serverpack Creator
setlocal enabledelayedexpansion
for /F "delims=" %%p in (createServerPack/serverPackWhitelist.txt) do (
	xcopy ..\%%p Create.FF-X.X.ServerPack\%%p /s /e /i /h
)
echo Finished copying config files.
echo:
for /r %%f in (..\mods\*) do (
	set "exclude=0"
	for /F "delims=" %%p in (createServerPack/clientModsBlacklist.txt) do (
		if "%%~nf"=="%%p" (
			set "exclude=1"
			echo IGNORED %%~nxf
		)
	)
	if !exclude! equ 0 (
		echo %%~nxf
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
cd Create.FF-X.X.ServerPack
echo Installing forge server...
java -jar ..\createServerPack\forge-1.20.1-47.3.0-installer.jar --installServer
echo Actually, no you cant^^! /David
del forge-1.20.1-47.3.0-installer.jar.log
echo:
echo Compressing into ZIP folder...
..\createServerPack\7-Zip\7z.exe a -tzip ..\Create.FF-X.X.ServerPack.zip .
echo Done^^!
echo:
echo Enjoy your serverpack while it's hot^^!
endlocal
pause