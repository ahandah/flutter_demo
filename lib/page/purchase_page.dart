import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app2/base/base.dart';
import 'package:flutter_app2/base/base_page.dart';
import 'package:flutter_app2/dialog/dialog_router.dart';
import 'package:flutter_app2/dialog/transparent_dialog.dart';
import 'package:flutter_app2/dialog/test_dialog.dart';

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
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  print("click");
                },
                child: Padding(
                  padding: EdgeInsets.all(25),
                  child: Text("Close", style: TextStyle(fontSize: 14, color: Colors.black)),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print("click2");
//                  showMyDialog(
//                      context: context,
//                      builder: (BuildContext context) {
//                        return TestDialog();
//                      });

                  Navigator.push(context, DialogRouter(TestDialog()));
                },
                child: Padding(
                  padding: EdgeInsets.all(25),
                  child: Text("Restore", style: TextStyle(fontSize: 14, color: Colors.black)),
                ),
              ),
            ],
          ),
          Text("123sdfjo1ijoi23jfio23foin23oinfo2i3nfo2n3oin2oi3nfo32nio2nf23no2f2onfo2no2no2nfo"),
        ],
      ),
    );
  }
}
