
Pod::Spec.new do |s|
s.name             = 'VULSDK'
s.version          = '1.0.0'
s.summary          = 'Wuji student terminal SDK development.'

s.description      = <<-DESC
TODO: Add long description of the pod here.
DESC

s.homepage         = 'https://github.com/wujihulian/VULSDK'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { '岳克维' => 'yuekewei@aliyun.com' }
s.source           = { :git => 'https://github.com/wujihulian/VULSDK.git', :tag => s.version.to_s }
s.ios.deployment_target = '9.0'
s.vendored_frameworks = 'VULSDK/Classes/VULSDK.framework'
s.frameworks  = "Foundation", "UIKit"
s.requires_arc = true
s.static_framework = true

s.dependency 'AFNetworking', '~> 4.0.1'
s.dependency 'YTKNetwork', '~> 3.0.2'
s.dependency 'MJRefresh', '~> 3.5.0'
s.dependency 'MJExtension', '~> 3.2.2'
s.dependency 'SDWebImage', '~> 4.0.0'
s.dependency 'Masonry', '~> 1.1.0'
s.dependency 'MBProgressHUD', '~> 1.2.0'
s.dependency 'ReactiveObjC', '~> 3.1.1'
s.dependency 'IQKeyboardManager','~> 6.5.6'
s.dependency 'Reachability','~> 3.2'
s.dependency 'GCDWebServer','~> 3.5.4'
s.dependency 'Mantle','~> 2.1.1'
s.dependency 'TYPagerController','~> 2.1.2'
s.dependency 'SocketRocket','~> 0.5.1'
s.dependency 'ZFDownload','~> 1.0.2'
s.dependency 'CYLTabBarController', '~> 1.28.5'
s.dependency 'TZImagePickerController','~> 3.1.0'
s.dependency 'AAChartKit', '~> 5.0.3'
s.dependency 'XLPhotoBrowser+CoderXL', '~> 1.2.0'
s.dependency 'MRDLNA', '~> 0.1.1'
s.dependency 'Sentry', '~> 4.5.0'
s.dependency 'WZLBadge', '~> 1.2.6'
s.dependency 'zhPopupController', '~> 2.0.0'
s.dependency 'JXCategoryView', '~> 1.5.6'
s.dependency 'JXPagingView/Pager', '~> 2.0.12'
s.dependency 'SVGKit', '~> 2.1.1'
s.dependency 'AgoraRtcEngine_iOS', '~> 3.1.0'
s.dependency 'ZFPlayer', '~> 4.0.1'
s.dependency 'ZFPlayer/ControlView', '~> 4.0.1'
s.dependency 'ZFPlayer/AVPlayer', '~> 4.0.1'
s.dependency 'ZFPlayer/ijkplayer', '~> 4.0.1'

s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
s.xcconfig     = { 'VALID_ARCHS' => 'armv7 arm64 x86_64', }

end
