@echo off
title Stop AI Attendance System
echo Stopping AI Attendance System...
taskkill /F /IM python.exe >nul 2>&1
echo ✅ All Python processes stopped
pause
