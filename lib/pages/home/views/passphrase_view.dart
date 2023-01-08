import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:wassword/provider/passphrase.dart';
import 'package:wassword/provider/passphrase_provider.dart';
import 'package:wassword/styles/colors.dart';
import 'package:wassword/styles/dimens.dart';
import 'package:wassword/ui/action_button.dart';
import 'package:wassword/ui/custom_slider_thumb_circle.dart';

class PassphraseView extends ConsumerWidget {
  const PassphraseView({super.key});

  void _copyToClipboard(String newPassword) {
    Clipboard.setData(ClipboardData(text: newPassword));

    if (Platform.isAndroid || Platform.isIOS) {
      Fluttertoast.showToast(
          msg: "Password copied to clipboard",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER);
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double screenWidth = MediaQuery.of(context).size.width;
    Passphrase passphrase = ref.watch(passphraseProvider);

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
          child: Text(
            passphrase.passphrase,
            textAlign: TextAlign.center,
            style: const TextStyle(
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
            thumbShape: CustomSliderThumbCircle(
              thumbRadius: Dimens.heightSlider,
              value: passphrase.length,
            ),
          ),
          child: Slider(
            min: 6.0,
            max: 24.0,
            divisions: 9,
            value: passphrase.length.toDouble(),
            onChanged: (double value) => ref
                .read(passphraseProvider.notifier)
                .changeLength(value.toInt()),
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
                callback: () =>
                    ref.read(passphraseProvider.notifier).updatePassphrase(),
                width: screenWidth * .5,
              ),
              ActionButton(
                text: "Copy",
                icon: Icons.copy,
                isMain: false,
                callback: () => _copyToClipboard(passphrase.passphrase),
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
