import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliverAppBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return getMethod3();
  }
}

Widget getMethod1() {
  return NestedScrollView(
    headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
      return <Widget>[
        SliverAppBar(
          centerTitle: true,
          //标题居中
          expandedHeight: 200.0,
          //展开高度200
          backgroundColor: Colors.tealAccent,
          floating: false,
          //不随着滑动隐藏标题
          pinned: false,
          //不固定在顶部
          flexibleSpace: Text("sdfsdfsdfs"),
        )
      ];
    },
    body: Center(
      child: Text('hahaha'),
    ),
  );
}

Widget getMethod2() {
  return CustomScrollView(
    slivers: <Widget>[
      //AppBar，包含一个导航栏
      SliverAppBar(
        pinned: true,
        expandedHeight: 250.0,
        flexibleSpace: FlexibleSpaceBar(
          titlePadding: EdgeInsets.fromLTRB(20, 40, 110, 10),
          centerTitle: false,
          title: const Text('Demo'),
          background: Image.asset(
            "./images/sliverAppBar_bg.png",
            fit: BoxFit.cover,
          ),
        ),
      ),

      SliverPadding(
        padding: const EdgeInsets.all(8.0),
        sliver: new SliverGrid(
          //Grid
          gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, //Grid按两列显示
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 4.0,
          ),
          delegate: new SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              //创建子widget
              return new Container(
                alignment: Alignment.center,
                color: Colors.cyan[100 * (index % 9)],
                child: new Text('grid item $index'),
              );
            },
            childCount: 20,
          ),
        ),
      ),
      //List
      new SliverFixedExtentList(
        itemExtent: 50.0,
        delegate: new SliverChildBuilderDelegate((BuildContext context, int index) {
          //创建列表项
          return new Container(
            alignment: Alignment.center,
            color: Colors.lightBlue[100 * (index % 9)],
            child: new Text('list item $index'),
          );
        }, childCount: 50 //50个列表项
            ),
      ),
    ],
  );
}


Widget getMethod3() {
  return CustomScrollView(
    scrollDirection: Axis.vertical,
    slivers: <Widget>[
      _bar(),
      //List
      _list(),
    ],
  );
}
///list
SliverFixedExtentList _list() {
  return SliverFixedExtentList(
      delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
          return _liveRemainContent(index);
        },
        childCount: 30,
      ),
      itemExtent: 48.0);
}
///list Item
Widget _liveRemainContent(int index) {
  return Column(
    children: <Widget>[
      Container(
        margin: EdgeInsets.only(left: 20.0, right: 20.0),
        padding: EdgeInsets.all(3.0),
        decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(3.0),
            border: Border.all(color: Colors.grey, width: 0.5)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text('我的标题$index',
                    style:
                    TextStyle(fontSize: 17.0, color: Colors.blueAccent))
              ],
            ),
          ],
        ),
      ),
      SizedBox(height: 10)
    ],
  );
}
///appBar
Widget _bar() {
  return SliverAppBar(
    //标题居中
    centerTitle: true,
    //展开高度
    expandedHeight: 200.0,
    //固定在顶部
    pinned: true,
    flexibleSpace: Container(
      color: Colors.red,
    ),
  );
}
