# Firebase Auth App

A Flutter application that demonstrates user authentication and profile management using Firebase Authentication and Firestore.

## Description

This project is a complete Flutter app showcasing modern authentication flows including user registration, login, and profile management. It integrates Firebase Authentication for secure user sign-in and Firestore for storing user data, providing a robust foundation for building user-centric mobile applications.

## Features

- **User Authentication**: Secure sign-up and login using Firebase Authentication
- **Email/Password Authentication**: Support for email and password-based authentication
- **User Profile Management**: View and manage user profiles
- **Firestore Integration**: Store and retrieve user data from Firestore

## Screenshots

| Login Screen | SignUp Screen | Profile Screen |
|---|---|---|
| ![Login Screen](assets\images\login_screen.png) | ![SignUp Screen](assets\images\signup_screen.png) | ![Profile Screen](assets\images\profile_screen.png) |


## Prerequisites

Before running this project, ensure you have the following installed:

- [Flutter SDK](https://flutter.dev/docs/get-started/install) (version 3.11.4 or later)
- [Dart SDK](https://dart.dev/get-dart) (included with Flutter)
- A Firebase project with Authentication and Firestore enabled
- Android Studio or Xcode for mobile development (optional, for emulators)

## Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/muhammadSaadXCII/flutter_firebase_auth_app.git
   cd flutter_firebase_auth_app
   ```

2. **Install dependencies**:
   ```bash
   flutter pub get
   ```

3. **Firebase Setup**:
   - Create a new Firebase project at [Firebase Console](https://console.firebase.google.com/)
   - Enable Authentication with Email/Password provider
   - Enable Firestore Database
   - Download the configuration files:
     - For Android: Add `google-services.json` to `android/app/`
   - Update `lib/firebase_options.dart` with your Firebase configuration

4. **Configure Firebase Options**:
   - Run `flutterfire configure` or manually update the Firebase options in `lib/firebase_options.dart`

## Usage

1. **Run the app**:
   ```bash
   flutter run
   ```

## Dependencies

- `firebase_core`: Firebase core functionality
- `firebase_auth`: Firebase Authentication
- `cloud_firestore`: Firestore database
- `cupertino_icons`: iOS-style icons

## Project Structure

```
lib/
├── main.dart                 # App entry point
├── auth_gate.dart            # Authentication gate widget
├── firebase_options.dart     # Firebase configuration
├── models/
│   └── user.dart             # User model
├── screens/
│   ├── login_screen.dart     # Login screen
│   ├── signup_screen.dart    # Sign-up screen
│   └── user_profile_screen.dart # User profile screen
└── services/
    ├── auth_service.dart     # Authentication service
    └── firestore_service.dart # Firestore service
```