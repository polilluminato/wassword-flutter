import 'package:flutter/foundation.dart';

@immutable
class Password {
  const Password({
    required this.withLowercase,
    required this.withUppercase,
    required this.withNumbers,
    required this.withSpecial,
    required this.length,
    required this.password,
  });

  // All properties should be `final` on our class.
  final bool withLowercase;
  final bool withUppercase;
  final bool withNumbers;
  final bool withSpecial;
  final int length;
  final String password;

  // Since Todo is immutable, we implement a method that allows cloning the
  // Todo with slightly different content.
  Password copyWith(
      {bool? withLowercase,
      bool? withUppercase,
      bool? withNumbers,
      bool? withSpecial,
      int? length,
      String? password}) {
    return Password(
      withLowercase: withLowercase ?? this.withLowercase,
      withUppercase: withUppercase ?? this.withUppercase,
      withNumbers: withNumbers ?? this.withNumbers,
      withSpecial: withSpecial ?? this.withSpecial,
      length: length ?? this.length,
      password: password ?? this.password,
    );
  }
}
