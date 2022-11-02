// ignore_for_file: depend_on_referenced_packages

import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wassword/app/app.dart';
import 'package:wassword/app/app_bloc_observer.dart';
import 'package:wassword/cubit/password_cubit.dart';
import 'package:window_manager/window_manager.dart';
import 'package:wassword/styles/colors.dart' as mcolors;
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
    SystemUiOverlayStyle(
        systemNavigationBarColor:
            mcolors.backgroundView, // navigation bar color
        statusBarColor: mcolors.backgroundView, //top bar color
        statusBarIconBrightness: Brightness.light, // status bar icons' color
        statusBarBrightness: Brightness.dark),
  );

  BlocOverrides.runZoned(() {
    PasswordCubit();
  }, blocObserver: AppBlocObserver());

  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  runZonedGuarded(
    () => runApp(App()),
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}
