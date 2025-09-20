# AI-Powered Attendance Management System

## 🎯 Overview

This is a comprehensive AI-powered attendance management system that combines multiple advanced technologies to provide secure, accurate, and intelligent time tracking. The system integrates face recognition, liveness detection, GPS anti-fraud, anomaly detection, predictive analytics, and a modern admin web interface for complete management control.

## 🌟 Enhanced Admin Website

**🎉 LATEST UPDATE**: Professional admin website with advanced UI and real-time features!

### **🎨 Enhanced UI Features:**
- **📊 Interactive Dashboard**: Real-time statistics with Chart.js visualizations
- **📈 Advanced Charts**: Line charts, doughnut charts, bar charts, and radar charts
- **👥 Complete Employee Management**: Full CRUD operations with photo upload
- **🕐 Live Check-in Monitoring**: Real-time attendance tracking with AI validation
- **🗺️ Geofence Management**: Visual geofence configuration with coordinates
- **⚙️ AI Settings Panel**: Interactive sliders for model parameter tuning
- **🔔 Real-time Notifications**: Toast notifications and live updates
- **📱 Responsive Design**: Works on desktop, tablet, and mobile devices

### **🚀 Quick Start:**
```bash
python demo_admin_website.py
```
Then open: `http://localhost:8001`

### **✨ New UI Components:**
- **Professional Sidebar Navigation** with gradient design
- **Interactive Data Tables** with filtering and pagination
- **Modal Forms** for employee management
- **Real-time Charts** for analytics and reporting
- **Geofence Visualization** with edit/delete capabilities
- **Loading States** and error handling
- **Toast Notifications** for user feedback

## 🏗️ System Architecture

### Core AI Components

1. **Face Recognition Service** (`face_recognition_service.py`)
   - CNN-based face recognition using MobileNetV3
   - Face embedding extraction with FaceNet/Dlib
   - Real-time face detection and matching
   - Employee registration and verification

2. **Liveness Detection Service** (`liveness_detection_service.py`)
   - Multi-modal liveness detection
   - Eye aspect ratio (EAR) for blink detection
   - Mouth aspect ratio (MAR) for movement detection
   - 3D structure analysis
   - Anti-spoofing protection

3. **GPS Anti-Fraud Service** (`gps_antifraud_service.py`)
   - Geofencing with configurable zones
   - Multi-sensor validation (GPS + WiFi + NFC)
   - Impossible movement detection
   - GPS spoofing prevention
   - Location clustering analysis

4. **Anomaly Detection Service** (`anomaly_detection_service.py`)
   - Isolation Forest and One-Class SVM algorithms
   - Attendance pattern analysis
   - Work hour anomaly detection
   - Punctuality pattern analysis
   - Comprehensive anomaly reporting

5. **Predictive Analytics Service** (`predictive_analytics_service.py`)
   - Employee turnover prediction using XGBoost
   - Attendance pattern forecasting
   - Risk assessment and recommendations
   - Seasonal pattern analysis
   - Performance correlation analysis

6. **AI Integration API** (`ai_integration_api.py`)
   - FastAPI-based REST API
   - Unified endpoint for all AI services
   - Real-time check-in validation
   - Comprehensive attendance analysis
   - Model training and management

7. **Enhanced Admin Website** (`admin_website/`)
   - **Professional UI**: Modern responsive design with gradient sidebar
   - **Interactive Dashboard**: Real-time statistics with Chart.js visualizations
   - **Advanced Charts**: Line, doughnut, bar, and radar charts for analytics
   - **Complete Employee Management**: Full CRUD operations with photo upload
   - **Live Check-in Monitoring**: Real-time attendance tracking with AI validation
   - **Geofence Management**: Visual configuration with coordinates and radius
   - **AI Settings Panel**: Interactive sliders for model parameter tuning
   - **Real-time Notifications**: Toast notifications and live updates
   - **Responsive Design**: Mobile-first approach with tablet and desktop support
   - **Admin API Backend**: FastAPI with comprehensive REST endpoints

## 🚀 Features

### Security & Anti-Fraud
- **Face Recognition**: Secure employee identification
- **Liveness Detection**: Prevents photo/video spoofing attacks
- **GPS Validation**: Multi-layer location verification
- **Anomaly Detection**: Identifies suspicious attendance patterns
- **Real-time Fraud Prevention**: Immediate validation during check-in

### Intelligence & Analytics
- **Predictive Turnover**: AI-powered employee retention analysis
- **Attendance Forecasting**: Predict future attendance patterns
- **Risk Assessment**: Multi-factor risk scoring
- **Pattern Analysis**: Identify trends and anomalies
- **Recommendations**: AI-generated insights for HR management

### Scalability & Integration
- **Microservices Architecture**: Independent, scalable components
- **RESTful API**: Easy integration with existing systems
- **Real-time Processing**: Immediate validation and feedback
- **Batch Processing**: Bulk operations and model training
- **Comprehensive Reporting**: Detailed analytics and insights

### Enhanced Admin Interface & Management
- **🎨 Professional UI**: Modern responsive design with gradient sidebar and smooth animations
- **📊 Interactive Dashboard**: Real-time statistics with Chart.js visualizations and live updates
- **📈 Advanced Analytics**: Line charts, doughnut charts, bar charts, and radar charts
- **👥 Complete Employee Management**: Full CRUD operations with photo upload and face recognition
- **🕐 Live Check-in Monitoring**: Real-time attendance tracking with AI validation and fraud detection
- **🗺️ Geofence Management**: Visual configuration with coordinates, radius, and edit/delete capabilities
- **⚙️ AI Settings Panel**: Interactive sliders for model parameter tuning and sensitivity adjustment
- **🔔 Real-time Notifications**: Toast notifications, live updates, and system alerts
- **📱 Responsive Design**: Mobile-first approach with tablet and desktop optimization
- **🎯 User Experience**: Loading states, error handling, and smooth transitions

## 📋 Requirements

### System Requirements
- Python 3.8+
- TensorFlow 2.10+
- OpenCV 4.6+
- FastAPI 0.85+

### Hardware Recommendations
- **CPU**: Multi-core processor (8+ cores recommended)
- **RAM**: 16GB+ for optimal performance
- **Storage**: SSD with 50GB+ free space
- **GPU**: Optional, but recommended for face recognition (CUDA-compatible)

## 🛠️ Installation

### 1. Clone the Repository
```bash
git clone <repository-url>
cd ai-attendance-system
```

### 2. Create Virtual Environment
```bash
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate
```

### 3. Install Dependencies
```bash
pip install -r requirements.txt
```

### 4. Configure Geofences
Edit `config/geofences.json` to set up your office locations:
```json
{
  "geofences": [
    {
      "name": "Main Office",
      "center_lat": 10.762622,
      "center_lon": 106.660172,
      "radius_meters": 100,
      "allowed_deviation": 50.0
    }
  ]
}
```

### 5. Initialize Models
```bash
python -c "
from ai_services.face_recognition_service import FaceRecognitionService
from ai_services.liveness_detection_service import LivenessDetectionService
from ai_services.anomaly_detection_service import AnomalyDetectionService
from ai_services.predictive_analytics_service import PredictiveAnalyticsService

# Initialize services to create models
face_service = FaceRecognitionService()
liveness_service = LivenessDetectionService()
anomaly_service = AnomalyDetectionService()
predictive_service = PredictiveAnalyticsService()
print('Models initialized successfully!')
"
```

## 🚀 Quick Start

### Option 1: Admin Website (Recommended)
```bash
# Start the complete admin website demo
python demo_admin_website.py
```
Then open: `http://localhost:8001`

### Option 2: AI API Server
```bash
# Start the AI services API server
python ai_services/ai_integration_api.py
```
The API will be available at `http://localhost:8000`

### Option 3: Manual Admin Website
```bash
# Start admin website manually
cd admin_website
pip install fastapi uvicorn python-multipart pydantic
python start_admin.py
```
Then open: `http://localhost:8001`

## 📚 Access Points

- **Admin Website**: `http://localhost:8001` - Complete management interface
- **AI API Documentation**: `http://localhost:8000/docs` - Interactive API docs
- **Admin API Documentation**: `http://localhost:8001/docs` - Admin API docs

## 🔍 Health Checks
```bash
# AI Services Health
curl http://localhost:8000/health

# Admin Website Health
curl http://localhost:8001/api/health
```

## 🌐 Enhanced Admin Website Features

### 📊 Interactive Dashboard
- **🎯 Live Statistics**: Real-time employee count, check-ins, anomalies, attendance rates
- **📈 Advanced Charts**: Interactive Chart.js visualizations (line, doughnut, bar, radar)
- **🔄 Recent Activity**: Latest check-ins with AI validation results and confidence scores
- **👥 Employee Status**: Present, late, absent, remote employee counts with visual indicators
- **🧠 AI Insights**: Intelligent recommendations and pattern analysis with actionable insights
- **📊 Attendance Trends**: Visual trends and analytics with real-time updates

### 👥 Complete Employee Management
- **➕ Add Employees**: Complete registration with photo upload and face recognition
- **✏️ Edit Employees**: Update employee information, department, position, performance ratings
- **🗑️ Delete Employees**: Remove employees with confirmation and data cleanup
- **🔍 Search & Filter**: Find employees by name, ID, department with real-time search
- **📱 Real-time Status**: Live employee attendance status tracking with notifications
- **📸 Photo Management**: Upload, preview, and manage employee photos for face recognition

### 🕐 Live Check-in Monitoring
- **📊 Live Records**: Real-time check-in tracking with AI validation and confidence scores
- **🚨 Fraud Detection**: Monitor suspicious patterns and anomalies with visual alerts
- **📍 Location Tracking**: GPS validation and geofence compliance with map coordinates
- **📱 Device Information**: Camera, mobile, IoT device tracking with device type indicators
- **🎯 Confidence Scores**: AI confidence levels and validation results with progress bars
- **🔍 Advanced Filtering**: Filter by date, employee, anomalies, and device type

### 📈 Advanced Reports & Analytics
- **📊 Interactive Charts**: Chart.js powered visualizations for all analytics
- **📅 Custom Reports**: Generate reports by date range, department, employee with export options
- **📈 Attendance Analysis**: Comprehensive attendance summaries with trend analysis
- **🏢 Department Breakdown**: Performance analysis by department with comparative charts
- **📤 Export Data**: Download reports in multiple formats (CSV, PDF, Excel)
- **🤖 AI Analytics**: Turnover risk and predictive insights with actionable recommendations

### ⚙️ Enhanced System Settings
- **🗺️ Geofence Management**: Visual configuration with coordinates, radius, and edit/delete capabilities
- **🎛️ AI Parameters**: Interactive sliders for face recognition and liveness detection thresholds
- **🔔 Notifications**: Configure alerts and system notifications with real-time preview
- **🔒 Security**: Access controls and permission management with role-based access
- **📊 Performance Monitoring**: Real-time system performance metrics and health checks

## 📚 API Usage Examples

### Admin Website API

#### Get Dashboard Statistics
```bash
curl http://localhost:8001/api/dashboard/stats
```

#### Get All Employees
```bash
curl http://localhost:8001/api/employees
```

#### Add New Employee
```bash
curl -X POST "http://localhost:8001/api/employees" \
  -F "employee_id=EMP001" \
  -F "name=John Doe" \
  -F "department=Engineering" \
  -F "position=Developer" \
  -F "age=30" \
  -F "salary_level=mid" \
  -F "education_level=bachelor" \
  -F "face_image=@employee_photo.jpg"
```

#### Get Check-in Records
```bash
curl http://localhost:8001/api/checkins
```

#### Generate Report
```bash
curl -X POST "http://localhost:8001/api/reports" \
  -H "Content-Type: application/json" \
  -d '{
    "report_type": "attendance",
    "start_date": "2024-01-01T00:00:00Z",
    "end_date": "2024-01-31T23:59:59Z"
  }'
```

### AI Services API

#### Register Employee
```bash
curl -X POST "http://localhost:8000/register-employee" \
  -F "employee_id=EMP001" \
  -F "name=John Doe" \
  -F "department=Engineering" \
  -F "position=Developer" \
  -F "age=30" \
  -F "tenure_months=24" \
  -F "salary_level=mid" \
  -F "education_level=bachelor" \
  -F "performance_rating=4.0" \
  -F "manager_id=MGR001" \
  -F "team_size=8" \
  -F "face_image=@employee_photo.jpg"
```

### Check-In
```bash
curl -X POST "http://localhost:8000/check-in" \
  -H "Content-Type: application/json" \
  -d '{
    "employee_id": "EMP001",
    "latitude": 10.762622,
    "longitude": 106.660172,
    "accuracy": 5.0,
    "timestamp": "2024-01-15T08:30:00Z",
    "device_type": "mobile",
    "wifi_data": [
      {
        "bssid": "aa:bb:cc:dd:ee:ff",
        "ssid": "Office_WiFi",
        "signal_strength": -45,
        "frequency": 2437
      }
    ]
  }'
```

### Analyze Attendance
```bash
curl -X POST "http://localhost:8000/analyze-attendance" \
  -H "Content-Type: application/json" \
  -d '{
    "employee_id": "EMP001",
    "start_date": "2024-01-01T00:00:00Z",
    "end_date": "2024-01-31T23:59:59Z",
    "include_predictions": true
  }'
```

### Train Models
```bash
curl -X POST "http://localhost:8000/train-models"
```

## 🔧 Configuration

### Model Parameters
- **Face Recognition**: Threshold = 0.6, Model = MobileNetV3Large
- **Liveness Detection**: Eye AR threshold = 0.25, Mouth AR threshold = 0.3
- **GPS Anti-Fraud**: Max location jump = 1000m, Speed threshold = 200 km/h
- **Anomaly Detection**: Contamination = 0.1, Min samples = 50
- **Predictive Analytics**: XGBoost with 100 estimators

### Geofence Configuration
Modify `config/geofences.json` to add/update office locations:
```json
{
  "name": "New Office",
  "center_lat": 21.028511,
  "center_lon": 105.854167,
  "radius_meters": 100,
  "allowed_deviation": 50.0
}
```

## 📊 Model Training

### Training Data Requirements
- **Face Recognition**: 1 clear photo per employee
- **Liveness Detection**: Video samples with various conditions
- **Anomaly Detection**: 100+ historical attendance records
- **Predictive Analytics**: Employee profiles + attendance history

### Training Process
1. Collect historical data
2. Run `/train-models` endpoint
3. Monitor training progress
4. Validate model performance
5. Deploy updated models

## 🔍 Monitoring & Analytics

### Key Metrics
- **Face Recognition Accuracy**: >95%
- **Liveness Detection**: >90% accuracy
- **GPS Validation**: >99% accuracy
- **Anomaly Detection**: Configurable sensitivity
- **Prediction Accuracy**: Varies by model

### Health Monitoring
- API health endpoint: `/health`
- Service status monitoring
- Model performance tracking
- Error rate monitoring

## 🛡️ Security Features

### Data Protection
- Encrypted data storage
- Secure API endpoints
- Role-based access control
- Audit logging

### Anti-Fraud Measures
- Multi-factor validation
- Real-time fraud detection
- Suspicious pattern identification
- Location verification

## 🤝 Integration

### HR Systems
- Payroll integration
- Employee management systems
- Performance tracking
- Reporting dashboards

### Mobile Apps
- Native iOS/Android apps
- Cross-platform frameworks
- Real-time synchronization
- Offline capability

## 📈 Performance Optimization

### Scaling Considerations
- Horizontal scaling with load balancers
- Database optimization
- Caching strategies
- CDN for static assets

### Performance Tuning
- Model quantization
- Batch processing
- Async operations
- Resource monitoring

## 🐛 Troubleshooting

### Common Issues
1. **Face Recognition Fails**
   - Check image quality
   - Verify lighting conditions
   - Ensure face is clearly visible

2. **GPS Validation Issues**
   - Check geofence configuration
   - Verify GPS accuracy
   - Review WiFi/NFC data

3. **Model Training Errors**
   - Ensure sufficient training data
   - Check data quality
   - Verify feature engineering

### Debug Mode
Enable debug logging:
```python
import logging
logging.basicConfig(level=logging.DEBUG)
```

## 📞 Support

For technical support and questions:
- Create an issue in the repository
- Check the API documentation at `/docs`
- Review the troubleshooting guide

## 📁 Project Structure

```
ai-attendance-system/
├── ai_services/                    # Core AI services
│   ├── face_recognition_service.py
│   ├── liveness_detection_service.py
│   ├── gps_antifraud_service.py
│   ├── anomaly_detection_service.py
│   ├── predictive_analytics_service.py
│   └── ai_integration_api.py
├── admin_website/                  # Admin web interface
│   ├── index.html                 # Main website interface
│   ├── styles.css                 # Professional styling
│   ├── script.js                  # Interactive functionality
│   ├── admin_api.py               # Admin API backend
│   ├── start_admin.py             # Easy startup script
│   └── README.md                  # Admin website documentation
├── config/                        # Configuration files
│   └── geofences.json            # Office location settings
├── models/                        # AI model storage
├── data/                          # Data storage
├── requirements.txt               # Python dependencies
├── docker-compose.yml             # Docker deployment
├── Dockerfile                     # Container configuration
├── demo_admin_website.py          # Complete demo script
├── test_ai_components.py          # AI services testing
├── simple_test.py                 # Basic functionality testing
├── test_api_basic.py              # API testing
├── TEST_RESULTS.md                # Test results summary
├── ADMIN_WEBSITE_SUMMARY.md       # Admin website overview
└── README.md                      # This file
```

## 🎯 Getting Started Guide

### For Administrators (Recommended)
1. **Start Admin Website**: `python demo_admin_website.py`
2. **Open Browser**: Go to `http://localhost:8001`
3. **Explore Features**: Navigate through dashboard, employees, check-ins, reports
4. **Add Employees**: Use the employee management interface
5. **Configure Settings**: Set up geofences and AI parameters

### For Developers
1. **Install Dependencies**: `pip install -r requirements.txt`
2. **Start AI Services**: `python ai_services/ai_integration_api.py`
3. **Access API Docs**: Go to `http://localhost:8000/docs`
4. **Test Components**: Run `python test_ai_components.py`
5. **Integrate APIs**: Use the REST API endpoints

### For System Integration
1. **Configure Geofences**: Edit `config/geofences.json`
2. **Set AI Parameters**: Adjust model thresholds in settings
3. **Train Models**: Use `/train-models` endpoint with historical data
4. **Monitor Performance**: Check health endpoints and logs
5. **Scale System**: Use Docker deployment for production

## 🏆 Key Achievements

✅ **Complete AI System**: 6 advanced AI services with ML models  
✅ **🎨 Enhanced Admin Website**: Professional UI with Chart.js visualizations and real-time features  
✅ **📊 Interactive Dashboard**: Advanced charts, live statistics, and AI insights  
✅ **👥 Full CRUD Operations**: Complete employee management with photo upload and face recognition  
✅ **🕐 Real-time Monitoring**: Live attendance tracking with AI validation and fraud detection  
✅ **📈 Advanced Analytics**: Interactive charts, comprehensive reporting, and AI-powered insights  
✅ **🗺️ Geofence Management**: Visual configuration with coordinates and radius settings  
✅ **📱 Responsive Design**: Mobile-first approach with tablet and desktop optimization  
✅ **🔔 Real-time Notifications**: Toast notifications, live updates, and system alerts  
✅ **⚙️ AI Settings Panel**: Interactive sliders for model parameter tuning  
✅ **Production Ready**: Docker support and comprehensive testing  
✅ **Enterprise Features**: Security, scalability, and integration ready  

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 🙏 Acknowledgments

- TensorFlow team for ML framework
- OpenCV community for computer vision
- FastAPI for web framework
- Font Awesome for icons
- All contributors and testers

---

**🎉 The AI Attendance System is now a complete, enterprise-ready solution with advanced AI capabilities and a professional, interactive admin interface!**

### **🚀 Latest Updates:**
- **🎨 Enhanced UI**: Professional design with Chart.js visualizations and real-time features
- **📊 Interactive Charts**: Line, doughnut, bar, and radar charts for comprehensive analytics
- **🗺️ Geofence Management**: Visual configuration with coordinates and radius settings
- **⚙️ AI Settings Panel**: Interactive sliders for model parameter tuning
- **🔔 Real-time Notifications**: Toast notifications and live updates
- **📱 Responsive Design**: Mobile-first approach with tablet and desktop optimization

### **🎯 Ready for Production:**
- Complete AI-powered attendance management
- Professional admin interface with advanced UI
- Real-time monitoring and analytics
- Enterprise-grade security and scalability
- Docker deployment support
- Comprehensive API documentation

**Note**: This system is designed for enterprise use and requires proper data privacy compliance (GDPR, CCPA, etc.) when handling employee biometric data.
