import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app2/intl/intl_localizations_delegate.dart';
import 'package:flutter_app2/page/purchase_page.dart';
import 'package:flutter_app2/page/second/second.dart';
import 'package:flutter_app2/page/sliver_app_bar/sliver_app_bar.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'base/test_page.dart';
import 'page/first/first.dart';

void main(List<String> args) {
//  debugPaintSizeEnabled = true;
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
        '/':
        (context) => SliverAppBarPage(),
//            (context) => PurchasePage(),
//            (context) => FirstRoute(),
        '/second': (context) => SecondRoute(),
      },
      localizationsDelegates: [
        IntlLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en'),
        const Locale('zh', 'CN'),
        const Locale('zh', 'TW'),
        const Locale('zh', 'HK')
      ],
    );
  }
}
