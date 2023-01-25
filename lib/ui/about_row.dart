import 'package:flutter/material.dart';
import 'package:wassword/styles/dimens.dart';

class AboutRow extends StatelessWidget {
  const AboutRow(
      {Key? key,
      required this.title,
      required this.icon,
      required this.callback})
      : super(key: key);

  final String title;
  final IconData icon;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return GestureDetector(
      onTap: callback,
      child: Container(
        margin: const EdgeInsets.symmetric(
            horizontal: Dimens.mainMargin, vertical: Dimens.tinyMargin),
        height: 60,
        decoration: BoxDecoration(
          color: colorScheme.surfaceVariant,
          borderRadius: const BorderRadius.all(
            Radius.circular(Dimens.smallRoundedCorner),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: Dimens.mainPadding),
              child: Icon(
                icon,
                size: 24,
                color: colorScheme.onBackground,
              ),
            ),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: colorScheme.onBackground,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
