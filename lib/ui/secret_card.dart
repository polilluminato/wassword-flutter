import 'package:flutter/material.dart';
import 'package:wassword/styles/dimens.dart';

class SecretCard extends StatelessWidget {
  const SecretCard({super.key, required this.secretString});

  final String secretString;

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Container(
      margin: const EdgeInsets.only(
        top: kSmallMargin,
        bottom: kMainMargin,
        left: kMainMargin,
        right: kMainMargin,
      ),
      height: 250,
      decoration: BoxDecoration(
        border: Border.all(
          color: colorScheme.secondaryContainer,
          width: 1,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(kHugeRoundedCorner),
        ),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: kMainPadding,
      ),
      alignment: const Alignment(0, 0),
      child: Text(
        secretString,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
          color: colorScheme.onSurface,
        ),
      ),
    );
  }
}
