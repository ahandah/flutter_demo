import 'package:flutter/cupertino.dart';

import 'base_page.dart';

class TestPage extends BasePage {
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
