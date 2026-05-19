@echo off
cd /d "%~dp0"

IF NOT EXIST ".git" (
    git init
    git branch -M main
)

git add .
git commit -m "Initial release: A desktop Tkinter analysis tool for **Lunar Laser Ranging (LLR)** normal-point data"

git remote get-url origin >nul 2>&1
IF ERRORLEVEL 1 (
    gh repo create mhawarey/lunar-laser-ranging-analyzer --public --source=. --remote=origin --push
) ELSE (
    git push -u origin main
)

echo [DONE] https://github.com/mhawarey/lunar-laser-ranging-analyzer
pause
