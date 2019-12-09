import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app2/network/dio_tools.dart';

import '../base.dart';

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
      resizeToAvoidBottomPadding: false,
      appBar: getBaseAppBar(),
      body: getContent(context),
    );
  }

  ///获取页面内容
  Widget getContent(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[getListView(), getBottomBar(), getBottomCenterBtn()],
    );
  }

  ///获取底部bar
  Widget getBottomBar() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Expanded(
              child: GestureDetector(
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.yellow,
                  child: Text("getHttp"),
                ),
                onTap: () {
                  new DioManager("sd").getHttp();
                },
              ),
            ),
            Expanded(
              child: GestureDetector(
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.green,
                  child: Text("to seconde"),
                ),
                onTap: () {
                  Navigator.pushNamed(context, "/second");
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  ///获取底部中间按钮
  Widget getBottomCenterBtn() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: GestureDetector(
        child: Container(
          width: 50,
          height: 50,
          margin: EdgeInsets.fromLTRB(0, 0, 0, 35),
          color: Colors.white,
        ),
        onTap: () {
          setBaseAppBar(
              backgroundColor: appBarBackgroundColor == Colors.green
                  ? Colors.red
                  : Colors.green);
        },
      ),
    );
  }

  ///获取列表
  Widget getListView() {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 60),
      child: ListView.builder(
          itemCount: 20,
          itemBuilder: (BuildContext buildContext, int pos) {
            return getListItem(buildContext, pos);
          }),
    );
  }

  ///获取列表item
  Widget getListItem(BuildContext buildContext, int pos) {
    final myController = TextEditingController();
    return Container(
      color: pos % 2 == 0 ? Colors.red : Colors.cyan,
      height: 100,
      child: Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10),
            child: Image.network(
              'https://picsum.photos/250?image=9',
            ),
          ),
          Text("this is $pos"),
          SizedBox(
            width: 100,
            height: double.infinity,
            child: TextField(
              controller: myController,
            ),
          ),
        ],
      ),
    );
  }
}
