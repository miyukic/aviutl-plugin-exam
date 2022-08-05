@echo off
rem chcp 932
powershell -ExecutionPolicy RemoteSigned .\install-dependency.ps1 -Encoding utf8
pause
