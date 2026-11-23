@echo off
setlocal
set "PATH=%LOCALAPPDATA%\Programs\Git\cmd;%ProgramFiles%\Git\cmd;%PATH%"

echo ========================================================
echo  Deploying Animated AI Portfolio to GitHub Profile
echo  Repository: https://github.com/Prabhakar289692/Prabhakar289692
echo ========================================================
echo.

REM Verify git is available
where git >nul 2>nul
if %errorlevel% neq 0 (
    echo Error: git command not found.
    echo Please install Git or check your installation.
    pause
    exit /b 1
)

REM Check if git repo exists, if not initialize
if not exist ".git" (
    echo Initializing Git repository...
    git init
    git branch -M main
    git remote add origin https://github.com/Prabhakar289692/Prabhakar289692.git
)

REM Verify origin remote
git remote -v

echo.
echo Staging all files and assets...
git add .

echo.
echo Committing latest changes...
git commit -m "feat: futuristic visual-first animated SVG profile README"

echo.
echo ========================================================
echo  Pushing to GitHub (main branch)...
echo  If prompted, complete the GitHub sign-in in your browser.
echo ========================================================
git push -u origin main

echo.
if %errorlevel% equ 0 (
    echo ========================================================
    echo  SUCCESS! Your GitHub Profile is live at:
    echo  https://github.com/Prabhakar289692
    echo ========================================================
) else (
    echo.
    echo If push was rejected because remote has existing commits,
    echo run: git pull origin main --rebase
    echo then re-run this script.
)

pause
