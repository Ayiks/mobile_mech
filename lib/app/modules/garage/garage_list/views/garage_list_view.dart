import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mobile_mechanic/app/routes/app_pages.dart';
import 'package:mobile_mechanic/app/utils/cardComponent.dart';
import 'package:mobile_mechanic/app/utils/colors.dart';
import 'package:mobile_mechanic/app/utils/texts.dart';

import '../controllers/garage_list_controller.dart';

class GarageListView extends GetView<GarageListController> {
  const GarageListView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: HeadingText(
          text: 'Garage List',
          size: 20,
        ),
        centerTitle: false,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.buttonColor),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  floatingLabelStyle: TextStyle(color: AppColors.buttonColor),
                  labelText: 'Search by location',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)))),
            ),
            const SizedBox(height: 15),
            ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: ((context, index) {
                  return CardComponentWidget(
                      onTap: () => Get.toNamed(Routes.GARAGE_DETAILS),
                      shopName: "Massa Atah",
                      location: 'Kasoa',
                      ratings: 3.0,
                      image: AssetImage('assets/image3.png'));
                }),
                separatorBuilder: ((context, index) {
                  return const SizedBox(height: 15);
                }),
                itemCount: 5),
          ],
        ),
      )),
    );
  }
}
