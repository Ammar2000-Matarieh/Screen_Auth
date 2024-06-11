import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final emailForgetPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
        ],
      ),
    );
  }
}