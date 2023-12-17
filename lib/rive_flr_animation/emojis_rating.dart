// ignore_for_file: sized_box_for_whitespace, prefer_final_fields

import 'package:f_animetion/rive_flr_animation/smiley_controller.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class EmojisRating extends StatefulWidget {
  const EmojisRating({super.key, required this.title});

  final String title;

  @override
  State<EmojisRating> createState() => _EmojisRatingState();
}

class _EmojisRatingState extends State<EmojisRating> {
  double _rating = 5.0;
  String _currentAnimation = '5+';

  SmileyController _smileyController = SmileyController();

  void _onChanged(double value) {
    if (_rating == value) return;

    setState(() {
      var direction = _rating < value ? '+' : '-';
      _rating = value;
      _currentAnimation = '${value.round()}$direction';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
              width: 300,
              child: FlareActor(
                'assets/happiness_emoji.flr',
                alignment: Alignment.center,
                fit: BoxFit.contain,
                controller: _smileyController,
                animation: _currentAnimation,
              ),
            ),
            Slider(
              value: _rating,
              min: 1,
              max: 5,
              divisions: 4,
              onChanged: _onChanged,
            ),
          ],
        ),
      ),
    );
  }
}
