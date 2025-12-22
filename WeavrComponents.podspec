Pod::Spec.new do |spec|
  spec.name         = 'WeavrComponents'
  spec.version      = '3.1.4-RC5'
  spec.license      = { :type => 'MIT' }
  spec.homepage     = 'https://weavr.io'
  spec.authors      = { 'Weavr' => 'info@weavr.com' }
  spec.summary      = 'Secure Components'
  spec.source       = { :git => 'https://github.com/weavr-io/secure-components-ios.git', :tag => spec.version.to_s }
  spec.requires_arc = true
  spec.ios.deployment_target    = '15.1'
  spec.swift_version = '5.9'
  spec.xcconfig = {
    'FRAMEWORK_SEARCH_PATHS' => '$(inherited)',
  }

  spec.vendored_frameworks = 'WeavrComponents.xcframework' 
  spec.dependency 'approov-ios-sdk', '~> 3.5.1'
end