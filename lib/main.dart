import 'package:f_animetion/rive_flr_animation/emojis_rating.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EmojisRating(title: 'Flutter Animation Demo.'),
    );
  }
}
