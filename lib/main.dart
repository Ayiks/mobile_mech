import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mobile_mechanic/app/utils/colors.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Mobile Mechanic",
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.ONBOARDING,
      getPages: AppPages.routes,
      theme: ThemeData(scaffoldBackgroundColor: AppColors.backgroundColor),
    ),
  );
}
