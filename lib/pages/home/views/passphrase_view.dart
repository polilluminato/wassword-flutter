import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:wassword/enums/divider_enum.dart';
import 'package:wassword/enums/wordlist_enum.dart';
import 'package:wassword/provider/passphrase.dart';
import 'package:wassword/provider/passphrase_provider.dart';
import 'package:wassword/provider/select_provider.dart';
import 'package:wassword/styles/colors.dart';
import 'package:wassword/styles/decoration.dart';
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
    final dividerSelected = ref.watch(dividerSelectProvider);
    final wordlistSelected = ref.watch(wordlistSelectProvider);

    return Column(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.all(Dimens.defaultSpace),
          height: 280,
          decoration: const BoxDecoration(
            color: BrandColors.colorEnabled,
            borderRadius: BorderRadius.all(
              Radius.circular(Dimens.roundedCorner),
            ),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: Dimens.hugePadding,
          ),
          alignment: const Alignment(0, 0),
          child: Text(
            passphrase.passphrase,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28,
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
        Padding(
          padding: const EdgeInsets.only(
            left: Dimens.mainPadding,
            right: Dimens.mainPadding,
            top: Dimens.hugeSpace,
          ),
          child: DropdownButtonFormField(
            decoration: getSelectInputDecoration("Wordlist"),
            value: wordlistSelected,
            onChanged: (value) {
              ref.read(wordlistSelectProvider.notifier).state = value!;
              ref.read(passphraseProvider.notifier).changeWordlist(value);
            },
            items: WordlistEnum.values
                .map(
                  (singleDivider) => DropdownMenuItem(
                    value: singleDivider,
                    child: Text(
                      singleDivider.name,
                      style: const TextStyle(color: BrandColors.colorTextLight),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Dimens.mainPadding,
            vertical: Dimens.hugeSpace,
          ),
          child: DropdownButtonFormField(
            decoration: getSelectInputDecoration("Divider"),
            value: dividerSelected,
            onChanged: (value) {
              ref.read(dividerSelectProvider.notifier).state = value!;
              ref.read(passphraseProvider.notifier).changeDivider(value);
            },
            items: DividerEnum.values
                .map(
                  (singleDivider) => DropdownMenuItem(
                    value: singleDivider,
                    child: Text(
                      singleDivider.name,
                      style: const TextStyle(color: BrandColors.colorTextLight),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
        Expanded(
          child: Container(),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Dimens.mainPadding,
          ),
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
