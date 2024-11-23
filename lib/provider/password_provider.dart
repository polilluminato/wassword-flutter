import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wassword/utils/password_generator.dart';

part 'password_provider.freezed.dart';
part 'password_provider.g.dart';

@freezed
class MyPassword with _$MyPassword {
  factory MyPassword({
    required bool withLowercase,
    required bool withUppercase,
    required bool withNumbers,
    required bool withSpecial,
    required int length,
    required String password,
  }) = _MyPassword;
}

@riverpod
class Password extends _$Password {
  @override
  MyPassword build() {
    return MyPassword(
      withLowercase: true,
      withUppercase: true,
      withNumbers: false,
      withSpecial: true,
      length: 16,
      password: "not_secure_password",
    );
  }

  void changeLowercase() {
    String newPassword = generatePassword(
      isWithLowercase: !state.withLowercase,
      isWithUppercase: state.withUppercase,
      isWithNumbers: state.withNumbers,
      isWithSpecial: state.withSpecial,
      numberCharPassword: state.length,
    );

    state = state.copyWith(
      withLowercase: !state.withLowercase,
      password: newPassword,
    );
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
      withUppercase: !state.withUppercase,
      password: newPassword,
    );
  }

  void changeNumbers() {
    String newPassword = generatePassword(
      isWithLowercase: state.withLowercase,
      isWithUppercase: state.withUppercase,
      isWithNumbers: !state.withNumbers,
      isWithSpecial: state.withSpecial,
      numberCharPassword: state.length,
    );

    state = state.copyWith(
      withNumbers: !state.withNumbers,
      password: newPassword,
    );
  }

  void changeSpecial() {
    String newPassword = generatePassword(
      isWithLowercase: state.withLowercase,
      isWithUppercase: state.withUppercase,
      isWithNumbers: state.withNumbers,
      isWithSpecial: !state.withSpecial,
      numberCharPassword: state.length,
    );

    state = state.copyWith(
      withSpecial: !state.withSpecial,
      password: newPassword,
    );
  }

  void changeLength(int newLength) {
    String newPassword = generatePassword(
      isWithLowercase: state.withLowercase,
      isWithUppercase: state.withUppercase,
      isWithNumbers: state.withNumbers,
      isWithSpecial: state.withSpecial,
      numberCharPassword: newLength,
    );

    state = state.copyWith(
      length: newLength,
      password: newPassword,
    );
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
