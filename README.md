# DC Attention Partition Rearch

<!-- 项目徽章 -->
![author](https://img.shields.io/badge/DC-Melo-brightgreen.svg) 
![platform](https://img.shields.io/badge/platform-Android-yellow.svg) 
![language](https://img.shields.io/badge/language-java-blue.svg) 
![licence](https://img.shields.io/badge/license-MIT--2.0-red.svg)

<!-- 项目前言 -->
A standard style for README files

Your README file is normally the first entry point to your code. It should tell people why they should use your module, how they can install it, and how they can use it. Standardizing how you write your README makes creating and maintaining your READMEs easier. Great documentation takes work!

This repository contains:

1. [The specification](spec.md) for how a standard README should look.
2. A link to [a linter](https://github.com/RichardLitt/standard-readme-preset) you can use to keep your README maintained ([work in progress](https://github.com/RichardLitt/standard-readme/issues/5)).
3. A link to [a generator](https://github.com/RichardLitt/generator-standard-readme) you can use to create standard READMEs.
4. [A badge](#badge) to point to this spec.
5. [Examples of standard READMEs](example-readmes/) - such as this file you are reading.

Standard Readme is designed for open source libraries. Although it’s [historically](#background) made for Node and npm projects, it also applies to libraries in other languages and package managers.

<!-- 项目目录 -->
## Table of Contents

- [Background](#background)
- [Install](#install)
- [Usage](#usage)
	- [Generator](#generator)
- [Badge](#badge)
- [Example Readmes](#example-readmes)
- [Related Efforts](#related-efforts)
- [Maintainers](#maintainers)
- [Contributing](#contributing)
- [License](#license)

<!-- 项目背景 -->
## Background

Standard Readme started with the issue originally posed by [@maxogden](https://github.com/maxogden) over at [feross/standard](https://github.com/feross/standard) in [this issue](https://github.com/feross/standard/issues/141), about whether or not a tool to standardize readmes would be useful. A lot of that discussion ended up in [zcei's standard-readme](https://github.com/zcei/standard-readme/issues/1) repository. While working on maintaining the [IPFS](https://github.com/ipfs) repositories, I needed a way to standardize Readmes across that organization. This specification started as a result of that.

> Your documentation is complete when someone can use your module without ever
having to look at its code. This is very important. This makes it possible for
you to separate your module's documented interface from its internal
implementation (guts). This is good because it means that you are free to
change the module's internals as long as the interface remains the same.

> Remember: the documentation, not the code, defines what a module does.

~ [Ken Williams, Perl Hackers](http://mathforum.org/ken/perl_modules.html#document)

Writing READMEs is way too hard, and keeping them maintained is difficult. By offloading this process - making writing easier, making editing easier, making it clear whether or not an edit is up to spec or not - you can spend less time worrying about whether or not your initial documentation is good, and spend more time writing and using code.

By having a standard, users can spend less time searching for the information they want. They can also build tools to gather search terms from descriptions, to automatically run example code, to check licensing, and so on.

The goals for this repository are:

1. A well defined **specification**. This can be found in the [Spec document](spec.md). It is a constant work in progress; please open issues to discuss changes.
2. **An example README**. This Readme is fully standard-readme compliant, and there are more examples in the `example-readmes` folder.
3. A **linter** that can be used to look at errors in a given Readme. Please refer to the [tracking issue](https://github.com/RichardLitt/standard-readme/issues/5).
4. A **generator** that can be used to quickly scaffold out new READMEs. See [generator-standard-readme](https://github.com/RichardLitt/generator-standard-readme).
5. A **compliant badge** for users. See [the badge](#badge).

<!-- 编译安装 -->
## Install

1. Enviroment
```sh
$ uname -a
Linux wtdcserver 5.4.0-73-generic #82~18.04.1-Ubuntu SMP Fri Apr 16 15:10:02 UTC 2021 x86_64 x86_64 x86_64 GNU/Linux

$ java -version

java version "13.0.1" 2019-10-15
Java(TM) SE Runtime Environment (build 13.0.1+9)
Java HotSpot(TM) 64-Bit Server VM (build 13.0.1+9, mixed mode, sharing)

$ gradle -version
------------------------------------------------------------
Gradle 7.0.2
------------------------------------------------------------

Build time:   2021-05-14 12:02:31 UTC
Revision:     1ef1b260d39daacbf9357f9d8594a8a743e2152e

Kotlin:       1.4.31
Groovy:       3.0.7
Ant:          Apache Ant(TM) version 1.10.9 compiled on September 27 2020
JVM:          13.0.1 (Oracle Corporation 13.0.1+9)
OS:           Linux 5.4.0-73-generic amd64
```

![Enviroment](readme_files/enviroment.png) 

2. Clone code and change directories

```sh
$ git clone https://gitee.com/dc-melo/standard-readme.git
OR
$ git clone https://github.com/DC-Melo/standard-readme.git
$ cd standard-readme
```

This project uses [node](http://nodejs.org) and [npm](https://npmjs.com). Go check them out if you don't have them locally installed.

```sh
$ npm install --global standard-readme-spec
```

<!-- 使用说明 -->
## Usage

This is only a documentation package. You can print out [spec.md](spec.md) to your console:

```sh
$ standard-readme-spec
# Prints out the standard-readme spec
```

<!-- 项目负责人 -->
### Generator

To use the generator, look at [generator-standard-readme](https://github.com/RichardLitt/generator-standard-readme). There is a global executable to run the generator in that package, aliased as `standard-readme`.

<!-- 参与贡献 -->
## Badge
[![Build Status](https://travis-ci.org/yeungeek/monkey-android.svg?branch=master)](https://travis-ci.org/yeungeek/monkey-android)
[![Coverage Status](https://coveralls.io/repos/github/yeungeek/monkey-android/badge.svg?branch=master)](https://coveralls.io/github/yeungeek/monkey-android?branch=master)

If your README is compliant with Standard-Readme and you're on GitHub, it would be great if you could add the badge. This allows people to link back to this Spec, and helps adoption of the README. The badge is **not required**.

[![standard-readme compliant](https://img.shields.io/badge/readme%20style-standard-brightgreen.svg?style=flat-square)](https://github.com/RichardLitt/standard-readme)

To add in Markdown format, use this code:

```
[![standard-readme compliant](https://img.shields.io/badge/readme%20style-standard-brightgreen.svg?style=flat-square)](https://github.com/RichardLitt/standard-readme)
```

## Example Readmes

To see how the specification has been applied, see the [example-readmes](example-readmes/).

<!-- 相关项目 -->
## Related Efforts

- [Art of Readme](https://github.com/noffle/art-of-readme) - 💌 Learn the art of writing quality READMEs.
- [open-source-template](https://github.com/davidbgk/open-source-template/) - A README template to encourage open-source contributions.

<!-- 项目负责人 -->
## Maintainers

[@DC-Melo](https://github.com/DC-Melo)
[@DC-Melo](https://gitee.com/DC-Melo)

<!-- 相关项目 -->
## Contributing

Feel free to dive in! [Open an issue](https://github.com/DC-Melo/standard-readme/issues/new) or submit PRs.

Standard Readme follows the [Contributor Covenant](http://contributor-covenant.org/version/1/3/0/) Code of Conduct.

<!-- 参与贡献 -->
### Contributors

This project exists thanks to all the people who contribute. 
<a href="https://github.com/RichardLitt/standard-readme/graphs/contributors"><img src="https://opencollective.com/standard-readme/contributors.svg?width=890&button=false" /></a>


<!-- 开源协议 -->
## License

[MIT](LICENSE) © DC-Melo王江

<!-- 捐赠 -->
## Donation

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



