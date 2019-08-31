import 'dart:math';

String generaPassword(bool _isWithLetters, bool _isWithUppercase,
    bool _isWithNumbers, bool _isWithSpecial, double _numberCharPassword) {
  const String lowerCaseLetters = "abcdefghijklmnopqrstuvwxyz";
  const String upperCaseLetters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
  const String numbers = "0123456789";
  const String special = "@#=+!£\$%&?[](){}";

  String _allowedChars = "";

  if (_isWithLetters) {
    _allowedChars += lowerCaseLetters;
  }
  if (_isWithUppercase) {
    _allowedChars += upperCaseLetters;
  }
  if (_isWithNumbers) {
    _allowedChars += numbers;
  }
  if (_isWithSpecial) {
    _allowedChars += special;
  }

  int i = 0;
  String _result = "";
  while (i < _numberCharPassword.round()) {
    var rng = new Random();
    //https://stackoverflow.com/a/28614409/7483183
    int randomInt = rng.nextInt(_allowedChars.length);
    _result += _allowedChars[randomInt];
    i++;
  }

  return _result;
}
