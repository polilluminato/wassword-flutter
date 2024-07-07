import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:wassword/styles/dimens.dart';
import 'package:wassword/ui/about_row.dart';
import 'package:wassword/ui/about_row_switch_theme.dart';
import 'package:wassword/utils/utils.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  Future<PackageInfo> getPackageInfo() async {
    return await PackageInfo.fromPlatform();
  }

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
        title: const Text("Settings"),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(
              left: Dimens.mainPadding,
              bottom: Dimens.smallPadding,
              top: Dimens.mainPadding,
            ),
            alignment: Alignment.centerLeft,
            child: Text(
              "THEME",
              style: TextStyle(
                fontSize: 14,
                color: colorScheme.onSurface,
              ),
            ),
          ),
          const AboutRowSwitchTheme(
            icon: Icons.dark_mode_outlined,
            title: "Dark Mode",
          ),
          Container(
            padding: const EdgeInsets.only(
              left: Dimens.mainPadding,
              bottom: Dimens.smallPadding,
              top: Dimens.hugePadding,
            ),
            alignment: Alignment.centerLeft,
            child: Text(
              "APP",
              style: TextStyle(
                fontSize: 14,
                color: colorScheme.onSurface,
              ),
            ),
          ),
          AboutRow(
            icon: Icons.language,
            title: "Website",
            callback: () {
              launchURL("https://wassword.app/");
            },
          ),
          AboutRow(
            icon: Icons.policy,
            title: "Privacy Policy",
            callback: () {
              launchURL("https://github.com/polilluminato/wassword-flutter");
            },
          ),
          AboutRow(
            icon: Icons.favorite,
            title: "Sponsor",
            callback: () {
              launchURL("https://github.com/sponsors/polilluminato");
            },
          ),
          Container(
            padding: const EdgeInsets.only(
              left: Dimens.mainPadding,
              bottom: Dimens.smallPadding,
              top: Dimens.hugePadding,
            ),
            alignment: Alignment.centerLeft,
            child: Text(
              "DEVELOPER",
              style: TextStyle(
                fontSize: 14,
                color: colorScheme.onSurface,
              ),
            ),
          ),
          AboutRow(
            icon: Icons.person,
            title: "Personal Website",
            callback: () {
              launchURL("https://www.albertobonacina.com/");
            },
          ),
          AboutRow(
            icon: Icons.code,
            title: "Follow on GitHub",
            callback: () {
              launchURL("https://www.github.com/polilluminato");
            },
          ),
          AboutRow(
            icon: Icons.flutter_dash,
            title: "Follow on X/Twitter",
            callback: () {
              launchURL("https://www.twitter.com/polilluminato");
            },
          ),
          AboutRow(
            icon: Icons.campaign,
            title: "Follow on Mastodon",
            callback: () {
              launchURL("https://fluttercommunity.social/@polilluminato");
            },
          ),
          AboutRow(
            icon: Icons.business,
            title: "Connect on LinkedIn",
            callback: () {
              launchURL("https://www.linkedin.com/in/bonacinaalberto");
            },
          ),
          const SizedBox(
            height: Dimens.hugeSpace,
          ),
          FutureBuilder<PackageInfo>(
            future: getPackageInfo(),
            builder:
                (BuildContext context, AsyncSnapshot<PackageInfo> snapshot) {
              if (snapshot.hasData) {
                return Text(
                  "Wassword ${snapshot.data!.version}\nMade with ☕ and 💙 by Alberto Bonacina",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    color: colorScheme.onSurface,
                  ),
                );
              }
              return Container();
            },
          ),
          const SizedBox(
            height: Dimens.hugeSpace,
          ),
        ],
      ),
    );
  }
}
