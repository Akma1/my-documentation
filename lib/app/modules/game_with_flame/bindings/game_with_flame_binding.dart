import 'package:get/get.dart';

import '../controllers/game_with_flame_controller.dart';

class GameWithFlameBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GameWithFlameController>(
      () => GameWithFlameController(),
    );
  }
}
