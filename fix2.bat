@echo off
title Fix Root URL
echo ========================================
echo   Fix Root URL
echo ========================================

git checkout gh-pages

copy workout.html index.html
git add index.html
git commit -m "Add index"
git push origin gh-pages

echo.
echo Done! Wait 2 min then visit:
echo https://jjlim9273.github.io/workout-app
echo.
pause