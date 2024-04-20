import 'package:app_auth_2024/screens/login_screen.dart';
import 'package:flutter/material.dart';

class AppRun extends StatelessWidget {
  const AppRun({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Screen Auth App',
        home: LoginScreen());
  }
}
