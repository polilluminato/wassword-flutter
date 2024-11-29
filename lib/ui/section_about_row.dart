import 'package:flutter/material.dart';
import 'package:wassword/styles/dimens.dart';

class SectionAboutRow extends StatelessWidget {
  const SectionAboutRow({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: kMainPadding,
        bottom: kMainPadding,
        top: kMainPadding,
      ),
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: TextStyle(
          fontSize: 14,
          color: Theme.of(context).colorScheme.onSurface,
        ),
      ),
    );
  }
}
