import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'test_plugin_for_aar_platform_interface.dart';

/// An implementation of [TestPluginForAarPlatform] that uses method channels.
class MethodChannelTestPluginForAar extends TestPluginForAarPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('test_plugin_for_aar');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
