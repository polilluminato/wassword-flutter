import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:wassword/models/language_choice.dart';
import 'package:wassword/styles/dimens.dart';

class LanguageChoiceRow extends ConsumerWidget {
  const LanguageChoiceRow({
    super.key,
    required this.language,
    required this.provider,
  });

  final LanguageChoice language;
  final StateProvider provider;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedLanguage = ref.watch(provider);
    return Card(
      margin: const EdgeInsets.symmetric(
        horizontal: kMainMargin,
        vertical: kTinyMargin,
      ),
      child: ListTile(
        onTap: () {
          ref.read(provider.notifier).update((state) => language.iso2Code);
        },
        leading: Image.asset(
          'assets/flags/${language.iso2Code.toLowerCase()}.png',
          width: 32,
          height: 32,
        ),
        title: Text(language.name),
        trailing: language.iso2Code == selectedLanguage
            ? const Icon(PhosphorIconsBold.check)
            : null,
      ),
    );
  }
}
