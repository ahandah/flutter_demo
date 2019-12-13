import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app2/base/base.dart';

class _BasePage extends StatefulWidget {

  State<StatefulWidget> mState;

  _BasePage(this.mState);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return this.mState;
  }
}

abstract class BasePage extends BaseState<_BasePage> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomPadding: getResizeToAvoidBottomPadding(),
      appBar: BaseAppBar(),
      body: buildPage(context),
    );
  }


  Widget getShowWidget() {
    return _BasePage(this);
  }

  bool getResizeToAvoidBottomPadding() {
    return false;
  }

  Widget buildPage(BuildContext context);

}
