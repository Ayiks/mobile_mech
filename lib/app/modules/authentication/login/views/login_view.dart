import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mobile_mechanic/app/routes/app_pages.dart';
import 'package:mobile_mechanic/app/utils/colors.dart';
import 'package:mobile_mechanic/app/utils/texts.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeadingText(
              text: 'Welcome back',
              size: 20,
            ),
            const Text(
              'Please enter login details below',
              style: TextStyle(color: AppColors.bodyText),
            ),
            const SizedBox(height: 60),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.buttonColor)),
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                  floatingLabelStyle: TextStyle(color: AppColors.buttonColor),
                  labelText: 'Email',
                  border: OutlineInputBorder()),
            ),
            const SizedBox(height: 20),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.buttonColor)),
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                  floatingLabelStyle: TextStyle(color: AppColors.buttonColor),
                  labelText: 'Password',
                  border: OutlineInputBorder()),
            ),
            const SizedBox(height: 10),
            const Align(
              alignment: Alignment.centerRight,
              child: Text('forgot password?'),
            ),
            const SizedBox(height: 40),
            GestureDetector(
              onTap: () => Get.offAll(Routes.HOME),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.only(top: 15, bottom: 15),
                decoration: BoxDecoration(
                    color: AppColors.buttonColor,
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                    child: Text(
                  'Log In',
                  style: TextStyle(color: Colors.white),
                )),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
