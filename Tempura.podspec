Pod::Spec.new do |s|
  s.name             = 'Tempura'
  s.version          = File.read(".version")
  s.summary          = 'UI architecture for apps'

  s.homepage         = 'https://bendingspoons.com'
  s.license          = { :type => 'No License', :text => "Copyright 2018 BendingSpoons" }
  s.author           = { 'Bending Spoons' => 'team@bendingspoons.com' }
  s.source           = { :git => 'https://github.com/BendingSpoons/tempura-swift.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  s.weak_framework = "XCTest"
  s.user_target_xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '$(PLATFORM_DIR)/Developer/Library/Frameworks' }
  s.dependency 'Katana', '>= 1.0', '< 1.1'

  s.ios.source_files = [
    'Tempura/**/*.swift',
  ]
end
