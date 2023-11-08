import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:video_player/video_player.dart';

import '../controllers/reels_controller.dart';

class ReelsView extends GetView<ReelsController> {
  const ReelsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      // title: Text('My Documentations'),
      // Set background color to transparent
      // backgroundColor: Colors.transparent,
      // Remove elevation to have no shadow on the app bar
      // elevation: 0,
      // ),
      body: PageView.builder(
        itemCount: controller.lengthVideo.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, snapshot) {
          return Stack(
            children: [
              SizedBox(
                width: Get.width,
                // height: Get.height,
                child: VideoPlayer(controller.videoController!),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: <Color>[
                        Colors.black.withOpacity(0.6),
                        Colors.grey.withOpacity(0.02),
                      ], // Gradient from https://learnui.design/tools/gradient-generator.html
                      tileMode: TileMode.mirror,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          flex: 8,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(60),
                                    child: SizedBox(
                                      width: 40,
                                      height: 40,
                                      child: Container(
                                        color: Colors.blue.shade100,
                                        child: LottieBuilder.asset('assets/lotties/profile-1.json'),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 12),
                                  const Text(
                                    "Name of user",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 12),
                              SizedBox(
                                // height: controller.isExpanded[snapshot].isFalse ? 50 : 100,
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 12.0),
                                  child: Text(
                                    'This is the very long description of the videos which has many lines This is the very long description of the videos which has many lines This is the very long description of the videos which has many lines This is the very long description of the videos which has many lines',
                                    maxLines: controller.isExpanded[snapshot].isFalse ? 4 : null,
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                  // Expanded(
                                  //   child: ListView(
                                  //     controller: ScrollController(),
                                  //     physics: const BouncingScrollPhysics(),
                                  //     shrinkWrap: true,
                                  //     scrollDirection: Axis.vertical,
                                  //     children: [
                                  //       InkWell(
                                  //         onTap: () {
                                  //           controller.isExpanded[snapshot].value =
                                  //               !controller.isExpanded[snapshot].value;
                                  //         },
                                  //         child: Text(
                                  //           "This is the very long description of the videos which has many lines This is the very long description of the videos which has many lines This is the very long description of the videos which has many lines This is the very long description of the videos which has many lines",
                                  //           overflow: TextOverflow.fade,
                                  //           softWrap: true,
                                  //           maxLines: controller.isExpanded[snapshot].isFalse
                                  //               ? 2
                                  //               : null,
                                  //           style: const TextStyle(color: Colors.white),
                                  //         ),
                                  //       ),
                                  //     ],
                                  //   ),
                                  // ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Flexible(
                          flex: 1,
                          child: Buttons(),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class Buttons extends StatelessWidget {
  const Buttons({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            FontAwesomeIcons.heart,
            // FontAwesomeIcons.solidHeart,
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            FontAwesomeIcons.comment,
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            FontAwesomeIcons.shareNodes,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
