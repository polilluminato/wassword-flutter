part of 'password_cubit.dart';

class PasswordState {
  bool withLetters;
  bool withUppercase;
  bool withNumbers;
  bool withSpecial;
  int number;

  PasswordState({
    required this.withLetters,
    required this.withUppercase,
    required this.withNumbers,
    required this.withSpecial,
    required this.number,
  });

  void setWithLetters(bool newValue){
    this.withLetters = newValue;
  }

  void setWithUppercase(bool newValue){
    this.withUppercase = newValue;
  }

  void setWithNunbers(bool newValue){
    this.withNumbers = newValue;
  }

  void setWithSpecial(bool newValue){
    this.withSpecial = newValue;
  }

  void setNumber(int newValue){
    this.number = newValue;
  }

}
