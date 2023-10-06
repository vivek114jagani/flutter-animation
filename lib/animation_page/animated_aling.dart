import 'package:flutter/material.dart';

class AnimatedAling extends StatefulWidget {
  const AnimatedAling({super.key});

  @override
  State<AnimatedAling> createState() => _AnimatedAlingState();
}

class _AnimatedAlingState extends State<AnimatedAling> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
        child: Container(
          width: double.infinity,
          height: 250,
          color: Colors.blueGrey,
          child: AnimatedAlign(
            alignment: selected ? Alignment.topRight : Alignment.bottomLeft,
            duration: const Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
            child: const FlutterLogo(size: 50),
          ),
        ),
      ),
    );
  }
}
