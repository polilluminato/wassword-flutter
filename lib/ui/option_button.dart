import 'package:flutter/material.dart';
import 'package:wassword/styles/dimens.dart';
import 'package:wassword/utils/utils.dart';

class OptionButton extends StatelessWidget {
  const OptionButton({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
    required this.active,
    required this.callback,
  });

  final String title;
  final String description;
  final IconData icon;
  final bool active;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    Color containerColor =
        active ? colorScheme.primaryContainer : colorScheme.secondaryContainer;
    Color onContainerColor = active
        ? colorScheme.onPrimaryContainer
        : colorScheme.onSecondaryContainer;

    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: kMainBorderRadius,
          color: containerColor,
        ),
        padding: EdgeInsets.all(kMainPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  icon,
                  size: 28,
                  color: onContainerColor,
                ),
                Switch.adaptive(
                  value: active,
                  onChanged: (_) => callback(),
                )
              ],
            ),
            gapH(kSmallSpace),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: onContainerColor,
              ),
            ),
            Text(
              description,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: onContainerColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
