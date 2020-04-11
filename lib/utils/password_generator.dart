import 'dart:math';

/**
 * @desc Function to generate passwords based on some criteria
 * @param bool isWithLetters: password must contain letters
 * @param bool isWithUppercase: password must contain uppercase letters
 * @param bool isWithNumbers: password must contain numbers
 * @param bool isWithSpecial: password must contain special chars
 * @param int _numberCharPassword: password length
 * @return string: new password
 */
String generatePassword({
    bool isWithLetters, 
    bool isWithUppercase,
    bool isWithNumbers, 
    bool isWithSpecial, 
    double numberCharPassword}) {
  
  String _lowerCaseLetters = "abcdefghijklmnopqrstuvwxyz";
  String _upperCaseLetters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
  String _numbers = "0123456789";
  String _special = "@#=+!£\$%&?[](){}";

  String _allowedChars = "";

  _allowedChars += (isWithLetters ? _lowerCaseLetters : '');
  _allowedChars += (isWithUppercase ? _upperCaseLetters : '');
  _allowedChars += (isWithNumbers ? _numbers : '');
  _allowedChars += (isWithSpecial ? _special : '');

  if(_allowedChars.length == 0) {
    return '';
  }

  //If I can create a password because I've got some char to use
  int i = 0;
  String _result = "";
  while (i < numberCharPassword) {
    //https://stackoverflow.com/a/28614409/7483183
    int randomInt = Random.secure().nextInt(_allowedChars.length);
    _result += _allowedChars[randomInt];
    i++;
  }

  return _result;
}
