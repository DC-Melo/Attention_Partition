# DC 注意力分区研究Attention Partition Rearch 

<!-- 项目标记 -->
![author](https://img.shields.io/badge/DC-Melo-brightgreen.svg) 
![platform](https://img.shields.io/badge/platform-Android-yellow.svg) 
![language](https://img.shields.io/badge/language-java-blue.svg) 
![licence](https://img.shields.io/badge/license-MIT--2.0-red.svg)

<!-- 项目前言 -->

<!-- 项目目录 -->
## 项目目录Table of Contents 

- [项目背景Background](#项目背景Background)
- [软件架构Environment](#软件架构Environment)
- [编译安装Install](#编译安装Install)
- [使用说明Usage](#使用说明Usage)
- [项目负责人Maintainers](#项目负责人Maintainers)
- [参与贡献Contributing](#参与贡献Contributing)
- [相关项目Related Efforts](#相关项目Related Efforts)
- [开源协议License](#开源协议License)
- [请为我点赞Donation](#请为我点赞Donation)


<!-- 项目背景 -->
## 项目背景Background


<!-- 软件架构 -->
## 软件架构Environment


<!-- 编译安装 -->
## 编译安装Install


<!-- 使用说明 -->
## 使用说明Usage


<!-- 项目负责人 -->
## 项目负责人Maintainers

[@DC-Melo](https://github.com/DC-Melo)
[@DC-Melo](https://gitee.com/DC-Melo)

<!-- 参与贡献 -->
## 参与贡献Contributing


<!-- 相关项目 -->
## 相关项目Related Efforts

- [Art of Readme](https://github.com/noffle/art-of-readme) - 💌 Learn the art of writing quality READMEs.


<!-- 开源协议 -->
## 开源协议License

[MIT](LICENSE) © DC-Melo王江

<!-- 捐赠 -->
## 请为我点赞Donation

如果你喜欢我的项目，请在对应的项目右上角 "Star" 一下。你的支持是我最大的鼓励！ ^^ 你也还可以扫描下面的二维码，对作者进行打赏。

If you like my project, "Star" in the corresponding project right corner, please. Your support is my biggest encouragement! ^^ You can also scan the qr code below or Donate to this project using Paypal, donation to Author.
---
<div align="center">
<img src="readme_files/dc_wechat_pay.png" width="200" >
<img src="readme_files/dc_ali_pay.png"    width="200" >
<img src="readme_files/dc_bitcoin.png"    width="200" >
</div>

如果在捐赠留言中备注名称，将会被记录到列表中~ 如果你也是github开源作者，捐赠时可以留下github项目地址或者个人主页地址，链接将会被添加到列表中起到互相推广的作用

If you comment on the name in the donation message, it will be recorded in the list. ~If you are also an open source author of github, you can leave the GitHub project address or personal home page address when donating. Links will be added to the list to promote each other.
捐赠列表(Donation list)

## 设计背景：
在任何场景下，产品的设计和研发的目的都是“为人所用”。而要保证产品的可用易用、好用爱用，首先要了解人机交互的基础规律。例如本项目中，我们通过apk测试用户在车机屏幕上点击的便利程度分布规律 。

从业务而言，梧桐开展底层的人因研究，对每款车机进行注意、操作分区的测试，将量化结果输出给产研团队，可有效赋能项目定制，实现“设计有据可依，产品科学好用”。

从行业而言，华为、百度近两年均开始建立车联相关人因研究，并尝试制定行业标准（例如：华为人因制定了车联网字体字号标准）。开展基于心理学科研的人因研究并应用于产研，会提高梧桐产品的科技感和竞争力。

## 应用架构设计：

  +--------------------+                +--------------------+
  |                    |                |                    |
  |   Android          |                |      Activity      |
  |                    +--------------->|                    |
  |   Manifest         |                |        Main        |
  |                    |                |  user input config |
  +--------------------+                +---------+----------+
                                                  |       
                                                  |bundle(config)
                                                  |intent          
                                                  |                
                                                  v                
                                        +--------------------+   start thread    +--------------------+
                                        |                    |------------------>|                    |
                                        |     Activity       |<------------------|       Thread       |
                                        |                    |   view update     |       update       |
                                        |       Play         |                   |        view        |
                                        |                    |   send click      |                    |
                                        |  create button     |------------------>|                    |
                                        |  as configuration  |<----------------- |                    |
                                        +---------+----------+    test date      +--------------------+
                                                  |                             
                                                  |bundle(testdata)          
                                                  |intent          
                                                  |                
                                                  v                
                                        +---------------------+
                                        |                     |
                                        |      Activity       |
                                        |                     |
                                        |       Result        |
                                        |    dispaly result   |
                                        +---------------------+
## 后续工作
1. 后续可能需要做滑动按钮，只需要将button更改为滑动按钮即可。
2. 后续的注意力测试按钮,只需要将整个gridlayout做成可点击的即可。

## Controbute



