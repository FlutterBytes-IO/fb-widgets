import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fb_widgets/fb_widgets_method_channel.dart';

void main() {
  MethodChannelFbWidgets platform = MethodChannelFbWidgets();
  const MethodChannel channel = MethodChannel('fb_widgets');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
