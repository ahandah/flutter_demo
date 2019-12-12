import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

import 'l10n/messages_all.dart';

class IntlLocalizations {
  static IntlLocalizations of(BuildContext context) {
    return Localizations.of(context, IntlLocalizations);
  }

  static Future<IntlLocalizations> load(Locale locale) {
    String name = locale.countryCode.isEmpty ? locale.languageCode : locale.toString();
    String localeName = Intl.canonicalizedLocale(name);
    print(name + " - " + localeName);
    return initializeMessages(localeName).then((b) {
      Intl.defaultLocale = localeName;
      return new IntlLocalizations();
    });
  }

  String get title {
    return Intl.message('title');
  }
}
