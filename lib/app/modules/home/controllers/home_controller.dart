// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:developer';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final listMainmenu = <MainMenu>[].obs;
  final isLoading = false.obs;
  @override
  void onInit() {
    getMenu();
    super.onInit();
  }

  Future getMenu() async {
    isLoading(true);
    await Future.delayed(const Duration(seconds: 1));
    try {
      listMainmenu.value = [
        MainMenu(
          title: 'Reels',
          onPressed: () => Get.toNamed(Routes.REELS),
        ),
        MainMenu(
          title: 'Button 3D',
          onPressed: () => Get.toNamed(Routes.BUTTON_3D),
        ),
        MainMenu(
          title: 'Flutter Drift',
          onPressed: () => Get.toNamed(Routes.DRIFT_DOCUMENTATION),
        ),
        MainMenu(
          title: 'Expandable Bottom Sheet',
          onPressed: () => Get.toNamed(Routes.EXPANDABLE_BOTTOM_SHEET),
        ),
        MainMenu(
          title: 'Food App',
          onPressed: () => Get.toNamed(Routes.FOOD_APP),
        ),
        MainMenu(
          title: 'Calendar',
          onPressed: () => Get.toNamed(Routes.CALENDAR),
        ),
        MainMenu(
          title: 'Game',
          onPressed: () => Get.toNamed(Routes.GAME_WITH_FLAME),
        ),
        MainMenu(
          title: 'Firebase',
          onPressed: () => Get.toNamed(Routes.FIREBASE),
        ),
        MainMenu(
          title: 'Grid View',
          onPressed: () => Get.toNamed(Routes.GRID_VIEW),
        ),
        MainMenu(
          title: 'FL Chart',
          onPressed: () => Get.toNamed(Routes.FL_CHART),
        ),
      ];
    } catch (e) {
      isLoading(false);
      log('message : $e');
    }
    isLoading(false);
  }
}

class MainMenu {
  final Function onPressed;
  final String title;
  MainMenu({
    required this.onPressed,
    required this.title,
  });

  MainMenu copyWith({
    Function? onPressed,
    String? title,
  }) {
    return MainMenu(
      onPressed: onPressed ?? this.onPressed,
      title: title ?? this.title,
    );
  }
}
