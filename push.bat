@echo off
title Push Update
echo ========================================
echo   Push Update to GitHub
echo ========================================
echo.
git add workout.html index.html
git commit -m "Update image guide"
git push origin gh-pages
echo.
echo Done! Refresh: https://jjlim9273.github.io/workout-app
echo.
pause