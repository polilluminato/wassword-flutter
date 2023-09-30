// ignore_for_file: depend_on_referenced_packages

import 'dart:io';

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:wassword/app/app.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();
  usePathUrlStrategy();

  WindowOptions windowOptions = const WindowOptions(
    //Pixel 7a form factor (2400x1080 px)
    size: Size(376, 835),
  );

  if (!kIsWeb &&
      !Platform.isAndroid &&
      !Platform.isIOS &&
      (Platform.isWindows || Platform.isLinux || Platform.isMacOS)) {
    windowManager.waitUntilReadyToShow(windowOptions, () async {
      await windowManager.show();
      await windowManager.focus();
    });
  }

  runApp(ProviderScope(child: App()));
}
