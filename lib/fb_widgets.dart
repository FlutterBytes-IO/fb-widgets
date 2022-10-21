import 'package:fb_widgets/utils.dart';
import 'package:flutter/material.dart';

class FBWidgets {
  FBWidgets._();

  ///
  static final FBWidgets _instance = FBWidgets._();
  static FBWidgets get instance => _instance;

  ///
  NavigatorObserver get navigatorObserver => Utils.instance.navigatorObserver;

  ///
  FBWidgets.showSnackBar(String message) {
    final snackBar = SnackBar(
      content: Text(message),
      duration: const Duration(seconds: 3),
    );
    ScaffoldMessenger.of(Utils.instance.fbContext).showSnackBar(snackBar);
  }

  ///
  FBWidgets.flashMessage(String message) {
    final snackBar = SnackBar(
      content: Text(message),
      duration: const Duration(seconds: 3),
    );
    ScaffoldMessenger.of(Utils.instance.fbContext).showSnackBar(snackBar);
  }

  ///
  FBWidgets.showDialog() {
    showDialog(
      context: Utils.instance.fbContext,
      builder: (context) => Container(),
    );
  }

  ///
  FBWidgets.showModalBottomSheet() {
    showModalBottomSheet(
      context: Utils.instance.fbContext,
      builder: (context) => Container(),
    );
  }

  ///
  FBWidgets.showBottomSheet() {
    showBottomSheet(
      context: Utils.instance.fbContext,
      builder: (context) => Container(),
    );
  }

  ///
  FBWidgets.showNotification() {
    // FBNotification.instance.showNotification();
  }
}
