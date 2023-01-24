import 'dart:io';

import 'package:fluttertoast/fluttertoast.dart';

void showToast(String message) {
  if (Platform.isAndroid || Platform.isIOS) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
    );
  }
}
