import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wish_gym/components/template/screen_template.dart';
import 'package:wish_gym/presentation/login/controllers/login_controller.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenTemplate(
      statusBarColor: Colors.black,
      statusBarIconBrightness: Brightness.dark,
      child: Text("your login screen"),
    );
  }
}
