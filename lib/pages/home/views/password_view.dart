import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wassword/provider/password.dart';
import 'package:wassword/provider/password_provider.dart';
import 'package:wassword/styles/dimens.dart';
import 'package:wassword/ui/action_button.dart';
import 'package:wassword/ui/custom_slider_thumb_circle.dart';
import 'package:wassword/ui/option_button.dart';
import 'package:wassword/ui/secret_card.dart';
import 'package:wassword/utils/utils.dart' as Utils;

class PasswordView extends ConsumerWidget {
  const PasswordView({super.key});

  void _copyToClipboard(String newPassword, BuildContext context) {
    Clipboard.setData(ClipboardData(text: newPassword));
    Utils.showMyToast("Password copied to clipboard", context);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Password password = ref.watch(passwordProvider);
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Column(
      children: <Widget>[
        SecretCard(secretString: password.password),
        //https://medium.com/flutter-community/flutter-sliders-demystified-4b3ea65879c
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            activeTrackColor: colorScheme.primaryContainer,
            trackHeight: Dimens.heightSlider * 1.1,
            inactiveTrackColor: colorScheme.secondaryContainer,
            thumbColor: colorScheme.primaryContainer,
            thumbShape: CustomSliderThumbCircle(
              buildContext: context,
              thumbRadius: Dimens.heightSlider,
              value: password.length,
            ),
          ),
          child: Slider(
            min: 8.0,
            max: 128.0,
            divisions: 120,
            value: password.length.toDouble(),
            onChanged: (double value) =>
                ref.read(passwordProvider.notifier).changeLength(value.toInt()),
          ),
        ),
        const SizedBox(
          height: Dimens.mainSpace,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Dimens.mainPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              OptionButton(
                title: "Lowercase",
                description: "abc",
                icon: Icons.format_size,
                active: password.withLowercase,
                callback: () =>
                    ref.read(passwordProvider.notifier).changeLowercase(),
              ),
              const SizedBox(
                width: Dimens.mainSpace,
              ),
              OptionButton(
                title: "Uppercase",
                description: "ABC",
                icon: Icons.title,
                active: password.withUppercase,
                callback: () =>
                    ref.read(passwordProvider.notifier).changeUppercase(),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: Dimens.mainSpace,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Dimens.mainPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              OptionButton(
                title: "Numbers",
                description: "123",
                icon: Icons.looks_one,
                active: password.withNumbers,
                callback: () =>
                    ref.read(passwordProvider.notifier).changeNumbers(),
              ),
              const SizedBox(
                width: Dimens.mainSpace,
              ),
              OptionButton(
                title: "Special",
                description: "@£*",
                icon: Icons.star,
                active: password.withSpecial,
                callback: () =>
                    ref.read(passwordProvider.notifier).changeSpecial(),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            const SizedBox(
              width: Dimens.mainSpace,
            ),
            Flexible(
              flex: 3,
              child: ActionButton(
                text: "Generate",
                icon: Icons.sync,
                isMain: true,
                callback: () =>
                    ref.read(passwordProvider.notifier).updatePassword(),
              ),
            ),
            const SizedBox(
              width: Dimens.mainSpace,
            ),
            Flexible(
              flex: 2,
              child: ActionButton(
                text: "Copy",
                icon: Icons.copy,
                isMain: false,
                callback: () => _copyToClipboard(password.password, context),
              ),
            ),
            const SizedBox(
              width: Dimens.mainSpace,
            ),
          ],
        ),
        const SizedBox(
          height: Dimens.hugeSpace,
        ),
      ],
    );
  }
}
