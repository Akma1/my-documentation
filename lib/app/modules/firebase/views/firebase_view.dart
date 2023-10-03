import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/firebase_controller.dart';

class FirebaseView extends GetView<FirebaseController> {
  const FirebaseView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FirebaseView'),
        centerTitle: true,
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
