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
        () => Stack(
          children: [
            Column(
              children: [
                controller.isLoading.value
                    ? const Expanded(
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      )
                    : ListView.builder(
                        shrinkWrap: true,
                        itemCount: controller.data.value.datas!.length,
                        itemBuilder: (context, index) {
                          final data = controller.data.value.datas?[index];
                          return Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade200,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Image.network(
                                      '${data?.gambar}',
                                      width: 50,
                                      height: 50,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Text('${data?.nama}'),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
              ],
            ),
            Obx(
              () => Align(
                alignment: Alignment.bottomCenter,
                child: IntrinsicHeight(
                  child: Stack(
                    children: [
                      Container(
                        width: Get.width,
                        height: 200,
                        decoration: BoxDecoration(
                            color: Colors.amber.shade100,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                topRight: Radius.circular(12))),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(controller.isLoading.value.toString()),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: IntrinsicHeight(
                          child: Container(
                            width: Get.width,
                            decoration: BoxDecoration(
                                color: Colors.blue.shade100,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    topRight: Radius.circular(12))),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Text('data'),
                                  Spacer(),
                                  Text('data'),
                                  Text('data'),
                                  Column(
                                    children: [
                                      Text('data'),
                                      Text('data'),
                                      Text('data'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
