@echo off
echo type Nom de BRANCH
cd "curl"

set GIT_PATH="C:\Program Files\Git\bin\git.exe"


:P
set BRANCH=
set /P BRANCH=BRANCH: %=%
%GIT_PATH% status
%GIT_PATH% add -A
%GIT_PATH% status
echo type Nom de BRANCH
cd "curl"
set MessageCommit=
set /P MessageCommit=Message de Commit: %=%
set commit=%BRANCH% / %MessageCommit%
%GIT_PATH% commit -am "%commit%"

%GIT_PATH% push -u origin %BRANCH%
echo "%BRANCH%"
if "%BRANCH%"=="exit" exit /b
pause