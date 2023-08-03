import 'package:get/get.dart';

class Button3dController extends GetxController {
  //TODO: Implement Button3dController

  final count = 0.obs;

  var isPressed = false.obs;

  @override
  void onInit() {
    super.onInit();
  }

  void pressedToggle() => isPressed.toggle();

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
