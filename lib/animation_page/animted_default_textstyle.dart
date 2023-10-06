import 'package:flutter/material.dart';

class AniDefaultTextStyle extends StatefulWidget {
  const AniDefaultTextStyle({super.key});

  @override
  State<AniDefaultTextStyle> createState() => _AniDefaultTextStyleState();
}

class _AniDefaultTextStyleState extends State<AniDefaultTextStyle> {
  bool _first = true;
  double _fontsize = 60;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 120,
          child: AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 300),
            style: TextStyle(
              fontSize: _fontsize,
              color: _color,
              fontWeight: FontWeight.bold,
            ),
            child: const Text("Flutter"),
          ),
        ),
        TextButton(
          onPressed: () {
            setState(() {
              _fontsize = _first ? 90 : 60;
              _color = _first ? Colors.blue : Colors.red;
              _first = !_first;
            });
          },
          child: const Text("Switch"),
        ),
      ],
    );
  }
}
