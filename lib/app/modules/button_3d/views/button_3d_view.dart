import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:my_documentation/app/widgets/bouncy_button.dart';

import '../controllers/button_3d_controller.dart';

class Button3dView extends GetView<Button3dController> {
  const Button3dView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Button3dView'),
        backgroundColor: Colors.blue.shade900,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back_ios_new_rounded,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 300,
              width: 300,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Colors.blue.shade900,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade900.withOpacity(.4),
                      offset: Offset(10, 10),
                      blurRadius: 10,
                    )
                  ],
                  borderRadius: BorderRadius.circular(50)),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade900,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(8),
                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                color: Colors.blue.shade700,
                                offset: const Offset(2, 2),
                                spreadRadius: -4,
                                blurRadius: 1,
                              )
                            ], borderRadius: BorderRadius.circular(100)),
                            child: const Center(
                              child: Text(
                                'Button',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.blue.shade900,
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: <Color>[
                                    Colors.blue.shade900,
                                    Colors.blue.shade900,
                                  ], // Gradient from https://learnui.design/tools/gradient-generator.html
                                  tileMode: TileMode.mirror,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color:
                                        const Color.fromARGB(255, 0, 56, 101),
                                    offset: Offset(-2, -2),
                                    spreadRadius: 2,
                                    blurRadius: 1,
                                  )
                                ],
                                borderRadius: BorderRadius.circular(100)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Button',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Obx(
                                    () => BouncyButton(
                                      onPressed: controller.pressedToggle,
                                      child: Stack(
                                        children: [
                                          Container(
                                            width: 30,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              color: Colors.blue.shade900,
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              boxShadow: controller
                                                      .isPressed.isFalse
                                                  ? [
                                                      BoxShadow(
                                                          color: Colors
                                                              .blue.shade200,
                                                          offset:
                                                              Offset(-4, -4),
                                                          spreadRadius: -6,
                                                          blurRadius: 6)
                                                    ]
                                                  : null,
                                            ),
                                            child: const Center(
                                              child: Icon(
                                                Icons.play_arrow_rounded,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 30,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              color: Colors.blue.shade900,
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              boxShadow: controller
                                                      .isPressed.isFalse
                                                  ? const [
                                                      BoxShadow(
                                                          color: Color.fromARGB(
                                                              255, 0, 56, 101),
                                                          offset: Offset(4, 4),
                                                          spreadRadius: 1,
                                                          blurRadius: 8)
                                                    ]
                                                  : null,
                                            ),
                                            child: const Center(
                                              child: Icon(
                                                Icons.play_arrow_rounded,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  BouncyButton buildButtonOutline3D() {
    return BouncyButton(
      onPressed: () {
        //
      },
      child: Center(
        child: Container(
          width: 100,
          height: 50,
          decoration: BoxDecoration(
              color: Colors.blue.shade700,
              borderRadius: BorderRadius.circular(100)),
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(1, 2),
                    spreadRadius: -2,
                    blurRadius: 6,
                  )
                ], borderRadius: BorderRadius.circular(100)),
                child: const Center(
                  child: Text(
                    'Button',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.blue.shade900,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        offset: Offset(-1, -2),
                        spreadRadius: -2,
                        blurRadius: 6,
                      )
                    ],
                    borderRadius: BorderRadius.circular(100)),
                child: const Center(
                  child: Text(
                    'Button',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
