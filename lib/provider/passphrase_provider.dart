import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wassword/enums/divider_enum.dart';
import 'package:wassword/enums/wordlist_enum.dart';
import 'package:wassword/utils/passphrase_generator.dart';

part 'passphrase_provider.freezed.dart';
part 'passphrase_provider.g.dart';

@freezed
class MyPassphrase with _$MyPassphrase {
  factory MyPassphrase({
    required WordlistEnum wordlist,
    required DividerEnum divider,
    required int length,
    required String passphrase,
  }) = _MyPassphrase;
}

@riverpod
class Passphrase extends _$Passphrase {
  @override
  MyPassphrase build() {
    return MyPassphrase(
      wordlist: WordlistEnum.wordlistefflong,
      divider: DividerEnum.comma,
      length: 8,
      passphrase: "not_secure_passphrase",
    );
  }

  void changeWordlist(WordlistEnum newWordlist) {
    String newPassphrase = generatePassphrase(
      wordlist: newWordlist.wordlist,
      divider: state.divider.divider,
      numberStringPassphrase: state.length,
    );

    state = state.copyWith(
      wordlist: newWordlist,
      passphrase: newPassphrase,
    );
  }

  void changeDivider(DividerEnum newDivider) {
    String newPassphrase = generatePassphrase(
      wordlist: state.wordlist.wordlist,
      divider: newDivider.divider,
      numberStringPassphrase: state.length,
    );

    state = state.copyWith(
      divider: newDivider,
      passphrase: newPassphrase,
    );
  }

  void changeLength(int newLength) {
    String newPassphrase = generatePassphrase(
      wordlist: state.wordlist.wordlist,
      divider: state.divider.divider,
      numberStringPassphrase: newLength,
    );

    state = state.copyWith(
      length: newLength,
      passphrase: newPassphrase,
    );
  }

  void updatePassphrase() {
    String newPassphrase = generatePassphrase(
      wordlist: state.wordlist.wordlist,
      divider: state.divider.divider,
      numberStringPassphrase: state.length,
    );

    state = state.copyWith(passphrase: newPassphrase);
  }
}
