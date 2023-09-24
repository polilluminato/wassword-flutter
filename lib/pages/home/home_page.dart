import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:wassword/pages/home/views/passphrase_view.dart';
import 'package:wassword/pages/home/views/password_view.dart';

final tabProvider = StateProvider<int>((ref) => 0);

List<Widget> tabList = <Widget>[
  const PasswordView(),
  const PassphraseView(),
];

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int selectedTab = ref.watch(tabProvider);

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: FlexColorScheme.themedSystemNavigationBar(
        context,
        systemNavBarStyle: FlexSystemNavBarStyle.transparent,
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Wassword"),
          leading: IconButton(
            iconSize: 24,
            icon: const Icon(Icons.settings_outlined),
            onPressed: () => context.push('/about'),
          ),
        ),
        body: tabList[selectedTab],
        bottomNavigationBar: NavigationBarTheme(
          data: const NavigationBarThemeData(),
          child: NavigationBar(
            onDestinationSelected: (int index) {
              ref.read(tabProvider.notifier).update((state) => index);
            },
            selectedIndex: selectedTab,
            destinations: const <Widget>[
              NavigationDestination(
                icon: Icon(Icons.vpn_key),
                label: 'Password',
              ),
              NavigationDestination(
                icon: Icon(Icons.text_fields),
                label: 'Passphrase',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
