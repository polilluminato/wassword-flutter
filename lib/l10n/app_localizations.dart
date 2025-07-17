import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[Locale('en')];

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'Wassword'**
  String get appName;

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Wassword'**
  String get appTitle;

  /// No description provided for @settingsPageTitle.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsPageTitle;

  /// No description provided for @settingsPageThemeSection.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get settingsPageThemeSection;

  /// No description provided for @settingsPageDarkModeTitle.
  ///
  /// In en, this message translates to:
  /// **'Dark Mode'**
  String get settingsPageDarkModeTitle;

  /// No description provided for @passwordTabLabel.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get passwordTabLabel;

  /// No description provided for @passphraseTabLabel.
  ///
  /// In en, this message translates to:
  /// **'Passphrase'**
  String get passphraseTabLabel;

  /// No description provided for @settingsPageAppSection.
  ///
  /// In en, this message translates to:
  /// **'App'**
  String get settingsPageAppSection;

  /// No description provided for @settingsPageWebsiteTitle.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get settingsPageWebsiteTitle;

  /// No description provided for @settingsPageWebsiteLink.
  ///
  /// In en, this message translates to:
  /// **'https://wassword.app'**
  String get settingsPageWebsiteLink;

  /// No description provided for @settingsPageLicensesTitle.
  ///
  /// In en, this message translates to:
  /// **'Licenses'**
  String get settingsPageLicensesTitle;

  /// No description provided for @settingsPagePrivacyPolicyTitle.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get settingsPagePrivacyPolicyTitle;

  /// No description provided for @settingsPagePrivacyPolicyLink.
  ///
  /// In en, this message translates to:
  /// **'https://github.com/polilluminato/wassword-flutter/blob/main/privacy_policy.md'**
  String get settingsPagePrivacyPolicyLink;

  /// No description provided for @settingsPageSponsorTitle.
  ///
  /// In en, this message translates to:
  /// **'Sponsor'**
  String get settingsPageSponsorTitle;

  /// No description provided for @settingsPageSponsorLink.
  ///
  /// In en, this message translates to:
  /// **'https://github.com/sponsors/polilluminato'**
  String get settingsPageSponsorLink;

  /// No description provided for @settingsPageDeveloperSection.
  ///
  /// In en, this message translates to:
  /// **'Developer'**
  String get settingsPageDeveloperSection;

  /// No description provided for @settingsPagePersonalWebsiteTitle.
  ///
  /// In en, this message translates to:
  /// **'Personal Website'**
  String get settingsPagePersonalWebsiteTitle;

  /// No description provided for @settingsPagePersonalWebsiteLink.
  ///
  /// In en, this message translates to:
  /// **'https://www.albertobonacina.com/'**
  String get settingsPagePersonalWebsiteLink;

  /// No description provided for @settingsPageFollowGitHubTitle.
  ///
  /// In en, this message translates to:
  /// **'Follow on GitHub'**
  String get settingsPageFollowGitHubTitle;

  /// No description provided for @settingsPageFollowGitHubLink.
  ///
  /// In en, this message translates to:
  /// **'https://www.github.com/polilluminato'**
  String get settingsPageFollowGitHubLink;

  /// No description provided for @settingsPageConnectLinkedInTitle.
  ///
  /// In en, this message translates to:
  /// **'Connect on LinkedIn'**
  String get settingsPageConnectLinkedInTitle;

  /// No description provided for @settingsPageConnectLinkedInLink.
  ///
  /// In en, this message translates to:
  /// **'https://www.linkedin.com/in/bonacinaalberto'**
  String get settingsPageConnectLinkedInLink;

  /// No description provided for @settingsFooter.
  ///
  /// In en, this message translates to:
  /// **'Wassword {version}\nMade with ☕ and 💙 by Alberto Bonacina'**
  String settingsFooter(String version);

  /// No description provided for @passwordGeneratorLowercaseTitle.
  ///
  /// In en, this message translates to:
  /// **'Lowercase'**
  String get passwordGeneratorLowercaseTitle;

  /// No description provided for @passwordGeneratorLowercaseDescription.
  ///
  /// In en, this message translates to:
  /// **'abc'**
  String get passwordGeneratorLowercaseDescription;

  /// No description provided for @passwordGeneratorUppercaseTitle.
  ///
  /// In en, this message translates to:
  /// **'Uppercase'**
  String get passwordGeneratorUppercaseTitle;

  /// No description provided for @passwordGeneratorUppercaseDescription.
  ///
  /// In en, this message translates to:
  /// **'ABC'**
  String get passwordGeneratorUppercaseDescription;

  /// No description provided for @passwordGeneratorNumbersTitle.
  ///
  /// In en, this message translates to:
  /// **'Numbers'**
  String get passwordGeneratorNumbersTitle;

  /// No description provided for @passwordGeneratorNumbersDescription.
  ///
  /// In en, this message translates to:
  /// **'123'**
  String get passwordGeneratorNumbersDescription;

  /// No description provided for @passwordGeneratorSpecialTitle.
  ///
  /// In en, this message translates to:
  /// **'Special'**
  String get passwordGeneratorSpecialTitle;

  /// No description provided for @passwordGeneratorSpecialDescription.
  ///
  /// In en, this message translates to:
  /// **'@£*'**
  String get passwordGeneratorSpecialDescription;

  /// No description provided for @passphraseGeneratorWordlistSelect.
  ///
  /// In en, this message translates to:
  /// **'Wordlist'**
  String get passphraseGeneratorWordlistSelect;

  /// No description provided for @passphraseGeneratorDividerSelect.
  ///
  /// In en, this message translates to:
  /// **'Divider'**
  String get passphraseGeneratorDividerSelect;

  /// No description provided for @buttonGenerateLabel.
  ///
  /// In en, this message translates to:
  /// **'Generate'**
  String get buttonGenerateLabel;

  /// No description provided for @buttonCopyLabel.
  ///
  /// In en, this message translates to:
  /// **'Copy'**
  String get buttonCopyLabel;

  /// No description provided for @toastLabelPasswordCopied.
  ///
  /// In en, this message translates to:
  /// **'Password copied to clipboard'**
  String get toastLabelPasswordCopied;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
