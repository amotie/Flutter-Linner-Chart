import 'dart:math';

import 'package:flutter/material.dart';

class ColorPiker {
  List<Color> colors = [];
  Random random = Random();
  Color getColor() {
    Color color =
        Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1);
    if (colors.contains(color) || _isColorinSameRange(colors, color)) {
      return getColor();
    } else {
      colors.add(color);
      return color;
    }
  }

  bool _isColorinSameRange(List<Color> colors, Color color) {
    if (colors.isEmpty) {
      return false;
    }
    int defrenceGreen = (colors.last.green - color.green).abs();
    int defrenceRed = (colors.last.red - color.red).abs();
    int defrenceBlue = (colors.last.blue - color.blue).abs();

    if (defrenceGreen <= 100 && defrenceRed <= 100 && defrenceBlue <= 100) {
      return true;
    } else {
      return false;
    }
  }
}
