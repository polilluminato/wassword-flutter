// ignore_for_file: depend_on_referenced_packages

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:wassword/app/app.dart';
import 'package:window_manager/window_manager.dart';
import 'package:wassword/styles/colors.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  usePathUrlStrategy();

  if (!kIsWeb &&
      !Platform.isAndroid &&
      !Platform.isIOS &&
      (Platform.isWindows || Platform.isLinux || Platform.isMacOS)) {
    await windowManager.ensureInitialized();
    windowManager.waitUntilReadyToShow().then((_) async {
      await windowManager.setSize(const Size(385, 835));
    });
  }

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
        systemNavigationBarColor:
            BrandColors.backgroundView, // navigation bar color
        statusBarColor: BrandColors.backgroundView, //top bar color
        statusBarIconBrightness: Brightness.light, // status bar icons' color
        statusBarBrightness: Brightness.dark),
  );

  runApp(ProviderScope(child: App()));
}
