import 'package:flutter/material.dart';
import 'package:wassword/styles/dimens.dart';

class OptionButton extends StatelessWidget {
  const OptionButton({
    Key? key,
    required this.title,
    required this.description,
    required this.icon,
    required this.active,
    required this.callback,
  }) : super(key: key);

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
      child: GestureDetector(
        onTap: callback,
        child: Container(
          height: 85,
          decoration: BoxDecoration(
            borderRadius: Dimens.mainBorderRadius,
            color: containerColor,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 12),
                child: Icon(
                  icon,
                  size: 24,
                  color: onContainerColor,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: onContainerColor,
                    ),
                  ),
                  const SizedBox(
                    height: 6,
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
