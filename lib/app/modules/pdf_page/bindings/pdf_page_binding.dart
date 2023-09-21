import 'package:get/get.dart';

import '../controllers/pdf_page_controller.dart';

class PdfPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PdfPageController>(
      () => PdfPageController(),
    );
  }
}
