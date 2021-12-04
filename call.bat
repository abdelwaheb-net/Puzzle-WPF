@echo off
echo type "commit" or "update"
cd "curl"

set GIT_PATH="C:\Program Files\Git\bin\git.exe"
set BRANCH = "origin"
%GIT_PATH% config --global user.email "you@example.com"
%GIT_PATH% config --global user.name "Your Name"
:P
set ACTION=
set /P ACTION=Action: %=%
if "%ACTION%"=="c" (
  %GIT_PATH% add -A
	%GIT_PATH% commit -am "Auto-committed on %date%"
	%GIT_PATH% pull %BRANCH%
	%GIT_PATH% push %BRANCH%
)
if "%ACTION%"=="u" (
	%GIT_PATH% pull %BRANCH%
)
if "%ACTION%"=="exit" exit /b
goto P