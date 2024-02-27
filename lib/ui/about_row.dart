import 'package:flutter/material.dart';
import 'package:wassword/styles/dimens.dart';

class AboutRow extends StatelessWidget {
  const AboutRow(
      {super.key,
      required this.title,
      required this.icon,
      required this.callback});

  final String title;
  final IconData icon;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(
        horizontal: Dimens.mainMargin,
        vertical: Dimens.tinyMargin,
      ),
      child: ListTile(
        onTap: callback,
        leading: Icon(icon),
        title: Text(title),
      ),
    );
  }
}
