#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint account_saver_against_uninstall.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'account_saver_against_uninstall'
  s.version          = '0.0.1'
  s.summary          = 'account_saver_against_uninstall'
  s.description      = <<-DESC
account_saver_against_uninstall
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }

  s.source           = { :path => '.' }
  s.source_files     = 'Classes/**/*'
  s.dependency 'FlutterMacOS'

  s.platform = :osx, '10.11'
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.swift_version = '5.0'
end
