import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:wassword/l10n/l10n.dart';
import 'package:wassword/styles/dimens.dart';
import 'package:wassword/ui/about_row.dart';
import 'package:wassword/ui/about_row_switch_theme.dart';
import 'package:wassword/utils/utils.dart';

@RoutePage()
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
          icon: Icon(PhosphorIcons.arrowLeft()),
          onPressed: () => context.router.back(),
        ),
        title: Text(context.loc.settingsPageTitle),
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(
              left: kMainPadding,
              bottom: kSmallPadding,
              top: kMainPadding,
            ),
            alignment: Alignment.centerLeft,
            child: Text(
              context.loc.settingsPageThemeSection.toUpperCase(),
              style: TextStyle(
                fontSize: 14,
                color: colorScheme.onSurface,
              ),
            ),
          ),
          AboutRowSwitchTheme(
            icon: PhosphorIcons.moon(),
            title: context.loc.settingsPageDarkModeTitle,
          ),
          Container(
            padding: const EdgeInsets.only(
              left: kMainPadding,
              bottom: kSmallPadding,
              top: kHugePadding,
            ),
            alignment: Alignment.centerLeft,
            child: Text(
              context.loc.settingsPageAppSection,
              style: TextStyle(
                fontSize: 14,
                color: colorScheme.onSurface,
              ),
            ),
          ),
          AboutRow(
            icon: PhosphorIcons.globe(),
            title: context.loc.settingsPageWebsiteTitle,
            callback: () {
              launchURL(context.loc.settingsPageWebsiteLink);
            },
          ),
          AboutRow(
            icon: PhosphorIcons.shieldCheck(),
            title: context.loc.settingsPagePrivacyPolicyTitle,
            callback: () {
              launchURL(context.loc.settingsPagePrivacyPolicyLink);
            },
          ),
          AboutRow(
            icon: PhosphorIcons.heart(),
            title: context.loc.settingsPageSponsorTitle,
            callback: () {
              launchURL(context.loc.settingsPageSponsorLink);
            },
          ),
          Container(
            padding: const EdgeInsets.only(
              left: kMainPadding,
              bottom: kSmallPadding,
              top: kHugePadding,
            ),
            alignment: Alignment.centerLeft,
            child: Text(
              context.loc.settingsPageDeveloperSection.toUpperCase(),
              style: TextStyle(
                fontSize: 14,
                color: colorScheme.onSurface,
              ),
            ),
          ),
          AboutRow(
            icon: PhosphorIcons.userCircle(),
            title: context.loc.settingsPagePersonalWebsiteTitle,
            callback: () {
              launchURL(context.loc.settingsPagePersonalWebsiteLink);
            },
          ),
          AboutRow(
            icon: PhosphorIcons.code(),
            title: context.loc.settingsPageFollowGitHubTitle,
            callback: () {
              launchURL(context.loc.settingsPageFollowGitHubLink);
            },
          ),
          AboutRow(
            icon: PhosphorIcons.xLogo(),
            title: context.loc.settingsPageFollowXTitle,
            callback: () {
              launchURL(context.loc.settingsPageFollowXLink);
            },
          ),
          AboutRow(
            icon: PhosphorIcons.mastodonLogo(),
            title: context.loc.settingsPageFollowMastodonTitle,
            callback: () {
              launchURL(context.loc.settingsPageFollowMastodonLink);
            },
          ),
          AboutRow(
            icon: PhosphorIcons.linkedinLogo(),
            title: context.loc.settingsPageConnectLinkedInTitle,
            callback: () {
              launchURL(context.loc.settingsPageConnectLinkedInLink);
            },
          ),
          gapH(kHugeSpace),
          FutureBuilder<PackageInfo>(
            future: getPackageInfo(),
            builder:
                (BuildContext context, AsyncSnapshot<PackageInfo> snapshot) {
              if (snapshot.hasData) {
                return Text(
                  context.loc.settingsFooter(snapshot.data!.version),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    color: colorScheme.onSurface,
                  ),
                );
              }
              return SizedBox.shrink();
            },
          ),
          gapH(kHugeSpace),
        ],
      ),
    );
  }
}
