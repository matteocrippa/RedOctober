#
# Be sure to run `pod lib lint RedOctober.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RedOctober'
  s.version          = '0.1.0'
  s.summary          = 'Experimental swift library to communicate via iBeacons shared minor/major values in a cross platform environment'

  s.description      = <<-DESC
RedOctober is an experimental swift library developed in order to communicate via iBeacons shared minor/major values in a cross platform environment.
                       DESC

  s.homepage         = 'https://github.com/matteocrippa/RedOctober'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Matteo Crippa' => '@ghego20' }
  s.source           = { :git => 'https://github.com/matteocrippa/RedOctober.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/ghego20'

  s.ios.deployment_target = '8.4'

  s.source_files = 'RedOctober/Classes/**/*'

  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'BluetoothKit'
end
