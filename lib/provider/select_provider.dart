import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wassword/enums/divider_enum.dart';
import 'package:wassword/enums/wordlist_enum.dart';

part 'select_provider.g.dart';

@Riverpod(keepAlive: true)
class DividerSelect extends _$DividerSelect {
  @override
  DividerEnum build() => DividerEnum.comma;

  void set(DividerEnum newDivider) {
    state = newDivider;
  }
}

@Riverpod(keepAlive: true)
class WordlistSelect extends _$WordlistSelect {
  @override
  WordlistEnum build() => WordlistEnum.wordlistefflong;

  void set(WordlistEnum newWordlist) {
    state = newWordlist;
  }
}
