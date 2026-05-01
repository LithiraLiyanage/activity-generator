@echo off
setlocal EnableDelayedExpansion

git config user.name "Lithira Liyanage"
git config user.email "lithiraliyanage666@gmail.com"

for /L %%d in (1,1,28) do (
    for /L %%i in (1,1,5) do (
        echo commit %%i>>file.txt
        git add .
        git commit --date="2026-05-%%dT12:00:00" -m "commit %%i"
    )
)

pause