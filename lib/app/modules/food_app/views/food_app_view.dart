import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/food_app_controller.dart';

class FoodAppView extends GetView<FoodAppController> {
  const FoodAppView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FoodAppView'),
        centerTitle: true,
      ),
      body: Obx(
        () => ListView(
          children: [
            // Text('data a'),
            controller.isLoading.value
                ? Container(
                    child: Text('data kosong'),
                  )
                : ListView.builder(
                    shrinkWrap: true,
                    itemCount: controller.data.value.datas!.length,
                    itemBuilder: (context, index) {
                      return Text('data');
                    },
                  ),
          ],
        ),
      ),
    );
  }
}
