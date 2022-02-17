import 'package:flutter/material.dart';
import 'package:wassword/styles/dimens.dart' as mDimens;
import 'package:wassword/styles/colors.dart' as mColors;

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

  final double actionButtonSizeBig = 56;
  final double actionButtonSizeSmall = 44;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: callback,
      child: Container(
        height: isMain ? actionButtonSizeBig : actionButtonSizeSmall,
        width: screenWidth * .7,
        decoration: new BoxDecoration(
          borderRadius: BorderRadius.circular(mDimens.roundedCorner),
          color: isMain ? mColors.colorMainButton : mColors.colorDisabled,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: isMain ? mColors.colorTextDark : mColors.colorTextLight,
              size: isMain
                  ? actionButtonSizeBig / 2
                  : actionButtonSizeSmall / 2.5,
            ),
            SizedBox(
              width: mDimens.defaultSpace,
            ),
            Text(
              text,
              style: TextStyle(
                  fontSize: isMain ? 18 : 16,
                  color:
                      isMain ? mColors.colorTextDark : mColors.colorTextLight),
            )
          ],
        ),
      ),
    );
  }
}
