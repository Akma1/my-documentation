import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:my_documentation/app/routes/app_pages.dart';
import 'package:my_documentation/app/widgets/bouncy_button.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Documentations'),
        // Set background color to transparent
        backgroundColor: Colors.transparent,
        // Remove elevation to have no shadow on the app bar
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image:
                    AssetImage('assets/big-hero.jpg'), // Your background image
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BouncyButton(
                  onPressed: () {
                    //
                    Get.toNamed(Routes.REELS);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                        child: Container(
                          width: Get.width,
                          height: 60.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.grey.shade200.withOpacity(0.5),
                          ),
                          child: Center(
                            child: Text(
                              'Reels',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                BouncyButton(
                  onPressed: () {
                    //
                    Get.toNamed(Routes.BUTTON_3D);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                        child: Container(
                          width: Get.width,
                          height: 60.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.grey.shade200.withOpacity(0.5),
                          ),
                          child: Center(
                            child: Text(
                              'Button 3D',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
