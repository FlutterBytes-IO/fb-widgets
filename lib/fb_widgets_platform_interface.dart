import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'fb_widgets_method_channel.dart';

abstract class FbWidgetsPlatform extends PlatformInterface {
  /// Constructs a FbWidgetsPlatform.
  FbWidgetsPlatform() : super(token: _token);

  static final Object _token = Object();

  static FbWidgetsPlatform _instance = MethodChannelFbWidgets();

  /// The default instance of [FbWidgetsPlatform] to use.
  ///
  /// Defaults to [MethodChannelFbWidgets].
  static FbWidgetsPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FbWidgetsPlatform] when
  /// they register themselves.
  static set instance(FbWidgetsPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
