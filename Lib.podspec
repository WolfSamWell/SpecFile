#
# Be sure to run `pod lib lint Lib.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'Lib'
    s.version          = '0.3.0'
    s.summary          = 'SDK封装'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

    s.description      = <<-DESC
         描述信息，这个描述信息一定要比s.summary的内容长。
                       DESC
    # 主页信息网址
    s.homepage         = 'https://github.com/pwgang@foxmail.com/SOCRLib'
    # 截图地址
    # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
    # 证书 一般用下面的格式 如果用了其他的格式 需要相应的修改
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    # 作者信息 及邮箱
    s.author           = { 'wolfgang' => 'XXXXX@mail.com' }
    # spec 配置文件的位置
    s.source           = { :git => '/Users/panwg/Documents/Sand_JZ/SOCRLib', :tag => s.version.to_s }
    # 媒体文件
    # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
    #工程依赖系统版本
    s.ios.deployment_target = '8.1'


    # 源文件 包含m h
     s.source_files = 'Lib/Classes/**/*.{h,m}'

    # 资源文件 有几个写几个
    s.resource_bundles = {
     'SOCRLib' => ['Lib/Assets/*.png','Lib/Assets/PayegisDID.bundle','Lib/Assets/com.baidu.idl.face.faceSDK.bundle','Lib/Assets/com.baidu.idl.face.model.bundle','Lib/Assets/CWResource.bundle','Lib/Assets/sandpaysocr.bundle','PGDatePicker/PGDatePicker.bundle']
    }
    
    # 公开头文件 打包只公开特定的头文件
#    s.public_header_files = 'Lib/Classes/Head/SOCR.h,Lib/Classes/Head/Lib.h'
    #  调试公开所有的头文件 这个地方下面的头文件 如果是在Example中调试 就公开全部，需要打包就只公开特定的h文件
    s.public_header_files = 'Pod/Classes/**/*.h'
    #  私有头文件  
#    subcfiles.private_header_files = "MyLibrary/cfiles/**/*.h"

    # 是否是静态库 这个地方很重要 假如不写这句打出来的包 就是动态库 不能使用 一运行会报错 image not found
    s.static_framework  =  true

    # 载入第三方加密的点a
    #s.vendored_libraries = 'SOCRLib/Classes/openssl/include/*.{a}'
    # 加密点a的头文件
    #s.xcconfig = { 'USER_HEADER_SEARCH_PATHS' => 'SOCRLib/Classes/openssl/include/openssl/*.{h}' }
    # 链接设置 重要
    s.xcconfig = {'OTHER_LDFLAGS' => '-ObjC'}


    # 第三方开源框架
    s.dependency 'Masonry'
    s.dependency 'SVProgressHUD'
    s.dependency 'IQKeyboardManager'
    s.dependency 'AFNetworking'
    s.dependency 'YYModel'
    s.dependency 'PGDatePicker'


    # 第三方非开源framework  多个
    s.vendored_frameworks = ['Lib/Classes/tfd/Base.framework','Lib/Classes/tfd/IdcardQuality.framework']
    # 系统动态库
    s.frameworks = 'MobileCoreServices', 'CFNetwork', 'CoreGraphics','CoreMedia','AVFoundation','Foundation'
    # 系统类库 注意 系统类库不需要写全名 去掉开头的lib
    s.libraries = 'sqlite3.0', 'stdc++'


end