@echo off
echo type Nom de BRANCH
cd "curl"

set GIT_PATH="C:\Program Files\Git\bin\git.exe"


:P
set BRANCH=
set /P BRANCH=BRANCH: %=%
%GIT_PATH% add -A
%GIT_PATH% commit -am "%BRANCH%"

%GIT_PATH% push -u origin %BRANCH%
echo "%BRANCH%"
cd "curl"
REM if "%BRANCH%"=="exit" exit /b
