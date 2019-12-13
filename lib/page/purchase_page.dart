

import 'package:flutter/cupertino.dart';
import 'package:flutter_app2/base/base_page.dart';

//class PurchasePage extends StatefulWidget {
//  @override
//  State<StatefulWidget> createState() {
//    // TODO: implement createState
//    return null;
//  }
//}

class PurchasePage extends BasePage {
  String ttt = "werwerwererwrwe";

  @override
  Widget buildPage(BuildContext context) {
    // TODO: implement buildPage
    return Container(
      child: GestureDetector(
        onTap: () {
          setState(() {
            this.ttt = "ttttttt";
          });
        },
        child: Text(ttt),
      ),
    );
  }

}