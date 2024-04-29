@echo off
echo ZIPMANAGER PLUGIN SYSTEM
echo ========================
echo.
set /p zip="Zip File: "
set /p directory="Directory: "
set /p quiet="Quiet mode? (y/n): "

if /i "%quiet%"=="y" (
    zipmanager.exe -unpack "%zip%" "%directory%" -quiet
) else (
    zipmanager.exe -unpack "%zip%" "%directory%"
)
