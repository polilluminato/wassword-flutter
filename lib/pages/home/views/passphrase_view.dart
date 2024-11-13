import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:wassword/enums/divider_enum.dart';
import 'package:wassword/enums/wordlist_enum.dart';
import 'package:wassword/l10n/l10n.dart';
import 'package:wassword/provider/passphrase.dart';
import 'package:wassword/provider/passphrase_provider.dart';
import 'package:wassword/provider/select_provider.dart';
import 'package:wassword/styles/decoration.dart';
import 'package:wassword/styles/dimens.dart';
import 'package:wassword/ui/action_button.dart';
import 'package:wassword/ui/custom_slider_thumb_circle.dart';
import 'package:wassword/ui/secret_card.dart';
import 'package:wassword/utils/utils.dart';

class PassphraseView extends ConsumerWidget {
  const PassphraseView({super.key});

  void _copyToClipboard(String newPassphrase, BuildContext context) {
    Clipboard.setData(ClipboardData(text: newPassphrase));
    showMyToast("Passphrase copied to clipboard", context);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Passphrase passphrase = ref.watch(passphraseProvider);
    final dividerSelected = ref.watch(dividerSelectProvider);
    final wordlistSelected = ref.watch(wordlistSelectProvider);
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return ListView(
      children: [
        SecretCard(secretString: passphrase.passphrase),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            activeTrackColor: colorScheme.primaryContainer,
            trackHeight: kHeightSlider * 1.1,
            inactiveTrackColor: colorScheme.secondaryContainer,
            thumbColor: colorScheme.primaryContainer,
            thumbShape: CustomSliderThumbCircle(
              buildContext: context,
              thumbRadius: kHeightSlider,
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
            left: kMainPadding,
            right: kMainPadding,
            top: kHugeSpace,
          ),
          child: DropdownButtonFormField(
            decoration: getSelectInputDecoration(
              colorScheme.secondaryContainer,
              context.loc.passphraseGeneratorWordlistSelect,
            ),
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
                      style: TextStyle(color: colorScheme.onSurface),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kMainPadding,
            vertical: kBigSpace,
          ),
          child: DropdownButtonFormField(
            decoration: getSelectInputDecoration(
              colorScheme.secondaryContainer,
              context.loc.passphraseGeneratorDividerSelect,
            ),
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
                      style: TextStyle(color: colorScheme.onSurface),
                    ),
                  ),
                )
                .toList(),
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
                    ref.read(passphraseProvider.notifier).updatePassphrase(),
              ),
            ),
            gapW(kMainSpace),
            Flexible(
              flex: 2,
              child: ActionButton(
                text: context.loc.buttonCopyLabel,
                icon: PhosphorIcons.copy(),
                isMain: false,
                callback: () =>
                    _copyToClipboard(passphrase.passphrase, context),
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
