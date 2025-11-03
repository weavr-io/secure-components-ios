Pod::Spec.new do |spec|
  spec.name         = 'WeavrComponents'
  spec.version      = '3.1.3-RC7'
  spec.license      = { :type => 'MIT' }
  spec.homepage     = 'https://weavr.io'
  spec.authors      = { 'Weavr' => 'info@weavr.com' }
  spec.summary      = 'Secure Components'
  spec.source       = { :git => 'https://github.com/weavr-io/secure-components-ios.git', :tag => spec.version.to_s }
  spec.requires_arc = true
  spec.ios.deployment_target    = '15.1'
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
    sp.dependency 'https://github.com/approov/approov-ios-sdk/releases/download/3.3.0/Approov.xcframework.zip'
  end
  
  spec.subspec 'Flutter' do |sp|
    sp.dependency 'WeavrComponents/Core'
    sp.dependency 'https://github.com/approov/approov-ios-sdk/releases/download/3.3.0/Approov.xcframework.zip'
  end

  spec.subspec 'KYC' do |sp|
    sp.dependency 'WeavrComponents/Core'
  end
end