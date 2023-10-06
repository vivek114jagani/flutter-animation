import 'package:flutter/material.dart';

class AniOpacity extends StatefulWidget {
  const AniOpacity({super.key});

  @override
  State<AniOpacity> createState() => _AniOpacityState();
}

class _AniOpacityState extends State<AniOpacity> {
  double opacityLeve = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AnimatedOpacity(
            opacity: opacityLeve,
            duration: const Duration(seconds: 2),
            child: const FlutterLogo(
              size: 50,
            ),
          ),
          ElevatedButton(
            child: const Text("Fade Logo"),
            onPressed: () {
              setState(
                () {
                  opacityLeve = opacityLeve == 0 ? 1 : 0;
                  // if (opacityLeve == 0) {
                  //   opacityLeve = 1;
                  // } else {
                  //   opacityLeve = 0;
                  // }
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
