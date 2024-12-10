import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:wassword/pages/about_page.dart';
import 'package:wassword/pages/home/home_page.dart';
import 'package:wassword/pages/language_page.dart';

part 'app_router.gr.dart';

final navigatorKey = GlobalKey<NavigatorState>();

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, path: '/home', initial: true),
        AutoRoute(page: AboutRoute.page, path: '/about'),
        AutoRoute(page: LanguageRoute.page, path: '/language-selection'),
      ];
}
