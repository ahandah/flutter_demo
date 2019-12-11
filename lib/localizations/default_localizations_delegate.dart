import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

import 'default_localizations.dart';

class DefaultLocalizationsDelegate extends LocalizationsDelegate<DefaultLocalizations> {
  const DefaultLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    // TODO: implement isSupported
    return locale.languageCode == 'zh';
  }

  @override
  Future<DefaultLocalizations> load(Locale locale) {
    // TODO: implement load
    return SynchronousFuture<DefaultLocalizations>(DefaultLocalizations(locale));
  }

  @override
  bool shouldReload(LocalizationsDelegate<DefaultLocalizations> old) {
    // TODO: implement shouldReload
    return false;
  }

}
