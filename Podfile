
source 'https://github.com/CocoaPods/Specs.git'

platform :ios, '11.0'
inhibit_all_warnings!
use_frameworks!

target 'YahooWeatherSwift' do

  pod 'SwiftLint', configurations: ['Debug']
  pod 'RxCocoa'
  pod 'SnapKit'
  
end

post_install do |pi|
  pi.pods_project.targets.each do |t|
    t.build_configurations.each do |bc|
      bc.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '11.0'
    end
  end
end
