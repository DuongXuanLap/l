# 🚀 Batch Files for AI Attendance System

This directory contains several batch files to easily run the AI Attendance System on Windows.

## 📁 Available Batch Files

### 1. `run_app.bat` - **Main Application Launcher**
- **Purpose**: Complete setup and launch of the AI Attendance System
- **Features**:
  - ✅ Checks Python installation
  - ✅ Verifies project files
  - ✅ Installs required dependencies
  - ✅ Starts the admin website
  - ✅ Opens browser automatically
  - ✅ Comprehensive error handling

**Usage**: Double-click `run_app.bat` or run from command line

### 2. `start.bat` - **Quick Start**
- **Purpose**: Simple, fast startup without dependency checks
- **Features**:
  - 🚀 Quick launch
  - 📱 Minimal interface
  - ⚡ Fast startup

**Usage**: Double-click `start.bat` for quick access

### 3. `dev.bat` - **Development Mode**
- **Purpose**: Development server with auto-reload
- **Features**:
  - 🔄 Auto-reload on file changes
  - 🛠️ Development dependencies
  - 📊 Enhanced logging
  - 🎯 Developer-friendly interface

**Usage**: Double-click `dev.bat` for development work

### 4. `stop.bat` - **Stop All Services**
- **Purpose**: Stop all running Python processes
- **Features**:
  - 🛑 Force stops all Python processes
  - 🧹 Clean shutdown
  - ✅ Confirmation message

**Usage**: Double-click `stop.bat` to stop the system

## 🎯 Quick Start Guide

### For End Users:
1. **Double-click `run_app.bat`**
2. **Wait for setup to complete**
3. **Browser will open automatically**
4. **Access the admin website at `http://localhost:8001`**

### For Developers:
1. **Double-click `dev.bat`**
2. **Make changes to code**
3. **Server auto-reloads on changes**
4. **Access at `http://localhost:8001`**

## 🌐 Access Points

Once running, you can access:

- **Main Website**: `http://localhost:8001`
- **API Documentation**: `http://localhost:8001/docs`
- **Health Check**: `http://localhost:8001/api/health`

## 🛠️ Troubleshooting

### Common Issues:

1. **"Python not found"**
   - Install Python 3.8+ from [python.org](https://python.org)
   - Make sure Python is added to PATH

2. **"Dependencies failed to install"**
   - Run `pip install -r requirements.txt` manually
   - Check internet connection

3. **"Port 8001 already in use"**
   - Run `stop.bat` first
   - Or change port in the batch files

4. **"Files not found"**
   - Make sure you're running from the project root directory
   - Check that `admin_website` folder exists

## 📋 System Requirements

- **Windows 10/11**
- **Python 3.8+**
- **Internet connection** (for dependency installation)
- **4GB RAM minimum**
- **500MB free disk space**

## 🎉 Features Available

Once the system is running, you'll have access to:

- 📊 **Interactive Dashboard** with real-time statistics
- 👥 **Employee Management** with photo upload
- 🕐 **Check-in Monitoring** with AI validation
- 📈 **Reports & Analytics** with charts
- 🧠 **AI Insights** and predictions
- ⚙️ **System Settings** and configuration
- 🗺️ **Geofence Management**

## 🔧 Customization

You can modify the batch files to:
- Change the port number
- Add additional dependencies
- Modify startup messages
- Add custom configurations

## 📞 Support

If you encounter issues:
1. Check the troubleshooting section above
2. Verify all requirements are met
3. Check the console output for error messages
4. Ensure no other applications are using port 8001

---

**🎯 Happy using the AI Attendance System!**
