import 'package:flutter/material.dart';
import 'package:wassword/styles/dimens.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    super.key,
    required this.text,
    required this.icon,
    required this.callback,
    required this.isMain,
  });

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
          borderRadius: kMainBorderRadius,
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
              width: kMainSpace,
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
