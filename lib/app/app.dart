import 'package:flex_seed_scheme/flex_seed_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wassword/app/router.dart';
import 'package:wassword/provider/brightness_provider.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: router,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: SeedColorScheme.fromSeeds(
          primaryKey: Colors.deepPurple,
          brightness: ref.watch(brightnessProvider),
          tones: FlexTones.material(
            ref.watch(brightnessProvider),
          ),
        ),
      ),
    );
  }
}
