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
  s.summary          = 'A short description of RedOctober.'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/matteocrippa/RedOctober'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Matteo Crippa' => '@ghego20' }
  s.source           = { :git => 'https://github.com/matteocrippa/RedOctober.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/ghego20'

  s.ios.deployment_target = '8.4'

  s.source_files = 'RedOctober/Classes/**/*'
  
  # s.resource_bundles = {
  #   'RedOctober' => ['RedOctober/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
