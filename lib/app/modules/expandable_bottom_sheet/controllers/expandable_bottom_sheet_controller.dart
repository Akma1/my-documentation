import 'package:expandable_bottom_sheet/expandable_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExpandableBottomSheetController extends GetxController {
  //TODO: Implement ExpandableBottomSheetController
  GlobalKey<ExpandableBottomSheetState> key = GlobalKey();
  var contentAmount = 0.obs;
  ExpansionStatus expansionStatus = ExpansionStatus.contracted;
  @override
  void onInit() {
    contentAmount.value = 0;
    expansionStatus;
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
}
