import 'package:expandable_bottom_sheet/expandable_bottom_sheet.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/expandable_bottom_sheet_controller.dart';

class ExpandableBottomSheetView
    extends GetView<ExpandableBottomSheetController> {
  const ExpandableBottomSheetView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ExpandableBottomSheetView'),
          centerTitle: true,
        ),
        body: ExpandableBottomSheet(
          enableToggle: true,
          background: Container(
            color: Colors.red,
            child: Center(
              child: Text('Background'),
            ),
          ),
          persistentHeader: Container(
            height: 40,
            color: Colors.blue,
            child: Center(
              child: Text('Header'),
            ),
          ),
          expandableContent: Container(
            height: 500,
            color: Colors.green,
            child: Center(
              child: Text('Content'),
            ),
          ),
        ));
  }
}
