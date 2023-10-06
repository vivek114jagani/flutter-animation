import 'package:flutter/material.dart';
import 'dart:async';

class ANiModalBarrier extends StatefulWidget {
  const ANiModalBarrier({super.key});

  @override
  State<ANiModalBarrier> createState() => _ANiModalBarrierState();
}

class _ANiModalBarrierState extends State<ANiModalBarrier>
    with SingleTickerProviderStateMixin {
  bool _isPressed = false;
  late Widget _animatedModalBarrier;

  late AnimationController _animationController;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    ColorTween colorTween = ColorTween(
      begin: Colors.orangeAccent.withOpacity(0.5),
      end: Colors.blueGrey.withOpacity(0.5),
    );

    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    _colorAnimation = colorTween.animate(_animationController);

    _animatedModalBarrier = AnimatedModalBarrier(
      color: _colorAnimation,
      dismissible: true,
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
                width: 250,
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orangeAccent,
                      ),
                      child: const Text("Press"),
                      onPressed: () {
                        setState(() {
                          _isPressed = true;
                        });
                        _animationController.reset();
                        _animationController.forward();
                        Future.delayed(
                          const Duration(seconds: 3),
                          () {
                            setState(() {
                              _isPressed = false;
                            });
                          },
                        );
                      },
                    ),
                    if (_isPressed) _animatedModalBarrier,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
