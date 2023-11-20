Pod::Spec.new do |spec|
  spec.name         = 'WeavrComponents'
  spec.version      = '1.5.2'
  spec.license      = { :type => 'MIT' }
  spec.homepage     = 'https://weavr.io'
  spec.authors      = { 'Weavr' => 'info@weavr.com' }
  spec.summary      = 'Secure Components'
  spec.source       = { :git => 'https://github.com/weavr-io/secure-components-ios.git', :tag => spec.version.to_s }
  spec.requires_arc = true
  spec.ios.deployment_target    = '11.0'
  spec.xcconfig = {
    'FRAMEWORK_SEARCH_PATHS' => '$(inherited)',
    # 'LIBRARY_SEARCH_PATHS' => '$(SDKROOT)/usr/lib/swift',
  }
 


  spec.default_subspec = 'Default'

  spec.subspec 'Default' do |sp|
    sp.dependency 'WeavrComponents/Combined'
  end

  spec.subspec 'Core' do |sp|
    sp.vendored_frameworks = 'WeavrComponents.xcframework' 
  end

  spec.subspec 'Combined' do |sp|
    sp.dependency 'WeavrComponents/Core' 
    sp.dependency 'CryptoXC', '0.3'
    sp.dependency 'PSASDK', '1.2.12'
    sp.dependency 'FlutterCommunicationChannel', '1.2.14'
  end
  
  spec.subspec 'Flutter' do |sp|
    sp.dependency 'WeavrComponents/Core' 
    sp.dependency 'CryptoXC', '0.3'
    sp.dependency 'PSASDK', '1.2.12'
  end

  spec.subspec 'KYC' do |sp|
    sp.dependency 'WeavrComponents/Core'
    sp.dependency 'CryptoXC', '0.3'

  end
 
end