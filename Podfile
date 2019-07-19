source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '8.0'

install! 'cocoapods', :deterministic_uuids => false

workspace 'cossdk'
project 'COSSDK/COSSDK.xcodeproj'
project 'SDKDemo/SDKDemo.xcodeproj'

target 'COSSDK' do
  project 'COSSDK/COSSDK.xcodeproj'
  pod 'sdk', :path => '.'
end
