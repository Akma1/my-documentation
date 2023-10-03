import 'dart:developer';

import 'package:flutter/material.dart';

class My3DButton extends StatefulWidget {
  final VoidCallback? onPressed;
  final VoidCallback? onTap;
  final Color? btnColor;
  final Color? colorStart;
  final Color? colorEnd;
  final IconData? icon;
  final Color? iconColor;

  const My3DButton({
    super.key,
    this.onPressed,
    this.onTap,
    this.btnColor,
    this.colorStart,
    this.colorEnd,
    this.icon,
    this.iconColor,
  });

  @override
  State<My3DButton> createState() => _My3DButtonState();
}

class _My3DButtonState extends State<My3DButton> with SingleTickerProviderStateMixin {
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
              color: widget.btnColor ?? Colors.grey.shade900,
              borderRadius: BorderRadius.circular(30),
              boxShadow: isPressed == false
                  ? [
                      BoxShadow(
                        color: widget.colorStart ?? Colors.grey.shade200,
                        offset: const Offset(-4, -4),
                        spreadRadius: -6,
                        blurRadius: 6,
                      )
                    ]
                  : null,
            ),
          ),
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: widget.btnColor ?? Colors.grey.shade900,
              borderRadius: BorderRadius.circular(30),
              boxShadow: isPressed == false
                  ? [
                      BoxShadow(
                        color: widget.colorEnd ?? Colors.black,
                        offset: const Offset(4, 4),
                        spreadRadius: 1,
                        blurRadius: 8,
                      )
                    ]
                  : null,
            ),
            child: Center(
              child: Icon(
                widget.icon ?? Icons.play_arrow_rounded,
                size: isPressed == false ? 24 : 20,
                color: widget.iconColor ?? Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
