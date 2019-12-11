import 'package:flutter/material.dart';
import 'package:flutter_app2/intl/intl_localizations_delegate.dart';
import 'package:flutter_app2/localizations/default_localizations_delegate.dart';
import 'package:flutter_app2/second/second.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'first/first.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => FirstRoute(),
        '/second': (context) => SecondRoute()
      },
      localizationsDelegates: [
        IntlLocalizationsDelegate(),
//        DefaultLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en'),
        const Locale('zh'),
        const Locale('zh', 'TW'),
//        const Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hans'), //简体
//        const Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant'),//繁体
//        const Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hans', countryCode: 'CN'), // 'zh_Hans_CN'
//        const Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant', countryCode: 'TW'), // 'zh_Hant_TW'
//        const Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant', countryCode: 'HK'), // 'zh_Hant_HK'
      ],
    );
  }
}
