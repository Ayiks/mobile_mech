import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/garage_details_controller.dart';

class GarageDetailsView extends GetView<GarageDetailsController> {
  const GarageDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GarageDetailsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'GarageDetailsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
