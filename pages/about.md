---
layout: mypost
title: 关于我
---

> 欢迎访问 Lichium Blog

平凡高中牲，没有实力，啥也不会。

博客开了关，关了又开，总之不常用，可能心情好时跟进一下最近发生的事。

本博客托管于 GitHub Page，主题使用[tmaize-blog](https://github.com/TMaize/tmaize-blog)，欢迎添加友链！

- QQ：3233796965

## 友链
本站信息

```
名称：{{ site.title }}
描述：{{ site.description }}
地址：{{ site.domainUrl }}{{ site.baseurl }}
头像：{{ site.domainUrl }}{{ site.baseurl }}/static/img/logo.jpg
```

<ul>
  {%- for link in site.links %}
  <li>
    <p><a href="{{ link.url }}" title="{{ link.desc }}" target="_blank" >{{ link.title }}</a></p>
  </li>
  {%- endfor %}
</ul>
