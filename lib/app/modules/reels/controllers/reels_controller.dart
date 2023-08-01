import 'package:get/get.dart';

class ReelsController extends GetxController {
  //TODO: Implement ReelsController

  List<RxBool> isExpanded = [];
  var lengthVideo = ['video_1', 'video_2', 'video_3', 'video_4'].obs;
  @override
  void onInit() {
    super.onInit();
    isExpanded = List.generate(lengthVideo.length, (index) => false.obs).obs;
  }
}
