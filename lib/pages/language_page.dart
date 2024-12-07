import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:wassword/l10n/l10n.dart';
import 'package:wassword/models/language_choice.dart';
import 'package:wassword/provider/common_provider.dart';
import 'package:wassword/ui/language_choice_row.dart';

@RoutePage()
class LanguagePage extends ConsumerWidget {
  const LanguagePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // List of supported languages
    final List<LanguageChoice> languages = [
      LanguageChoice(iso2Code: 'de', name: context.loc.supportedLanguageDE),
      LanguageChoice(iso2Code: 'en', name: context.loc.supportedLanguageEN),
      LanguageChoice(iso2Code: 'it', name: context.loc.supportedLanguageIT),
      LanguageChoice(iso2Code: 'es', name: context.loc.supportedLanguageES),
      LanguageChoice(iso2Code: 'fr', name: context.loc.supportedLanguageFR),
      LanguageChoice(iso2Code: 'pt', name: context.loc.supportedLanguagePT),
    ];
    // Sort languages by iso2Code
    languages.sort((a, b) => a.name.compareTo(b.name));

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(PhosphorIconsRegular.arrowLeft),
          onPressed: () => context.router.back(),
        ),
        title: Text(context.loc.languagePageTitle),
      ),
      body: ListView.builder(
        itemCount: languages.length,
        itemBuilder: (context, index) {
          return LanguageChoiceRow(
            language: languages[index],
            provider: languageChoiceProvider,
          );
        },
      ),
    );
  }
}
