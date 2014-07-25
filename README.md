Search_Engine
=============

实现了五种算法的简易搜索引擎
Introduction
=============

该搜索引擎主要用于对校园BBS的信息进行爬取后，建立搜索引擎：

python: scrapy(爬虫框架没有放上来) django搭建服务器

matlab:计算离线的评分矩阵

Hierarchy
=============
Crawler:Scrapy

Parser:jieba分词

indexer：Hash以及大矩阵的分割储存

scorer:Vector Space/OkapiBest25/Boolean/JMSmoothing Language Model/DSmoothing LM

interface:search.py 得到结果在web中显示

Contact
============
如果对该项目的测试数据感兴趣，可以email:qi.zhu.ckc@gmail.com

当然只要爬取的格式满足如下的例子，您也可以自己进行测试：

  title
  
  ========
  
  content
  
  ========
  
  url
