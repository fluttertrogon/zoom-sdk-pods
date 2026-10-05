# zoom-sdk-pods

CocoaPods spec for the Zoom Meeting SDK for iOS, used by `flutter_zoom_sdk_advanced`.

## Usage (app `ios/Podfile`)

```ruby
source 'https://github.com/fluttertrogon/zoom-sdk-pods.git'
source 'https://cdn.cocoapods.org/'
```

## Releasing a new SDK version

1. Download the iOS Meeting SDK zip from the Zoom Marketplace.
2. Make a zip containing only `lib/MobileRTC.xcframework`, `lib/zoomcml.xcframework`
   and `lib/MobileRTCResources.bundle`.
3. Create a GitHub release `v<version>` and attach that zip as
   `zoom-sdk-ios-<version>-lib.zip`.
4. Add `ZoomSDK/<version>/ZoomSDK.podspec` (copy the previous one, update `s.version` and the `s.source` URL), commit and push.
