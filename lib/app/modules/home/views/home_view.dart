import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:mobile_mechanic/app/utils/colors.dart';
import 'package:mobile_mechanic/app/utils/texts.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(left: 20, top: 30, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.menu),
                      HeadingText(text: "Hello Ivy"),
                    ],
                  ),
                  const Icon(Icons.notifications_outlined)
                ],
              ),
              const SizedBox(height: 30),
              Container(
                width: double.infinity,
                height: 177,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color.fromRGBO(217, 217, 217, 5),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Today's Offer"),
                          const SizedBox(
                            height: 8,
                          ),
                          Container(
                              width: 100,
                              height: 30,
                              decoration: const BoxDecoration(
                                  color: AppColors.buttonColor,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(15),
                                      bottomRight: Radius.circular(15))),
                              child: const Center(
                                  child: Text(
                                '20% off',
                                style: TextStyle(color: Colors.white),
                              ))),
                          Text(
                            'on your next visit',
                            softWrap: true,
                          ),
                          const SizedBox(height: 5),
                          Container(
                              padding: const EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                  color: AppColors.buttonColor,
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Text(
                                'Claim now',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              ))
                        ],
                      ),
                    ),
                    Image.asset(
                      'assets/oferIcon.png',
                      width: 200,
                    )
                  ],
                ),
              ),
              HeadingText(text: "Services"),
              Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.amber.shade100),
                  width: 90,
                  child: const Column(
                    children: [
                      Icon(
                        Icons.car_repair,
                        size: 40,
                      ),
                      Text(
                        'Emergency Breakdown',
                        softWrap: true,
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
