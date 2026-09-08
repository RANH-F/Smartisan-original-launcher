.class public Lcom/smartisanos/magicflow/view/NewsWebView;
.super Lcom/smartisanos/magicflow/view/BaseView;
.source "NewsWebView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface;
    }
.end annotation


# static fields
.field private static final BILI_HEAD:Ljava/lang/String; = "http://dl.hdslb.com"

.field private static final BILI_PACKAGE:Ljava/lang/String; = "tv.danmaku.bili"

.field private static final JS_INTERFACE_NAME:Ljava/lang/String; = "mWebViewImageListener"

.field private static final SINA_HEAD:Ljava/lang/String; = "http://down.apps.sina.cn"

.field private static final SINA_PACKAGE:Ljava/lang/String; = "com.sina.weibo"

.field private static final SMARTISAN_READER:Ljava/lang/String; = "app.s-reader.com"

.field public static final TYPE_NEWS_READ_LATER:I = 0x1

.field public static final TYPE_NEWS_STREAM:I


# instance fields
.field private assetCacheMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private isAd:Z

.field private isFromSmartisanReader:Z

.field private isPageFinished:Z

.field private log:Lcom/smartisanos/magicflow/LOG;

.field private mButtonBack:Landroid/widget/ImageView;

.field private mButtonCollection:Landroid/widget/ImageView;

.field private mButtonShare:Landroid/widget/ImageView;

.field private mCategory:I

.field private mFullscreenVideoView:Landroid/view/View;

.field private mImageurls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mItemInfo:Lcom/smartisanos/magicflow/h/l;

.field private mNewsSourCeType:I

.field private mNoNetwork:Lcom/smartisanos/magicflow/view/NoNetworkView;

.field private mTitle:Lsmartisan/widget/TitleBar;

.field private mUrl:Ljava/lang/String;

.field private final mVideoContainer:Landroid/widget/FrameLayout;

.field private mWebChromeClient:Landroid/webkit/WebChromeClient;

.field private mWebViewClient:Landroid/webkit/WebViewClient;

.field private mWebview:Landroid/webkit/WebView;

.field private mWebviewLayout:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/smartisanos/magicflow/h/l;IZZ)V
    .locals 1

    const p4, 0x7f0b0089

    .line 1
    invoke-direct {p0, p1, p4}, Lcom/smartisanos/magicflow/view/BaseView;-><init>(Landroid/content/Context;I)V

    .line 2
    const-class p1, Lcom/smartisanos/magicflow/view/NewsWebView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->log:Lcom/smartisanos/magicflow/LOG;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->isPageFinished:Z

    .line 4
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->assetCacheMap:Ljava/util/Map;

    .line 5
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->isFromSmartisanReader:Z

    .line 6
    new-instance p4, Lcom/smartisanos/magicflow/view/NewsWebView$6;

    invoke-direct {p4, p0}, Lcom/smartisanos/magicflow/view/NewsWebView$6;-><init>(Lcom/smartisanos/magicflow/view/NewsWebView;)V

    iput-object p4, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 7
    new-instance p4, Lcom/smartisanos/magicflow/view/NewsWebView$7;

    invoke-direct {p4, p0}, Lcom/smartisanos/magicflow/view/NewsWebView$7;-><init>(Lcom/smartisanos/magicflow/view/NewsWebView;)V

    iput-object p4, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 8
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mImageurls:Ljava/util/List;

    .line 9
    iput-object p2, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mItemInfo:Lcom/smartisanos/magicflow/h/l;

    .line 10
    iput p3, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mCategory:I

    .line 11
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/NewsWebView;->checkCategory()V

    .line 12
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const p3, 0x7f080373

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lsmartisan/widget/TitleBar;

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mTitle:Lsmartisan/widget/TitleBar;

    .line 13
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const p3, 0x7f08018b

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/webkit/WebView;

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mWebview:Landroid/webkit/WebView;

    .line 14
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const p3, 0x7f080381

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mWebviewLayout:Landroid/widget/FrameLayout;

    .line 15
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const p3, 0x7f080385

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/smartisanos/magicflow/view/NoNetworkView;

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mNoNetwork:Lcom/smartisanos/magicflow/view/NoNetworkView;

    .line 16
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const p3, 0x7f080370

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mVideoContainer:Landroid/widget/FrameLayout;

    .line 17
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mTitle:Lsmartisan/widget/TitleBar;

    sget p3, Lsmartisan/widget/TitleBar;->BACK_ICON_RES:I

    invoke-virtual {p2, p3}, Lsmartisan/widget/TitleBar;->addLeftImageView(I)Landroid/widget/ImageView;

    move-result-object p2

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mButtonBack:Landroid/widget/ImageView;

    .line 18
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mTitle:Lsmartisan/widget/TitleBar;

    const/4 p3, 0x1

    const p4, 0x7f070360

    invoke-virtual {p2, p4, p3}, Lsmartisan/widget/TitleBar;->addRightImageView(II)Landroid/widget/ImageView;

    move-result-object p2

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mButtonShare:Landroid/widget/ImageView;

    .line 19
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->log:Lcom/smartisanos/magicflow/LOG;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NewsWebView from="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mCategory:I

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 20
    iget p2, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mCategory:I

    const/4 p4, 0x2

    if-nez p2, :cond_0

    .line 21
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mTitle:Lsmartisan/widget/TitleBar;

    const p3, 0x7f0704a6

    invoke-virtual {p2, p3, p4}, Lsmartisan/widget/TitleBar;->addRightImageView(II)Landroid/widget/ImageView;

    move-result-object p2

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mButtonCollection:Landroid/widget/ImageView;

    goto :goto_0

    :cond_0
    if-ne p3, p2, :cond_1

    .line 22
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mTitle:Lsmartisan/widget/TitleBar;

    const p3, 0x7f0704a7

    invoke-virtual {p2, p3, p4}, Lsmartisan/widget/TitleBar;->addRightImageView(II)Landroid/widget/ImageView;

    move-result-object p2

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mButtonCollection:Landroid/widget/ImageView;

    .line 23
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mButtonShare:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 24
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mButtonCollection:Landroid/widget/ImageView;

    if-eqz p5, :cond_2

    goto :goto_1

    :cond_2
    const/16 p1, 0x8

    :goto_1
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 25
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mButtonBack:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mButtonShare:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mButtonCollection:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mNoNetwork:Lcom/smartisanos/magicflow/view/NoNetworkView;

    new-instance p2, Lcom/smartisanos/magicflow/view/NewsWebView$1;

    invoke-direct {p2, p0}, Lcom/smartisanos/magicflow/view/NewsWebView$1;-><init>(Lcom/smartisanos/magicflow/view/NewsWebView;)V

    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/view/NoNetworkView;->setButtonClickListener(Lcom/smartisanos/magicflow/view/card/news/NoNetWorkButtonClickListener;)V

    .line 29
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/NewsWebView;->initWebView()V

    .line 30
    iget-boolean p1, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->isAd:Z

    if-nez p1, :cond_3

    .line 31
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/NewsWebView;->initAssetsMap()V

    :cond_3
    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/magicflow/view/NewsWebView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->isPageFinished:Z

    return p0
.end method

.method static synthetic access$002(Lcom/smartisanos/magicflow/view/NewsWebView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->isPageFinished:Z

    return p1
.end method

.method static synthetic access$100(Lcom/smartisanos/magicflow/view/NewsWebView;)Lcom/smartisanos/magicflow/view/NoNetworkView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mNoNetwork:Lcom/smartisanos/magicflow/view/NoNetworkView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/smartisanos/magicflow/view/NewsWebView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->isFromSmartisanReader:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/smartisanos/magicflow/view/NewsWebView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->isFromSmartisanReader:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/smartisanos/magicflow/view/NewsWebView;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mButtonCollection:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/smartisanos/magicflow/view/NewsWebView;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mButtonShare:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/smartisanos/magicflow/view/NewsWebView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->isAd:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/smartisanos/magicflow/view/NewsWebView;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->assetCacheMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/smartisanos/magicflow/view/NewsWebView;Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/magicflow/view/NewsWebView;->showCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/smartisanos/magicflow/view/NewsWebView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/NewsWebView;->hideCustomView()V

    return-void
.end method

.method static synthetic access$1700(Lcom/smartisanos/magicflow/view/NewsWebView;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mImageurls:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/smartisanos/magicflow/view/NewsWebView;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mImageurls:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/smartisanos/magicflow/view/NewsWebView;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/smartisanos/magicflow/view/NewsWebView;)Landroid/webkit/WebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mWebview:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/smartisanos/magicflow/view/NewsWebView;)Lcom/smartisanos/magicflow/LOG;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->log:Lcom/smartisanos/magicflow/LOG;

    return-object p0
.end method

.method static synthetic access$500(Lcom/smartisanos/magicflow/view/NewsWebView;)Lcom/smartisanos/magicflow/h/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mItemInfo:Lcom/smartisanos/magicflow/h/l;

    return-object p0
.end method

.method static synthetic access$600(Lcom/smartisanos/magicflow/view/NewsWebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/magicflow/view/NewsWebView;->showDownDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/smartisanos/magicflow/view/NewsWebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/magicflow/view/NewsWebView;->startDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/smartisanos/magicflow/view/NewsWebView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/NewsWebView;->onBack()V

    return-void
.end method

.method static synthetic access$900(Lcom/smartisanos/magicflow/view/NewsWebView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/NewsWebView;->setNetworkViewState()V

    return-void
.end method

.method private checkCategory()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mCategory:I

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/magicflow/l/a;->d()Lcom/smartisanos/magicflow/l/a;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mItemInfo:Lcom/smartisanos/magicflow/h/l;

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/l/a;->b(Lcom/smartisanos/magicflow/h/l;)Z

    move-result v0

    iput v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mCategory:I

    :cond_0
    return-void
.end method

.method private hideCustomView()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/NewsWebView;->quitFullScreen()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mVideoContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setKeepScreenOn(Z)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mVideoContainer:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mVideoContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mFullscreenVideoView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mFullscreenVideoView:Landroid/view/View;

    .line 6
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 7
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v1}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 8
    iput-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-void
.end method

.method private initAssetsMap()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->assetCacheMap:Ljava/util/Map;

    const-string v1, "zepto.min.js"

    const-string v2, "js/zepto.min.js"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->assetCacheMap:Ljava/util/Map;

    const-string v1, "image.js"

    const-string v2, "js/image.js"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->assetCacheMap:Ljava/util/Map;

    const-string v1, "app.js"

    const-string v2, "js/app.js"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->assetCacheMap:Ljava/util/Map;

    const-string v1, "jquery_highlight.js"

    const-string v2, "js/jquery_highlight.js"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private initWebView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mItemInfo:Lcom/smartisanos/magicflow/h/l;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mWebview:Landroid/webkit/WebView;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/view/NewsWebView;->setWebViewConfig(Landroid/webkit/WebSettings;)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mWebview:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mWebview:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mItemInfo:Lcom/smartisanos/magicflow/h/l;

    iget-object v0, v0, Lcom/smartisanos/magicflow/h/l;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->isAd:Z

    .line 8
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mItemInfo:Lcom/smartisanos/magicflow/h/l;

    iget-object v0, v0, Lcom/smartisanos/magicflow/h/l;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mUrl:Ljava/lang/String;

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mItemInfo:Lcom/smartisanos/magicflow/h/l;

    iget-object v0, v0, Lcom/smartisanos/magicflow/h/l;->r:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/view/NewsWebView;->replaceUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mUrl:Ljava/lang/String;

    .line 10
    :goto_0
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->isAd:Z

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mButtonShare:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mButtonCollection:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mWebview:Landroid/webkit/WebView;

    new-instance v1, Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface;

    invoke-direct {v1, p0}, Lcom/smartisanos/magicflow/view/NewsWebView$ImageInterface;-><init>(Lcom/smartisanos/magicflow/view/NewsWebView;)V

    const-string v2, "mWebViewImageListener"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mWebview:Landroid/webkit/WebView;

    new-instance v1, Lcom/smartisanos/magicflow/view/NewsWebView$2;

    invoke-direct {v1, p0}, Lcom/smartisanos/magicflow/view/NewsWebView$2;-><init>(Lcom/smartisanos/magicflow/view/NewsWebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 15
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mWebview:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private onBack()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/NewsWebView;->canBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/magicflow/b;->j()Lcom/smartisanos/magicflow/view/MagicFlowActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/MagicFlowActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method private quitFullScreen()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 3
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, -0x401

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    return-void
.end method

.method private replaceUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    const-string v0, "http://"

    const-string v1, "https://"

    .line 2
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private setFullScreen()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    return-void
.end method

.method private setNetworkViewState()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mNoNetwork:Lcom/smartisanos/magicflow/view/NoNetworkView;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/j;->g(Landroid/content/Context;)Z

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mNoNetwork:Lcom/smartisanos/magicflow/view/NoNetworkView;

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    invoke-virtual {v1, v2}, Lcom/smartisanos/magicflow/view/NoNetworkView;->setNoNetworkState(I)V

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/j;->n(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method private setWebViewConfig(Landroid/webkit/WebSettings;)V
    .locals 2

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 3
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 4
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    const/16 v0, 0x64

    .line 5
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_0
    return-void
.end method

.method private showCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/NewsWebView;->setFullScreen()V

    .line 2
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mFullscreenVideoView:Landroid/view/View;

    .line 3
    iput-object p2, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mWebview:Landroid/webkit/WebView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mVideoContainer:Landroid/widget/FrameLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mVideoContainer:Landroid/widget/FrameLayout;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setKeepScreenOn(Z)V

    .line 7
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x1

    const/16 v0, 0x10

    invoke-direct {p1, p2, p2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 8
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mVideoContainer:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mFullscreenVideoView:Landroid/view/View;

    invoke-virtual {p2, v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private showDownDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    const v2, 0x103012b

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d0126

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d0125

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d011b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/smartisanos/magicflow/view/NewsWebView$3;

    invoke-direct {v2, p0}, Lcom/smartisanos/magicflow/view/NewsWebView$3;-><init>(Lcom/smartisanos/magicflow/view/NewsWebView;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d0124

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/smartisanos/magicflow/view/NewsWebView$4;

    invoke-direct {v2, p0, p1, p2}, Lcom/smartisanos/magicflow/view/NewsWebView$4;-><init>(Lcom/smartisanos/magicflow/view/NewsWebView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7
    new-instance p1, Lcom/smartisanos/magicflow/view/NewsWebView$5;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/view/NewsWebView$5;-><init>(Lcom/smartisanos/magicflow/view/NewsWebView;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 8
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private startDownload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string p2, ""

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    const-string v1, "download"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 3
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 4
    new-instance v2, Landroid/app/DownloadManager$Request;

    invoke-direct {v2, p1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 5
    invoke-virtual {v2, v1, p2}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    const/4 p1, 0x1

    .line 6
    invoke-virtual {v2, p1}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    const-string p2, "application/vnd.android.package-archive"

    .line 7
    invoke-virtual {v2, p2}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 8
    invoke-virtual {v2}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    .line 9
    invoke-virtual {v2, p1}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    .line 10
    invoke-virtual {v0, v2}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide p1

    .line 11
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->log:Lcom/smartisanos/magicflow/LOG;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dManager.enqueue(request) refernece = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private updateTitleByFrom(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mButtonCollection:Landroid/widget/ImageView;

    const v0, 0x7f0704a6

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mButtonCollection:Landroid/widget/ImageView;

    const v0, 0x7f0704a7

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public canBack()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->isAd:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mFullscreenVideoView:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/NewsWebView;->hideCustomView()V

    return v2

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mUrl:Ljava/lang/String;

    const-string v3, "app.s-reader.com"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mWebview:Landroid/webkit/WebView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mButtonCollection:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mButtonShare:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    return v2

    :cond_4
    return v1
.end method

.method public destroyWebview()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "---destroyWebView---"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mButtonShare:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mButtonBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mButtonCollection:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mNoNetwork:Lcom/smartisanos/magicflow/view/NoNetworkView;

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/view/NoNetworkView;->setButtonClickListener(Lcom/smartisanos/magicflow/view/card/news/NoNetWorkButtonClickListener;)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mWebviewLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 7
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mWebview:Landroid/webkit/WebView;

    if-eqz v0, :cond_2

    const-string v2, "mWebViewImageListener"

    .line 9
    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 11
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 12
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 13
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 14
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 15
    iput-object v1, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 16
    iput-object v1, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 17
    iput-object v1, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mWebview:Landroid/webkit/WebView;

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->assetCacheMap:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 19
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 20
    iput-object v1, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->assetCacheMap:Ljava/util/Map;

    .line 21
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mImageurls:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 22
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 23
    iput-object v1, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mImageurls:Ljava/util/List;

    :cond_4
    return-void
.end method

.method public onAdd()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mWebview:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 3
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/NewsWebView;->setNetworkViewState()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mButtonBack:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/NewsWebView;->onBack()V

    goto/16 :goto_2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mButtonShare:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_7

    .line 5
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object p1

    iget v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mNewsSourCeType:I

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/c;->j(I)V

    .line 6
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mItemInfo:Lcom/smartisanos/magicflow/h/l;

    iget-object v1, v1, Lcom/smartisanos/magicflow/h/l;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->isFromSmartisanReader:Z

    if-eqz v2, :cond_1

    const v2, 0x7f0d0247

    goto :goto_0

    :cond_1
    const v2, 0x7f0d0246

    .line 7
    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mItemInfo:Lcom/smartisanos/magicflow/h/l;

    iget-object v1, v1, Lcom/smartisanos/magicflow/h/l;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {p1, v0}, Lcom/smartisanos/magicflow/o/n;->i(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mButtonCollection:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_7

    .line 10
    iget p1, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mCategory:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez p1, :cond_4

    invoke-virtual {v0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 11
    iget p1, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mNewsSourCeType:I

    if-eq p1, v1, :cond_3

    .line 12
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object p1

    iget v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mNewsSourCeType:I

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/c;->g(I)V

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mItemInfo:Lcom/smartisanos/magicflow/h/l;

    invoke-static {p1}, Lcom/smartisanos/magicflow/l/a;->c(Lcom/smartisanos/magicflow/h/l;)V

    .line 14
    iput v2, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mCategory:I

    goto :goto_1

    .line 15
    :cond_4
    iget p1, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mCategory:I

    if-ne v2, p1, :cond_6

    .line 16
    iget p1, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mNewsSourCeType:I

    if-ne p1, v1, :cond_5

    .line 17
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object p1

    iget v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mNewsSourCeType:I

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/c;->g(I)V

    .line 18
    :cond_5
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mItemInfo:Lcom/smartisanos/magicflow/h/l;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/smartisanos/magicflow/l/a;->a(Lcom/smartisanos/magicflow/h/l;Z)V

    .line 19
    iput v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mCategory:I

    .line 20
    :cond_6
    :goto_1
    iget p1, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mCategory:I

    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/NewsWebView;->updateTitleByFrom(I)V

    :cond_7
    :goto_2
    return-void
.end method

.method public onExit()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/smartisanos/magicflow/view/BaseView;->onExit()V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/NewsWebView;->destroyWebview()V

    return-void
.end method

.method public onRemove()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mWebview:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    :cond_0
    return-void
.end method

.method public setNewsSourceType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/magicflow/view/NewsWebView;->mNewsSourCeType:I

    return-void
.end method
