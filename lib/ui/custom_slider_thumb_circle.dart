import 'package:flutter/material.dart';

//https://medium.com/flutter-community/flutter-sliders-demystified-4b3ea65879c
class CustomSliderThumbCircle extends SliderComponentShape {
  final double thumbRadius;
  final int value;
  final int min;
  final int max;
  final BuildContext buildContext;

  const CustomSliderThumbCircle({
    required this.buildContext,
    required this.thumbRadius,
    required this.value,
    this.min = 0,
    this.max = 10,
  });

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(thumbRadius);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    Animation<double>? activationAnimation,
    Animation<double>? enableAnimation,
    bool? isDiscrete,
    TextPainter? labelPainter,
    RenderBox? parentBox,
    SliderThemeData? sliderTheme,
    TextDirection? textDirection,
    double? value,
    double? textScaleFactor,
    Size? sizeWithOverflow,
  }) {
    final Canvas canvas = context.canvas;
    ColorScheme colorScheme = Theme.of(buildContext).colorScheme;

    final paint = Paint()
      ..color = colorScheme.secondaryContainer //Thumb Background Color
      ..style = PaintingStyle.fill;

    TextSpan span = TextSpan(
      style: TextStyle(
        fontSize: thumbRadius,
        fontWeight: FontWeight.w700,
        color: colorScheme.onSecondaryContainer, //Text Color of Value on Thumb
      ),
      text: getValue(this.value.toDouble()),
    );

    TextPainter tp = TextPainter(
        text: span,
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr);
    tp.layout();
    Offset textCenter =
        Offset(center.dx - (tp.width / 2), center.dy - (tp.height / 2));

    canvas.drawCircle(center, thumbRadius * 1.1, paint);
    tp.paint(canvas, textCenter);
  }

  String getValue(double value) {
    return ((min + (max - min) * value) / 10).round().toString();
  }
}
