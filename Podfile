
source 'https://github.com/CocoaPods/Specs.git'

platform :ios, '11.0'
inhibit_all_warnings!
use_frameworks!

target 'YahooWeatherSwift' do

  pod 'RxCocoa'
  pod 'SnapKit'
  
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '11.0'
    end
  end
end
