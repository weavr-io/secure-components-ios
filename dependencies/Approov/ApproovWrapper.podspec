Pod::Spec.new do |s|
  s.name         = "ApproovWrapper"
  s.version      = "3.3.0"
  s.summary      = "Approov wrapper to avoid issues between CocoaPods and SPM"
  s.homepage     = "https://approov.io"
  s.license      = { type: "Commercial", file: "LICENSE" }
  s.authors      = { "CriticalBlue, Ltd." => "support@approov.io" }
  s.source       = { git: "https://github.com/approov/approov-service-urlsession.git", tag: s.version }

  # Supported platforms
  s.ios.deployment_target = '15.1'

  # Vendored frameworks for both iOS and watchOS
  s.vendored_frameworks = 'Approov.xcframework'
  s.prepare_command = <<-CMD
    curl -L https://github.com/approov/approov-ios-sdk/releases/download/3.3.0/Approov.xcframework.zip > Approov.xcframework.zip
    unzip -o Approov.xcframework.zip
    rm -f Approov.xcframework.zip
  CMD

  # Pod target xcconfig settings if required
  s.pod_target_xcconfig = {
    'VALID_ARCHS' => 'arm64 x86_64 arm64_32 x86_64'  # Combine valid architectures
  }
end