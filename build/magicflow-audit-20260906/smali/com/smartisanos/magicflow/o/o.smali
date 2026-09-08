.class public Lcom/smartisanos/magicflow/o/o;
.super Ljava/lang/Object;
.source "WebSearchHelper.java"


# direct methods
.method public static a(Landroid/content/Context;)Lsmartisan/widget/search/data/GloableSearchConfig;
    .locals 1

    :try_start_0
    const-string v0, "{\"version\":\"1\",\"types\":[{\"type\":\"config_search\",\"order\":\"1\",\"mode\":\"0\",\"datas\":[{\"identifier\":\"search_baidu\",\"name\":\"\u5728\u767e\u5ea6\u4e2d\u641c\u7d22\",\"twName\":\"\u5728\u767e\u5ea6\u4e2d\u641c\u5c0b\",\"enName\":\"Search with Baidu\",\"order\":\"1\",\"clickUrl\":\"http://m.baidu.com/s?word=%s&from=1013377a\",\"imgUrl\":\"\",\"default\":\"false\"},{\"identifier\":\"search_google\",\"name\":\"\u5728\u8c37\u6b4c\u4e2d\u641c\u7d22\",\"twName\":\"\u5728\u8c37\u6b4c\u4e2d\u641c\u5c0b\",\"enName\":\"Search with Google\",\"order\":\"2\",\"clickUrl\":\"https://www.google.com/search?q=%s\",\"imgUrl\":\"\",\"default\":\"false\"},{\"identifier\":\"search_bing\",\"name\":\"\u5728\u5fc5\u5e94\u4e2d\u641c\u7d22\",\"twName\":\"\u5728\u5fc5\u61c9\u4e2d\u641c\u5c0b\",\"enName\":\"Search with Bing\",\"order\":\"3\",\"clickUrl\":\"https://www.bing.com/search?q=%s\",\"imgUrl\":\"\",\"default\":\"false\"},{\"identifier\":\"search_sogou\",\"name\":\"\u5728\u641c\u72d7\u4e2d\u641c\u7d22\",\"twName\":\"\u5728\u641c\u72d7\u4e2d\u641c\u5c0b\",\"enName\":\"Search with Sogou\",\"order\":\"4\",\"clickUrl\":\"http://wap.sogou.com/web/sl?keyword=%s&pid=sogou-mobp-ef48e3ef07e35900\",\"imgUrl\":\"\",\"default\":\"true\"},{\"identifier\":\"search_360so\",\"name\":\"\u5728 360 \u4e2d\u641c\u7d22\",\"twName\":\"\u5728 360 \u4e2d\u641c\u5c0b\",\"enName\":\"Search with 360\",\"order\":\"5\",\"clickUrl\":\"https://m.so.com/s?q=%s&src=home&srcg=cs_chuizi_1&nav=2\",\"imgUrl\":\"\",\"default\":\"false\"}]},{\"type\":\"config_dictionary\",\"order\":\"2\",\"mode\":\"0\",\"datas\":[{\"identifier\":\"dictionary_youdao\",\"name\":\"\u6709\u9053\u8bcd\u5178\",\"twName\":\"\u6709\u9053\u8a5e\u5178\",\"enName\":\"Youdao Dictionary\",\"order\":\"3\",\"clickUrl\":\"http://smartisandict.youdao.com/dict?q=%s\",\"imgUrl\":\"\",\"default\":\"true\"},{\"identifier\":\"dictionary_bing\",\"name\":\"\u5fc5\u5e94\u8bcd\u5178\",\"twName\":\"\u5fc5\u61c9\u8a5e\u5178\",\"enName\":\"Bing Dictionary\",\"order\":\"1\",\"clickUrl\":\"http://cn.bing.com/dict/?q=%s\",\"imgUrl\":\"\",\"default\":\"false\"},{\"identifier\":\"dictionary_iciba\",\"name\":\"\u91d1\u5c71\u8bcd\u9738\",\"twName\":\"\u91d1\u5c71\u8a5e\u9738\",\"enName\":\"Iciba\",\"order\":\"2\",\"clickUrl\":\"http://www.iciba.com/%s\",\"imgUrl\":\"\",\"default\":\"false\"},{\"identifier\":\"dictionary_google\",\"name\":\"Google \u7ffb\u8bd1\",\"twName\":\"Google \u7ffb\u8b6f\",\"enName\":\"Google Translate\",\"order\":\"4\",\"clickUrl\":\"https://translate.google.cn/m/translate#auto/%s\",\"imgUrl\":\"\",\"default\":\"false\"}]},{\"type\":\"config_baike\",\"order\":\"3\",\"mode\":\"0\",\"datas\":[{\"identifier\":\"baike_baidu\",\"name\":\"\u767e\u5ea6\u767e\u79d1\",\"twName\":\"\u767e\u5ea6\u767e\u79d1\",\"enName\":\"Baidu Baike\",\"order\":\"1\",\"clickUrl\":\"http://wapbaike.baidu.com/search/word?word=%s\",\"imgUrl\":\"\",\"default\":\"true\"},{\"identifier\":\"baike_hudong\",\"name\":\"\u4e92\u52a8\u767e\u79d1\",\"twName\":\"\u4e92\u52d5\u767e\u79d1\",\"enName\":\"Hudong Baike\",\"order\":\"2\",\"clickUrl\":\"http://www.baike.com/gwiki/%s\",\"imgUrl\":\"\",\"default\":\"false\"},{\"identifier\":\"baike_wikiEN\",\"name\":\"\u82f1\u6587\u7ef4\u57fa\u767e\u79d1\",\"twName\":\"\u82f1\u6587\u7dad\u57fa\u767e\u79d1\",\"enName\":\"Wiki English\",\"order\":\"3\",\"clickUrl\":\"https://en.m.wikipedia.org/wiki/%s\",\"imgUrl\":\"\",\"default\":\"false\"},{\"identifier\":\"baike_wikiCN\",\"name\":\"\u4e2d\u6587\u7ef4\u57fa\u767e\u79d1\",\"twName\":\"\u4e2d\u6587\u7dad\u57fa\u767e\u79d1\",\"enName\":\"Wiki Chinese\",\"order\":\"4\",\"clickUrl\":\"https://zh.m.wikipedia.org/wiki/%s\",\"imgUrl\":\"\",\"default\":\"false\"}]},{\"type\":\"config_third_search\",\"order\":\"4\",\"mode\":\"0\",\"datas\":[{\"identifier\":\"third_sogou\",\"name\":\"\u641c\u72d7|\u5fae\u4fe1\u641c\u7d22\",\"twName\":\"\u641c\u72d7|\u5fae\u4fe1\u641c\u7d22\",\"enName\":\"Sougou | WeChat Search\",\"order\":\"1\",\"clickUrl\":\"http://weixin.sogou.com/weixinwap?type=2&query=%s\",\"imgUrl\":\"\",\"default\":\"true\"},{\"identifier\":\"third_weibo\",\"name\":\"\u5fae\u535a\u641c\u7d22\",\"twName\":\"\u5fae\u535a\u641c\u7d22\",\"enName\":\"Weibo Search\",\"order\":\"2\",\"clickUrl\":\"http://s.weibo.com/weibo/%s\",\"imgUrl\":\"\",\"default\":\"false\"},{\"identifier\":\"third_zhihu\",\"name\":\"\u641c\u72d7|\u77e5\u4e4e\u641c\u7d22\",\"twName\":\"\u641c\u72d7|\u77e5\u4e4e\u641c\u7d22\",\"enName\":\"Sougou | Zhihu Search\",\"order\":\"3\",\"clickUrl\":\"http://zhihu.sogou.com/zhihuwap?query=%s\",\"imgUrl\":\"\",\"default\":\"false\"}]}]}"

    .line 1
    invoke-static {v0}, Lsmartisan/widget/search/data/GloableSearchConfigTool;->getConfigByJson(Ljava/lang/String;)Lsmartisan/widget/search/data/GloableSearchConfig;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Lsmartisan/widget/search/data/GloableSearchConfig;->updateDefaultTypes(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method
