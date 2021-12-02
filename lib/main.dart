import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:wassword/app/app.dart';
import 'package:wassword/app/app_bloc_observer.dart';
import 'package:wassword/cubit/password_cubit.dart';
import 'package:wassword/styles/my_colors.dart' as mColors;

void main() {
  GoRouter.setUrlPathStrategy(UrlPathStrategy.path);

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: mColors.backgroundView, // navigation bar color
      statusBarColor: mColors.backgroundView, //top bar color
      statusBarIconBrightness: Brightness.light, // status bar icons' color
      statusBarBrightness: Brightness.dark),);

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
