import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app2/second/second.dart';

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
    );
  }
}

