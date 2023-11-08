import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/fl_chart_controller.dart';

class FlChartView extends GetView<FlChartController> {
  const FlChartView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FlChartView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'FlChartView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
