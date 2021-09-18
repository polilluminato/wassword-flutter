import 'package:flutter/material.dart';
import 'package:wassword/styles/my_colors.dart' as mColors;

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

  final double actionButtonSizeBig = 80;
  final double actionButtonSizeSmall = 52;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: callback,
          child: Container(
            height: isMain ? actionButtonSizeBig : actionButtonSizeSmall,
            width: isMain ? actionButtonSizeBig : actionButtonSizeSmall,
            decoration: new BoxDecoration(
              borderRadius: BorderRadius.circular(actionButtonSizeBig / 2),
              color: mColors.colorEnabled,
            ),
            child: Icon(
              icon,
              color: isMain ? mColors.colorTextLight : mColors.colorTextLight,
              size: isMain ? actionButtonSizeBig / 2 : actionButtonSizeSmall / 2.5,
            ),
          ),
        ),
        SizedBox(height: isMain ? 25 : 12),
        !isMain
            ? Text(
                text,
                style: TextStyle(
                  color:
                      isMain ? mColors.colorTextLight : mColors.colorTextLight,
                ),
              )
            : Container()
      ],
    );
  }
}
