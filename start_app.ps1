# AI Attendance System - PowerShell Launcher
# Set console encoding to UTF-8
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

Write-Host ""
Write-Host "================================================================================" -ForegroundColor Cyan
Write-Host "🤖 AI ATTENDANCE SYSTEM - ADMIN WEBSITE" -ForegroundColor Yellow
Write-Host "================================================================================" -ForegroundColor Cyan
Write-Host "🎯 Starting the AI-powered attendance management system..." -ForegroundColor Green
Write-Host ""

# Check if Python is installed
try {
    $pythonVersion = python --version 2>&1
    if ($LASTEXITCODE -eq 0) {
        Write-Host "✅ Python found: $pythonVersion" -ForegroundColor Green
    } else {
        throw "Python not found"
    }
} catch {
    Write-Host "❌ Python is not installed or not in PATH" -ForegroundColor Red
    Write-Host "Please install Python 3.8+ and try again" -ForegroundColor Yellow
    Read-Host "Press Enter to exit"
    exit 1
}

Write-Host ""

# Check if we're in the correct directory
if (-not (Test-Path "admin_website\admin_api.py")) {
    Write-Host "❌ Please run this script from the project root directory" -ForegroundColor Red
    Write-Host "Expected files not found: admin_website\admin_api.py" -ForegroundColor Yellow
    Read-Host "Press Enter to exit"
    exit 1
}

Write-Host "✅ Project files found" -ForegroundColor Green
Write-Host ""

# Install required dependencies
Write-Host "📦 Installing required dependencies..." -ForegroundColor Blue
try {
    pip install fastapi uvicorn python-multipart pydantic pandas opencv-python | Out-Null
    Write-Host "✅ Dependencies installed successfully" -ForegroundColor Green
} catch {
    Write-Host "⚠️  Some dependencies may not have installed properly" -ForegroundColor Yellow
    Write-Host "Continuing anyway..." -ForegroundColor Yellow
}

Write-Host ""

# Start the admin website
Write-Host "🚀 Starting AI Attendance System Admin Website..." -ForegroundColor Blue
Write-Host ""
Write-Host "🌐 Server will be available at: http://localhost:8001" -ForegroundColor Cyan
Write-Host "📚 API Documentation: http://localhost:8001/docs" -ForegroundColor Cyan
Write-Host ""
Write-Host "🎯 Features available:" -ForegroundColor Yellow
Write-Host "   • Dashboard: Real-time statistics and insights" -ForegroundColor White
Write-Host "   • Employee Management: Add, edit, delete employees" -ForegroundColor White
Write-Host "   • Check-ins: Monitor attendance with AI validation" -ForegroundColor White
Write-Host "   • Reports: Generate comprehensive reports" -ForegroundColor White
Write-Host "   • Analytics: AI-powered insights and predictions" -ForegroundColor White
Write-Host "   • Settings: Configure system parameters" -ForegroundColor White
Write-Host ""
Write-Host "⚠️  Press Ctrl+C to stop the server when you're done" -ForegroundColor Red
Write-Host ""

# Start the demo
try {
    python demo_admin_website.py
} catch {
    Write-Host "❌ Error starting the application" -ForegroundColor Red
    Write-Host $_.Exception.Message -ForegroundColor Red
}

Write-Host ""
Write-Host "👋 AI Attendance System stopped" -ForegroundColor Green
Read-Host "Press Enter to exit"
