import 'package:flutter/material.dart';

class AniIcon extends StatefulWidget {
  const AniIcon({super.key});

  @override
  State<AniIcon> createState() => _AniIconState();
}

class _AniIconState extends State<AniIcon> with TickerProviderStateMixin {
  bool _isplay = false;
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
      // TickerProviderStateMixin lakhelu chhe tethi "vsync: this" lakhavu pade.
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          if (_isplay == false) {
            _controller.forward();
            _isplay = true;
          } else {
            _controller.reverse();
            _isplay = false;
          }
        },
        child: AnimatedIcon(
          icon: AnimatedIcons.play_pause,
          color: Colors.white,
          progress: _controller,
          size: 100,
        ),
      ),
    );
  }
}
