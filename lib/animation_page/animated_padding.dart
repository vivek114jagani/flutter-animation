import 'package:flutter/material.dart';

class AniPadding extends StatefulWidget {
  const AniPadding({super.key});

  @override
  State<AniPadding> createState() => _AniPaddingState();
}

class _AniPaddingState extends State<AniPadding> {
  double padValue = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orangeAccent,
          ),
          child: const Text("Change Padding"),
          onPressed: () {
            setState(() {
              padValue = padValue == 0 ? 100 : 0;
            });
          },
        ),
        Text(
          "Padding = $padValue",
          style: const TextStyle(fontSize: 20),
        ),
        const SizedBox(height: 5),
        AnimatedPadding(
          padding: EdgeInsets.all(padValue),
          duration: const Duration(seconds: 2),
          curve: Curves.easeInOut,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 4,
            color: Colors.orangeAccent,
          ),
        ),
      ],
    );
  }
}
