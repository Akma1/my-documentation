import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class ReelsController extends GetxController {
  //TODO: Implement ReelsController

  List<RxBool> isExpanded = [];
  var lengthVideo = [
    'pexels-micheile-henderson-6821997.mp4',
    'pexels-micheile-henderson-6821999 (1080p).mp4',
    'pexels-micheile-henderson-6822002 (1080p).mp4',
    'pexels-micheile-henderson-6992404 (1080p).mp4'
  ].obs;
  // List<VideoPlayerController?> videoController = [];
  VideoPlayerController? videoController;

  @override
  void onInit() {
    super.onInit();
    isExpanded = List.generate(lengthVideo.length, (index) => false.obs).obs;
    videoController = VideoPlayerController.asset(
      'assets/video/pexels-micheile-henderson-6992404 (1080p).mp4',
    )
      ..play()
      ..setLooping(true);
    // Initialize the video controller and update the state when done
    videoController!.initialize().then((_) {
      update();
    });
  }

  @override
  void onClose() {
    videoController!.dispose();
    update();
    super.onClose();
  }
}
