import 'package:flutter/cupertino.dart';
import 'package:flutter_app2/intl/intl_localizations.dart';

class IntlLocalizationsDelegate extends LocalizationsDelegate<IntlLocalizations> {
  @override
  bool isSupported(Locale locale) {
    // TODO: implement isSupported
//    return ['en', 'zh'].contains(locale.languageCode);
    return true;
  }

  @override
  Future<IntlLocalizations> load(Locale locale) {
    // TODO: implement load
    return IntlLocalizations.load(locale);
  }

  @override
  bool shouldReload(LocalizationsDelegate<IntlLocalizations> old) {
    // TODO: implement shouldReload
    return false;
  }
}
