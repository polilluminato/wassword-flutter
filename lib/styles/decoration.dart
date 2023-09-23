import 'package:flutter/material.dart';
import 'package:wassword/styles/dimens.dart';

InputDecoration getSelectInputDecoration(Color onBackground, String labelText) {
  return InputDecoration(
    labelText: labelText,
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: onBackground),
      borderRadius: Dimens.mainBorderRadius,
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: onBackground),
      borderRadius: Dimens.mainBorderRadius,
    ),
  );
}
