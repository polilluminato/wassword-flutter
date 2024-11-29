import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:wassword/enums/windowsize_enum.dart';
import 'package:wassword/l10n/l10n.dart';
import 'package:wassword/models/screen_tab_model.dart';
import 'package:wassword/pages/home/views/passphrase_view.dart';
import 'package:wassword/pages/home/views/password_view.dart';
import 'package:wassword/utils/utils.dart';

final tabProvider = StateProvider<int>((ref) => 0);

@RoutePage()
class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double screenSizeWidth = getScreenWidth(context);

    final List<ScreenTab> tabList = [
      ScreenTab(
        label: context.loc.passwordTabLabel,
        icon: PhosphorIconsRegular.password,
        content: const PasswordView(),
      ),
      ScreenTab(
        label: context.loc.passphraseTabLabel,
        icon: PhosphorIconsRegular.textAa,
        content: const PassphraseView(),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(context.loc.appTitle),
        centerTitle: true,
        leading: IconButton(
          iconSize: 24,
          icon: Icon(PhosphorIconsRegular.gear),
          onPressed: () => context.router.pushNamed('/about'),
        ),
      ),
      body: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          if (screenSizeWidth >= WindowSizeEnum.tabletPortrait.width)
            NavigationRail(
              extended: screenSizeWidth >= WindowSizeEnum.tabletLandscape.width,
              selectedIndex: ref.watch(tabProvider),
              // Called when one tab is selected
              onDestinationSelected: (int index) {
                ref.read(tabProvider.notifier).update((state) => index);
              },
              // navigation rail items
              destinations: tabList
                  .map(
                    (singleScreenTab) => NavigationRailDestination(
                      icon: Icon(singleScreenTab.icon),
                      label: Text(singleScreenTab.label),
                    ),
                  )
                  .toList(),
            ),
          //Expanded(child: tabList[ref.watch(tabProvider)].content),
          Expanded(
            child: IndexedStack(
              index: ref.watch(tabProvider),
              children: tabList.map((e) => e.content).toList(),
            ),
          )
        ],
      ),
      bottomNavigationBar: screenSizeWidth < WindowSizeEnum.tabletPortrait.width
          ? NavigationBar(
              onDestinationSelected: (int index) {
                ref.read(tabProvider.notifier).update((state) => index);
              },
              selectedIndex: ref.watch(tabProvider),
              destinations: tabList
                  .map(
                    (singleScreenTab) => NavigationDestination(
                      icon: Icon(singleScreenTab.icon),
                      label: singleScreenTab.label,
                    ),
                  )
                  .toList(),
            )
          : null,
    );
  }
}
