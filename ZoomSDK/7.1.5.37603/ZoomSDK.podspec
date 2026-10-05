Pod::Spec.new do |s|
  s.name         = "ZoomSDK"
  s.version      = "7.1.5.37603"
  s.summary      = "Zoom Meeting SDK for iOS"
  s.description  = "CocoaPods wrapper that downloads the Zoom Meeting SDK for iOS (MobileRTC, zoomcml, resources)."
  s.homepage     = "https://github.com/fluttertrogon/zoom-sdk-pods"
  s.author       = { "Trogon" => "dev@example.com" }
  s.license      = { :type => "Commercial", :text => "Use of the Zoom Meeting SDK is subject to Zoom's License and Terms of Use: https://explore.zoom.us/docs/en-us/zoom_api_license_and_tou.html" }
  s.platform     = :ios, "16.0"

  # The zip must contain lib/MobileRTC.xcframework, lib/zoomcml.xcframework and
  # lib/MobileRTCResources.bundle at its root (see README.md).
  s.source       = { :http => "https://github.com/fluttertrogon/zoom-sdk-pods/releases/download/v7.1.5.37603/zoom-sdk-ios-7.1.5.37603-lib.zip" }

  s.vendored_frameworks = "lib/MobileRTC.xcframework", "lib/zoomcml.xcframework"
  # Copied as-is: Zoom looks up MobileRTCResources.bundle in the app root, so it must
  # not be re-wrapped via resource_bundles.
  s.resource     = "lib/MobileRTCResources.bundle"

  s.libraries    = "sqlite3", "z", "c++"
  s.weak_framework = "VideoToolbox", "CoreMedia", "CoreVideo", "CoreGraphics", "ReplayKit"
  s.requires_arc = true
end
