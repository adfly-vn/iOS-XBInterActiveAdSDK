#
#  Be sure to run `pod spec lint XBInterActiveAdSDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|


  spec.name         = "XBInterActiveAdSDK"
  spec.version      = "2.0.0"
  spec.summary      = "A short description of XBInterActiveAdSDK."

  spec.description  = <<-DESC
                   XBInterActiveAdSDK
                    DESC
  spec.homepage     = "https://github.com/adfly-vn/iOS-XBInterActiveAdSDK"

  spec.license      = "MIT"

  spec.author             = { "全亮" => "quanliang@xbonline.net" }

    spec.platform     = :ios, "9.0"

  spec.source       = { :git => "https://github.com/adfly-vn/iOS-XBInterActiveAdSDK.git", :tag => "#{spec.version}" }


#  spec.source_files  = "Classes", "Classes/**/*.{h,m}", "XBLoginSDK/**/*.swift"
#  spec.exclude_files = "Classes/Exclude"
      spec.vendored_frameworks = 'XBInterActiveAdSDK.framework'
        spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
      spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
      
    spec.swift_version = '5.0'
    
    spec.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'OTHER_LDFLAGS' => '-lObjC' }
    spec.frameworks = 'UIKit', 'Foundation'
    spec.dependency "SwiftyJSON"
  spec.dependency "ObjectMapper"
end

  
