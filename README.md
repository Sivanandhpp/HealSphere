# 🏥 HealSphere

A comprehensive healthcare mobile application built with Flutter that provides instant access to medical services, lab tests, health packages, reports, and support services.

## 📱 Overview

HealSphere is a modern healthcare platform designed to streamline medical services access. The app allows users to book appointments instantly, order lab tests, manage health packages, view medical reports, and get support - all from a single, user-friendly interface.

## ✨ Features

### 🏠 Dashboard & Navigation
- **Personalized Dashboard**: Greeting with user's health status
- **Quick Search**: Search for doctors, services, and medical facilities
- **Floating Bottom Navigation**: Smooth navigation between Home, Teams, Chat, and Profile

### 🔬 Lab Tests
- **Comprehensive Test Catalog**: Wide range of medical tests including CBC, Blood Sugar, Lipid Profile, Thyroid Function, etc.
- **Quick Booking**: One-tap test booking with transparent pricing
- **Fast Results**: Clear indication of result delivery times (6-24 hours)
- **Search & Filter**: Easy search functionality to find specific tests

### 📦 Health Packages
- **Curated Packages**: Pre-designed health checkup packages for different demographics
  - Essential Health Checkup (₹999)
  - Comprehensive Full Body Checkup (₹2499)
  - Women's Wellness Package (₹1899)
  - Senior Citizen Health Package (₹3499)
  - Diabetes Management Package (₹1299)
- **Detailed Information**: Complete test listings and additional services included
- **Targeted Solutions**: Age and gender-specific health packages

### 📄 Medical Reports
- **Digital Reports**: Access all medical reports in one place
- **Download & Share**: PDF download and sharing capabilities
- **Report History**: Chronological view of all medical tests and results
- **Quick Access**: Search through past reports easily

### 🆘 Help & Support
- **Comprehensive Support**: Multi-category support system
  - Appointment Issues (reschedule, cancellation, follow-ups)
  - Payments & Insurance (failures, refunds, billing)
  - Report Queries (understanding results, downloads)
- **Multiple Contact Options**: Phone support and email assistance
- **Live Chat**: Instant chat support feature

### 📅 Appointment Management
- **Upcoming Appointments**: Clear view of scheduled medical consultations
- **Doctor Profiles**: Information about healthcare professionals
- **Easy Rescheduling**: Simple appointment modification system
- **Real-time Updates**: Live appointment status tracking

## 🚀 Technical Architecture

### Framework & Dependencies
- **Flutter 3.8.1+**: Cross-platform mobile development
- **GetX 4.7.2**: State management, routing, and dependency injection
- **Pinput 5.0.1**: OTP input functionality
- **Intl Phone Field 3.2.0**: International phone number handling

### Project Structure
```
lib/
├── app/
│   ├── core/
│   │   └── themes/           # App themes and colors
│   ├── modules/              # Feature modules
│   │   ├── authentication/   # Login/Signup functionality
│   │   ├── home/            # Dashboard and main navigation
│   │   ├── lab_tests/       # Lab test booking and management
│   │   ├── onboarding/      # App introduction screens
│   │   ├── packages/        # Health package management
│   │   ├── report/          # Medical reports viewing
│   │   └── help/            # Support and help features
│   └── routes/              # App navigation and routing
└── main.dart                # Application entry point
```

### Architecture Pattern
- **GetX MVC Pattern**: Separation of concerns with Controllers, Views, and Bindings
- **Modular Design**: Each feature is self-contained with its own controller, view, and binding
- **Responsive UI**: Adaptive design for different screen sizes
- **Clean Code**: Well-structured, maintainable codebase

## 🎨 Design System

### Color Palette
- **Primary**: `#157FA6` (Medical Blue)
- **Secondary**: `#00B8D9` (Aqua Blue)
- **Background**: `#F4F5F7` (Light Gray)
- **Text Primary**: `#000000` (Black)
- **Text Secondary**: `#808080` (Gray)

### UI Components
- **Floating Navigation**: Modern bottom navigation with smooth transitions
- **Card-based Layout**: Clean card design for content organization
- **Gradient Buttons**: Eye-catching call-to-action elements
- **Icon Integration**: Consistent iconography throughout the app
- **Search Interface**: User-friendly search bars across all modules

## 🛠️ Installation & Setup

### Prerequisites
- Flutter SDK (3.8.1 or later)
- Dart SDK
- Android Studio / VS Code
- Android SDK / Xcode (for iOS)

### Installation Steps

1. **Clone the repository**
   ```bash
   git clone https://github.com/Sivanandhpp/HealSphere.git
   cd HealSphere
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the application**
   ```bash
   flutter run
   ```

### Build for Production

**Android:**
```bash
flutter build apk --release
```

**iOS:**
```bash
flutter build ios --release
```

## 📱 Screenshots & Features

### Key Screens
- **Onboarding**: Welcome screens introducing app features
- **Authentication**: Login/signup with phone number verification
- **Home Dashboard**: Personalized health overview
- **Lab Tests**: Comprehensive test catalog with booking
- **Health Packages**: Curated health checkup packages
- **Reports**: Digital medical report management
- **Help & Support**: Multi-channel customer support

## 🔄 App Flow

1. **Onboarding** → Introduction to app features
2. **Authentication** → Phone number verification and login
3. **Dashboard** → Personalized health overview
4. **Service Selection** → Choose from lab tests, packages, reports, or support
5. **Booking/Management** → Complete transactions or access information
6. **Support** → Get help when needed

## 🚧 Development Status

### Completed Features ✅
- Complete UI/UX design implementation
- Navigation system with GetX routing
- Lab tests catalog and booking interface
- Health packages with detailed information
- Medical reports viewing and management
- Comprehensive help and support system
- Responsive design for multiple screen sizes

### Upcoming Features 🔄
- Backend integration for real data
- Payment gateway integration
- Push notifications for appointments
- Doctor profile and booking system
- Chat functionality
- User profile management
- Medical history tracking

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👨‍💻 Developer

**Sivanandhpp**
- GitHub: [@Sivanandhpp](https://github.com/Sivanandhpp)

## 📞 Support

For support and questions:
- Email: support@healsphere.com
- Phone: +1 800 123 4567
- Live Chat: Available in the app

---

**HealSphere** - *Making healthcare accessible, one tap at a time* 🏥✨
