import 'package:chart/src/helpers/color_picker.dart';
import 'package:flutter/material.dart';

class ChartModel {
  double persintge;
  late Color color;
  ColorPiker colorPiker = ColorPiker();
  Color? selectColor;

  ChartModel({required this.persintge, this.selectColor}) {
    color = selectColor ?? colorPiker.getColor();
  }

  set persintgevalue(double persint) {
    persintge = persint;
  }

  set colorvalue(Color selctedColor) {
    color = selctedColor;
  }
}
