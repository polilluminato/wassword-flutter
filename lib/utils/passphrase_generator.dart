import 'dart:math';

/*
 * @desc Function to generate passphrase based on some criteria
 * @param List<String> wordlist: strings that can be used
 * @param String divider: strings divider inside passphrase
 * @param int numberStringPassphrase: number of strings to use
 * @return string: new passphrase
 */
String generatePassphrase({
  required List<String> wordlist,
  required String divider,
  required int numberStringPassphrase,
}) {
  int i = 0;
  List<String> result = [];
  while (i < numberStringPassphrase) {
    //https://stackoverflow.com/a/28614409/7483183
    int randomInt = Random.secure().nextInt(wordlist.length);
    result.add(wordlist[randomInt]);
    i++;
  }

  return result.join(divider);
}
