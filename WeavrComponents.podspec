Pod::Spec.new do |spec|
  spec.name         = 'WeavrComponents'
  spec.version      = '0.1'
  spec.license      = { :type => 'MIT' }
  spec.homepage     = 'https://weavr.io'
  spec.authors      = { 'Weavr' => 'info@weavr.com' }
  spec.summary      = 'Secure Components'
  spec.source       = { :git => 'https://github.com/weavr-io/secure-components-ios.git', :tag => spec.version.to_s }
  spec.requires_arc = true
  spec.ios.deployment_target    = '11.0'
  spec.xcconfig = {
    'FRAMEWORK_SEARCH_PATHS' => '$(inherited)'
  }
 


  spec.default_subspec = 'Debug'

  spec.subspec 'Debug' do |sp|
    sp.vendored_frameworks = 'WeavrComponents.xcframework' 
  end

  spec.subspec 'Release' do |sp|
    sp.vendored_frameworks =  'WeavrComponents.xcframework' 
  end

  spec.dependency 'IdensicMobileSDK, '~> 1.19.5'
  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 i386' }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 i386' }


end
