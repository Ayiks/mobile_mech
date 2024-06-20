import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:mobile_mechanic/app/routes/app_pages.dart';
import 'package:mobile_mechanic/app/utils/colors.dart';
import 'package:mobile_mechanic/app/utils/texts.dart';

import '../selectCategory/controllers/select_category_controller.dart';

class SelectCategoryView extends GetView<SelectCategoryController> {
  const SelectCategoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: HeadingText(
            text: 'Define your role',
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(left: 20, top: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeadingText(text: 'Individual'),
              Stack(children: [
                Container(
                  height: 269,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/catImage.png')),
                      // color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                ),
                GestureDetector(
                  onTap: () => Get.to(Routes.USER_LOGIN),
                  child: Positioned(
                      bottom: 35,
                      right: 20,
                      child: Container(
                        height: 44,
                        width: 65,
                        decoration: BoxDecoration(
                            color: AppColors.buttonColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Icon(
                          Icons.chevron_right,
                          color: Colors.white,
                        ),
                      )),
                )
              ]),
              SizedBox(
                height: 30,
              ),
              HeadingText(text: 'Service Provider'),
              Stack(children: [
                Container(
                  height: 269,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/catImage.png')),
                      // color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                ),
                Positioned(
                    bottom: 35,
                    right: 20,
                    child: Container(
                      height: 44,
                      width: 65,
                      decoration: BoxDecoration(
                          color: AppColors.buttonColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Icon(
                        Icons.chevron_right,
                        color: Colors.white,
                      ),
                    ))
              ])
            ],
          ),
        ));
  }
}
