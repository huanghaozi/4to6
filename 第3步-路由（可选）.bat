@echo off
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
cd /d "%~dp0"
rem route add ::/0 2001:da8:265:3fff:fff:1050:0:2ad
netsh interface ipv6 add route ::/0 "6chang"
pause