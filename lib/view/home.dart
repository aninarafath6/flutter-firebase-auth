import 'package:firebase_authentication/controllers/login_controller.dart';
import 'package:firebase_authentication/view/login_view.dart';
import 'package:firebase_authentication/view/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: public_member_api_docs
class HomePage extends StatelessWidget {
  final LoginController login_controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        if (login_controller.googleAccount.value != null) {
          return ProfileView();
        }
        return LoginView();
      },
    );
  }
}
