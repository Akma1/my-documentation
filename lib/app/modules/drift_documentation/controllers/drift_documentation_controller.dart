import 'dart:developer';
import 'dart:math' hide log;

import 'package:drift/drift.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Value;

import 'db_controller.dart';

class DriftDocumentationController extends GetxController {
  //TODO: Implement DriftDocumentationController

  final nameTextCt = TextEditingController().obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void handleInsertButton() async {
    Random id = Random();

    var generateId = id.nextInt(9999);
    SchedulesCompanion datauser = SchedulesCompanion(
      id: Value(generateId),
      userId: Value(12),
      scheduleDescription: Value(nameTextCt.value.text),
      foto: Value('value'),
      createdAt: Value(DateTime.now()),
      updatedAt: Value(DateTime.now()),
    );
    try {
      bool stored =
          await Get.find<AppDb>().schedulesDao.add(schedule: datauser);
      if (stored == true) log('Berhasil menyimpan data');
      if (stored == false) throw 'Kunjungan gagal';
    } catch (e) {
      log('Error -> $e');
    }
  }
}
