@echo off
echo ========================================================
echo  Deploying Animated AI Portfolio to GitHub Profile
echo  Repository: https://github.com/Prabhakar289692/Prabhakar289692
echo ========================================================
echo.

if not exist ".git" (
    echo Initializing Git repository...
    git init
    git branch -M main
    git remote add origin https://github.com/Prabhakar289692/Prabhakar289692.git
)

echo Staging all assets...
git add .

echo Committing...
git commit -m "feat: futuristic visual-first animated SVG profile README"

echo Pushing to main branch...
git push -u origin main

echo.
echo ========================================================
echo  Deployment complete! Check your GitHub profile:
echo  https://github.com/Prabhakar289692
echo ========================================================
pause
