@echo off
chcp 65001 >nul
title AI Attendance System - Admin Website

echo.
echo ================================================================================
echo 🤖 AI ATTENDANCE SYSTEM - ADMIN WEBSITE
echo ================================================================================
echo 🎯 Starting the AI-powered attendance management system...
echo.

:: Check if Python is installed
python --version >nul 2>&1
if errorlevel 1 (
    echo ❌ Python is not installed or not in PATH
    echo Please install Python 3.8+ and try again
    pause
    exit /b 1
)

echo ✅ Python found
echo.

:: Check if we're in the correct directory
if not exist "admin_website\admin_api.py" (
    echo ❌ Please run this script from the project root directory
    echo Expected files not found: admin_website\admin_api.py
    pause
    exit /b 1
)

echo ✅ Project files found
echo.

:: Install required dependencies
echo 📦 Installing required dependencies...
pip install fastapi uvicorn python-multipart pydantic pandas opencv-python >nul 2>&1
if errorlevel 1 (
    echo ⚠️  Some dependencies may not have installed properly
    echo Continuing anyway...
) else (
    echo ✅ Dependencies installed successfully
)
echo.

:: Start the admin website
echo 🚀 Starting AI Attendance System Admin Website...
echo.
echo 🌐 Server will be available at: http://localhost:8001
echo 📚 API Documentation: http://localhost:8001/docs
echo.
echo 🎯 Features available:
echo    • Dashboard: Real-time statistics and insights
echo    • Employee Management: Add, edit, delete employees
echo    • Check-ins: Monitor attendance with AI validation
echo    • Reports: Generate comprehensive reports
echo    • Analytics: AI-powered insights and predictions
echo    • Settings: Configure system parameters
echo.
echo ⚠️  Press Ctrl+C to stop the server when you're done
echo.

:: Start the demo
echo Starting Python application...
python demo_admin_website.py

echo.
echo 👋 AI Attendance System stopped
pause
