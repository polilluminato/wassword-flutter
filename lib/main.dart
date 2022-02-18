import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:wassword/app/app.dart';
import 'package:wassword/app/app_bloc_observer.dart';
import 'package:wassword/cubit/password_cubit.dart';
import 'package:wassword/styles/colors.dart' as mColors;
// import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  GoRouter.setUrlPathStrategy(UrlPathStrategy.path);

  // await windowManager.ensureInitialized();
  // if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
  //   windowManager.waitUntilReadyToShow().then((_) async {
  //     // Hide window title bar
  //     if (!Platform.isLinux) {
  //       await windowManager.setTitleBarStyle('hidden');
  //     }
  //     await windowManager.setSize(const Size(385, 835));
  //   });
  // }

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
        systemNavigationBarColor:
            mColors.backgroundView, // navigation bar color
        statusBarColor: mColors.backgroundView, //top bar color
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
