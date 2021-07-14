import 'package:bloc/bloc.dart';

part 'password_state.dart';

class PasswordCubit extends Cubit<PasswordState> {
  PasswordCubit()
      : super(PasswordState(
            withLetters: false,
            withUppercase: false,
            withNumbers: false,
            withSpecial: false,
            number: 0));
}
