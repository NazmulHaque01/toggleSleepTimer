@echo off
setlocal EnableDelayedExpansion

:loop
cls
echo ================================
echo Current Active Power Plan:
for /f "tokens=*" %%i in ('powercfg /getactivescheme') do (
    echo %%i
    set "current=%%i"
)
echo ================================
echo Press [t] then [Enter] to toggle
echo Press any other key to exit
set /p choice=Your input: 

if /i "!choice!"=="t" (
    echo.
    echo Toggling power plan...
    echo.

    echo !current! | findstr /i "SleepAfter10" >nul
    if !errorlevel! == 0 (
        powercfg /setactive ......Power Plan's GUID......
    ) else (
        powercfg /setactive ......Power Plan's GUID......
    )
    timeout /t 2 >nul
    goto loop
) else (
    echo Exiting...
    timeout /t 1 >nul
    exit /b

)
