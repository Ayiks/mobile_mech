import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:mobile_mechanic/app/modules/home/widgets/endDrawer.dart';
import 'package:mobile_mechanic/app/utils/colors.dart';
import 'package:mobile_mechanic/app/utils/texts.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: const [
            Row(),
            ListTile(
              leading: CircleAvatar(
                radius: 50,
              ),
              title: Text('Ivy Marian'),
              subtitle: Text('email@something.com'),
              trailing: Icon(Icons.edit_note_sharp),
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: HeadingText(text: 'Hello Ivy'),
        centerTitle: false,
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.notifications_outlined),
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
            ),
          ),
        ],
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
                decoration: BoxDecoration(
                    // color: Colors.blue,
                    ),
                child: HeadingText(
                  text: 'Notification',
                  size: 20,
                )),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Messages'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(left: 20, top: 30, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
              const SizedBox(height: 15),
              HeadingText(text: "Services", size: 15),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 110,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  // physics: AlwaysScrollableScrollPhysics(),
                  children: [
                    Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromARGB(255, 252, 236, 189)),
                        width: 90,
                        child: const Column(
                          children: [
                            Icon(
                              Icons.car_repair,
                              size: 45,
                            ),
                            Text(
                              'Emergency Breakdown',
                              softWrap: true,
                            )
                          ],
                        )),
                    SizedBox(width: 5),
                    Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromARGB(255, 252, 236, 189)),
                        width: 90,
                        height: 50,
                        child: const Column(
                          children: [
                            Icon(
                              Icons.car_repair,
                              size: 45,
                            ),
                            Text(
                              'Emergency Breakdown',
                              softWrap: true,
                            )
                          ],
                        )),
                    SizedBox(width: 5),
                    Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromARGB(255, 252, 236, 189)),
                        width: 90,
                        height: 50,
                        child: const Column(
                          children: [
                            Icon(
                              Icons.car_repair,
                              size: 45,
                            ),
                            Text(
                              'Emergency Breakdown',
                              softWrap: true,
                            )
                          ],
                        )),
                    SizedBox(width: 5),
                    Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromARGB(255, 252, 236, 189)),
                        width: 90,
                        height: 50,
                        child: const Column(
                          children: [
                            Icon(
                              Icons.car_repair,
                              size: 45,
                            ),
                            Text(
                              'Emergency Breakdown',
                              softWrap: true,
                            )
                          ],
                        )),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HeadingText(
                    text: "Nearby garages",
                    size: 15,
                  ),
                  Text('See more')
                ],
              ),
              const SizedBox(height: 10),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 175,
                color: Colors.black,
              )
            ],
          ),
        ),
      ),
    );
  }
}
