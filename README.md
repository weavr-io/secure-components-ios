**1. Add Components and sources using cocoapods to your podfile.**


````java
//Weavr Component and KYC
pod 'WeavrComponents' ,'3.0.0-rc5'
pod 'IdensicMobileSDK' , '~> 1.31.0'
````
````java
source 'https://cdn.cocoapods.org/'
source 'https://github.com/SumSubstance/Specs.git'
````

**2. Run pod install**

:::tip
If in the simulator you get an error similar to *could-not-find-module-for-target-x86-64-apple-ios-simulator found arm64*, then you need to add a post installer

````java
post_install do |installer|
    installer.pods_project.targets.each do |target|
        
            target.build_configurations.each do |config|
                config.build_settings['ONLY_ACTIVE_ARCH'] = 'NO'
               
            end
    end
  end
````
:::

**3. Import and initialise the framework using your UI Key.**

````java
import WeavrComponents
````

Next, you need to initialise your framework using the UI key you will find on your innovator portal

````java
UXComponents.initialize(env: ENV.PRODUCTION, uiKey: "Your UI Key")
````

Your UI key, *uiKey* is available on the API settings screen in the Multi Portal.