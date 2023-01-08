import 'package:flutter/foundation.dart';
import 'package:wassword/enums/divider_enum.dart';
import 'package:wassword/enums/wordlist_enum.dart';

@immutable
class Passphrase {
  const Passphrase({
    required this.wordlist,
    required this.divider,
    required this.length,
    required this.passphrase,
  });

  // All properties should be `final` on our class.
  final WordlistEnum wordlist;
  final DividerEnum divider;
  final int length;
  final String passphrase;

  // Since Todo is immutable, we implement a method that allows cloning the
  // Todo with slightly different content.
  Passphrase copyWith(
      {WordlistEnum? wordlist,
      DividerEnum? divider,
      int? length,
      String? passphrase}) {
    return Passphrase(
      wordlist: wordlist ?? this.wordlist,
      divider: divider ?? this.divider,
      length: length ?? this.length,
      passphrase: passphrase ?? this.passphrase,
    );
  }
}
