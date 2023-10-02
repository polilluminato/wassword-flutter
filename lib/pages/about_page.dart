import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:wassword/styles/dimens.dart';
import 'package:wassword/ui/about_row.dart';
import 'package:wassword/ui/about_row_switch_theme.dart';
import 'package:wassword/utils/utils.dart' as Utils;

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  Future<PackageInfo> getPackageInfo() async {
    return await PackageInfo.fromPlatform();
  }

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.background,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
        title: const Text("About"),
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
              "APP",
              style: TextStyle(
                fontSize: 14,
                color: colorScheme.onBackground,
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
              "GENERALE",
              style: TextStyle(
                fontSize: 14,
                color: colorScheme.onBackground,
              ),
            ),
          ),
          AboutRow(
            icon: Icons.language,
            title: "Website",
            callback: () {
              Utils.launchURL("https://wassword.app/");
            },
          ),
          AboutRow(
            icon: Icons.policy,
            title: "Privacy Policy",
            callback: () {
              Utils.launchURL(
                  "https://github.com/polilluminato/wassword-flutter");
            },
          ),
          AboutRow(
            icon: Icons.favorite,
            title: "Sponsor",
            callback: () {
              Utils.launchURL("https://github.com/sponsors/polilluminato");
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
                color: colorScheme.onBackground,
              ),
            ),
          ),
          AboutRow(
            icon: Icons.person,
            title: "Personal Website",
            callback: () {
              Utils.launchURL("https://www.albertobonacina.com/");
            },
          ),
          AboutRow(
            icon: Icons.code,
            title: "Follow on GitHub",
            callback: () {
              Utils.launchURL("https://www.github.com/polilluminato");
            },
          ),
          AboutRow(
            icon: Icons.flutter_dash,
            title: "Follow on X/Twitter",
            callback: () {
              Utils.launchURL("https://www.twitter.com/polilluminato");
            },
          ),
          AboutRow(
            icon: Icons.campaign,
            title: "Follow on Mastodon",
            callback: () {
              Utils.launchURL("https://fluttercommunity.social/@polilluminato");
            },
          ),
          AboutRow(
            icon: Icons.business,
            title: "Connect on LinkedIn",
            callback: () {
              Utils.launchURL("https://www.linkedin.com/in/bonacinaalberto");
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
                    color: colorScheme.onBackground,
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
