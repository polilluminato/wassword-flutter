import 'package:flex_seed_scheme/flex_seed_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wassword/app/app_router.dart';
import 'package:wassword/provider/brightness_provider.dart';

class App extends ConsumerWidget {
  App({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: _appRouter.config(),
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: SeedColorScheme.fromSeeds(
          primaryKey: Colors.deepPurpleAccent,
          brightness: ref.watch(brightnessProvider),
          tones: FlexTones.material(
            ref.watch(brightnessProvider),
          ),
        ),
      ),
      builder: (_, child) => MediaQuery(
        data: MediaQuery.of(context).copyWith(
          textScaler: MediaQuery.textScalerOf(context).clamp(
            minScaleFactor: 1,
            maxScaleFactor: 1,
          ),
        ),
        child: child!,
      ),
    );
  }
}
