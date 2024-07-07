import 'package:wassword/wordlist/wordlist_eff_long.dart';
import 'package:wassword/wordlist/wordlist_eff_short.dart';
import 'package:wassword/wordlist/wordlist_eff_special.dart';

enum WordlistEnum {
  wordlistefflong("Wordlist EFF Long", wordlistEffLong),
  wordlisteffshot("Wordlist EFF Short", wordlistEffShort),
  wordlisteffspecial("Wordlist EFF Special", wordlistEffSpecial);

  const WordlistEnum(this.name, this.wordlist);
  final String name;
  final List<String> wordlist;
}
