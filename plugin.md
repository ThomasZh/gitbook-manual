# gitbook插件如何安装，以及定制化插

## 插件安装

book.json，该文件用于存放配置信息。如果没有，请创建

【title】书本的标题

【author】作者的相关信息

【description】本书的简单描述

【language】gitbook使用的语言 我的是"zh-hans",

【root】指定存放 GitBook 文件（除了 book.json）的根目录

【structure】指定自述文件，摘要，词汇表等的路径

gitbook支持许多插件，可以扩展gitbook的功能。

plugins 是配置新增或删除插件的位置,而 Gitbook 默认自带有 5 个插件：
```
sharing：右上角分享功能 
font-settings：字体设置（左上方的"A"符号） 
livereload：为 GitBook 实时重新加载 
highlight： 代码高亮 
search： 导航栏查询功能（不支持中文）
pluginsConfig 是插件配置的地方
```

特别说明 系统自带插件可通过 在插件名前面加减号的方式去除掉，如-sharing

再添加了插件后要加载使用插件，需要使用gitbook install 来安装进项目。否则无法使用。

## 参考本人完整配置
```
{
    "title": "Gitbook教程",
    "description": "Gitbook电子书教程",
    "author": "Breeze",
    "language": "zh-hans",
    "root": ".",
    "plugins": [
        "ace",
        "theme-comscore",
        "edit-link",
        "tbfed-pagefooter",
        "expandable-chapters",
        "chapter-fold",
        "back-to-top-button",
        "code",
        "pageview-count",
        "popup",
        "splitter",
        "search-plus",
        "-lunr",
        "-search"
    ],
    "styles": {
        "website": "assets/continuum/cms.css",
        "ebook": "styles/ebook.css",
        "pdf": "styles/pdf.css",
        "mobi": "styles/mobi.css",
        "epub": "styles/epub.css"
    },
    "pluginsConfig": {
        "edit-link": {
            "base": "https://github.com/ITmxs/gitbook-Information-System-Engineer/edit/master",
            "label": "Edit This Page"
        },
        "tbfed-pagefooter": {
            "copyright": "&copy Cyber-Life.cn Studio",
            "modify_label": "该文件修订时间：",
            "modify_format": "YYYY-MM-DD HH:mm:ss"
        },
        "pluginsConfig": {
            "expandable-chapters": {}
        }
    }
}
```

## 插件说明

### 目录章节可折叠：expandable-chapters
```
{
    {
        plugins: ["expandable-chapters"]
    }
    {
        "pluginsConfig": {
            "expandable-chapters":{}
        }
    }
}
```

### 畅言评论：changyan
```
{
    "plugins": [
        "changyan"
    ],
    "pluginsConfig": {
        "changyan": {
            "appid": "your changyan's appid",
            "conf": "the conf in the code generate by changyan"
        }
    }
}
```

### page-treeview 目录

不需要在文档中插入标签，能够支持到 6 级目录，安装即可用。 这个插件生成目录以后，下面有一行关于版权的文字。 这行文字可以通过样式来进行控制，让它不显示出来。
```
.treeview__container {
    margin-bottom: 0px !important;
}
.treeview__container-title {
    display: none !important;
}
```

### 复制 code 代码

为代码块添加行号和复制按钮，复制按钮可关闭 单行代码无行号。
```
"code": {
    "copyButtons": false
}
```

### pageview-count 阅读量计数

该插件用来统计当前页面被访问次数

### popup 图片点击查看
插件用于点击图片时，打开新的网页用来查看高清大图。

### tbfed-pagefooter 页面添加页脚（简单版）

在每个页面的最下方自动添加页脚信息，配置如下：
```
"tbfed-pagefooter": {
            "copyright": "Copyright © levywang123@gmail.com 2020",
            "modify_label": "该文章修订时间：",
            "modify_format": "YYYY-MM-DD HH:mm:ss"
        },
```

page-copyright 页面添加页脚（复杂版）

在每个页面的最下方自动添加页脚配置的各个信息，配置如下：
```
 "page-copyright": {
          "description": "footer",
          "copyright": "Copyright © levywang123@gmail.com 2020",
          "timeColor": "#ccc",
          "copyrightColor": "#ddd",
          "utcOffset": "8",
          "style": "normal",
          "noPowered": false,
          "signature": "levy",
          "wisdom": "footer",
          "format": "YYYY-MM-dd hh:mm:ss",
        },
```

### favicon 修改图标

修改网页标题的图标，显示个性化 ico
```
"favicon": {
    "shortcut": "assets/favicon.ico",
    "bookmark": "assets/favicon.ico",
    "appleTouch": "assets/favicon.ico",
    "appleTouchMore": {
        "120x120": "assets/favicon.ico",
        "180x180": "assets/favicon.ico"
    }
},
```

### search-plus 替换原搜索插件

原搜索插件不支持中文搜索，所以使用该插件进行替换。需要将原插件进行去除掉。
```
    "plugins": [ "search-plus", "-lunr", "-search"]
```

### expandable-chapters 及 chapter-fold 导航目录

两个插件配合使用，使导航目录使用更正常，以免出现导航栏问题。

一个支持多层目录，一个是在目录前方加上箭头。使点击两个都有效。
```
    "plugins": [  "expandable-chapters","chapter-fold"]
```

### hide-element 隐藏界面元素
可以隐藏不想看到的元素，比如导航栏中 下方的 Published by GitBook
```
"elements": [".gitbook-link"]
```

### back-to-top-button 返回顶部

在页面篇幅过长时，在界面右下角自动添加上返回顶部的按钮。

### splitter 侧边栏宽度调整

添加完插件后，在界面上 侧边栏可自行调整宽度。

### sharing-plus 分享插件

需要将自带的插件给隐藏掉 -sharing 分享当前页面，比默认的 sharing 插件多了一些分享方式。
```
"sharing": {
        "douban": false,
        "facebook": false,
        "google": false,
        "pocket": false,
        "qq": false,
        "qzone": false,
        "twitter": false,
        "weibo": false,
    "all": [
        "qq", "qzone","viber","whatsapp",
        "douban", "facebook", "google", "instapaper", "linkedin",
        "messenger","twitter", "weibo"
    ]
}
```

### gitbook-思维导图

一个用Markdown生成思维导图的GitBook插件
```
"plugins": ["mind-maps"]
使用

# 1
## 1.1
### 1.1.1
## 1.2
# 2
# 3
​
- 1
  - 1.1
    - 1.1.1
  - 1.2
- 2
- 3
```

### GitBook 插件：编辑链接
```
  "plugins": ["edit-link"]
```

这个 GitBook 插件在每个页面上添加了“编辑此页面”链接。

链接目标将是 Github 或 Gitlab 或任何 repo 上该页面的源文件。
```
  "edit-link": {
      "base": "https://github.com/ITmxs/gitbook/edit/master/",
      "label": "编辑此页"
    },
```

### Github Buttons

添加项目在 github 上的 star,watch,fork 情况
```
{
    "plugins": [
        "github-buttons"
    ],
    "pluginsConfig": {
        "github-buttons": {
            "repo": "zhangjikai/gitbook-use",
            "types": [
                "star",
                "watch",
                "fork"
            ],
            "size": "small"
        }
    }
}
```

### Emphasize为文字添加底色
```
"plugins": ["emphasize"]
```

### Anchors 

添加 Github 风格的锚点样式
```
"plugins" : [ "anchors" ]
```

### livereload

为GitBook实时重新加载

### advanced-emoji

支持emoji表情