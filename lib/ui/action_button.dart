import 'package:flutter/material.dart';
import 'package:wassword/styles/dimens.dart';

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
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    Color buttonColor = isMain ? colorScheme.primary : colorScheme.secondary;
    Color onButtonColor =
        isMain ? colorScheme.onPrimary : colorScheme.onSecondary;

    return GestureDetector(
      onTap: callback,
      child: Container(
        height: 44,
        decoration: BoxDecoration(
          borderRadius: Dimens.mainBorderRadius,
          color: buttonColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: onButtonColor,
              size: 20,
            ),
            const SizedBox(
              width: Dimens.mainSpace,
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 16,
                color: onButtonColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
