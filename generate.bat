@echo off
setlocal EnableDelayedExpansion

git config user.name "Lithira Liyanage"
git config user.email "lithiraliyanage666@gmail.com"

for /L %%i in (1,1,30) do (
    echo commit %%i>>file.txt
    git add .
    set /a DAY=!RANDOM! %% 28 + 1
    git commit --date="2025-01-!DAY!T12:00:00" -m "commit %%i"
)

pause