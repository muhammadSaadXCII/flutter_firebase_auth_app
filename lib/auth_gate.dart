import 'package:firebase_auth_app/screens/login_screen.dart';
import 'package:firebase_auth_app/screens/user_profile_screen.dart';
import 'package:firebase_auth_app/services/auth_service.dart';
import 'package:flutter/material.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: AuthService().authState,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return UserProfileScreen();
        } else {
          return LoginScreen();
        }
      },
    );
  }
}
