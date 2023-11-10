import 'package:flutter/material.dart';

class FadeAndBounceAnimation extends StatefulWidget {
  const FadeAndBounceAnimation({super.key});

  @override
  State<FadeAndBounceAnimation> createState() => _FadeAndBounceAnimationState();
}

class _FadeAndBounceAnimationState extends State<FadeAndBounceAnimation> with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _fadeAnimation;
  Animation<double>? _bounceAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _fadeAnimation = Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller!, curve: Interval(0.0, 0.6, curve: Curves.easeOut)),
    );

    _bounceAnimation = Tween(begin: 0.0, end: 300.0).animate(
      CurvedAnimation(parent: _controller!, curve: Interval(0.6, 1.0, curve: Curves.bounceOut)),
    );

    _controller!.forward();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fade and Bounce Animation'),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller!,
          builder: (context, child) {
            return Transform.translate(
              offset: Offset(0.0, _bounceAnimation!.value),
              child: Opacity(
                opacity: _fadeAnimation!.value,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
