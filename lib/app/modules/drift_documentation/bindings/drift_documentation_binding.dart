import 'package:get/get.dart';

import '../controllers/drift_documentation_controller.dart';

class DriftDocumentationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DriftDocumentationController>(
      () => DriftDocumentationController(),
    );
  }
}
