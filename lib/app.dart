import 'package:app_auth_2024/screens/login_main.dart';
import 'package:flutter/material.dart';

class AppRun extends StatelessWidget {
  const AppRun({super.key});

  @override
  Widget build(BuildContext context) => const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Screen Auth App',
      home: LoginScreenMain());
}
