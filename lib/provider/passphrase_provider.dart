import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wassword/provider/passphrase.dart';
import 'package:wassword/provider/passphrase_notifier.dart';

final passphraseProvider =
    StateNotifierProvider<PassphraseNotifier, Passphrase>((ref) {
  return PassphraseNotifier();
});
