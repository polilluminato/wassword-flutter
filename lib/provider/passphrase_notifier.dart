import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wassword/enums/divider_enum.dart';
import 'package:wassword/enums/wordlist_enum.dart';
import 'package:wassword/provider/passphrase.dart';
import 'package:wassword/utils/passphrase_generator.dart';

class PassphraseNotifier extends StateNotifier<Passphrase> {
  PassphraseNotifier()
      : super(const Passphrase(
            wordlist: WordlistEnum.wordlistefflong,
            divider: DividerEnum.colon,
            length: 8,
            passphrase: "not_secure_passphrase"));

  void changeWordlist(WordlistEnum newWordlist) {
    String newPassphrase = generatePassphrase(
        wordlist: newWordlist.wordlist,
        divider: state.divider.divider,
        numberStringPassphrase: state.length);

    state = state.copyWith(wordlist: newWordlist, passphrase: newPassphrase);
  }

  void changeDivider(DividerEnum newDivider) {
    String newPassphrase = generatePassphrase(
        wordlist: state.wordlist.wordlist,
        divider: newDivider.divider,
        numberStringPassphrase: state.length);

    state = state.copyWith(divider: newDivider, passphrase: newPassphrase);
  }

  void changeLength(int newLength) {
    String newPassphrase = generatePassphrase(
        wordlist: state.wordlist.wordlist,
        divider: state.divider.divider,
        numberStringPassphrase: newLength);

    state = state.copyWith(length: newLength, passphrase: newPassphrase);
  }

  void updatePassphrase() {
    String newPassphrase = generatePassphrase(
        wordlist: state.wordlist.wordlist,
        divider: state.divider.divider,
        numberStringPassphrase: state.length);

    state = state.copyWith(passphrase: newPassphrase);
  }
}
