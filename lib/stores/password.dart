import 'package:mobx/mobx.dart';
import '../utils/password_generator.dart' as pg;

// Include generated file
part 'password.g.dart';

// This is the class used by rest of your codebase
class Password = _Password with _$Password;

// The store-class
abstract class _Password with Store {
  @observable
  bool isWithLetters = false;

  @observable
  bool isWithUppercase = false;

  @observable
  bool isWithNumbers = false;

  @observable
  bool isWithSpecial = false;

  @observable
  double numberCharPassword = 8;

  @observable
  String password = '';

  @action
  void generateNew() {
    password = pg.generatePassword(
        isWithLetters: isWithLetters,
        isWithUppercase: isWithUppercase,
        isWithNumbers: isWithNumbers,
        isWithSpecial: isWithSpecial,
        numberCharPassword: numberCharPassword.toInt());
  }

  @action
  void changeLetters(bool newValue) {
    isWithLetters = newValue;
  }

  @action
  void changeUppercase(bool newValue) {
    isWithUppercase = newValue;
  }

  @action
  void changeNumbers(bool newValue) {
    isWithNumbers = newValue;
  }

  @action
  void changeSpecial(bool newValue) {
    isWithSpecial = newValue;
  }

  void changeLenght(double newLength) {
    numberCharPassword = newLength;
  }
}
