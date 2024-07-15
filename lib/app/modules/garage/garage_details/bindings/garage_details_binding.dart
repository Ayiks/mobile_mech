import 'package:get/get.dart';

import '../controllers/garage_details_controller.dart';

class GarageDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GarageDetailsController>(
      () => GarageDetailsController(),
    );
  }
}
