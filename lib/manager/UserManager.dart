import 'package:flustars/flustars.dart';
import 'package:flutter_woyaoyundong/consts/SpKey.dart';

class UserManager {
  // 进行单例模式
  factory UserManager() => _getInstance();

  static UserManager get getInstance => _getInstance();
  static UserManager? _instance;

  UserManager._internal() {
    // 初始化
  }

  static UserManager _getInstance() {
    if (_instance == null) {
      _instance = new UserManager._internal();
    }
    return _instance!;
  }

  ///如果token和user有值说明已登录
  bool isLogin() {
    return !ObjectUtil.isEmptyString(SpUtil.getString(KEY_TOKEN)) &&
        ObjectUtil.isNotEmpty(SpUtil.getObject(KEY_USER));
  }
}
