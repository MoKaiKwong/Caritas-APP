# Caritas

<p align="center">
<img src="./res/icon.png" alt="Caritas" width="100">
</p>
<h1 align="center">Caritas</h1>
<p align="center">
<a href="https://zhuanlan.zhihu.com/p/556201282">介绍文章</a>
</p>

> 🔥 于浩歌狂热之际中寒；于天上看见深渊。于一切眼中看见无所有；于无所希望中得救。


## Demo

> 感谢 @大卫 提供的 1.0 版本、图标等关键信息
> 感谢 @g9qad @nell nell 的内容授权
> 感谢 @阿寜寜 @流水浮灯 提供的笔记文件

![](https://image.idealclover.cn/blog/635/1.png)

![](https://image.idealclover.cn/blog/635/2.png)

![](https://image.idealclover.cn/blog/635/3.png)

![](https://image.idealclover.cn/blog/635/4.png)

![](https://image.idealclover.cn/blog/635/5.png)

## 下载地址

为了避免使用其他渠道分发带来的不可控性，尽可能使用了自己自费的 CDN 进行分发，速度可能会稍慢点，希望大家理解 hh

### 移动端 - 安卓

> 由于安卓应用商店众多且审核标准不一致，信息类 APP 也比较难过审，因此直接使用 apk 形式进行应用分发

下载地址：http://cdn.idealclover.cn/Projects/caritas/caritas_android_latest.apk

由于现在各安卓厂商的拦截、限制策略，可能会在安装 APP 时引导“去应用商店安装”，忽略即可（估计大家也都已经习惯了吧 = =|||）

另外，之前安装过 Caritas 1.0 版本的朋友，由于包名、签名不一致，因此可能会看到两个版本在手机并存的情况，属正常现象

### 移动端 - iOS

> 由于 iOS 正式版被苹果应用商店以 4.2.2 理由拒审，因此暂时使用 testflight 进行发布，限额 1000 先使用先得（应该不会满员吧）
>
> 如果你了解如何进一步修改以过审，也欢迎来联系我，需要你的帮助。

使用地址：https://testflight.apple.com/join/XBsy7KXQ

之前使用过 testflight 的朋友估计会比较熟悉了，点击链接直接可以参与测试、安装APP；没有用过的朋友可能需要先根据引导下载一个 testflight（苹果官方的测试版本发布工具）

### 桌面端 - Windows

下载地址：http://cdn.idealclover.cn/Projects/caritas/caritas_windows_latest.exe

下载后按照安装引导步骤安装即可

### 桌面端 - MacOS

> Testflight 过审中（另外电脑端也不推荐使用 APPStore 安装软件，直接用 dmg 包吧）

下载地址：http://cdn.idealclover.cn/Projects/caritas/caritas_macos_latest.dmg

下载打开之后按安装流程将图标拖入 Applications 文件夹即可进行使用

### 网页端

> 提示：网页端由于需加载文件较大（10+M）且 flutter web 架构本身不够稳定，不推荐进行使用，使用过程中可能会出现更多未知 bug

网页链接：https://caritas.idealclover.cn/

直接使用浏览器打开即可

## 开发攻略

### 环境构建

项目整体使用 [Flutter](https://flutter.dev/) 框架（[中文站](https://flutter.cn/)），环境搭建可参考相关说明

### 项目结构

```
├─ analysis_options.yaml --语法检查 把一些lint rules 关了
├─ android --安卓原生
│  ├─ app --需要动原生代码的话这里下刀
│  ├─ build.gradle --gradle build脚本
│  ├─ key.properties --配置文件，需要自己新建哦
│  ├─ ...
├─ api --需要部署到服务器上的静态文件
│  ├─ android.json --安卓版本检查文件
│  ├─ database.json --服务器版本检查文件
│  ├─ ios.json --iOS版本检查文件
│  └─ privacy.json --隐私协议文件
├─ ios --iOS原生
│  ├─ Podfile --iOS描述文件，如果需要额外权限需要改这里
│  ├─ Runner --需要动原生代码的话这里下刀
│  ├─ Runner.xcworkspace --iOS主工程，XCode开这个
│  └─ ...
├─ lib --这里是主要代码
│  ├─ Components --功能组件
│  │ ├─ ArticleList.dart --文章列表公共组件
│  │ ├─ ArticleListItem.dart --列表中的item
│  │ ├─ Dialog.dart --公共弹窗组件
│  │ ├─ DownloadDialog.dart --数据库更新弹窗
│  │ ├─ Drawer.dart --侧抽屉公共组件
│  │ ├─ Markdown.dart --markdown渲染组件
│  │ ├─ SnackBar.dart --弹出snackbar公共组件
│  │ ├─ Toast.dart --Toast公共组件（已不用）
│  │ └─ TransBgTextButton.dart --为了适配黑夜模式的按钮
│  ├─ Libs --魔改过的本地用lib
│  │ ├─ cloud_kit
│  │ ├─ flutter-search-bar
│  │ └─ umeng_common_sdk
│  ├─ Models --数据结构（公共M层）
│  │ ├─ Db --文章、分类hive表结构
│  │ │ ├─ DbHelper.dart
│  │ │ └─ DbHelper.g.dart --自动生成的文件
│  │ └─ HomeCategoryModel.dart --分类的对象
│  ├─ Pages --页面（V层/P层）
│  │ ├─ About --关于
│  │ ├─ Article --文章浏览页面
│  │ ├─ Favorite --收藏列表页
│  │ ├─ History --历史列表页
│  │ ├─ HomePage --首页
│  │ ├─ Settings --设置页
│  │ └─ Sync --设置-同步数据二级页面
│  ├─ Resources --静态资源
│  │ ├─ Config.dart --这个需要复制sample哦
│  │ ├─ Config.sample.dart
│  │ ├─ Constant.dart
│  │ └─ Themes.dart
│  ├─ Utils --工具类
│  │ ├─ DataSyncUtil.dart --数据同步相关函数
│  │ ├─ InitUtil.dart --启动时调用的方法
│  │ ├─ PrivacyUtil.dart --校验隐私协议
│  │ ├─ SettingsUtil.dart --设置中需要的工具函数
│  │ ├─ ThemeUtil.dart --主题切换工具函数
│  │ ├─ URLUtil.dart --外部链接打开工具函数
│  │ ├─ UmengUtil.dart --友盟统计工具函数
│  │ ├─ UpdateUtil.dart --更新弹窗工具函数
│  │ └─ VersionUtil.dart --获取当前包版本
│  ├─ generated --自动生成的i18n文件
│  ├─ l10n --文案在这里设置
│  │ ├─ intl_en.arb
│  │ └─ intl_zh.arb
│  ├─ main.dart --主函数入口
│  └─ ...
├─ linux --Linux原生
├─ macos --MacOS原生
│  ├─ Podfile --MacOS描述文件，如果需要额外权限需要改这里
│  ├─ Runner --需要动原生代码的话这里下刀
│  ├─ Runner.xcworkspace --MacOS主工程，XCode开这个
│  ├─ appdmg --用来生成dmg包
│  │ ├─ appdmg.json --appdmg设置文件
│  │ └─ ...
│  └─ ...
├─ pubspec.yaml --pub文件
├─ res --资源文件
│  ├─ data.json --数据库
│  └─ icon.png --图标
├─ script --其他脚本
│  ├─ audio.py --声音处理脚本
│  ├─ delete_empty.py --文件处理脚本
│  └─ main.py --数据库打包脚本
├─ test --测试函数（TBD）
│  └─ widget_test.dart
├─ web --Web原生
│  ├─ index.html
│  └─ ...
├─ windows --Windows原生
│  ├─ runner
│  └─ ...
└─ ...
```

### 运行前准备

* 在 Android Studio 中安装 flutter 和 flutter intl 插件
* 复制 `lib/Resources/Config.sample.dart` 并~~乱写一气~~
* 安卓打包：自己生成 `key.properties` 或 在 `build.gradle` 中进行豁免
* 剩下的，就等项目运行起来再探索吧 :)

### 计划 Feature

- [ ] 更新推送通知
- [ ] 接入azure tts
- [ ] 跨端复制 https://github.com/flutter/flutter/issues/99819
- [x] 各端初版发布
- [x] 接入友盟埋点
- [x] 历史功能
- [x] 已读标记

## Open-source Licenses

[MIT License](./LICENSE), have fun coding.

Long Live Open Source.
