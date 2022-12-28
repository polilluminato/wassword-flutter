import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wassword/provider/password.dart';
import 'package:wassword/provider/password_notifier.dart';

final passwordProvider =
    StateNotifierProvider<PasswordNotifier, Password>((ref) {
  return PasswordNotifier();
});
