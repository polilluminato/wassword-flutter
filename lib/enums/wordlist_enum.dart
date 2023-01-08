import 'package:wassword/wordlist/wordlist_en.dart';
import 'package:wassword/wordlist/wordlist_it.dart';

enum WordlistEnum {
  english("English", wordlistEn),
  italian("Italian", wordlistIt);

  const WordlistEnum(this.name, this.wordlist);
  final String name;
  final List<String> wordlist;
}
