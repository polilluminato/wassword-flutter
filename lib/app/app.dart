import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wassword/pages/about_page.dart';
import 'package:wassword/pages/home/home_page.dart';
import 'package:wassword/provider/brightness_provider.dart';

class App extends ConsumerWidget {
  App({Key? key}) : super(key: key);

  final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
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
  Widget build(BuildContext context, WidgetRef ref) {
    final bProvider = ref.watch(brightnessProvider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      theme: bProvider == Brightness.light
          ? FlexThemeData.light(
              scheme: FlexScheme.flutterDash,
              visualDensity: FlexColorScheme.comfortablePlatformDensity,
              useMaterial3: true,
              swapLegacyOnMaterial3: true,
              textTheme: GoogleFonts.robotoTextTheme(
                Theme.of(context).textTheme,
              ),
            )
          : FlexThemeData.dark(
              scheme: FlexScheme.flutterDash,
              visualDensity: FlexColorScheme.comfortablePlatformDensity,
              useMaterial3: true,
              swapLegacyOnMaterial3: true,
              textTheme: GoogleFonts.robotoTextTheme(
                Theme.of(context).textTheme,
              ),
            ),
    );
  }
}
