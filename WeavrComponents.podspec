Pod::Spec.new do |spec|
  spec.name         = 'WeavrComponents'
  spec.version      = '3.1.3-RC12'
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

  spec.vendored_frameworks = 'WeavrComponents.xcframework', 'Approov.xcframework'
  spec.prepare_command = <<-CMD
    curl -L https://github.com/approov/approov-ios-sdk/releases/download/3.3.0/Approov.xcframework.zip > Approov.xcframework.zip
    unzip -o Approov.xcframework.zip
    rm -f Approov.xcframework.zip
  CMD
end