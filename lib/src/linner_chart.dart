import 'package:chart/src/models/chart_model.dart';
import 'package:chart/src/view/chart_painter.dart';
import 'package:flutter/material.dart';

class LinnerChat extends StatelessWidget {
  final List<ChartModel>? charts;
  final double strokeWidth;
  const LinnerChat({
    Key? key,
    @required this.charts,
    this.strokeWidth = 20,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(MediaQuery.of(context).size.width - 30, 0),
      painter: ChartPainter(
        charts: charts,
        backgroundColor: Colors.grey,
        strokeWidth: strokeWidth,
      ),
    );
  }
}
