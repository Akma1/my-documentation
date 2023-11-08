import 'package:get/get.dart';

import '../controllers/grid_view_controller.dart';

class GridViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GridViewController>(
      () => GridViewController(),
    );
  }
}
