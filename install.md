# GitBook安装过程

## 安装 Node.js
GitBook 是基于 Node.js的，所以我们首先需要安装对应版本的 Node.js（下载网址：https://nodejs.org/en/download/）

![alt nodejs](\assets\images\nodejs.png)

目前Node.js的最新稳定版本对GitBook可能不兼容（在后续安装和启动 GitBook 命令时会出现错误提示），直接安装v10.22.0。
```
nvm use 10
```

## 安装GitBook
```
npm install -g gitbook-cli
```

## 确认GitBook安装完成
```
gitbook -V
```
如果在上一步骤GitBook安装成功，命令行中会展示版本信息。至此，恭喜你安装成功。

## 避坑指南

### 安装速度问题

问题： 执行 gitbook -V 时显示：Installing GitBook 3.2.3 …….，之后出现长时间卡顿

解决办法1： 科学上网

解决办法2： 切换为使用国内速度较快的淘宝镜像。

在cmd执行命令：
```
npm config set registry=http://registry.npm.taobao.org -g
```

### Node.js版本问题
说明Node.js的版本环境有问题，需要降低Node版本。测试下来在v10.22.0是可以正常使用的，下面以该版本的安装为例，展示上述报错的解决方案。

解决办法1： 卸载已下载版本，重新下载10.22.0版本的Node.js（下载网址：https://nodejs.org/zh-cn/download/releases/）
缺点：对未来Node.js版本的更新或多个版本之间的切换使用不太方便

解决办法2： 使用Node.js的版本管理器nvm（Node.js Version Manager）。nvm可以帮助实现在同一台设备上进行多个node版本之间的切换。主要步骤：

使用nvm命令实现多版本node的下载和切换：
```
nvm -v					查看nvm版本信息：
nvm install 10.22.0		安装多版本 node/npm（以v10.22.0为例）：
nvm use 10.22.0			使用特定Node版本（以v10.22.0为例）：
nvm ls available		查看远程服务器上的可用Node版本：
nvm ls					查看本机的可用Node版本
```
