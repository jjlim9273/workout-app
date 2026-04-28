@echo off
title Force Push
echo ========================================
echo   Force Push to GitHub
echo ========================================

echo Adding all files...
git add -A

echo Committing...
git commit -m "guide fix"

echo Pushing...
git push origin gh-pages --force

echo.
echo Done! Wait 2 min then refresh:
echo https://jjlim9273.github.io/workout-app
echo.
pause