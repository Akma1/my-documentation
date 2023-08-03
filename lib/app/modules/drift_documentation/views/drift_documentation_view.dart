import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/drift_documentation_controller.dart';

class DriftDocumentationView extends GetView<DriftDocumentationController> {
  const DriftDocumentationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DriftDocumentationView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DriftDocumentationView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
