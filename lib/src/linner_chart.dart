import 'package:chart/src/helpers/color_picker.dart';
import 'package:flutter/material.dart';

class LinnerChat extends StatelessWidget {
  const LinnerChat({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorPiker().getColor(),
    );
  }
}
