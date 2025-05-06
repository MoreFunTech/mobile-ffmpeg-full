Pod::Spec.new do |s|
  s.name             = 'mobile-ffmpeg-full'
  s.version          = '4.4' # Hãy thay đổi phiên bản này nếu bạn biết
  s.summary          = 'A full-featured mobile FFmpeg library.'

  s.description      = <<-DESC
                       This library provides a comprehensive set of FFmpeg functionalities for iOS development.
                       It includes support for various audio and video codecs, formats, and filters.
                       Please refer to the upstream FFmpeg documentation for detailed information.
                       DESC

  s.homepage         = 'https://github.com/DatND2/mobile-ffmpeg-full.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'LGPL-3.0', :file => 'LICENSE' } # Kiểm tra lại giấy phép trong repository
  s.author           = { 'Your Name' => 'your.email@example.com' } # Thay đổi thông tin tác giả
  s.source           = { :git => 'https://github.com/DatND2/mobile-ffmpeg-full.git', :tag => s.version.to_s } # Đảm bảo có tag phiên bản

  s.ios.deployment_target = '11.0' # Thay đổi target iOS nếu cần
  # s.osx.deployment_target = '10.12'
  # s.watchos.deployment_target = '2.0'
  # s.tvos.deployment_target = '9.0'

  s.source_files     = 'Sources/**/*.{h,m,c}' # Điều chỉnh đường dẫn các file nguồn
  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.resource_bundle = {
  #   'mobile-ffmpeg-full' => ['Assets/*.png']
  # }

  s.frameworks       = 'AVFoundation', 'CoreMedia', 'VideoToolbox' # Thêm các framework cần thiết
  s.libraries        = 'bz2', 'z' # Thêm các thư viện cần thiết
  # s.dependency 'AFNetworking', '~> 2.3'

  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-ObjC' } # Có thể cần thiết cho các thư viện C

  s.user_target_xcconfig = { 'OTHER_LDFLAGS' => '-ObjC' } # Nếu bạn muốn áp dụng cho target chính

end