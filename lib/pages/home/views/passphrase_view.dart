import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wassword/styles/colors.dart';
import 'package:wassword/styles/dimens.dart';
import 'package:wassword/ui/action_button.dart';
import 'package:wassword/ui/custom_slider_thumb_circle.dart';

class PassphraseView extends ConsumerWidget {
  const PassphraseView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.all(Dimens.defaultSpace),
          height: 280,
          decoration: const BoxDecoration(
            color: BrandColors.colorEnabled,
            borderRadius:
                BorderRadius.all(Radius.circular(Dimens.roundedCorner)),
          ),
          padding:
              const EdgeInsets.symmetric(horizontal: Dimens.paddingHorizontal),
          alignment: const Alignment(0, 0),
          child: const Text(
            "",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: BrandColors.colorTextDark,
            ),
          ),
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            activeTrackColor: BrandColors.colorEnabled,
            trackHeight: Dimens.heightSlider * 1.1,
            inactiveTrackColor: BrandColors.colorDisabled,
            thumbColor: BrandColors.colorEnabled,
            thumbShape: const CustomSliderThumbCircle(
              thumbRadius: Dimens.heightSlider,
              value: 16,
            ),
          ),
          child: Slider(
            min: 8.0,
            max: 32.0,
            divisions: 20,
            value: 16,
            onChanged: (double value) => {},
          ),
        ),
        Expanded(
          child: Container(),
        ),
        Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: Dimens.paddingHorizontal),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: [
              ActionButton(
                text: "Generate",
                icon: Icons.sync,
                isMain: true,
                callback: () => {},
                width: screenWidth * .5,
              ),
              ActionButton(
                text: "Copy",
                icon: Icons.copy,
                isMain: false,
                callback: () => {},
                width: screenWidth * .3,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: Dimens.hugeSpace,
        ),
      ],
    );
  }
}
