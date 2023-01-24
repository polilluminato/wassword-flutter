import 'package:flutter/material.dart';
import 'package:wassword/styles/colors.dart';
import 'package:wassword/styles/dimens.dart';

class AboutRow extends StatelessWidget {
  const AboutRow(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.icon,
      required this.callback})
      : super(key: key);

  final String title;
  final String subtitle;
  final IconData icon;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        height: 80,
        decoration: const BoxDecoration(
          color: BrandColors.colorDisabled,
          borderRadius: BorderRadius.all(
            Radius.circular(Dimens.mainRoundedCorner),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Icon(
                icon,
                size: 32,
                color: BrandColors.colorTextLight,
              ),
            ),
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: BrandColors.colorTextLight,
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      color: BrandColors.colorTextLightDark,
                    ),
                  )
                ])
          ],
        ),
      ),
    );

    // return ListTile(
    //   leading: Icon(
    //     icon,
    //     color: BrandColors.colorTextLight,
    //     size: 23,
    //   ),
    //   title: Text(
    //     subtitle,
    //     style: TextStyle(color: BrandColors.colorTextLight, fontSize: 14),
    //   ),
    //   onTap: callback,
    // );
  }
}
