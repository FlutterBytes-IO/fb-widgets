
import 'fb_widgets_platform_interface.dart';

class FbWidgets {
  Future<String?> getPlatformVersion() {
    return FbWidgetsPlatform.instance.getPlatformVersion();
  }
}
