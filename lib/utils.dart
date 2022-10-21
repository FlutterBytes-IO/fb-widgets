import 'package:flutter/material.dart';

class Utils {
  Utils._();
  // Utils.initialize() {
  //   _navigatorObserver = NavigatorObserver();
  // }

  ///
  static final Utils _instance = Utils._();
  static Utils get instance => _instance;

  ///
  NavigatorObserver _navigatorObserver = NavigatorObserver();
  NavigatorObserver get navigatorObserver => _navigatorObserver;

  ///
  set setNavigatorKey(NavigatorObserver navigatorObserver) =>
      _navigatorObserver = navigatorObserver;

  ///
  BuildContext get fbContext => _navigatorObserver.navigator!.context;
}
