require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name             = 'react-native-qr-scanner'
  s.version          = package["version"]
  s.summary          = 'QR code scanner for React Native'



  s.homepage         = 'https://github.com/Freeminderus/react-native-qr-scanner'
  s.license          = "MIT"
  s.author           = { 'freeminderus' => 'freeminderus@gmail.com' }
  s.source           = { :git => 'https://github.com/Freeminderus/react-native-qr-scanner.git', :tag => "#{s.version}" }

  s.ios.deployment_target = '9.0'
  s.source_files = "ios/**/*.{h,m}"
  s.dependency "React"

end
