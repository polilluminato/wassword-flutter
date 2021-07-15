part of 'password_cubit.dart';

class PasswordState {
  bool withLetters;
  bool withUppercase;
  bool withNumbers;
  bool withSpecial;
  int length;
  String password = "";

  PasswordState(
      {required this.withLetters,
      required this.withUppercase,
      required this.withNumbers,
      required this.withSpecial,
      required this.length});

  void updateLetters() {
    this.withLetters = !this.withLetters;
  }

  void updateUppercase() {
    this.withUppercase = !this.withUppercase;
  }

  void updateNumbers() {
    this.withNumbers = !this.withNumbers;
  }

  void updateSpecial() {
    this.withSpecial = !this.withSpecial;
  }

  void updateLength(int newValue) {
    this.length = newValue;
  }

  void updatePassword() {
    this.password = generatePassword(
        isWithLetters: this.withLetters,
        isWithUppercase: this.withUppercase,
        isWithNumbers: this.withNumbers,
        isWithSpecial: this.withSpecial,
        numberCharPassword: this.length);
  }
}
