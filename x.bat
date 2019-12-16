@echo off
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
cd /d "%~dp0"
@setlocal enableextensions
@set current_dir="%~dp0"
@cd /d "%current_dir%"
@echo %current_dir%
@certutil -addstore root ca.cert.pem
if %ERRORLEVEL% EQU 0 @echo not ok