import 'package:chart/src/helpers/color_picker.dart';
import 'package:flutter/material.dart';

class ChartModel {
  double persintge;
  late Color color;
  ColorPiker colorPiker = ColorPiker();
  ChartModel({
    required this.persintge,
  }) {
    color = colorPiker.getColor();
  }
  set persintgevalue(double persint) {
    persintge = persint;
  }
}
