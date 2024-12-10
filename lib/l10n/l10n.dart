import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:wassword/app/app_router.dart';

/*
I created two methods to access localised strings:

``dart
// Before (with BuildContext)
Text(context.loc.someString)

// Now (without BuildContext)
Text(l10n.someString)
```

This approach uses the `navigatorKey.currentContext` to access the context needed 
for localisation. The l10n getter will throw an exception if used before 
the MaterialApp is initialised or if there is no valid context available.

Some important notes:
* Be sure to use l10n only after the MaterialApp is fully initialised.
* This approach works well for most cases, but keep in mind
  that it does not automatically rebuild widgets when the locale changes.
* For widgets that need to react to locale changes, 
  you might want to use the BuildContext approach with an inherited widget.
*/

/// Global access to localizations
AppLocalizations get l10n {
  final context = navigatorKey.currentContext;
  if (context == null) throw Exception('No context available for localization');
  return AppLocalizations.of(context);
}

extension LocalizedBuildContext on BuildContext {
  AppLocalizations get loc => AppLocalizations.of(this);
}

extension Hardcoded on String {
  String get hardcoded => this;
}
