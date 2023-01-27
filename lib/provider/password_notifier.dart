import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wassword/provider/password.dart';
import 'package:wassword/utils/password_generator.dart';

class PasswordNotifier extends StateNotifier<Password> {
  PasswordNotifier()
      : super(
          const Password(
              withLowercase: true,
              withUppercase: false,
              withNumbers: false,
              withSpecial: false,
              length: 8,
              password: "not_secure_password"),
        );

  void changeLowercase() {
    String newPassword = generatePassword(
      isWithLowercase: !state.withLowercase,
      isWithUppercase: state.withUppercase,
      isWithNumbers: state.withNumbers,
      isWithSpecial: state.withSpecial,
      numberCharPassword: state.length,
    );

    state = state.copyWith(
        withLowercase: !state.withLowercase, password: newPassword);
  }

  void changeUppercase() {
    String newPassword = generatePassword(
      isWithLowercase: state.withLowercase,
      isWithUppercase: !state.withUppercase,
      isWithNumbers: state.withNumbers,
      isWithSpecial: state.withSpecial,
      numberCharPassword: state.length,
    );

    state = state.copyWith(
        withUppercase: !state.withUppercase, password: newPassword);
  }

  void changeNumbers() {
    String newPassword = generatePassword(
      isWithLowercase: state.withLowercase,
      isWithUppercase: state.withUppercase,
      isWithNumbers: !state.withNumbers,
      isWithSpecial: state.withSpecial,
      numberCharPassword: state.length,
    );

    state =
        state.copyWith(withNumbers: !state.withNumbers, password: newPassword);
  }

  void changeSpecial() {
    String newPassword = generatePassword(
      isWithLowercase: state.withLowercase,
      isWithUppercase: state.withUppercase,
      isWithNumbers: state.withNumbers,
      isWithSpecial: !state.withSpecial,
      numberCharPassword: state.length,
    );

    state =
        state.copyWith(withSpecial: !state.withSpecial, password: newPassword);
  }

  void changeLength(int newLength) {
    String newPassword = generatePassword(
      isWithLowercase: state.withLowercase,
      isWithUppercase: state.withUppercase,
      isWithNumbers: state.withNumbers,
      isWithSpecial: state.withSpecial,
      numberCharPassword: newLength,
    );

    state = state.copyWith(length: newLength, password: newPassword);
  }

  void updatePassword() {
    String newPassword = generatePassword(
      isWithLowercase: state.withLowercase,
      isWithUppercase: state.withUppercase,
      isWithNumbers: state.withNumbers,
      isWithSpecial: state.withSpecial,
      numberCharPassword: state.length,
    );

    state = state.copyWith(password: newPassword);
  }
}
