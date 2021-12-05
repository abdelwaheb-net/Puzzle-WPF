@echo off
echo type "commit" or "update"
cd "curl"

set GIT_PATH="C:\Program Files\Git\bin\git.exe"
set BRANCH = "origin"

:P
set CommitMessage=
set /P CommitMessage=Message de Commit: %=%
%GIT_PATH% add -A
%GIT_PATH% commit -am "%CommitMessage%"

%GIT_PATH% push %BRANCH%
echo "%BRANCH%"
if "%CommitMessage%"=="exit" exit /b
