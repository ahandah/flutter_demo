import 'package:dio/dio.dart';

class DioManager {
  static DioManager _mInstance;
  Dio dio;
  String s;

  DioManager._internal(this.s);

  factory DioManager(String s) => _getInstance(s);

  ///获取实例
  static _getInstance(String s) {
    if (_mInstance == null) {
      _mInstance = DioManager._internal(s);
    }
    return _mInstance;
  }

  void getHttp() async {
    try {
//      Response response = await Dio().get("http://www.baidu.com");
      print(this.s);
    } catch (e) {
      print(e);
    }
  }
}
