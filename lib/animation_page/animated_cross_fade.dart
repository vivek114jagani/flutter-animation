import 'package:flutter/material.dart';

class AniCrossFade extends StatefulWidget {
  const AniCrossFade({super.key});

  @override
  State<AniCrossFade> createState() => _AniCrossFadeState();
}

class _AniCrossFadeState extends State<AniCrossFade> {
  bool _bool = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 100,
          width: double.infinity,
        ),
        TextButton(
          onPressed: () {
            setState(() {
              _bool = !_bool;
            });
          },
          child: const Text(
            'Switch',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        AnimatedCrossFade(
          firstChild: Image.asset(
            'assets/Shalow_see_and_beach.jpg',
            width: double.infinity,
          ),
          secondChild: Image.asset(
            'assets/istockphoto-1140073628-612x612.jpg',
            width: double.infinity,
          ),
          crossFadeState:
              _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          duration: const Duration(seconds: 1),
        ),
      ],
    );
  }
}
