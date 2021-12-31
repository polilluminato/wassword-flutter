import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wassword/utils/password_generator.dart';

part 'password_state.dart';

class PasswordCubit extends Cubit<PasswordState> {
  PasswordCubit()
      : super(
          PasswordState(
              withLowercase: true,
              withUppercase: false,
              withNumbers: false,
              withSpecial: false,
              length: 8,
              password: "password"),
        );

  void updatePassword(){
    emit(
      PasswordState(
        withLowercase: state.withLowercase,
        withUppercase: state.withUppercase,
        withNumbers: state.withNumbers,
        withSpecial: state.withSpecial,
        length: state.length,
        password: generateNewPassword(state.withLowercase, state.withUppercase,
            state.withNumbers, state.withSpecial, state.length),
      ),
    );
  }

  void changeLowercase() {
    emit(
      PasswordState(
        withLowercase: !state.withLowercase,
        withUppercase: state.withUppercase,
        withNumbers: state.withNumbers,
        withSpecial: state.withSpecial,
        length: state.length,
        password: generateNewPassword(!state.withLowercase, state.withUppercase,
            state.withNumbers, state.withSpecial, state.length),
      ),
    );
  }

  void changeUppercase() {
    emit(
      PasswordState(
        withLowercase: state.withLowercase,
        withUppercase: !state.withUppercase,
        withNumbers: state.withNumbers,
        withSpecial: state.withSpecial,
        length: state.length,
        password: generateNewPassword(state.withLowercase, !state.withUppercase,
            state.withNumbers, state.withSpecial, state.length),
      ),
    );
  }

  void changeNumbers() {
    emit(
      PasswordState(
        withLowercase: state.withLowercase,
        withUppercase: state.withUppercase,
        withNumbers: !state.withNumbers,
        withSpecial: state.withSpecial,
        length: state.length,
        password: generateNewPassword(state.withLowercase, state.withUppercase,
            !state.withNumbers, state.withSpecial, state.length),
      ),
    );
  }

  void changeSpecial() {
    emit(
      PasswordState(
        withLowercase: state.withLowercase,
        withUppercase: state.withUppercase,
        withNumbers: state.withNumbers,
        withSpecial: !state.withSpecial,
        length: state.length,
        password: generateNewPassword(state.withLowercase, state.withUppercase,
            state.withNumbers, !state.withSpecial, state.length),
      ),
    );
  }

  void changeLength(int newLength) {
    emit(
      PasswordState(
        withLowercase: state.withLowercase,
        withUppercase: state.withUppercase,
        withNumbers: state.withNumbers,
        withSpecial: state.withSpecial,
        length: newLength,
        password: generateNewPassword(state.withLowercase, state.withUppercase,
            state.withNumbers, state.withSpecial, newLength),
      ),
    );
  }

  String generateNewPassword(bool withLowercase, bool withUppercase,
      bool withNumbers, bool withSpecial, int length) {
    return generatePassword(
        isWithLowercase: withLowercase,
        isWithUppercase: withUppercase,
        isWithNumbers: withNumbers,
        isWithSpecial: withSpecial,
        numberCharPassword: length);
  }
}
