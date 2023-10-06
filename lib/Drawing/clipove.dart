import 'package:flutter/material.dart';

class ClipWidgets extends StatelessWidget {
  const ClipWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ClipPath(
            clipper: CustomClipPath(),
            child: Container(
              color: Colors.red,
              height: 400,
              child: const Center(
                child: Text("Clip Path"),
              ),
            ),
          ),
          // ClipOval(
          //  koi pan widgets ne circular ma convert kari nakhava mate vaaparay chhe.
          //   child: Container(
          //     color: Colors.black,
          //     height: 300,
          //     width: 300,
          //   ),
          // ),
          // ClipRRect(
          //  Images ne circular karava mate vaparay chhhe.
          //   borderRadius: BorderRadius.circular(20),
          //   child: Container(
          //     color: Colors.black,
          //     height: 300,
          //     width: 300,
          //   ),
          // ),
          // ClipRect(
          //   child: Container(
          //     child: Image.network(
          //         "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg"),
          //   ),
          // ),
        ],
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    final path = Path();
    // (0, 0) // 1. Point.
    path.lineTo(0, h); // 2. Point.
    path.quadraticBezierTo(
      w * 0.5,
      h - 100,
      w,
      h,
    ); // 3. Point.
    path.lineTo(w, 0); // 4. Point.
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
