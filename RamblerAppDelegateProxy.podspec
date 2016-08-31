Pod::Spec.new do |s|
  s.name                  = "RamblerAppDelegateProxy"
  s.version               = "0.0.2"
  s.summary               = "Proxy for UIApplicationDelegate protocol"
  s.homepage              = "https://github.com/rambler-ios/RamblerAppDelegateProxy"
  s.license               = { :type => 'MIT', :file => 'LICENSE' }
  s.author                = { "Vadim Smal" => "vadim.smal92@gmail.com" }
  s.platform              = :ios, '7.0'
  s.source                = { :git => "https://github.com/rambler-ios/RamblerAppDelegateProxy.git", :tag => s.version.to_s }
  s.source_files          = 'Classes/*.{h,m}'
  s.public_header_files   = 'Classes/*.h'
  s.framework             = 'Foundation'
  s.requires_arc          = true
end