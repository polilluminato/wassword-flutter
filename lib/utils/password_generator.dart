import 'dart:math';

/*
 * @desc Function to generate passwords based on some criteria
 * @param bool isWithLetters: password must contain letters
 * @param bool isWithUppercase: password must contain uppercase letters
 * @param bool isWithNumbers: password must contain numbers
 * @param bool isWithSpecial: password must contain special chars
 * @param int _numberCharPassword: password length
 * @return string: new password
 */
String generatePassword(
    {required bool isWithLowercase,
    required bool isWithUppercase,
    required bool isWithNumbers,
    required bool isWithSpecial,
    required int numberCharPassword}) {
  String lowerCaseLetters = "abcdefghijklmnopqrstuvwxyz";
  String upperCaseLetters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
  String numbers = "0123456789";
  String special = "@#=+!£\$%&?[](){}-_";

  String allowedChars = "";

  allowedChars += (isWithLowercase ? lowerCaseLetters : '');
  allowedChars += (isWithUppercase ? upperCaseLetters : '');
  allowedChars += (isWithNumbers ? numbers : '');
  allowedChars += (isWithSpecial ? special : '');

  if (allowedChars.isEmpty) {
    return '';
  }

  //If I can create a password because I've got some char to use
  int i = 0;
  String result = "";
  while (i < numberCharPassword) {
    //https://stackoverflow.com/a/28614409/7483183
    int randomInt = Random.secure().nextInt(allowedChars.length);
    result += allowedChars[randomInt];
    i++;
  }

  return result;
}
