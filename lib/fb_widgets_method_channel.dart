import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'fb_widgets_platform_interface.dart';

/// An implementation of [FbWidgetsPlatform] that uses method channels.
class MethodChannelFbWidgets extends FbWidgetsPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('fb_widgets');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
