import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wassword/provider/brightness_provider.dart';
import 'package:wassword/styles/dimens.dart';

class AboutRowSwitchTheme extends ConsumerWidget {
  const AboutRowSwitchTheme({
    super.key,
    required this.title,
    required this.icon,
    this.isDark = true,
  });

  final String title;
  final IconData icon;
  final bool isDark;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bProvider = ref.watch(brightnessProvider);

    return Card(
      margin: const EdgeInsets.symmetric(
        horizontal: kMainMargin,
        vertical: kTinyMargin,
      ),
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
        trailing: Switch.adaptive(
          value: bProvider == Brightness.dark,
          onChanged: (value) => ref
              .read(brightnessProvider.notifier)
              .update((state) => value ? Brightness.dark : Brightness.light),
        ),
      ),
    );
  }
}
