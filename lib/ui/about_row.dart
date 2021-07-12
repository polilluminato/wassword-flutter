import 'package:flutter/material.dart';
import 'package:wassword/styles/my_colors.dart' as mColors;
import 'package:wassword/styles/my_dimens.dart' as mDimens;

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
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      height: 100,
      decoration: new BoxDecoration(
        color: mColors.colorDisabled,
        borderRadius: new BorderRadius.all(
          Radius.circular(mDimens.roundedCorner),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Icon(
              icon,
              size: 32,
              color: mColors.colorWhite,
            ),
          ),
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: mColors.colorTextLight,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: mColors.colorTextLightDark,
                  ),
                )
              ])
        ],
      ),
    );

    // return ListTile(
    //   leading: Icon(
    //     icon,
    //     color: mColors.colorTextLight,
    //     size: 23,
    //   ),
    //   title: Text(
    //     subtitle,
    //     style: TextStyle(color: mColors.colorTextLight, fontSize: 14),
    //   ),
    //   onTap: callback,
    // );
  }
}
