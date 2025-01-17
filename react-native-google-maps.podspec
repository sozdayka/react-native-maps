require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "react-native-google-maps"
  s.version      = package['version']
  s.summary      = "React Native Mapview component for iOS + Android"

  s.authors      = { "intelligibabble" => "leland.m.richardson@gmail.com" }
  s.homepage     = "https://github.com/react-native-community/react-native-maps#readme"
  s.license      = "MIT"
  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/react-native-community/react-native-maps.git" }
  s.source_files  = "lib/ios/AirGoogleMaps/**/*.{h,m}"
  s.compiler_flags = '-DHAVE_GOOGLE_MAPS=1', '-DHAVE_GOOGLE_MAPS_UTILS=1', '-fno-modules'

  s.dependency 'React'
  s.dependency 'React-Core'
  s.dependency 'React-Core/DevSupport'
  s.dependency 'React-Core/RCTWebSocket'
  s.dependency 'React-RCTActionSheet'
  s.dependency 'React-RCTBlob'
  s.dependency 'React-RCTLinking'
  s.dependency 'React-RCTNetwork'
  s.dependency 'React-RCTSettings'
  s.dependency 'React-RCTText'
  s.dependency 'React-RCTVibration'

  s.dependency 'React-cxxreact'
  s.dependency 'React-jsi'
  s.dependency 'React-jsiexecutor'
  s.dependency 'React-jsinspector'
  s.dependency 'Yoga'

  s.dependency 'DoubleConversion'
  s.dependency 'glog'
  s.dependency 'Folly'
  s.dependency 'GoogleMaps', '3.2.0'
  s.dependency 'Google-Maps-iOS-Utils', '2.1.0'
end
