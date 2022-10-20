import 'package:flutter_test/flutter_test.dart';
import 'package:fb_widgets/fb_widgets.dart';
import 'package:fb_widgets/fb_widgets_platform_interface.dart';
import 'package:fb_widgets/fb_widgets_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFbWidgetsPlatform
    with MockPlatformInterfaceMixin
    implements FbWidgetsPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FbWidgetsPlatform initialPlatform = FbWidgetsPlatform.instance;

  test('$MethodChannelFbWidgets is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFbWidgets>());
  });

  test('getPlatformVersion', () async {
    FbWidgets fbWidgetsPlugin = FbWidgets();
    MockFbWidgetsPlatform fakePlatform = MockFbWidgetsPlatform();
    FbWidgetsPlatform.instance = fakePlatform;

    expect(await fbWidgetsPlugin.getPlatformVersion(), '42');
  });
}
