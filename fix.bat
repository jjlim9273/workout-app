@echo off
title Fix GitHub Pages
echo ========================================
echo   Fix GitHub Pages
echo ========================================

echo Creating gh-pages branch...
git checkout -b gh-pages
git push origin gh-pages

echo.
echo DONE! Now setup:
echo.
echo 1. Go to:
echo    https://github.com/jjlim9273/workout-app/settings/pages
echo.
echo 2. Set:
echo    - Source: Deploy from a branch
echo    - Branch: gh-pages
echo    - Folder: / (root)
echo    - Save
echo.
echo 3. Wait 2 min
echo.
echo 4. Visit: https://jjlim9273.github.io/workout-app
echo.
pause