import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:my_documentation/app/modules/drift_documentation/controllers/db_controller.dart';

import 'app/routes/app_pages.dart';

void main() async {
  Get.put(AppDb());
  runApp(
    GetMaterialApp(
      title: "Application",
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
//   late AnimationController _controller;

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       vsync: this,
//       duration: Duration(seconds: 5), // Adjust the duration as needed
//     )..repeat();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Rotation Animation'),
//       ),
//       body: Center(
//         child: RotationTransition(
//           turns: Tween(begin: 0.0, end: 1.0).animate(_controller),
//           child: Container(
//             width: 100.0,
//             height: 100.0,
//             color: Colors.blue,
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
// }
