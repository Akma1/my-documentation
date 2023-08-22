import 'package:get/get.dart';

import '../controllers/views_database_controller.dart';

class ViewsDatabaseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ViewsDatabaseController>(
      () => ViewsDatabaseController(),
    );
  }
}
