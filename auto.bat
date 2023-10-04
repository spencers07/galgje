@echo off
setlocal enabledelayedexpansion

:: Execute 'git add .' command
git add .

:: Prompt the user for a commit message
set /p commitMessage="Enter your commit message: "

:: Execute 'git commit -m' command with the user-provided message
git commit -m "!commitMessage!"

:: Execute 'git push' command
git push

:: Display the Git status
git status

:: Check for errors during the 'git push' operation
if %errorlevel% neq 0 (
    echo Error occurred during 'git push' operation.
    exit /b %errorlevel%
) else (
    echo Thanks for using GitAutoPush, the project has been updated!
)

:: End of the script