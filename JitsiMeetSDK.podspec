Pod::Spec.new do |s|
  s.name             = 'InternalJitsiMeetSDK'
  s.version          = '2.0.2'
  s.summary          = 'Jitsi Meet iOS SDK'
  s.description      = 'Jitsi Meet is a WebRTC compatible, free and Open Source video conferencing system that provides browsers and mobile applications with Real Time Communications capabilities.'
  s.homepage         = 'https://github.com/mby12/jitsi-meet-ios-sdk-releases'
  s.license          = 'Apache 2'
  s.authors          = 'The Jitsi Meet project authors'
  s.source           = { :git => 'https://github.com/mby12/jitsi-meet-ios-sdk-releases.git', :tag => s.version }
  s.platform         = :ios, '12.0'
  s.swift_version    = '5'
  s.vendored_frameworks = 'Frameworks/JitsiMeetSDK.xcframework'
  s.dependency 'Giphy', '2.1.20'
  s.dependency 'JitsiWebRTC', '~> 111.0'

  s.vendored_frameworks = 'Frameworks/JitsiMeetSDK.xcframework', 'Frameworks/WebRTC.xcframework'
  
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

end