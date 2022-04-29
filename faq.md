# 常见问题

## gitbook build 命令导出的html不能跳转的解决办法

### 具体原因

由于点击事件被 js 代码禁用，所以点击没有反应，但是如果右键，在新窗口/新标签页打开的话是可以跳转的

### 解决办法

找到`js`代码，并修改

找到项目目录`gitbook`

找到目录下的`theme.js`文件

找到下面的代码

将`if(m)`改成`if(false)`

由于代码是压缩后的，会没有空格，搜索的时候可以直接搜索： `if(m)for(n.handler&&`

```
if (m)
    for (n.handler && (i = n,
    n = i.handler,
    o = i.selector),
    o && de.find.matchesSelector(Ye, o),
    n.guid || (n.guid = de.guid++),
    (u = m.events) || (u = m.events = {}),
    (a = m.handle) || (a = m.handle = function(t) {
        return "undefined" != typeof de && de.event.triggered !== t.type ? de.event.dispatch.apply(e, arguments) : void 0
    }
    ),
    t = (t || "").match(qe) || [""],
    l = t.length; l--; )
        s = Ze.exec(t[l]) || [],
        h = g = s[1],
        d = (s[2] || "").split(".").sort(),
        h && (f = de.event.special[h] || {},
        h = (o ? f.delegateType : f.bindType) || h,
        f = de.event.special[h] || {},
        c = de.extend({
            type: h,
            origType: g,
            data: r,
            handler: n,
            guid: n.guid,
            selector: o,
            needsContext: o && de.expr.match.needsContext.test(o),
            namespace: d.join(".")
        }, i),
        (p = u[h]) || (p = u[h] = [],
        p.delegateCount = 0,
        f.setup && f.setup.call(e, r, d, a) !== !1 || e.addEventListener && e.addEventListener(h, a)),
        f.add && (f.add.call(e, c),
        c.handler.guid || (c.handler.guid = n.guid)),
        o ? p.splice(p.delegateCount++, 0, c) : p.push(c),
        de.event.global[h] = !0)
    } 
```