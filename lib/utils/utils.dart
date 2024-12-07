import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:url_launcher/url_launcher.dart';

void showMyToast(BuildContext context, String message) {
  showToast(
    message,
    context: context,
    axis: Axis.horizontal,
    alignment: Alignment.center,
    position: StyledToastPosition.bottom,
    animation: StyledToastAnimation.fade,
  );
}

SizedBox gapW(double width) => SizedBox(width: width);

SizedBox gapH(double height) => SizedBox(height: height);

double getScreenWidth(BuildContext context) {
  return MediaQuery.sizeOf(context).width;
}

double getScreenHeight(BuildContext context) {
  return MediaQuery.sizeOf(context).height;
}

//Open the browser with the url provided
void launchURL(String urlToLaunch) async {
  if (!await launchUrl(
    Uri.parse(urlToLaunch),
    mode: LaunchMode.externalApplication,
  )) {
    throw Exception('Could not launch $urlToLaunch');
  }
}
