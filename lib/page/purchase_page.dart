import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app2/base/base.dart';
import 'package:flutter_app2/base/style.dart';

class PurchasePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PurchasePage();
  }
}

class _PurchasePage extends BaseState<PurchasePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Paint paint = Paint();
//    paint.
    return Scaffold(
      appBar: BaseAppBar(
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: <Widget>[
          _getTopButton(),
          _getTitleContent(),
          _getPriceInfo(),
        ],
      ),
    );
  }

  ///获取顶部按钮
  _getTopButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            print("click");
          },
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Text("Close", style: TextStyle(fontSize: 14, color: Colors.black)),
          ),
        ),
        GestureDetector(
          onTap: () {
            print("click2");
          },
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Text("Restore", style: getCommonTextStyle()),
          ),
        ),
      ],
    );
  }

  ///获取标题和内容
  _getTitleContent() {
    return Container(
      color: Colors.red,
      margin: EdgeInsets.fromLTRB(20, 25, 20, 20),
      child: Column(
        children: <Widget>[
          Text(
            "Color Collect Pro",
            style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Text(
              "Get yourself a color companion with the price of a cup of your morning coffee.",
              style: getCommonTextStyle(),
            ),
          )
        ],
      ),
    );
  }

  ///获取价格信息
  _getPriceInfo() {
//    return  Column(
//      crossAxisAlignment: CrossAxisAlignment.start,
//      children: <Widget>[
//        Container(
//          child: Text(
//            "Lifetime - pay once, unlock forever",
//            style: getCommonTextStyle(),
//          ),
//        ),
//        Container(
//          child: Text(
//            "￥25.00",
//            style: getCommonTextStyle(),
//          ),
//        ),
//      ],
//    );

    return Container(
      margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
//      color: Colors.red,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage("http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg"),
          fit: BoxFit.cover
        )
      ),
      child: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              Text(
                "Lifetime - pay once, unlock forever",
                style: getCommonTextStyle(),
              ),
              Text(
                "￥25.00",
                style: getCommonTextStyle(),
              ),
            ],
          )
        ],
      ),
    );
  }
}
