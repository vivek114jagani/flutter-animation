import 'package:flutter/material.dart';

class AniRotation extends StatefulWidget {
  const AniRotation({super.key});

  @override
  State<AniRotation> createState() => _AniRotationState();
}

class _AniRotationState extends State<AniRotation> {
  double turns = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(50),
            child: AnimatedRotation(
              turns: turns,
              duration: const Duration(seconds: 1),
              child: const FlutterLogo(
                size: 100,
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orangeAccent,
            ),
            onPressed: () {
              setState(() => turns += 1 / 4);
            },
            child: const Text("Rotate Logo"),
          ),
        ],
      ),
    );
  }
}
