import 'package:flutter/material.dart';
import 'package:wassword/styles/dimens.dart';

InputDecoration getSelectInputDecoration(Color onBackground, String labelText) {
  return InputDecoration(
    labelText: labelText,
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: onBackground),
      borderRadius: BorderRadius.circular(Dimens.mainRoundedCorner),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: onBackground),
      borderRadius: BorderRadius.circular(Dimens.mainRoundedCorner),
    ),
  );
}
