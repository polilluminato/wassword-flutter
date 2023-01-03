import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wassword/pages/home/views/passphrase_view.dart';
import 'package:wassword/pages/home/views/password_view.dart';
import 'package:wassword/provider/tab_provider.dart';
import 'package:wassword/styles/colors.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int selectedTab = ref.watch(tabProvider);
    List<Widget> tabList = <Widget>[
      const PasswordView(),
      const PassphraseView(),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            BrandColors.backgroundView, // status bar colortatus bar brightness
        title: Text(
          "Wassword",
          style: GoogleFonts.roboto(
            color: BrandColors.colorTextLight,
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
                iconSize: 24,
                color: BrandColors.colorTextLight,
                icon: const Icon(Icons.settings),
                onPressed: () => context.push('/about')),
          ),
        ],
      ),
      body: tabList[selectedTab],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: BrandColors.colorEnabled.withAlpha(130),
        ),
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
    );
  }
}
