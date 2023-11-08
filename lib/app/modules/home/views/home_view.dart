import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_documentation/app/widgets/bouncy_button.dart';
import 'package:my_documentation/app/widgets/my_shimmer.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Documentations'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Obx(
        () => Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/big-hero.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            (controller.isLoading.isTrue)
                ? ListView.builder(
                    physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
                        child: MyShimmer.shimmerListCard(),
                      );
                    },
                  )
                : ListView.builder(
                    physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                    itemCount: controller.listMainmenu.length,
                    itemBuilder: (context, index) {
                      final data = controller.listMainmenu[index];
                      return buildButtonMenu(
                        title: data.title,
                        onPressed: () => data.onPressed(),
                      );
                    },
                  ),
          ],
        ),
      ),
    );
  }

  BouncyButton buildButtonMenu({
    final Function()? onPressed,
    final String? title,
  }) {
    return BouncyButton(
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
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
                  title ?? 'title',
                  style: TextStyle(),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
