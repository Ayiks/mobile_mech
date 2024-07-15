import 'package:get/get.dart';

import '../controllers/garage_list_controller.dart';

class GarageListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GarageListController>(
      () => GarageListController(),
    );
  }
}
