import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'brightness_provider.g.dart';

@Riverpod(keepAlive: true)
class BrightnessNotifier extends _$BrightnessNotifier {
  @override
  Brightness build() => Brightness.dark;

  void set(Brightness value) {
    state = value;
  }
}
