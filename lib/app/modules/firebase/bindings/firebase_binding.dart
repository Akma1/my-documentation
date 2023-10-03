import 'package:get/get.dart';

import '../controllers/firebase_controller.dart';

class FirebaseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FirebaseController>(
      () => FirebaseController(),
    );
  }
}
