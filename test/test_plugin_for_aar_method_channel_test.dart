import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_plugin_for_aar/test_plugin_for_aar_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelTestPluginForAar platform = MethodChannelTestPluginForAar();
  const MethodChannel channel = MethodChannel('test_plugin_for_aar');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
