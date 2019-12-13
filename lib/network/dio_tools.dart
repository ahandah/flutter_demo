import 'package:dio/dio.dart';

class DioManager {
  static DioManager _mInstance;
  Dio _dio;

  DioManager._internal();

  factory DioManager() => _getInstance();

  ///获取实例
  static _getInstance() {
    if (_mInstance == null) {
      _mInstance = DioManager._internal();
      _mInstance.init();
    }
    return _mInstance;
  }

  ///初始化
  void init() {
    _dio = Dio();
    _dio.options.headers = getHeader();
//    _dio.options.baseUrl = "http://xiaoj.ym.ccex";
    _dio.options.connectTimeout = 5000;
    _dio.options.receiveTimeout = 3000;
    _dio.interceptors.add(LogInterceptor(requestBody: false));
  }

  Map<String, Object> getHeader() {
    return {
//      "version":'2.0.9',
//      "Authorization":'_token',
    };
  }

  ///Get 请求
  get() async {}

  ///Post 请求
  post() async {}

  ///http 请求
  _requestHttp(String url, String method, Function success, [Function error, params]) async {
    Response response;
    try{
      if (method == 'get') {
        if (params != null && params != null) {
          response = await _dio.get(url, queryParameters: params);
        } else {
          response = await _dio.get(url);
        }
      } else if (method == 'post') {
        if (params != null && params != null) {
          response = await _dio.post(url, data: params);
        } else {
          response = await _dio.post(url);
        }
      }
    } catch(e) {
      print(e);
      _error(error, e);
    }

    if(response.statusCode == 200) {
      _success(success);
    }


  }

  _error(Function errorFunction, Exception e) {
    if(errorFunction != null) {
      errorFunction(e);
    }
  }

  _success(Function successFunction) {
    if(successFunction != null) {
      successFunction();
    }
  }

  ///获取百度http
  void getBaidu() async {
    try {
      Response response = await _dio.get("http://www.baidu.com");
    } catch (e) {
      print(e);
    }
  }
}
