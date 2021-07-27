
// ignore: public_member_api_docs
import 'package:firebase_authentication/controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: public_member_api_docs
class LoginView extends StatelessWidget {
  final LoginController login_controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF141414),
      body: Center(
        child: FloatingActionButton.extended(
          backgroundColor: Colors.white,
          tooltip: 'sign in',
          onPressed: () {
            login_controller.login();
          },
          icon: Image.asset(
            'assets/google_icon.png',
            height: 32,
            width: 32,
          ),
          label: const Text(
            'sign in with google',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
