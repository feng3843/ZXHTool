
Pod::Spec.new do |spec|

  # ――― 简介 ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  spec.name         = "ZXHTool"
  spec.version      = "0.0.6"
  spec.summary      = "常用的工具类"
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
  spec.platform     = :ios,"8.0"
 

  # ――― 源码位置 ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.source       = { :git => "https://github.com/feng3843/ZXHTool.git", :tag => "#{spec.version}" }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.source_files  = "*.{h,m}"


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # spec.resource  = "icon.png"
  # spec.resources = "Resources/*.png"

  # spec.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking 项目引用 ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

 
  spec.frameworks = "Foudation", "UIKit"


  # spec.library   = "iconv"
  # spec.libraries = "iconv", "xml2"


  # ――― Project Settings  设置――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.requires_arc = true


end
