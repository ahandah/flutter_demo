import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///基础State (设置状态栏)
abstract class BaseState<T extends StatefulWidget> extends State<T> {
  Brightness appBarBrightness;
  Color appBarBackgroundColor;

  BaseState({this.appBarBrightness, this.appBarBackgroundColor});

  BaseAppBar getBaseAppBar() {
    return BaseAppBar(
      brightness: this.appBarBrightness,
      backgroundColor: this.appBarBackgroundColor,
    );
  }

  void setBaseAppBar({Brightness brightness, Color backgroundColor}) {
    setState(() {
      this.appBarBrightness = brightness;
      this.appBarBackgroundColor = backgroundColor;
    });
  }
}

///默认状态栏
// ignore: must_be_immutable
class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  /// Creates a widget that has a preferred size.
  BaseAppBar({Key key, this.brightness, this.backgroundColor})
      : super(key: key);

  @override
  Size preferredSize = Size.fromHeight(0);

  Brightness brightness;
  Color backgroundColor;

  @override
  Widget build(BuildContext context) => AppBar(
        brightness: this.brightness,
        backgroundColor: this.backgroundColor,
      );
}
