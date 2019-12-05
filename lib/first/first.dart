import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../base.dart';
import 'index.dart';

class FirstRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FirstRouter();
  }
}

class _FirstRouter extends BaseState<FirstRoute> {
  _FirstRouter()
      : super(
            appBarBrightness: Brightness.dark,
            appBarBackgroundColor: Colors.red);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: getBaseAppBar(),
      body: GestureDetector(
        child: getContent(),
        onTap: () {
          setBaseAppBar(
              backgroundColor: appBarBackgroundColor == Colors.green
                  ? Colors.red
                  : Colors.green);
        },
      ),
    );
  }

  Widget getContent() {
    return Index();
  }

  Widget getRelativeLayout() {
    return Stack(
      children: <Widget>[
        ListView.builder(
            itemCount: 100,
            itemBuilder: (BuildContext buildContext, int pos) {
              return Container(
                color: pos % 2 == 0 ? Colors.red : Colors.cyan,
                height: 100,
                child: Text("this is $pos"),
              );
            }),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 200,
            color: Colors.black,
            child: Text(
              "this is positioned",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
