import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
  double defaultPaddingLeft = 20;
  double defaultPaddingRight = 20;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: BaseAppBar(
        backgroundColor: Color(0xffffffff),
      ),
      body: ListView(
        children: <Widget>[
          _getTopButton(),
          _getTitleContent(),
          _getPriceInfo(),
          _getSubscriptionBtn(),
          _getAdList(),
          Container(
            margin: EdgeInsets.fromLTRB(defaultPaddingLeft, 10, defaultPaddingRight, 10),
            alignment: Alignment.bottomCenter,
            child: Text(
              "-Pro is a one-time in-app purchase.It is not subscription-based pricing.",
              style: TextStyle(fontSize: 12, color: Colors.black),
            ),
          )
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
            padding: EdgeInsets.fromLTRB(defaultPaddingLeft, 15, defaultPaddingRight, 15),
            child: Text("Close", style: TextStyle(fontSize: 14, color: Colors.black)),
          ),
        ),
        GestureDetector(
          onTap: () {
            print("click2");
          },
          child: Padding(
            padding: EdgeInsets.fromLTRB(defaultPaddingLeft, 15, defaultPaddingRight, 15),
            child: Text("Restore", style: getCommonTextStyle()),
          ),
        ),
      ],
    );
  }

  ///获取标题和内容
  _getTitleContent() {
    return Container(
      margin: EdgeInsets.fromLTRB(defaultPaddingLeft, 25, defaultPaddingRight, 20),
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
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.fromLTRB(defaultPaddingLeft, 10, defaultPaddingRight, 10),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage("http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg"),
            fit: BoxFit.cover),
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

  ///获取订阅按钮
  _getSubscriptionBtn() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.fromLTRB(defaultPaddingLeft, 10, defaultPaddingRight, 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        color: Color(0xfff0f0f0),
      ),
      child: Center(
        child: Text('Subscription coming soon...',style: TextStyle(fontSize: 14, color: Color(0xffb7babc)),),
      ),
    );
  }

  ///获取广告列表
  _getAdList() {
    return GridView.count(
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      padding: EdgeInsets.fromLTRB(defaultPaddingLeft, 10, defaultPaddingRight, 10),
      physics: new NeverScrollableScrollPhysics(),
      crossAxisCount: 3,
      shrinkWrap: true,
      children: <Widget>[
        _getImageItem('assets/images/proIcon/proIcon1/iconPro.png', "All palettes for inspiration"),
        _getImageItem('assets/images/proIcon/proIcon2/unlimitedRandomColors.png', "Unlimited random colors"),
        _getImageItem('assets/images/proIcon/proIcon3/paintPalette.png', "Advanced random color feature"),
        _getImageItem('assets/images/proIcon/proIcon4/icloudBackupPro.png', "Palette data iCloud backup"),
        _getImageItem('assets/images/proIcon/proIcon5/colorHarmonyPro.png', "Color harmony recommendation"),
        _getImageItem('assets/images/proIcon/proIcon6/previewOptionsPro.png', "All preview options"),
        _getImageItem('assets/images/proIcon/proIcon7/paletteSearchPro.png', "Palette search"),
        _getImageItem('assets/images/proIcon/proIcon8/customCategoryPro.png', "Custom category"),
        _getImageItem('assets/images/proIcon/proIcon9/businessLicensePro.png', "Business license"),
      ],
    );
  }

  ///获取图片item
  _getImageItem(String imgPath, String text) {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 4,
          child: Image.asset(
            imgPath,
            fit: BoxFit.contain,
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
//            margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
            alignment: Alignment.bottomCenter,
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
        )
      ],
    );
  }
}
