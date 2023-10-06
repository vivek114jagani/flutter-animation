// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class TransFormDemo extends StatefulWidget {
  const TransFormDemo({super.key});

  final String title = "Transform Demo";

  @override
  State<TransFormDemo> createState() => _TransFormDemoState();
}

class _TransFormDemoState extends State<TransFormDemo> {
  double sliderVal = 0;

  @override
  void initState() {
    sliderVal = 0;
    super.initState();
  }

  Container threeD() {
    return Container(
      child: Transform(
        transform: Matrix4.identity()
          ..setEntry(3, 2, sliderVal / 1000)
          ..rotateX(3.14 / 20.0),
        alignment: FractionalOffset.center,
        origin: const Offset(0.0, 0.0),
        child: Container(
          height: 100,
          width: 100,
          color: Colors.grey,
        ),
      ),
    );
  }

  Container skew() {
    return Container(
      child: Transform(
        transform: Matrix4.skewX(sliderVal / 100),
        origin: const Offset(0.0, 0.0),
        child: Container(
          height: 100,
          width: 100,
          color: Colors.blue,
        ),
      ),
    );
  }

  Container translate() {
    return Container(
      child: Transform.translate(
        offset: Offset(sliderVal, 0.0),
        child: Container(
          height: 100,
          width: 100,
          color: Colors.yellow,
        ),
      ),
    );
  }

  Container scale() {
    return Container(
      child: Transform.scale(
        scale: sliderVal == 0 ? 1 : sliderVal / 50,
        origin: const Offset(0.0, 0.0),
        child: Container(
          height: 100,
          width: 100,
          color: Colors.green,
        ),
      ),
    );
  }

  Container rotate() {
    return Container(
      child: Transform.rotate(
        angle: sliderVal,
        origin: const Offset(0.0, 0.0),
        child: Container(
          height: 100,
          width: 100,
          color: Colors.red,
        ),
      ),
    );
  }

  Slider slider() {
    return Slider(
      value: sliderVal,
      min: 0,
      max: 100,
      onChanged: (val) {
        setState(() {
          sliderVal = val;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          slider(),
          rotate(),
          scale(),
          translate(),
          skew(),
          threeD(),
        ],
      ),
    );
  }
}
