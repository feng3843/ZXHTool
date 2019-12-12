
Pod::Spec.new do |spec|

  # ――― 简介 ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  spec.name         = "ZXHTool"
  spec.version      = "0.0.10"
  spec.summary      = "常用的工具类"
  spec.description  = <<-DESC
  		这是一段详细描述，在这里你可以随便写。
                   DESC
  # ―――  仓库地址  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.homepage     = "https://github.com/feng3843/ZXHTool.git"
 
  #spec.pod_target_xcconfig = { 'VALID_ARCHS[sdk=iphonesimulator*]' => '' }

  # ―――  认证  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  spec.license      = "MIT"


  # ――― 作者介绍 ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.author             = { "zhuxinhua" => "276878597@qq.com" }


  # ――― 平台配置 ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.platform     = :ios,"10.0"

  # ――― 源码位置 ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.source       = { :git => "https://github.com/feng3843/ZXHTool.git", :tag => "#{spec.version}" }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.source_files  = "Classes/*.{h,m}"


  # ――― Project Linking 项目引用 ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

 
  spec.frameworks = "Foudation", "UIKit"



  # ――― Project Settings  设置――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.requires_arc = true


end
