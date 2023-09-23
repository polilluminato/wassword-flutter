import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

void showMyToast(String message, BuildContext context) {
  showToast(
    message,
    context: context,
    axis: Axis.horizontal,
    alignment: Alignment.center,
    position: StyledToastPosition.bottom,
    animation: StyledToastAnimation.fade,
  );
}
