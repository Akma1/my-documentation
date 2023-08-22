import 'package:drift_db_viewer/drift_db_viewer.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../controllers/db_controller.dart';
import '../controllers/views_database_controller.dart';

class ViewsDatabaseView extends GetView<ViewsDatabaseController> {
  const ViewsDatabaseView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DriftDbViewer(Get.find<AppDb>()),
    );
  }
}
