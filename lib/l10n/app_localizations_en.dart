// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'Wassword';

  @override
  String get appTitle => 'Wassword';

  @override
  String get settingsPageTitle => 'Settings';

  @override
  String get settingsPageThemeSection => 'Theme';

  @override
  String get settingsPageDarkModeTitle => 'Dark Mode';

  @override
  String get passwordTabLabel => 'Password';

  @override
  String get passphraseTabLabel => 'Passphrase';

  @override
  String get settingsPageAppSection => 'App';

  @override
  String get settingsPageWebsiteTitle => 'Website';

  @override
  String get settingsPageWebsiteLink => 'https://wassword.app';

  @override
  String get settingsPageLicensesTitle => 'Licenses';

  @override
  String get settingsPagePrivacyPolicyTitle => 'Privacy Policy';

  @override
  String get settingsPagePrivacyPolicyLink =>
      'https://github.com/polilluminato/wassword-flutter';

  @override
  String get settingsPageSponsorTitle => 'Sponsor';

  @override
  String get settingsPageSponsorLink =>
      'https://github.com/sponsors/polilluminato';

  @override
  String get settingsPageDeveloperSection => 'Developer';

  @override
  String get settingsPagePersonalWebsiteTitle => 'Personal Website';

  @override
  String get settingsPagePersonalWebsiteLink =>
      'https://www.albertobonacina.com/';

  @override
  String get settingsPageFollowGitHubTitle => 'Follow on GitHub';

  @override
  String get settingsPageFollowGitHubLink =>
      'https://www.github.com/polilluminato';

  @override
  String get settingsPageConnectLinkedInTitle => 'Connect on LinkedIn';

  @override
  String get settingsPageConnectLinkedInLink =>
      'https://www.linkedin.com/in/bonacinaalberto';

  @override
  String settingsFooter(String version) {
    return 'Wassword $version\nMade with ☕ and 💙 by Alberto Bonacina';
  }

  @override
  String get passwordGeneratorLowercaseTitle => 'Lowercase';

  @override
  String get passwordGeneratorLowercaseDescription => 'abc';

  @override
  String get passwordGeneratorUppercaseTitle => 'Uppercase';

  @override
  String get passwordGeneratorUppercaseDescription => 'ABC';

  @override
  String get passwordGeneratorNumbersTitle => 'Numbers';

  @override
  String get passwordGeneratorNumbersDescription => '123';

  @override
  String get passwordGeneratorSpecialTitle => 'Special';

  @override
  String get passwordGeneratorSpecialDescription => '@£*';

  @override
  String get passphraseGeneratorWordlistSelect => 'Wordlist';

  @override
  String get passphraseGeneratorDividerSelect => 'Divider';

  @override
  String get buttonGenerateLabel => 'Generate';

  @override
  String get buttonCopyLabel => 'Copy';

  @override
  String get toastLabelPasswordCopied => 'Password copied to clipboard';
}
