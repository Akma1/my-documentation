import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:my_documentation/app/modules/drift_documentation/controllers/db_controller.dart';

import 'app/routes/app_pages.dart';

void main() async {
  Get.put(AppDb());
  runApp(
    GetMaterialApp(
      title: "Application",
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
