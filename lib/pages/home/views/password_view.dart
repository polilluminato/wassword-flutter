import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:wassword/l10n/l10n.dart';
import 'package:wassword/provider/password_provider.dart';
import 'package:wassword/styles/dimens.dart';
import 'package:wassword/ui/action_button.dart';
import 'package:wassword/ui/custom_slider_thumb_circle.dart';
import 'package:wassword/ui/option_button.dart';
import 'package:wassword/ui/secret_card.dart';
import 'package:wassword/utils/utils.dart';

class PasswordView extends ConsumerWidget {
  const PasswordView({super.key});

  void _copyToClipboard(String newPassword, BuildContext context) {
    Clipboard.setData(ClipboardData(text: newPassword));
    showMyToast(context.loc.toastLabelPasswordCopied, context);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final password = ref.watch(passwordProvider);
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return ListView(
      children: [
        SecretCard(
          secretString: password.password,
        ),
        //https://medium.com/flutter-community/flutter-sliders-demystified-4b3ea65879c
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            activeTrackColor: colorScheme.primaryContainer,
            trackHeight: kHeightSlider * 1.1,
            inactiveTrackColor: colorScheme.secondaryContainer,
            thumbColor: colorScheme.primaryContainer,
            thumbShape: CustomSliderThumbCircle(
              buildContext: context,
              thumbRadius: kHeightSlider,
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
        gapH(kMainSpace),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kMainPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              OptionButton(
                title: context.loc.passwordGeneratorLowercaseTitle,
                description: context.loc.passwordGeneratorLowercaseDescription,
                icon: PhosphorIcons.textAa(),
                active: password.withLowercase,
                callback: () =>
                    ref.read(passwordProvider.notifier).changeLowercase(),
              ),
              gapW(kMainSpace),
              OptionButton(
                title: context.loc.passwordGeneratorUppercaseTitle,
                description: context.loc.passwordGeneratorUppercaseDescription,
                icon: PhosphorIcons.textB(),
                active: password.withUppercase,
                callback: () =>
                    ref.read(passwordProvider.notifier).changeUppercase(),
              ),
            ],
          ),
        ),
        gapH(kMainSpace),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kMainPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              OptionButton(
                title: context.loc.passwordGeneratorNumbersTitle,
                description: context.loc.passwordGeneratorNumbersDescription,
                icon: PhosphorIcons.numberSquareOne(),
                active: password.withNumbers,
                callback: () =>
                    ref.read(passwordProvider.notifier).changeNumbers(),
              ),
              gapW(kMainSpace),
              OptionButton(
                title: context.loc.passwordGeneratorSpecialTitle,
                description: context.loc.passwordGeneratorSpecialDescription,
                icon: PhosphorIcons.star(),
                active: password.withSpecial,
                callback: () =>
                    ref.read(passwordProvider.notifier).changeSpecial(),
              ),
            ],
          ),
        ),
        gapH(kHugeSpace),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            gapW(kMainSpace),
            Flexible(
              flex: 3,
              child: ActionButton(
                text: context.loc.buttonGenerateLabel,
                icon: PhosphorIcons.arrowsClockwise(),
                isMain: true,
                callback: () =>
                    ref.read(passwordProvider.notifier).updatePassword(),
              ),
            ),
            gapW(kMainSpace),
            Flexible(
              flex: 2,
              child: ActionButton(
                text: context.loc.buttonCopyLabel,
                icon: PhosphorIcons.copy(),
                isMain: false,
                callback: () => _copyToClipboard(password.password, context),
              ),
            ),
            gapW(kMainSpace),
          ],
        ),
        gapH(kHugeSpace),
      ],
    );
  }
}
