import 'package:flutter_test/flutter_test.dart';
import 'package:test_plugin_for_aar/test_plugin_for_aar.dart';
import 'package:test_plugin_for_aar/test_plugin_for_aar_platform_interface.dart';
import 'package:test_plugin_for_aar/test_plugin_for_aar_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockTestPluginForAarPlatform
    with MockPlatformInterfaceMixin
    implements TestPluginForAarPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final TestPluginForAarPlatform initialPlatform = TestPluginForAarPlatform.instance;

  test('$MethodChannelTestPluginForAar is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelTestPluginForAar>());
  });

  test('getPlatformVersion', () async {
    TestPluginForAar testPluginForAarPlugin = TestPluginForAar();
    MockTestPluginForAarPlatform fakePlatform = MockTestPluginForAarPlatform();
    TestPluginForAarPlatform.instance = fakePlatform;

    expect(await testPluginForAarPlugin.getPlatformVersion(), '42');
  });
}
