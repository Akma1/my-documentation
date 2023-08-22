import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:my_documentation/app/routes/app_pages.dart';

import '../controllers/drift_documentation_controller.dart';

class DriftDocumentationView extends GetView<DriftDocumentationController> {
  const DriftDocumentationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      appBar: AppBar(
        title: const Text('Drift Documentation'),
        backgroundColor: Colors.grey.shade900,
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkResponse(
              onTap: () {
                Get.toNamed(Routes.VIEWS_DATABASE);
              },
              child: Icon(Icons.data_object_sharp),
            ),
          )
        ],
      ),
      body: Container(),
    );
  }
}
