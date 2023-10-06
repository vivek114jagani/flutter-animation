// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class AniSize extends StatefulWidget {
  const AniSize({super.key});

  @override
  State<AniSize> createState() => _AniSizeState();
}

class _AniSizeState extends State<AniSize> {
  double _size = 300;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          print("object0");
          setState(() {
            _size = _size == 300 ? 100 : 300;
          });
        },
        child: AnimatedSize(
          duration: const Duration(seconds: 1),
          child: FlutterLogo(size: _size),
        ),
      ),
    );
  }
}
