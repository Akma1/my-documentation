import 'package:get/get.dart';

import '../controllers/fl_chart_controller.dart';

class FlChartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FlChartController>(
      () => FlChartController(),
    );
  }
}
