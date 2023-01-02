import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PassphraseView extends ConsumerWidget {
  const PassphraseView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Center(
      child: Text(
        "PassPhrase View",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
