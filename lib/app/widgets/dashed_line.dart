import 'dart:math';

import 'package:flutter/material.dart';

class DashedLine extends StatelessWidget {
  const DashedLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(100, 1), // Sesuaikan ukuran sesuai kebutuhan Anda
      painter: DashedLinePainter(),
    );
  }
}

class DashedLinePainter extends CustomPainter {
  final double dashWidth = 5; // Panjang garis putus-putus
  final double dashSpace = 5; // Jarak antara garis putus-putus
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black // Ganti warna sesuai kebutuhan
      ..strokeWidth = 1 // Sesuaikan ketebalan garis sesuai kebutuhan
      ..strokeCap = StrokeCap.round;

    double currentX = 0;
    while (currentX < size.width) {
      canvas.drawLine(
        Offset(currentX, 0),
        Offset(currentX + dashWidth, 0),
        paint,
      );
      currentX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class CircularBorder extends StatelessWidget {
  final Color color;
  final double size;
  final double width;
  final Widget? icon;

  const CircularBorder({Key? key, this.color = Colors.blue, this.size = 70, this.width = 7.0, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      alignment: Alignment.center,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          icon == null ? Container() : icon ?? const Icon(Icons.abc),
          CustomPaint(
            size: Size(size, size),
            foregroundPainter: MyPainter(completeColor: color, width: width),
          ),
        ],
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  Color lineColor = Colors.transparent;
  Color completeColor;
  double width;
  Size? size;
  MyPainter({
    this.completeColor = Colors.black,
    this.width = 1,
    this.size,
  });

  @override
  void paint(Canvas canvas, size) {
    // Implement your custom painting logic here.
    Paint complete = Paint()
      ..color = completeColor
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = width;

    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2);
    var percent = (size.width * 0.001) / 2;

    double arcAngle = 2 * pi * percent;
    print("$radius - radius");
    print("$arcAngle - arcAngle");
    print("${radius / arcAngle} - divider");

    for (var i = 0; i < 8; i++) {
      var init = (-pi / 2) * (i / 2);

      canvas.drawArc(Rect.fromCircle(center: center, radius: radius), init, arcAngle, false, complete);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // Implement logic to determine when to repaint.
    return false;
  }

  @override
  void addListener(VoidCallback listener) {
    // Implement the addListener method.
  }

  @override
  void removeListener(VoidCallback listener) {
    // Implement the removeListener method.
  }

  @override
  bool hitTest(Offset position) {
    // Implement the hitTest method to handle touch interactions.
    return false;
  }

  @override
  bool shouldRebuildSemantics(covariant CustomPainter oldDelegate) {
    // Implement the shouldRebuildSemantics method.
    return false;
  }
}
