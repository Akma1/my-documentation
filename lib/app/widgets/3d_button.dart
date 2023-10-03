import 'dart:developer';

import 'package:flutter/material.dart';

class Button3DWidget extends StatefulWidget {
  final VoidCallback? onPressed;
  final VoidCallback? onTap;

  const Button3DWidget({
    super.key,
    this.onPressed,
    this.onTap,
  });

  @override
  State<Button3DWidget> createState() => _Button3DWidgetState();
}

class _Button3DWidgetState extends State<Button3DWidget> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<bool> scaleAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
    scaleAnimation = Tween<bool>(begin: true, end: false).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );
  }

  var isPressed = false;
  void _handleTapDown(TapDownDetails details) {
    setState(() {
      log('Tap Down');
      const Duration(seconds: 1);
      isPressed = true;
    });
  }

  void _handleTapUp(TapUpDetails details) {
    setState(() {
      log('Tap Up');
      const Duration(seconds: 1);
      widget.onPressed!();
      isPressed = false;
    });
  }

  void _handleTapCancel() {
    log('Tap Cancle');
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      onTapDown: widget.onPressed != null ? _handleTapDown : null,
      onTapUp: widget.onPressed != null ? _handleTapUp : null,
      onTapCancel: widget.onPressed != null ? _handleTapCancel : null,
      child: Stack(
        children: [
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: Colors.grey.shade900,
              borderRadius: BorderRadius.circular(30),
              boxShadow: isPressed == false
                  ? [
                      BoxShadow(
                          color: Colors.grey.shade200,
                          offset: const Offset(-4, -4),
                          spreadRadius: -6,
                          blurRadius: 6)
                    ]
                  : null,
            ),
          ),
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: Colors.grey.shade900,
              borderRadius: BorderRadius.circular(30),
              boxShadow: isPressed == false
                  ? const [
                      BoxShadow(
                          color: Colors.black,
                          // color: Color.fromARGB(
                          //     255, 0, 56, 101),
                          offset: Offset(4, 4),
                          spreadRadius: 1,
                          blurRadius: 8)
                    ]
                  : null,
            ),
            child: Center(
              child: Icon(
                Icons.play_arrow_rounded,
                size: isPressed == false ? 24 : 20,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
