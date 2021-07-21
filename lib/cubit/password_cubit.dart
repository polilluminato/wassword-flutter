import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:wassword/utils/password_generator.dart';

part 'password_state.dart';

class PasswordCubit extends Cubit<PasswordState> {
  PasswordCubit()
      : super(PasswordState(
            withLowercase: false,
            withUppercase: false,
            withNumbers: false,
            withSpecial: false,
            length: 16,
            password: "password"));

  void changeLowercase() {
    state.updateLowercase();
    state.updatePassword();
    emit(state);
  }

  void changeUppercase() {
    state.updateUppercase();
    state.updatePassword();
    emit(state);
  }

  void changeNumbers() {
    state.updateNumbers();
    state.updatePassword();
    emit(state);
  }

  void changeSpecial() {
    state.updateSpecial();
    state.updatePassword();
    emit(state);
  }

  void changeLength(int newLength) {
    state.updateLength(newLength);
    state.updatePassword();
    emit(state);
  }
}
