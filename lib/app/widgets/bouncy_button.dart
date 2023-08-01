import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BouncyButton extends StatefulWidget {
  final Widget child;
  final VoidCallback? onPressed;

  const BouncyButton({
    Key? key,
    required this.child,
    this.onPressed,
  }) : super(key: key);

  @override
  _BouncyButtonState createState() => _BouncyButtonState();
}

class _BouncyButtonState extends State<BouncyButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
    _scaleAnimation = Tween<double>(begin: 1.0, end: 0.95).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: widget.onPressed != null ? _handleTapDown : null,
      onTapUp: widget.onPressed != null ? _handleTapUp : null,
      onTapCancel: widget.onPressed != null ? _handleTapCancel : null,
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: widget.child,
      ),
    );
  }

  void _handleTapDown(TapDownDetails details) {
    _animationController.forward();
  }

  void _handleTapUp(TapUpDetails details) {
    _animationController.reverse();
    widget.onPressed!();
  }

  void _handleTapCancel() {
    _animationController.reverse();
  }
}

class MyBouncyButton extends StatelessWidget {
  const MyBouncyButton({
    super.key,
    required this.onPressed,
    this.padding,
    this.borderRadius,
    this.border,
    this.text,
    this.txtColor,
    this.textWidget,
    this.icon,
    this.btnColor,
    this.radius = 12,
  });

  final Function()? onPressed;
  final EdgeInsetsGeometry? padding;
  final BorderRadiusGeometry? borderRadius;
  final BoxBorder? border;
  final String? text;
  final Color? txtColor;
  final Widget? textWidget;
  final Widget? icon;
  final Color? btnColor;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: onPressed != null ? 1 : .4,
      child: BouncyButton(
        onPressed: onPressed,
        child: Container(
          padding: padding,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: onPressed != null ? btnColor ?? Colors.blue : Colors.grey,
            borderRadius: borderRadius ?? BorderRadius.circular(radius!),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 3,
                offset: Offset(2, 1),
              ),
            ],
            border: border,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (text != null)
                Expanded(
                  child: Center(
                    child: Text(
                      text ?? '-',
                      style: Get.textTheme.labelMedium?.copyWith(
                        color: onPressed != null
                            ? txtColor ?? Colors.white
                            : Colors.white,
                        // fontWeight: FontWeight.bold,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ),
              if (textWidget != null) textWidget!,
              if (icon != null)
                icon ??
                    const Icon(
                      Icons.image_not_supported_rounded,
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
