import 'package:flutter/material.dart';
import 'package:wassword/styles/my_colors.dart' as mColors;
import 'package:wassword/styles/my_dimens.dart' as mDimens;

class OptionButton extends StatelessWidget {
  const OptionButton({
    Key? key,
    required this.title,
    required this.description,
    required this.icon,
    required this.active,
  }) : super(key: key);

  final String title;
  final String description;
  final IconData icon;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 100,
        decoration: new BoxDecoration(
          color: active ? mColors.colorEnabled : mColors.colorDisabled,
          borderRadius: new BorderRadius.all(
            Radius.circular(mDimens.roundedCorner),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 16, right: 12),
              child: Icon(
                icon,
                size: 24,
                color: active ? mColors.colorBlack : mColors.colorWhite,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: active ? mColors.colorTextDark : mColors.colorTextLight,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  description,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: active ? mColors.colorTextDarkLight : mColors.colorTextLightDark,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}