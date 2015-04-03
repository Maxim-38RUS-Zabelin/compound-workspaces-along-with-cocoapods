source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '8.0'

use_frameworks!

workspace 'demo.xcworkspace'
xcodeproj 'demo/demo.xcodeproj'

target :core, :exclusive => true do
    xcodeproj 'core/core.xcodeproj'
    pod 'Alamofire', '~> 1.1'
end

target :demo, :exclusive => true do
    xcodeproj 'demo/demo.xcodeproj'
    pod 'Alamofire', '~> 1.1'
    pod 'CrashlyticsFramework', '~> 2.2'
end

target :pad, :exclusive => true do
    xcodeproj 'pad/pad.xcodeproj'
    pod 'Alamofire', '~> 1.1'
    pod 'CrashlyticsFramework', '~> 2.2'
end

target :phone, :exclusive => true do
    xcodeproj 'phone/phone.xcodeproj'
    pod 'Alamofire', '~> 1.1'
    pod 'CrashlyticsFramework', '~> 2.2'
end
