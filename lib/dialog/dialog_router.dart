import 'package:flutter/cupertino.dart';
import 'package:flutter_app2/dialog/test_dialog.dart';

///透明背景 dialog 路由
class DialogRouter extends PageRouteBuilder {
  final Widget page;

  DialogRouter(this.page)
      : super(
          opaque: false,
          barrierColor: Color(0x00000001),
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) => child,
          //是否
          barrierDismissible: true,
        );
}

///透明背景dialog
showTransparentDialog(BuildContext context) {
  Navigator.of(context).push(PageRouteBuilder(
      opaque: false,
      pageBuilder: (context, animation, secondaryAnimation) {
        return TestDialog();
      }));
}
