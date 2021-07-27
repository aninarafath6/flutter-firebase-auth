// ignore: public_member_api_docs
import 'package:firebase_authentication/controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileView extends StatelessWidget {
  final LoginController login_controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF141414),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            // ignore: avoid_redundant_argument_values
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                // ignore: prefer_const_constructors
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.orange,
                  backgroundImage: Image.network(
                          // ignore: lines_longer_than_80_chars
                          login_controller.googleAccount.value?.photoUrl ?? '')
                      .image,
                  radius: 100,
                ),
              ),
              Text(
                login_controller.googleAccount.value?.displayName ?? '',
                style: const TextStyle(
                  color: Colors.white,
                  // fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              Text(
                login_controller.googleAccount.value?.email ?? '',
                style: const TextStyle(
                  color: Colors.white,
                  // fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              IconButton(
                onPressed: () {
                  login_controller.logout();
                },
                icon: const Icon(Icons.logout, color: Colors.orange),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
