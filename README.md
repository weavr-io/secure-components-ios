# Weavr iOS Components SDK

## Installation

### Option 1: CocoaPods

**1. Add Components and sources to your Podfile:**

```ruby
source 'https://cdn.cocoapods.org/'
source 'https://github.com/SumSubstance/Specs.git'

pod 'WeavrComponents', '3.1.3'
pod 'IdensicMobileSDK', '~> 1.31.0'
```

**2. Run pod install**

> **Tip:** If in the simulator you get an error similar to *could-not-find-module-for-target-x86-64-apple-ios-simulator found arm64*, add this post installer to your Podfile:
>
> ```ruby
> post_install do |installer|
>     installer.pods_project.targets.each do |target|
>         target.build_configurations.each do |config|
>             config.build_settings['ONLY_ACTIVE_ARCH'] = 'NO'
>         end
>     end
> end
> ```

### Option 2: Swift Package Manager

Add the package dependency in Xcode:

1. File → Add Package Dependencies
2. Enter: `https://github.com/weavr-io/secure-components-ios.git`
3. Select version `3.1.3`

Or add to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/weavr-io/secure-components-ios.git", from: "3.1.3")
]
```

## Usage

**1. Import the framework:**

```swift
import WeavrComponents
```

**2. Initialise with your UI Key:**

```swift
UXComponents.initialize(env: ENV.PRODUCTION, uiKey: "Your UI Key")
```

Your UI key is available on the API settings screen in the Multi Portal.
