---
title: 南京吃喝玩乐信息分享平台
tags: java,javascript,Hybrid App,wangEditor
---


### 项目介绍
本系统旨在于轻量化的信息分享平台，用来共享南京地区的吃喝玩乐等娱乐信息，解决现阶段年轻人周末提出的“去哪儿”、“玩什么”之类的问题。系统提供了游玩地推荐、游记文章分享、对推荐和文章进行收藏评论、天气预报、签到得积分、积分商城等功能，后续考虑加入地图导航，去过的地点在地图标记等趣味功能。

### 客户端介绍
客户端现阶段在移动设备的网页开发阶段，采用mui框架(因为技术调查期间，该框架可直接用HBuilder进行app的打包，也就是混合开发Hybrid App)加原生js(jquery对移动设备来说体积太大了，zepto提供的功能常用的mui里都有封装，所以选择原生js)，考虑在移动设备上使用富文本编辑器编写文章的不便，游记文章编写功能暂时放在PC端。以下是部分网页截图展示(参考)，Hybrid App正在开发中：
1.登录：
![image](https://github.com/stackinger/Travel/raw/master/README/login.jpg)

2.首页：
![image](https://github.com/stackinger/Travel/raw/master/README/index.png)

3.发现：
![image](http://github.com/stackinger/Travel/raw/master/README/recommend.png)

4.游记：
![image](http://github.com/stackinger/Travel/raw/master/README/article.png)

5.我的：
![image](http://github.com/stackinger/Travel/raw/master/README/myinfo.png)

6.发现详情：
![image](http://github.com/stackinger/Travel/raw/master/README/remDetail.png)

7.游记详情：
![image](http://github.com/stackinger/Travel/raw/master/README/artDetail.png)

### 管理端介绍
管理端采用了easyUI+jquery实现，整合轻量化富文本编辑工具wangEditor。提供了(暂定)内容管理、用户管理、商品管理和订单管理(积分商城)、操作日志等功能，兼容IE8及以上的浏览器，推荐使用chrome浏览器。
管理端首页展示：
![image](http://github.com/stackinger/Travel/raw/master/README/index2.png) 

 
### 服务端
服务端采用SSM(Spring+SpringMVC+Mybatis)框架进行开发，使用maven管理jar包(注意，因为国内网络环境的问题，推荐使用阿里云maven仓库http://maven.aliyun.com/nexus/content/groups/public)。
框架部分具体不再赘述。特此感谢博主“黑天鹅Coding”，SSM框架整合教程地址：http://www.cnblogs.com/zyw-205520/p/4771253.html

## 数据库
mysql-installer-community-5.7.12.0

