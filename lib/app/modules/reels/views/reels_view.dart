import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';

import '../controllers/reels_controller.dart';

class ReelsView extends GetView<ReelsController> {
  const ReelsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Documentations'),
        // Set background color to transparent
        // backgroundColor: Colors.transparent,
        // Remove elevation to have no shadow on the app bar
        elevation: 0,
      ),
      body: PageView.builder(
          itemCount: controller.lengthVideo.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, snapshot) {
            return Stack(children: [
              Container(
                height: Get.height,
                decoration: BoxDecoration(),
                child: Image.asset(
                  'assets/big-hero.jpg',
                  fit: BoxFit.cover,
                ),
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
                              const Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.blue,
                                    radius: 20,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "Name of user",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 12),
                              Obx(
                                () => SizedBox(
                                  height:
                                      controller.isExpanded[snapshot].isFalse
                                          ? 50
                                          : 100,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.only(bottom: 12.0),
                                    child: ListView(
                                      controller: ScrollController(),
                                      physics: const BouncingScrollPhysics(),
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            controller.isExpanded[snapshot]
                                                    .value =
                                                !controller
                                                    .isExpanded[snapshot].value;
                                          },
                                          child: Text(
                                            "This is the very long description of the videos which has many lines This is the very long description of the videos which has many lines This is the very long description of the videos which has many lines This is the very long description of the videos which has many lines",
                                            overflow: TextOverflow.fade,
                                            softWrap: true,
                                            maxLines: controller
                                                    .isExpanded[snapshot]
                                                    .isFalse
                                                ? 2
                                                : null,
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Flexible(flex: 1, child: Buttons())
                      ],
                    ),
                  ),
                ),
              )
            ]);
          }),
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
              size: 18,
            )),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.comment,
              color: Colors.white,
              size: 18,
            )),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.shareNodes,
              color: Colors.white,
              size: 18,
            )),
      ],
    );
  }
}
