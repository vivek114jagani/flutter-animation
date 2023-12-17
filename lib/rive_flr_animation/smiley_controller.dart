// ignore_for_file: camel_case_types, unnecessary_import, null_check_always_fails

import 'package:flare_flutter/base/math/mat2d.dart';
import 'package:flare_flutter/flare.dart';
import 'package:flare_flutter/flare_controller.dart';

class SmileyController extends FlareController {
  late ActorAnimation _blink;
  late double _timer = 0;

  @override
  void initialize(FlutterActorArtboard artboard) {
    _blink = artboard.getAnimation('blink')!;
  }

  @override
  bool advance(FlutterActorArtboard artboard, double elapsed) {
    _timer += elapsed;
    _blink.apply(_timer % _blink.duration, artboard, 0.5);
    return true;
  }

  @override
  void setViewTransform(Mat2D viewTransform) {}
}
