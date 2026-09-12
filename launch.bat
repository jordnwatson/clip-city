@echo off
title Clip City
cd /d "%~dp0"

echo Pulling latest code...
git pull
if errorlevel 1 (
    echo.
    echo Git pull failed - check your internet connection or run this from inside the clip-city folder.
    pause
    exit /b 1
)

echo.
echo Checking dependencies...
call npm install --silent

echo.
echo Launching Clip City...
call npm start

if errorlevel 1 (
    echo.
    echo Something went wrong launching the app. See the error above.
    pause
)
