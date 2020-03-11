#
#  Be sure to run `pod spec lint NetworkModule.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#
Pod::Spec.new do |spec|
  spec.name         = 'NetworkModule'
  spec.version      = '1.0.1'
  spec.license      = { :type => 'MIT' }
  spec.homepage     = 'https://medium.com/@vitorfvarela'
  spec.authors      = { 'Vitor Ferraz Varela' => 'vitorfvarela@gmail.com' }
  spec.summary      = 'Network module using URLSession.'
  spec.source       = { :git => 'https://github.com/VitorFerraz/NetworkModuleFramework.git', :tag => '1.0.1' }
  spec.source_files = 'Reachability.{h,m}'
  spec.ios.deployment_target  = '10.0'
  spec.ios.framework  = 'UIKit'
end
