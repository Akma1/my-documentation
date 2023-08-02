import 'package:get/get.dart';

import '../controllers/button_3d_controller.dart';

class Button3dBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Button3dController>(
      () => Button3dController(),
    );
  }
}
