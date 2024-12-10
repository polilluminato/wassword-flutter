import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:wassword/l10n/l10n.dart';
import 'package:wassword/styles/dimens.dart';
import 'package:wassword/ui/about_row.dart';
import 'package:wassword/ui/about_row_switch_theme.dart';
import 'package:wassword/ui/section_about_row.dart';
import 'package:wassword/utils/utils.dart';
import 'package:wassword/provider/appinfo_provider.dart';

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
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(PhosphorIconsRegular.arrowLeft),
          onPressed: () => context.router.back(),
        ),
        title: Text(context.loc.settingsPageTitle),
      ),
      body: ListView(
        children: [
          SectionAboutRow(
            title: context.loc.settingsPagePersonalizationSection.toUpperCase(),
          ),
          AboutRowSwitchTheme(
            icon: PhosphorIconsRegular.moon,
            title: context.loc.settingsPageDarkModeTitle,
          ),
          AboutRow(
            icon: PhosphorIconsRegular.translate,
            title: context.loc.settingsPageLanguageTitle,
            callback: () => context.router.pushNamed('/language-selection'),
          ),
          SectionAboutRow(
            title: context.loc.settingsPageAppSection.toUpperCase(),
          ),
          AboutRow(
            icon: PhosphorIconsRegular.globe,
            title: context.loc.settingsPageWebsiteTitle,
            callback: () {
              launchURL(context.loc.settingsPageWebsiteLink);
            },
          ),
          Consumer(
            builder: (context, ref, _) {
              final packageInfo = ref.watch(packageInfoProvider);
              return switch (packageInfo) {
                AsyncData(:final value) => AboutRow(
                    icon: PhosphorIconsRegular.fileCode,
                    title: context.loc.settingsPageLicensesTitle,
                    callback: () => showLicensePage(
                      context: context,
                      applicationName: context.loc.appName,
                      applicationVersion: value.version,
                    ),
                  ),
                _ => SizedBox.shrink(),
              };
            },
          ),
          AboutRow(
            icon: PhosphorIconsRegular.shieldCheck,
            title: context.loc.settingsPagePrivacyPolicyTitle,
            callback: () {
              launchURL(context.loc.settingsPagePrivacyPolicyLink);
            },
          ),
          AboutRow(
            icon: PhosphorIconsRegular.heart,
            title: context.loc.settingsPageSponsorTitle,
            callback: () {
              launchURL(context.loc.settingsPageSponsorLink);
            },
          ),
          SectionAboutRow(
            title: context.loc.settingsPageDeveloperSection.toUpperCase(),
          ),
          AboutRow(
            icon: PhosphorIconsRegular.userCircle,
            title: context.loc.settingsPagePersonalWebsiteTitle,
            callback: () {
              launchURL(context.loc.settingsPagePersonalWebsiteLink);
            },
          ),
          AboutRow(
            icon: PhosphorIconsRegular.githubLogo,
            title: context.loc.settingsPageFollowGitHubTitle,
            callback: () {
              launchURL(context.loc.settingsPageFollowGitHubLink);
            },
          ),
          AboutRow(
            icon: PhosphorIconsRegular.xLogo,
            title: context.loc.settingsPageFollowXTitle,
            callback: () {
              launchURL(context.loc.settingsPageFollowXLink);
            },
          ),
          AboutRow(
            icon: PhosphorIconsRegular.mastodonLogo,
            title: context.loc.settingsPageFollowMastodonTitle,
            callback: () {
              launchURL(context.loc.settingsPageFollowMastodonLink);
            },
          ),
          AboutRow(
            icon: PhosphorIconsRegular.linkedinLogo,
            title: context.loc.settingsPageConnectLinkedInTitle,
            callback: () {
              launchURL(context.loc.settingsPageConnectLinkedInLink);
            },
          ),
          gapH(kMainSpace),
          Consumer(
            builder: (context, ref, _) {
              final packageInfo = ref.watch(packageInfoProvider);
              return switch (packageInfo) {
                AsyncData(:final value) => Text(
                    context.loc.settingsFooter
                        .replaceAll("@@version@@", value.version),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      color: colorScheme.onSurface,
                    ),
                  ),
                _ => SizedBox.shrink(),
              };
            },
          ),
          gapH(kMainSpace),
        ],
      ),
    );
  }
}
