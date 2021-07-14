import 'package:flutter/material.dart';
import 'package:wassword/styles/my_colors.dart' as mColors;
import 'package:wassword/styles/my_dimens.dart' as mDimens;

class ActionButton extends StatelessWidget {
  const ActionButton({
    Key? key,
    required this.text,
    required this.icon,
    required this.callback,
    required this.isMain,
  }) : super(key: key);

  final String text;
  final IconData icon;
  final VoidCallback callback;
  final bool isMain;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      icon: Icon(
        icon,
        color: isMain ? mColors.colorBlack : mColors.colorWhite,
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
            isMain ? mColors.colorEnabled : mColors.colorDisabled),
        padding: MaterialStateProperty.all(
            EdgeInsets.all(isMain ? mDimens.paddingButtonBig : mDimens.paddingButton)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(mDimens.roundedCorner),
          ),
        ),
      ),
      onPressed: callback,
      label: Text(
        text,
        style: TextStyle(
          color: isMain ? mColors.colorTextDark : mColors.colorTextLight,
        ),
      ),
    );
  }
}
