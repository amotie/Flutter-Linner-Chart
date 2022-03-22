import 'package:chart/src/models/chart_model.dart';
import 'package:flutter/material.dart';

class ChartPainter extends CustomPainter {
  final List<ChartModel>? charts;
  final Color backgroundColor;
  ChartPainter({required this.charts, required this.backgroundColor});
  @override
  void paint(Canvas canvas, Size size) {
    double persintge = 0;
    final bar = Paint()
      ..color = backgroundColor
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = 20
      ..style = PaintingStyle.stroke;
    canvas.drawLine(const Offset(0, 0), Offset(size.width, 0), bar);
    for (int index = 0; index < charts!.length; index++) {
      if (index == 0) {
        final item = Paint()
          ..color = charts![index].color
          ..strokeCap = StrokeCap.round
          ..style = PaintingStyle.stroke
          ..strokeWidth = 20
          ..style = PaintingStyle.stroke;
        var endpoint = size.width * charts![index].persintge;
        canvas.drawLine(const Offset(0, 0), Offset(endpoint, 0), item);
        persintge += charts![index].persintge;
      } else if (index == charts!.length - 1) {
        final item2 = Paint()
          ..color = charts![index].color
          ..strokeCap = StrokeCap.round
          ..style = PaintingStyle.stroke
          ..strokeWidth = 20
          ..style = PaintingStyle.stroke;
        var endpoint = size.width * (charts![index].persintge + persintge);

        canvas.drawLine(
            Offset(persintge * size.width, 0), Offset(endpoint, 0), item2);
        persintge += charts![index].persintge;
      } else {
        final item2 = Paint()
          ..color = charts![index].color
          ..strokeCap = StrokeCap.round
          ..style = PaintingStyle.stroke
          ..strokeWidth = 20
          ..style = PaintingStyle.stroke;
        var endpoint = size.width * (charts![index].persintge + persintge);

        canvas.drawLine(
            Offset(persintge * size.width, 0), Offset(endpoint, 0), item2);
        persintge += charts![index].persintge;
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}