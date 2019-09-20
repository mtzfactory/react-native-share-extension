require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name                  = 'RNShareExtension'
  s.version               = package['version']
  s.summary               = package['description']

  s.license               = package['license']

  s.authors               = package['author']
  s.homepage              = package['homepage']

  s.platform              = :ios, '9.0'
  s.ios.deployment_target = '9.0'

  s.source                = { :git => 'https://github.com/mtzfactory/react-native-share-extension.git', :tag => 'master' }
  s.source_files          = 'ios/*.{h,m}'

  s.preserve_paths        = 'LICENSE', 'package.json'

  s.dependency 'React'
end
