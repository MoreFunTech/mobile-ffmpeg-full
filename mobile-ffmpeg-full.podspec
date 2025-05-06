Pod::Spec.new do |s|
  s.name             = 'mobile-ffmpeg-full'
  s.version          = '4.4' # Giữ nguyên hoặc cập nhật nếu cần
  s.summary          = 'A full-featured mobile FFmpeg library.'

  s.description      = <<-DESC
                       This library provides a comprehensive set of FFmpeg functionalities for iOS development.
                       It includes support for various audio and video codecs, formats, and filters.
                       This version is distributed as pre-built XCFrameworks.
                       DESC

  s.homepage         = 'https://github.com/DatND2/mobile-ffmpeg-full.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'LGPL-3.0', :file => 'LICENSE' } # Kiểm tra lại giấy phép trong repository
  s.author           = { 'Your Name' => 'your.email@example.com' } # Thay đổi thông tin tác giả
  s.source           = { :git => 'https://github.com/DatND2/mobile-ffmpeg-full.git', :tag => '4.4' } # Đảm bảo tag này tồn tại

  s.ios.deployment_target = '11.0' # Điều chỉnh target iOS nếu cần

  s.vendored_frameworks = '*.xcframework'

  # Bạn có thể không cần các dòng này nữa
  # s.frameworks       = 'AVFoundation', 'CoreMedia', 'VideoToolbox'
  # s.libraries        = 'bz2', 'z'

  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-ObjC' }
  s.user_target_xcconfig = { 'OTHER_LDFLAGS' => '-ObjC' }

end