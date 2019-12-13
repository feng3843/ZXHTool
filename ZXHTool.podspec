
Pod::Spec.new do |spec|

  # ――― 简介 ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  spec.name         = "ZXHTool"
  spec.version      = "0.0.3"
  spec.summary      = "ZXHTool 常用的工具类"
  spec.description  = <<-DESC
  		这是一段详细描述，在这里你可以随便写。
                   DESC
  # ―――  仓库地址  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.homepage     = "https://github.com/feng3843/ZXHTool.git"
 

  # ―――  认证  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  spec.license      = "MIT"


  # ――― 作者介绍 ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.author             = { "zhuxinhua" => "276878597@qq.com" }


  # ――― 平台配置 ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.platform     = :ios,"10.0"

  # ――― 源码位置 ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.source       = { :git => "https://github.com/feng3843/ZXHTool.git", :tag => "#{spec.version}" }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.source_files  = "ZXHTool/*.{h,m}"


  # ――― Project Linking 项目引用 ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

 
  spec.frameworks = "Foundation", "UIKit"



  # ――― Project Settings  设置――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.requires_arc = true

  # 添加spec.pod_target_xcconfig，执行pod lib lint --skip-import-validation 否则不支持i386和x86_64编译 ―――――――― #

spec.pod_target_xcconfig = { 'VALID_ARCHS[sdk=iphonesimulator*]' => '' }

end
