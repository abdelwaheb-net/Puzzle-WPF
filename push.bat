@echo off
echo type Nom de BRANCH
cd "curl"

set GIT_PATH="C:\Program Files\Git\bin\git.exe"


:P
set BRANCH=
set /P BRANCH=BRANCH: %=%
%GIT_PATH% status
echo would you add this change in branch (y):Yes/(n):No 
set AddACTION=
set /P AddACTION=Add: %=%
if "%AddACTION%"=="y" (
%GIT_PATH% add -A
%GIT_PATH% status
echo type Nom de BRANCH

set Message=
set /P Message=Message: %=%
%GIT_PATH% commit -am "%BRANCH%/%MessageCommit%"

%GIT_PATH% push -u origin %BRANCH%
echo "%BRANCH%"
if "%BRANCH%"=="exit" exit /b
pause
)