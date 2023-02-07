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

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: Dimens.mainMargin,
        vertical: Dimens.tinyMargin,
      ),
      decoration: BoxDecoration(
        color: colorScheme.surface,
        borderRadius: const BorderRadius.all(
          Radius.circular(Dimens.smallRoundedCorner),
        ),
      ),
      child: ListTile(
        onTap: callback,
        leading: Icon(
          icon,
          size: 24,
          color: colorScheme.onSurface,
        ),
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: colorScheme.onSurface,
          ),
        ),
      ),
    );
  }
}
