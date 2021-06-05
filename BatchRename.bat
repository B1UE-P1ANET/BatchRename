@echo off
title BatchRename
:home
cls
echo Enter the Word which you want to replace:
set /p W=
echo Replace?:
set /p R=
powershell.exe -command "dir | Rename-Item -NewName{$_.name -replace '%W%','%R%'}"
pause
goto Q
:Q
cls
echo Done? (Y/N)
set /p Ans=
if %Ans%==Y (exit)
if %Ans%==y (exit)
if %Ans%==N (goto home)
if %Ans%==n (goto home)
if %Ans%==Creator(goto S)
if %Ans%==creator(goto S)
pause
:S
cls
echo Lazy guy who made this thing : https://github.com/B1UE-P1ANETthis project made by https://github.com/B1UE-P1ANET