import 'package:bloc/bloc.dart';
import 'package:wassword/utils/password_generator.dart';

part 'password_state.dart';

class PasswordCubit extends Cubit<PasswordState> {
  PasswordCubit()
      : super(PasswordState(
            withLetters: false,
            withUppercase: false,
            withNumbers: false,
            withSpecial: false,
            length: 0));

  void changeLetters() {
    state.updateLetters();
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
