@echo off

set PATH="..\Global"
set Input1=
set asarVer=asar
set GAMDID="GOOFT"
set ROMVer=
set ROMExt=.sfc
set HackCheck=""
set HackName=""

setlocal EnableDelayedExpansion

echo Enter the ROM version you want to assemble.
echo Valid options: "GOOFT_U" "GOOFT_E" "GOOFT_J" "GOOFT_F" "GOOFT_G"
echo For custom ROM versions, use "HACK_<HackName>, where <HackName> is the rest of the custom ROM Map file's name before the extension."

:Input
set /p Input1="%Input1%"
set HackCheck=%Input1:~0,5%
if "%Input1%" equ "" goto :Exit
if "%HackCheck%" equ "HACK_" goto :Hack
if "%Input1%" equ "" goto :Exit
if "%Input1%" equ "GOOFT_U" goto :USA
if "%Input1%" equ "GOOFT_E" goto :PAL
if "%Input1%" equ "GOOFT_J" goto :Japan
if "%Input1%" equ "GOOFT_F" goto :French
if "%Input1%" equ "GOOFT_G" goto :German

echo. "%Input1%" is not a valid ROM version.
set Input1=
goto :Input

:Hack
set ROMNAME=%Input1:~5,100%
set ROMVer=(Hack)
goto :Assemble

:USA
set ROMNAME=Goof Troop
set ROMVer=(USA)
goto :Assemble

:PAL
set ROMNAME=Goof Troop
set ROMVer=(Europe)
goto :Assemble

:Japan
set ROMVer=(Japan)
set ROMNAME=Goofy to Max - Kaizoku-jima no Daibouken

:French
set ROMNAME=Goof Troop
set ROMVer=(French)
goto :Assemble

:German
set ROMNAME=Goof Troop
set ROMVer=(German)

:Assemble

set output="%ROMNAME% %ROMVer%%ROMExt%"

if exist %output% del %output%
echo Assembling "%ROMNAME% %ROMVer%%ROMExt%" ... this may take a minute.
echo.

%asarVer% --fix-checksum=on --define GameID="%GAMDID%" --define ROMID="%Input1%" --define FileType=0 ..\Global\AssembleFile.asm %output%

echo Assembling %ROMNAME% SPC700 Blocks...
%asarVer% --no-title-check --define GameID="%GAMDID%" --define ROMID="%Input1%" --define FileType=4 ..\Global\AssembleFile.asm SPC700\SPC700DataBlocks_%GAMDID%.bin

echo Assembling ROM...
%asarVer% --define GameID="%GAMDID%" --define ROMID="%Input1%" --define FileType=1 ..\Global\AssembleFile.asm %output%

if exist ..\%GAMDID%\Temp.txt del ..\%GAMDID%\Temp.txt
%asarVer% --define GameID="%GAMDID%" --define ROMID="%Input1%" --define FileType=6 ..\Global\AssembleFile.asm Temp.txt
for /f "delims=" %%x in (Temp.txt) do set Firmware=%%x
if "%Firmware%" equ "NULL" goto :NoFirmware
if exist %Firmware% goto :NoFirmware
if exist ..\Firmware\%Firmware% goto :CopyFirmware
goto :NoFirmware

:CopyFirmware
echo Copied %Firmware% to the disassembly folder
copy ..\Firmware\%Firmware% %Firmware%
:NoFirmware
if exist ..\%GAMDID%\Temp.txt del ..\%GAMDID%\Temp.txt

%asarVer% --define GameID="%GAMDID%" --define ROMID="%Input1%" --define FileType=2 ..\Global\AssembleFile.asm %output%

%asarVer% --fix-checksum=off --define GameID="%GAMDID%" --define ROMID="%Input1%" --define FileType=3 ..\Global\AssembleFile.asm %output%

echo Cleaning up...
if exist ..\%GAMDID%\SPC700\SPC700DataBlocks_%GAMDID%.bin del ..\%GAMDID%\SPC700\SPC700DataBlocks_%GAMDID%.bin

echo.
echo Done^^!
echo.
echo Press Enter to re-assemble the chosen ROM.
goto :Input

:Exit
exit
