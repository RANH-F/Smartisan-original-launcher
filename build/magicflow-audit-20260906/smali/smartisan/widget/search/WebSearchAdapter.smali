.class public Lsmartisan/widget/search/WebSearchAdapter;
.super Ljava/lang/Object;
.source "WebSearchAdapter.java"

# interfaces
.implements Lsmartisan/widget/search/WebSearch;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/widget/search/WebSearchAdapter$TimeoutHandler;,
        Lsmartisan/widget/search/WebSearchAdapter$WebViewListenr;
    }
.end annotation


# static fields
.field public static final CONFIG_BAIKE:Ljava/lang/String; = "config_baike"

.field public static final CONFIG_DICTIONARY:Ljava/lang/String; = "config_dictionary"

.field public static final CONFIG_SEARCH:Ljava/lang/String; = "config_search"

.field public static final CONFIG_THIRD_SEARCH:Ljava/lang/String; = "config_third_search"

.field private static final MSG_WHAT_TIME_OUT:I = 0x0

.field private static final REQUEST_SELECT_FILE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "WebSearchAdapter"

.field private static final TIME_OUT_DURATION:I = 0x2710

.field public static final TYPE_360SO:Ljava/lang/String; = "search_360so"

.field public static final TYPE_BAIDU:Ljava/lang/String; = "search_baidu"

.field public static final TYPE_BAIDU_BAIKE:Ljava/lang/String; = "baike_baidu"

.field public static final TYPE_BING:Ljava/lang/String; = "search_bing"

.field public static final TYPE_BINGDICT:Ljava/lang/String; = "dictionary_bing"

.field public static final TYPE_GOOGLE:Ljava/lang/String; = "search_google"

.field public static final TYPE_GOOGLE_TRANSLATE:Ljava/lang/String; = "dictionary_google"

.field public static final TYPE_HUDONG_BAIKE:Ljava/lang/String; = "baike_hudong"

.field public static final TYPE_KINGSOFT:Ljava/lang/String; = "dictionary_iciba"

.field public static final TYPE_SOGOU:Ljava/lang/String; = "search_sogou"

.field public static final TYPE_WECHAT:Ljava/lang/String; = "third_sogou"

.field public static final TYPE_WEIBO:Ljava/lang/String; = "third_weibo"

.field public static final TYPE_WIKI_CN:Ljava/lang/String; = "baike_wikiCN"

.field public static final TYPE_WIKI_EN:Ljava/lang/String; = "baike_wikiEN"

.field public static final TYPE_YOUDAO:Ljava/lang/String; = "dictionary_youdao"

.field public static final TYPE_ZHIHU:Ljava/lang/String; = "third_zhihu"


# instance fields
.field private isFirstStarted:Z

.field private mBackView:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mDownloadListener:Landroid/webkit/DownloadListener;

.field private mFirstPage:Z

.field mOverrideUrl:Z

.field private mTimeoutHandler:Lsmartisan/widget/search/WebSearchAdapter$TimeoutHandler;

.field mUploadMessage:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mWebChromeClient:Landroid/webkit/WebChromeClient;

.field private mWebSearchViewGroup:Lsmartisan/widget/search/WebSearchViewGroup;

.field private mWebView:Landroid/webkit/WebView;

.field private mWebViewClient:Landroid/webkit/WebViewClient;

.field private mWebViewListenr:Lsmartisan/widget/search/WebSearchAdapter$WebViewListenr;


# direct methods
.method public constructor <init>(Lsmartisan/widget/search/WebSearchViewGroup;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lsmartisan/widget/search/WebSearchAdapter;->isFirstStarted:Z

    .line 3
    iput-object p1, p0, Lsmartisan/widget/search/WebSearchAdapter;->mWebSearchViewGroup:Lsmartisan/widget/search/WebSearchViewGroup;

    .line 4
    iput-object p2, p0, Lsmartisan/widget/search/WebSearchAdapter;->mContext:Landroid/content/Context;

    .line 5
    iget-object p2, p0, Lsmartisan/widget/search/WebSearchAdapter;->mWebSearchViewGroup:Lsmartisan/widget/search/WebSearchViewGroup;

    invoke-virtual {p2}, Lsmartisan/widget/search/WebSearchViewGroup;->getBackImageView()Landroid/widget/ImageView;

    move-result-object p2

    iput-object p2, p0, Lsmartisan/widget/search/WebSearchAdapter;->mBackView:Landroid/widget/ImageView;

    .line 6
    iget-object p2, p0, Lsmartisan/widget/search/WebSearchAdapter;->mWebSearchViewGroup:Lsmartisan/widget/search/WebSearchViewGroup;

    invoke-virtual {p2}, Lsmartisan/widget/search/WebSearchViewGroup;->getWebView()Landroid/webkit/WebView;

    move-result-object p2

    iput-object p2, p0, Lsmartisan/widget/search/WebSearchAdapter;->mWebView:Landroid/webkit/WebView;

    .line 7
    invoke-direct {p0}, Lsmartisan/widget/search/WebSearchAdapter;->initListenerAndClient()V

    .line 8
    new-instance p2, Lsmartisan/widget/search/WebSearchAdapter$TimeoutHandler;

    invoke-direct {p2, p1}, Lsmartisan/widget/search/WebSearchAdapter$TimeoutHandler;-><init>(Lsmartisan/widget/search/WebSearchViewGroup;)V

    iput-object p2, p0, Lsmartisan/widget/search/WebSearchAdapter;->mTimeoutHandler:Lsmartisan/widget/search/WebSearchAdapter$TimeoutHandler;

    return-void
.end method

.method static synthetic access$000(Lsmartisan/widget/search/WebSearchAdapter;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsmartisan/widget/search/WebSearchAdapter;->addNewTaskFlagIfNeed(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lsmartisan/widget/search/WebSearchAdapter;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/search/WebSearchAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lsmartisan/widget/search/WebSearchAdapter;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lsmartisan/widget/search/WebSearchAdapter;->isFirstStarted:Z

    return p0
.end method

.method static synthetic access$202(Lsmartisan/widget/search/WebSearchAdapter;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/search/WebSearchAdapter;->isFirstStarted:Z

    return p1
.end method

.method static synthetic access$300(Lsmartisan/widget/search/WebSearchAdapter;)Lsmartisan/widget/search/WebSearchAdapter$WebViewListenr;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/search/WebSearchAdapter;->mWebViewListenr:Lsmartisan/widget/search/WebSearchAdapter$WebViewListenr;

    return-object p0
.end method

.method static synthetic access$400(Lsmartisan/widget/search/WebSearchAdapter;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lsmartisan/widget/search/WebSearchAdapter;->mFirstPage:Z

    return p0
.end method

.method static synthetic access$402(Lsmartisan/widget/search/WebSearchAdapter;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/search/WebSearchAdapter;->mFirstPage:Z

    return p1
.end method

.method static synthetic access$500(Lsmartisan/widget/search/WebSearchAdapter;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/search/WebSearchAdapter;->mBackView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$600(Lsmartisan/widget/search/WebSearchAdapter;)Landroid/webkit/WebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/search/WebSearchAdapter;->mWebView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$700(Lsmartisan/widget/search/WebSearchAdapter;)Lsmartisan/widget/search/WebSearchAdapter$TimeoutHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/search/WebSearchAdapter;->mTimeoutHandler:Lsmartisan/widget/search/WebSearchAdapter$TimeoutHandler;

    return-object p0
.end method

.method static synthetic access$800(Lsmartisan/widget/search/WebSearchAdapter;)Lsmartisan/widget/search/WebSearchViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/search/WebSearchAdapter;->mWebSearchViewGroup:Lsmartisan/widget/search/WebSearchViewGroup;

    return-object p0
.end method

.method static synthetic access$900(Lsmartisan/widget/search/WebSearchAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsmartisan/widget/search/WebSearchAdapter;->parseTitleFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private addNewTaskFlagIfNeed(Landroid/content/Intent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lsmartisan/InvokeApi$l;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    :cond_0
    const/high16 v0, 0x10000000

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method private initListenerAndClient()V
    .locals 1

    .line 1
    new-instance v0, Lsmartisan/widget/search/WebSearchAdapter$1;

    invoke-direct {v0, p0}, Lsmartisan/widget/search/WebSearchAdapter$1;-><init>(Lsmartisan/widget/search/WebSearchAdapter;)V

    iput-object v0, p0, Lsmartisan/widget/search/WebSearchAdapter;->mDownloadListener:Landroid/webkit/DownloadListener;

    .line 2
    new-instance v0, Lsmartisan/widget/search/WebSearchAdapter$2;

    invoke-direct {v0, p0}, Lsmartisan/widget/search/WebSearchAdapter$2;-><init>(Lsmartisan/widget/search/WebSearchAdapter;)V

    iput-object v0, p0, Lsmartisan/widget/search/WebSearchAdapter;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 3
    new-instance v0, Lsmartisan/widget/search/WebSearchAdapter$3;

    invoke-direct {v0, p0}, Lsmartisan/widget/search/WebSearchAdapter$3;-><init>(Lsmartisan/widget/search/WebSearchAdapter;)V

    iput-object v0, p0, Lsmartisan/widget/search/WebSearchAdapter;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    return-void
.end method

.method private matcherSearchText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    .line 2
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p2, v0}, Ljava/util/regex/Matcher;->end(I)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 6
    invoke-virtual {p2, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    return-object p1
.end method

.method private parseSearchText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "dictionary_youdao"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "baike_baidu"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0xa

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "dictionary_google"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x8

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "search_google"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v1

    goto :goto_1

    :sswitch_4
    const-string v0, "dictionary_iciba"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x7

    goto :goto_1

    :sswitch_5
    const-string v0, "search_sogou"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x5

    goto :goto_1

    :sswitch_6
    const-string v0, "third_zhihu"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0xb

    goto :goto_1

    :sswitch_7
    const-string v0, "third_weibo"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x9

    goto :goto_1

    :sswitch_8
    const-string v0, "third_sogou"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0xc

    goto :goto_1

    :sswitch_9
    const-string v0, "search_360so"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    goto :goto_1

    :sswitch_a
    const-string v0, "dictionary_bing"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_1

    :sswitch_b
    const-string v0, "search_bing"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x3

    goto :goto_1

    :sswitch_c
    const-string v0, "baike_hudong"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x6

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p2, -0x1

    :goto_1
    const/4 v0, 0x0

    const-string v2, "/"

    const-string v3, "&"

    packed-switch p2, :pswitch_data_0

    const-string p2, "w(or)?d="

    .line 2
    invoke-direct {p0, p1, p2, v3}, Lsmartisan/widget/search/WebSearchAdapter;->matcherSearchText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :pswitch_0
    const-string p2, "/item/"

    .line 3
    invoke-direct {p0, p1, p2, v2}, Lsmartisan/widget/search/WebSearchAdapter;->matcherSearchText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    :pswitch_1
    const-string p2, "query="

    .line 5
    invoke-direct {p0, p1, p2, v3}, Lsmartisan/widget/search/WebSearchAdapter;->matcherSearchText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 6
    :pswitch_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    add-int/2addr p2, v1

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, ".html"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v0

    :pswitch_3
    const-string p2, "(wiki|doc)/"

    .line 8
    invoke-direct {p0, p1, p2, v3}, Lsmartisan/widget/search/WebSearchAdapter;->matcherSearchText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :pswitch_4
    const-string p2, "keyword="

    .line 9
    invoke-direct {p0, p1, p2, v3}, Lsmartisan/widget/search/WebSearchAdapter;->matcherSearchText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :pswitch_5
    const-string p2, "q="

    .line 10
    invoke-direct {p0, p1, p2, v3}, Lsmartisan/widget/search/WebSearchAdapter;->matcherSearchText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 11
    :cond_2
    :goto_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "?"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "#"

    .line 12
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "="

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    return-object p2

    :cond_4
    :goto_3
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x233e9834 -> :sswitch_c
        -0x202c3f89 -> :sswitch_b
        -0x175fa5b7 -> :sswitch_a
        0x17f5e7f2 -> :sswitch_9
        0x1a6293d9 -> :sswitch_8
        0x1a966c10 -> :sswitch_7
        0x1ac21070 -> :sswitch_6
        0x1b967f5a -> :sswitch_5
        0x2bcac625 -> :sswitch_4
        0x42c2c8b0 -> :sswitch_3
        0x4ad03602 -> :sswitch_2
        0x51140500 -> :sswitch_1
        0x698a1edc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private parseTitleFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/search/WebSearchAdapter;->mFirstPage:Z

    if-nez v0, :cond_1

    .line 2
    :try_start_0
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchAdapter;->mWebSearchViewGroup:Lsmartisan/widget/search/WebSearchViewGroup;

    invoke-virtual {v0}, Lsmartisan/widget/search/WebSearchViewGroup;->getSearchTypeData()Lsmartisan/widget/search/data/SearchConfigTypeData;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lsmartisan/widget/search/data/SearchConfigTypeData;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 4
    :goto_0
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/search/WebSearchAdapter;->parseSearchText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "UTF-8"

    .line 6
    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getDownloadListener()Landroid/webkit/DownloadListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchAdapter;->mDownloadListener:Landroid/webkit/DownloadListener;

    return-object v0
.end method

.method public getWebChromeClient()Landroid/webkit/WebChromeClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchAdapter;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    return-object v0
.end method

.method public getWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchAdapter;->mWebViewClient:Landroid/webkit/WebViewClient;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    .line 1
    iget-object p1, p0, Lsmartisan/widget/search/WebSearchAdapter;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p2, p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->parseResult(ILandroid/content/Intent;)[Landroid/net/Uri;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lsmartisan/widget/search/WebSearchAdapter;->mUploadMessage:Landroid/webkit/ValueCallback;

    :cond_1
    return-void
.end method

.method public performSearch(Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/search/WebSearchAdapter;->mFirstPage:Z

    .line 2
    iput-boolean p1, p0, Lsmartisan/widget/search/WebSearchAdapter;->isFirstStarted:Z

    return-void
.end method

.method public setWebViewListenr(Lsmartisan/widget/search/WebSearchAdapter$WebViewListenr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/search/WebSearchAdapter;->mWebViewListenr:Lsmartisan/widget/search/WebSearchAdapter$WebViewListenr;

    return-void
.end method
