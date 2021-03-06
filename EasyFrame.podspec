#
# Be sure to run `pod lib lint EasyFrame.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "EasyFrame"
  s.version          = "0.3.1"
  s.summary          = "Easy way to set UIView's frame"
  s.description      = <<-DESC
"Easy way to set UIView's frame."
                       DESC
  s.homepage         = "https://github.com/windless/EasyFrame"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Abner Zhong" => "windlessg@gmail.com" }
  s.source           = { :git => "https://github.com/windless/EasyFrame.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
  s.resource_bundles = {
    'EasyFrame' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
