

class Singleton {
  /// 单例对象
  static Singleton _instance;
  String s;

  /// 内部构造方法，可避免外部暴露构造函数，进行实例化
  Singleton._internal124();
  Singleton._internal154(this.s);

  /// 工厂构造方法，这里使用命名构造函数方式进行声明
  factory Singleton.getInstance() => _getInstance();

  /// 获取单例内部方法
  static _getInstance() {
    // 只能有一个实例
    if (_instance == null) {
      _instance = Singleton._internal124();
    }
    return _instance;
  }

  static _getInstance2(String s) {
    // 只能有一个实例
    if (_instance == null) {
      _instance = Singleton._internal154(s);
    }
    return _instance;
  }
}