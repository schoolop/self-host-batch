@echo off
color 0A
title Self-Host Setup

echo ==========================================
echo   🚀 Starting Your Self-Hosted Bot
echo   Made with ❤️ by idkkkk - Developer
echo ==========================================
echo.

:: Install dependencies if node_modules is missing
if not exist node_modules (
    color 0E
    echo 📦 Installing dependencies...
    npm install
    echo.
    color 0A
)

:: Ask user for their JS file
set /p jsfile=Enter your main JavaScript file (default: index.js): 
if "%jsfile%"=="" set jsfile=index.js

:: Run their JS file
if exist "%jsfile%" (
    color 0B
    echo ▶ Running %jsfile% ...
    echo.
    echo --- Output from %jsfile% --- 
    node "%jsfile%"
    echo --- End of %jsfile% output ---
) else (
    color 0C
    echo ❌ %jsfile% not found!
    echo Please make sure your main JS file exists.
    pause
    exit
)

color 0A
echo.
echo ✅ Bot stopped. Press any key to exit.
pause
