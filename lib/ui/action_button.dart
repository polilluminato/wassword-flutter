import 'package:flutter/material.dart';
import 'package:wassword/styles/dimens.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    Key? key,
    required this.text,
    required this.icon,
    required this.callback,
    required this.isMain,
    required this.width,
  }) : super(key: key);

  final String text;
  final IconData icon;
  final VoidCallback callback;
  final bool isMain;
  final double actionButtonSizeBig = 56;
  final double actionButtonSizeSmall = 44;
  final double width;

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return GestureDetector(
      onTap: callback,
      child: Container(
        height: actionButtonSizeSmall,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimens.mainRoundedCorner),
          color: isMain ? colorScheme.primary : colorScheme.secondaryContainer,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: isMain
                  ? colorScheme.onPrimary
                  : colorScheme.onSecondaryContainer,
              size: 20,
            ),
            const SizedBox(
              width: Dimens.mainSpace,
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 16,
                color: isMain
                    ? colorScheme.onPrimary
                    : colorScheme.onSecondaryContainer,
              ),
            )
          ],
        ),
      ),
    );
  }
}
