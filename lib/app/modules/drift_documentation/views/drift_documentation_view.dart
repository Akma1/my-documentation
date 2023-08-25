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
              child: const Icon(Icons.data_object_sharp),
            ),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(),
        child: Column(
          children: [
            TextFormField(
              controller: controller.nameTextCt.value,
              cursorColor: Colors.white,
              decoration: InputDecoration(
                isDense: true,
                label: const Text(
                  'Nama',
                  style: TextStyle(color: Colors.white),
                ),
                labelStyle: const TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () => controller.handleInsertButton(),
              child: const Text('insert'),
            ),
          ],
        ),
      ),
    );
  }
}
