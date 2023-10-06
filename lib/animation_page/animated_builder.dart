import 'package:flutter/material.dart';
import 'dart:math' as math;

class AniBuilder extends StatefulWidget {
  const AniBuilder({super.key});

  @override
  State<AniBuilder> createState() => _AniBuilderState();
}

class _AniBuilderState extends State<AniBuilder> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this,
  )..repeat();

  @override
  void dispose() {
    _controller.dispose() ;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: _controller,
        child: const FlutterLogo(
          size: 100,
        ),
        builder: (context, child) {
          return Transform.rotate(
            angle: _controller.value * 2 * math.pi,
            child: child,
          );
          // return Transform.scale(
          //   // scale: _controller.value * 2 * math.pi,
          //   scaleX: _controller.value * 1 * math.pi,
          //   scaleY: _controller.value * 1 * math.pi,
          //   child: child,
          // );
          // return Transform.translate(
          //   offset: const Offset(20, 50),
          //   child: child,
          // );
        },
      ),
    );
  }
}
