import 'package:flutter/material.dart';
import 'package:wassword/styles/colors.dart';
import 'package:wassword/styles/dimens.dart';

InputDecoration getSelectInputDecoration(String labelText) {
  return InputDecoration(
    labelText: labelText,
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: BrandColors.colorEnabled),
      borderRadius: BorderRadius.circular(Dimens.mainRoundedCorner),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: BrandColors.colorEnabled),
      borderRadius: BorderRadius.circular(Dimens.mainRoundedCorner),
    ),
  );
}
