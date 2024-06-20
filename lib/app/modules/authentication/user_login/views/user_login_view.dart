import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/user_login_controller.dart';

class UserLoginView extends GetView<UserLoginController> {
  const UserLoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UserLoginView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'UserLoginView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
