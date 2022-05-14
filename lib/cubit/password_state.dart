part of 'password_cubit.dart';

abstract class MyPasswordState extends Equatable {
  const MyPasswordState();
}

class PasswordState extends MyPasswordState {
  final bool withLowercase;
  final bool withUppercase;
  final bool withNumbers;
  final bool withSpecial;
  final int length;
  final String password;

  const PasswordState(
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
}
