import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wassword/models/language_choice.dart';
import 'package:wassword/styles/dimens.dart';

class LanguageChoiceRow extends ConsumerWidget {
  const LanguageChoiceRow({
    super.key,
    required this.language,
    required this.callback,
  });

  final LanguageChoice language;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      margin: const EdgeInsets.symmetric(
        horizontal: kMainMargin,
        vertical: kTinyMargin,
      ),
      child: ListTile(
        onTap: callback,
        leading: Image.asset(
          'assets/flags/${language.iso2Code.toLowerCase()}.png',
          width: 32,
          height: 32,
        ),
        title: Text(language.name),
      ),
    );
  }
}
