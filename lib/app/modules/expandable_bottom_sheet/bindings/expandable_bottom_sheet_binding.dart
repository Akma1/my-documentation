import 'package:get/get.dart';

import '../controllers/expandable_bottom_sheet_controller.dart';

class ExpandableBottomSheetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ExpandableBottomSheetController>(
      () => ExpandableBottomSheetController(),
    );
  }
}
