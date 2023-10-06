import 'package:flutter/material.dart';

class AniPhysicalModel extends StatefulWidget {
  const AniPhysicalModel({super.key});

  @override
  State<AniPhysicalModel> createState() => _AniPhysicalModelState();
}

class _AniPhysicalModelState extends State<AniPhysicalModel> {
  bool _isFlat = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedPhysicalModel(
              shape: BoxShape.rectangle,
              elevation: _isFlat ? 0 : 6,
              color: Colors.white,
              shadowColor: Colors.black,
              duration: const Duration(milliseconds: 500),
              child: const SizedBox(
                height: 120,
                width: 120,
                child: Icon(Icons.android_outlined),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text("Click"),
              onPressed: () {
                setState(() {
                  _isFlat = !_isFlat;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
