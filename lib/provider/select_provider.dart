import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wassword/enums/divider_enum.dart';
import 'package:wassword/enums/wordlist_enum.dart';

final dividerSelectProvider =
    StateProvider<DividerEnum>((_) => DividerEnum.comma);

final wordlistSelectProvider =
    StateProvider<WordlistEnum>((_) => WordlistEnum.wordlistefflong);
