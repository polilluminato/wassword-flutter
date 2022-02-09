import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:wassword/app/app.dart';
import 'package:wassword/app/app_bloc_observer.dart';
import 'package:wassword/cubit/password_cubit.dart';
import 'package:wassword/styles/my_colors.dart' as mcolors;
import 'package:window_manager/window_manager.dart';

void main() async {
  GoRouter.setUrlPathStrategy(UrlPathStrategy.path);
  WidgetsFlutterBinding.ensureInitialized();
  // Must add this line.
  await windowManager.ensureInitialized();

  //On Desktop I want the window to look like the mobile app,
  // so I put a custom width and height size
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    // Hide window title bar
    if (!Platform.isLinux) {
      await windowManager.setTitleBarStyle('hidden');
    }
    windowManager.waitUntilReadyToShow().then((_) async {
      await windowManager.setSize(const Size(385, 835));
      await windowManager.show();
      await windowManager.focus();
      await windowManager.setSkipTaskbar(true);
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
