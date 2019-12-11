import 'package:dio/dio.dart';

class DioManager {
  static DioManager _mInstance;
  Dio dio;

  DioManager._internal();

  factory DioManager() => _getInstance();

  ///获取实例
  static _getInstance() {
    if (_mInstance == null) {
      _mInstance = DioManager._internal();
    }
    return _mInstance;
  }

  ///获取百度http
  void getBaidu() async {
    try {
      Response response = await Dio().get("http://www.baidu.com");
      print(response.data);
    } catch (e) {
      print(e);
    }
  }
}
