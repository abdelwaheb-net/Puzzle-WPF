@echo off
echo type "commit" or "update"
cd "curl"

set GIT_PATH="C:\Program Files\Git\bin\git.exe"
set BRANCH = "origin"

:P
set ACTION=
set /P ACTION=Action: %=%
%GIT_PATH% add -A
%GIT_PATH% commit -am "%ACTION%"

%GIT_PATH% push -u origin %ACTION%
echo "%ACTION%"
if "%ACTION%"=="exit" exit /b
