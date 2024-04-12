import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'test_plugin_for_aar_method_channel.dart';

abstract class TestPluginForAarPlatform extends PlatformInterface {
  /// Constructs a TestPluginForAarPlatform.
  TestPluginForAarPlatform() : super(token: _token);

  static final Object _token = Object();

  static TestPluginForAarPlatform _instance = MethodChannelTestPluginForAar();

  /// The default instance of [TestPluginForAarPlatform] to use.
  ///
  /// Defaults to [MethodChannelTestPluginForAar].
  static TestPluginForAarPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [TestPluginForAarPlatform] when
  /// they register themselves.
  static set instance(TestPluginForAarPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
