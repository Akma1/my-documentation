import 'package:get/get.dart';

import '../controllers/food_app_controller.dart';

class FoodAppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FoodAppController>(
      () => FoodAppController(),
    );
  }
}
