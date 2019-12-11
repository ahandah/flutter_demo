import 'package:flutter/cupertino.dart';

class DefaultLocalizations {
  DefaultLocalizations(this.locale);

  final Locale locale;

  static DefaultLocalizations of(BuildContext context) {
    return Localizations.of<DefaultLocalizations>(context, DefaultLocalizations);
  }

  static Map<String, Map<String, String>> _localizedValues = {
    'en': {
      'title': 'Hello World',
    },
    'es': {
      'title': 'Hola Mundo',
    },
    'zh': {
      'title': 'title',
    }
  };

  String get title {
    return _localizedValues[locale.languageCode]['title'];
  }
}
