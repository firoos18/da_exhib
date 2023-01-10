import 'package:da_exhib/screens/auth/login.dart';
import 'package:da_exhib/screens/auth/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  bool showLoginPage = true;

  void toggleScreen() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return Login(
        showRegisterPage: toggleScreen,
      );
    } else {
      return Register(
        showLoginPage: toggleScreen,
      );
    }
  }
}
