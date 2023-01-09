import 'package:wassword/wordlist/wordlist_en.dart';
import 'package:wassword/wordlist/wordlist_it.dart';

enum WordlistEnum {
  english("English wordlist", wordlistEn),
  italian("Italian wordlist", wordlistIt);

  const WordlistEnum(this.name, this.wordlist);
  final String name;
  final List<String> wordlist;
}
