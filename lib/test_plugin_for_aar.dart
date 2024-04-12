
import 'test_plugin_for_aar_platform_interface.dart';

class TestPluginForAar {
  Future<String?> getPlatformVersion() {
    return TestPluginForAarPlatform.instance.getPlatformVersion();
  }
}
