@echo off
chcp 65001 >nul
title AI Attendance System - Development Mode

echo.
echo ================================================================================
echo 🛠️  AI ATTENDANCE SYSTEM - DEVELOPMENT MODE
echo ================================================================================
echo 🎯 Starting in development mode with auto-reload...
echo.

:: Check if Python is installed
python --version >nul 2>&1
if errorlevel 1 (
    echo ❌ Python is not installed or not in PATH
    pause
    exit /b 1
)

:: Install development dependencies
echo 📦 Installing development dependencies...
pip install fastapi uvicorn[standard] python-multipart pydantic pandas opencv-python watchdog >nul 2>&1

echo ✅ Dependencies ready
echo.

:: Start with auto-reload for development
echo 🚀 Starting development server with auto-reload...
echo 🌐 Server: http://localhost:8001
echo 📚 API Docs: http://localhost:8001/docs
echo 🔄 Auto-reload enabled for development
echo.

cd admin_website
uvicorn admin_api:app --host 0.0.0.0 --port 8001 --reload

echo.
echo 👋 Development server stopped
pause
