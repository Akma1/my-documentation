import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/pdf_page_controller.dart';

class PdfPageView extends GetView<PdfPageController> {
  const PdfPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PdfPageView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'PdfPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
