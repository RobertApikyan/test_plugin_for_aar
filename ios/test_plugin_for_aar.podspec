#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint test_plugin_for_aar.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'test_plugin_for_aar'
  s.version          = '0.0.1'
  s.summary          = 'This plugin is for experiment to check if .aar dependences are published to pub.dv'
  s.description      = <<-DESC
This plugin is for experiment to check if .aar dependences are published to pub.dv
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '11.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
