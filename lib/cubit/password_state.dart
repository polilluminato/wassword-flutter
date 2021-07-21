part of 'password_cubit.dart';

abstract class MyPasswordState extends Equatable {
  MyPasswordState();
}

class PasswordState extends MyPasswordState {
  bool withLowercase;
  bool withUppercase;
  bool withNumbers;
  bool withSpecial;
  int length;
  String password;

  PasswordState(
      {required this.withLowercase,
      required this.withUppercase,
      required this.withNumbers,
      required this.withSpecial,
      required this.length,
      required this.password});

  @override
  List<Object> get props => [
        withLowercase,
        withUppercase,
        withNumbers,
        withSpecial,
        length,
        password
      ];

  void updateLowercase() {
    this.withLowercase = !this.withLowercase;
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
        isWithLowercase: this.withLowercase,
        isWithUppercase: this.withUppercase,
        isWithNumbers: this.withNumbers,
        isWithSpecial: this.withSpecial,
        numberCharPassword: this.length);
  }
}
