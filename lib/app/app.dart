import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wassword/pages/about_page.dart';
import 'package:wassword/pages/home/home_page.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          SystemChrome.setSystemUIOverlayStyle(
            SystemUiOverlayStyle(
              systemNavigationBarColor: Theme.of(context).colorScheme.surface,
            ),
          );
          return const HomePage();
        },
      ),
      GoRoute(
        path: '/about',
        builder: (context, state) => const AboutPage(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routeInformationProvider: router.routeInformationProvider,
        routeInformationParser: router.routeInformationParser,
        routerDelegate: router.routerDelegate,
        themeMode: ThemeMode.dark,
        // The Mandy red, dark theme.
        darkTheme: FlexThemeData.dark(
          scheme: FlexScheme.ebonyClay,
          visualDensity: FlexColorScheme.comfortablePlatformDensity,
          useMaterial3: true,
          swapLegacyOnMaterial3: true,
          textTheme: GoogleFonts.robotoTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
      );
}
