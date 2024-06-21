import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mobile_mechanic/app/utils/colors.dart';
import 'package:mobile_mechanic/app/utils/texts.dart';

import '../controllers/user_login_controller.dart';

class UserLoginView extends GetView<UserLoginController> {
  const UserLoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(left: 20, top: 30, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeadingText(text: 'Create an account'),
                const SizedBox(height: 20),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.buttonColor)),
                      floatingLabelBehavior: FloatingLabelBehavior.auto,
                      floatingLabelStyle:
                          TextStyle(color: AppColors.buttonColor),
                      labelText: 'Full Name',
                      border: OutlineInputBorder()),
                ),
                const SizedBox(height: 30),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.buttonColor)),
                      floatingLabelBehavior: FloatingLabelBehavior.auto,
                      floatingLabelStyle:
                          TextStyle(color: AppColors.buttonColor),
                      labelText: 'Email',
                      border: OutlineInputBorder()),
                ),
                const SizedBox(height: 30),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.buttonColor)),
                      floatingLabelBehavior: FloatingLabelBehavior.auto,
                      floatingLabelStyle:
                          TextStyle(color: AppColors.buttonColor),
                      labelText: 'Phone Number',
                      border: OutlineInputBorder()),
                ),
                const SizedBox(height: 40),
                GestureDetector(
                  onTap: () {
                    print('tap');
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Icon(
                              Icons.check,
                              color: AppColors.buttonColor,
                              size: 80,
                            ),
                            content: SizedBox(
                              height: 200,
                              child: Column(
                                children: [
                                  HeadingText(
                                    text: 'Email Verification',
                                    size: 15,
                                  ),
                                  const Text(
                                    'Please check your email inbox to confirm and complete registration.',
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(height: 8),
                                  const Text('Thank You')
                                ],
                              ),
                            ),
                          );
                        });
                  },
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(top: 15, bottom: 15),
                    decoration: BoxDecoration(
                        color: AppColors.buttonColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                        child: Text(
                      'Next',
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                ),
                const SizedBox(height: 30),
                const Center(
                  child: Text(
                    'or',
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                        onTap: () {}, child: Image.asset('assets/google.png')),
                    GestureDetector(
                        onTap: () {}, child: Image.asset('assets/google.png')),
                  ],
                ),
                const SizedBox(height: 30),
                const Center(
                  child: Text(
                    'By pressing “Next” you will accept User Agreement conditions',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.bodyText,
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
