集成 SDK（iOS）
最近更新时间：2020-09-04 15:49:39
本文主要介绍如何快速地将SDK(iOS) 集成到您的项目中，只要按照如下步骤进行配置，就可以完成 SDK 的集成工作。
开发环境要求
Xcode 12.0+。
iOS 9.0 以上的 iPhone 或者 iPad 真机。
项目已配置有效的开发者签名。
集成 SDK
您可以选择使用 CocoaPods 自动加载的方式，或者先 下载 SDK，再将其导入到您当前的工程项目中。
CocoaPods 自动加载
1. 安装 CocoaPods
在终端窗口中输入如下命令（需要提前在 Mac 中安装 Ruby 环境）：
sudo gem install cocoapods
2. 创建 Podfile 文件
进入项目所在路径输入以下命令行，之后项目路径下会出现一个 Podfile 文件。
pod init

3. 编辑 Podfile 文件
platform :ios, '9.0'
source 'https://github.com/CocoaPods/Specs.git'
target 'App' do
pod 'VULSDK-iOS'
end

4. 更新并安装 SDK
在终端窗口中输入如下命令以更新本地库文件，并安装 TXIMSDK：
pod install
或使用以下命令更新本地库版本：
pod update
pod 命令执行完后，会生成集成了 SDK 的 .xcworkspace 后缀的工程文件，双击打开即可。
说明：
若 pod 搜索失败，建议尝试更新 pod 的本地 repo 缓存。更新命令如下：

pod setuppod repo updaterm ~/Library/Caches/CocoaPods/search_index.json

引用  SDK
在项目需要使用 SDK API 的文件里，引入具体的头文件。
如果使用标准版，请按照如下方式引用头文件：

#import <VULSDK/VULSDK.h>

添加初始化代码
+ (void)registerToken:(NSString *)token baseUrl:(NSString *)baseUrl userId:(NSInteger)userId;
部分参数说明：
token 
。用户令牌
baseUrl
。域名
userId
o用户id
1。学习页面VULStudyController
2。选课页面VULAllCourseController
技术支持
当出现问题时：
请仔细阅读文档，查看是否有遗漏
给我们的support发邮件wujihulian2@qq.com
