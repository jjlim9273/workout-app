@echo off
title GitHub Upload
echo ========================================
echo   GitHub-upload
echo ========================================

REM Git check
where git >nul 2>nul
if %errorlevel% neq 0 (
    echo Installing Git...
    winget install Git.Git --silent --accept-package-agreements --accept-source-agreements >nul 2>&1
    echo Done! Please run again.
    pause
    exit /b
)

REM GitHub CLI check
where gh >nul 2>nul
if %errorlevel% neq 0 (
    echo Installing GitHub CLI...
    winget install GitHub.cli --silent --accept-package-agreements --accept-source-agreements >nul 2>&1
    echo Done!
    echo.
)

echo Checking login...
gh auth status >nul 2>nul
if %errorlevel% neq 0 (
    echo Please run: gh auth login
    pause
    exit /b
)
echo Logged in!
echo.

echo Configuring Git...
git config --global user.email "jjlim9273@github.com"
git config --global user.name "jjlim9273"

echo Initializing git...
git init 2>nul
git add .
git commit -m "Initial commit" 2>nul

echo.
echo Uploading to GitHub...
gh repo delete workout-app --yes >nul 2>nul 2>&1
gh repo create workout-app --public --source=. --push --description "Home workout app"

echo.
echo ========================================
echo   COMPLETE!
echo ========================================
echo.
echo 1. Go to: https://github.com/jjlim9273/settings/pages
echo 2. Source: Deploy from a branch
echo 3. Branch: main, Folder: /
echo 4. Save
echo.
echo 5. Visit: https://jjlim9273.github.io/workout-app
echo.
pause