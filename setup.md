# GitBook使用简介

## GitBook创建及预览

### 创建书籍：
新建一个文件夹，在文件夹下打开命令窗口（在文件夹地址栏输入cmd后回车或在cmd中用cd命令），初始化文件夹：

```
gitbook init
```

执行上述命令后，会自动生成两个必要的文件 README.md 和 SUMMARY.md。
README.md: 书的介绍文字，如前言、简介，在章节中也可做为章节的简介。
SUMMARY.md: 定制书籍的章节结构和顺序。

### 预览书籍：
```
gitbook serve
```

执行命令，GitBook 会启动一个 4000 端口 （http://localhost:4000） 用于预览。

但由于GitBook版本不稳定，有时运行serve命令会出现报错：
```
Error: ENOENT: no such file or directory, stat '~~~.js'
```

解决办法： 在用户目录下找到以下文件.gitbook\versions\3.2.3\lib\output\website\copyPluginAssets.js ，把所有的 confirm: true 替换为 confirm: false。

### 构建书籍：
```
gitbook build
```

上述命令默认将生成的静态网站输出到 _book 目录。
实际上，这一步也包含在 gitbook serve 里面，但 gitbook build 可以指定路径：
```
gitbook build [书籍路径] [输出路径]
```

### 生成其它格式的电子书：
```
gitbook pdf ./ ./mybook.pdf
gitbook epub ./ ./mybook.epub
gitbook mobi ./ ./mybook.mobi
```

## GitBook插件

官方获取插件地址： https://plugins.gitbook.com/

安装插件只需要在书籍目录下增加 book.json 文件，例如增加折叠目录的插件，需要在 book.json 内增加下面代码:
```
{
    "plugins": ["expandable-chapters-small"],
    "pluginsConfig": {
        "expandable-chapters-small":{}
    }
}
```

然后终端执行 install 来安装插件即可：
```
gitbook install
```
