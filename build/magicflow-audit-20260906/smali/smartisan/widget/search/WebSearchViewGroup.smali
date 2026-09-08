.class public Lsmartisan/widget/search/WebSearchViewGroup;
.super Landroid/widget/RelativeLayout;
.source "WebSearchViewGroup.java"

# interfaces
.implements Lsmartisan/widget/search/WebSearchAdapter$WebViewListenr;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/widget/search/WebSearchViewGroup$CallbackWrapper;,
        Lsmartisan/widget/search/WebSearchViewGroup$TrackerCallback;
    }
.end annotation


# static fields
.field private static final BLANK_PAGE:Ljava/lang/String; = "about:blank"

.field private static final IS_NEED_LOADURL:Ljava/lang/String; = "is_need_loadurl"

.field private static final TAG:Ljava/lang/String; = "WebSearchViewGroup"

.field public static final TYPE_GOOGLE_TRANSLATE:Ljava/lang/String; = "dictionary_google"

.field public static final sSearchEngineResMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdapter:Lsmartisan/widget/search/WebSearch;

.field private mBottomPanel:Lsmartisan/widget/search/ImageNavigation;

.field private mBrowserIcon:Landroid/widget/ImageView;

.field private mCheckedIndex:I

.field private mConfig:Lsmartisan/widget/search/data/GloableSearchConfig;

.field private mContext:Landroid/content/Context;

.field private mIsAutoFinishAfterGoBrowser:Z

.field private mIsAutoFinishAfterSetting:Z

.field private mIsNeedLoadUrl:Z

.field private mIsRecordCheckedIndex:Z

.field protected mNetworkLayout:Lsmartisan/widget/search/NetworkView;

.field private mRadioFrameLayout:Lsmartisan/widget/search/RadioFrameLayout;

.field protected mSearchText:Ljava/lang/String;

.field private mTopPanel:Lsmartisan/widget/search/ImageNavigation;

.field private mTrackerCallback:Lsmartisan/widget/search/WebSearchViewGroup$TrackerCallback;

.field protected mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsmartisan/widget/search/WebSearchViewGroup;->sSearchEngineResMap:Ljava/util/HashMap;

    .line 2
    sget-object v0, Lsmartisan/widget/search/WebSearchViewGroup;->sSearchEngineResMap:Ljava/util/HashMap;

    const-string v1, "com.UCMobile"

    const-string v2, "boom_win_browser_uc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lsmartisan/widget/search/WebSearchViewGroup;->sSearchEngineResMap:Ljava/util/HashMap;

    const-string v1, "com.tencent.mtt"

    const-string v2, "boom_win_browser_qq"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lsmartisan/widget/search/WebSearchViewGroup;->sSearchEngineResMap:Ljava/util/HashMap;

    const-string v1, "com.baidu.searchbox"

    const-string v2, "boom_win_browser_baidu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lsmartisan/widget/search/WebSearchViewGroup;->sSearchEngineResMap:Ljava/util/HashMap;

    const-string v1, "com.qihoo.browser"

    const-string v2, "boom_win_browser_360"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lsmartisan/widget/search/WebSearchViewGroup;->sSearchEngineResMap:Ljava/util/HashMap;

    const-string v1, "com.android.chrome"

    const-string v2, "boom_win_browser_chrome"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lsmartisan/widget/search/WebSearchViewGroup;->sSearchEngineResMap:Ljava/util/HashMap;

    const-string v1, "com.oupeng.browser"

    const-string v2, "boom_win_browser_oupeng"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lsmartisan/widget/search/WebSearchViewGroup;->sSearchEngineResMap:Ljava/util/HashMap;

    const-string v1, "sogou.mobile.explorer"

    const-string v2, "boom_win_browser_sogou"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v0, Lsmartisan/widget/search/WebSearchViewGroup;->sSearchEngineResMap:Ljava/util/HashMap;

    const-string v1, "com.ijinshan.browser_fast"

    const-string v2, "boom_win_browser_liebao"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/search/WebSearchViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 3
    iput-boolean p2, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mIsNeedLoadUrl:Z

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mSearchText:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mCheckedIndex:I

    .line 6
    iput-boolean v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mIsRecordCheckedIndex:Z

    .line 7
    iput-boolean p2, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mIsAutoFinishAfterSetting:Z

    .line 8
    iput-boolean p2, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mIsAutoFinishAfterGoBrowser:Z

    .line 9
    iput-object p1, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mContext:Landroid/content/Context;

    .line 10
    iget-object p1, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lsmartisan/widget/R$layout;->web_search_view_group:I

    invoke-virtual {p1, v0, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 11
    sget p1, Lsmartisan/widget/R$id;->top_panel:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisan/widget/search/ImageNavigation;

    iput-object p1, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mTopPanel:Lsmartisan/widget/search/ImageNavigation;

    .line 12
    sget p1, Lsmartisan/widget/R$id;->bottom_panel:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisan/widget/search/ImageNavigation;

    iput-object p1, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mBottomPanel:Lsmartisan/widget/search/ImageNavigation;

    .line 13
    sget p1, Lsmartisan/widget/R$id;->search_webview:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mWebView:Landroid/webkit/WebView;

    .line 14
    sget p1, Lsmartisan/widget/R$id;->network_view:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisan/widget/search/NetworkView;

    iput-object p1, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mNetworkLayout:Lsmartisan/widget/search/NetworkView;

    .line 15
    iget-object p1, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mNetworkLayout:Lsmartisan/widget/search/NetworkView;

    invoke-virtual {p1}, Lsmartisan/widget/search/NetworkView;->getRefreshBtn()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object p1, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mTopPanel:Lsmartisan/widget/search/ImageNavigation;

    sget p2, Lsmartisan/widget/R$id;->goto_browser:I

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mBrowserIcon:Landroid/widget/ImageView;

    .line 17
    iget-object p1, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mBrowserIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lsmartisan/widget/R$dimen;->web_search_browser_icon_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 19
    iget-object p2, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mTopPanel:Lsmartisan/widget/search/ImageNavigation;

    invoke-virtual {p2, p1, p1}, Lsmartisan/widget/search/ImageNavigation;->setRightImageWidthAndHeight(II)V

    .line 20
    iget-object p1, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mTopPanel:Lsmartisan/widget/search/ImageNavigation;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lsmartisan/widget/R$string;->web_search_title:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lsmartisan/widget/search/ImageNavigation;->setTitleText(Ljava/lang/String;)V

    .line 21
    iget-object p1, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mBottomPanel:Lsmartisan/widget/search/ImageNavigation;

    sget p2, Lsmartisan/widget/R$drawable;->boom_win_go_back:I

    invoke-virtual {p1, p2}, Lsmartisan/widget/search/ImageNavigation;->setLeftImageViewRes(I)V

    .line 22
    iget-object p1, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mBottomPanel:Lsmartisan/widget/search/ImageNavigation;

    sget p2, Lsmartisan/widget/R$drawable;->boom_win_setting:I

    invoke-virtual {p1, p2}, Lsmartisan/widget/search/ImageNavigation;->setRightImageViewRes(I)V

    .line 23
    iget-object p1, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mBottomPanel:Lsmartisan/widget/search/ImageNavigation;

    new-instance p2, Lsmartisan/widget/search/WebSearchViewGroup$1;

    invoke-direct {p2, p0}, Lsmartisan/widget/search/WebSearchViewGroup$1;-><init>(Lsmartisan/widget/search/WebSearchViewGroup;)V

    invoke-virtual {p1, p2}, Lsmartisan/widget/search/ImageNavigation;->setLeftImageViewClickLisener(Landroid/view/View$OnClickListener;)V

    .line 24
    iget-object p1, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mBottomPanel:Lsmartisan/widget/search/ImageNavigation;

    new-instance p2, Lsmartisan/widget/search/WebSearchViewGroup$2;

    invoke-direct {p2, p0}, Lsmartisan/widget/search/WebSearchViewGroup$2;-><init>(Lsmartisan/widget/search/WebSearchViewGroup;)V

    invoke-virtual {p1, p2}, Lsmartisan/widget/search/ImageNavigation;->setRightImageViewClickLisener(Landroid/view/View$OnClickListener;)V

    .line 25
    invoke-direct {p0}, Lsmartisan/widget/search/WebSearchViewGroup;->initWebView()V

    return-void
.end method

.method static synthetic access$000(Lsmartisan/widget/search/WebSearchViewGroup;)Lsmartisan/widget/search/WebSearchViewGroup$TrackerCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mTrackerCallback:Lsmartisan/widget/search/WebSearchViewGroup$TrackerCallback;

    return-object p0
.end method

.method static synthetic access$100(Lsmartisan/widget/search/WebSearchViewGroup;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lsmartisan/widget/search/WebSearchViewGroup;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mIsAutoFinishAfterSetting:Z

    return p0
.end method

.method static synthetic access$300(Lsmartisan/widget/search/WebSearchViewGroup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/search/WebSearchViewGroup;->performSearch()V

    return-void
.end method

.method private getOriUrl()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mRadioFrameLayout:Lsmartisan/widget/search/RadioFrameLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mSearchText:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mRadioFrameLayout:Lsmartisan/widget/search/RadioFrameLayout;

    invoke-virtual {v1}, Lsmartisan/widget/search/RadioFrameLayout;->getSearchTypeData()Lsmartisan/widget/search/data/SearchConfigTypeData;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {v1}, Lsmartisan/widget/search/data/SearchConfigTypeData;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    const-string v3, "dictionary_google"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v1}, Lsmartisan/widget/search/data/SearchConfigTypeData;->getClickUrl()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "zh-CN/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6
    :cond_1
    invoke-virtual {v1}, Lsmartisan/widget/search/data/SearchConfigTypeData;->getClickUrl()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 7
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://m.baidu.com/s?word="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&from=1013377a"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private gotoBrowser()V
    .locals 8

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mContext:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mIsAutoFinishAfterGoBrowser:Z

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 3
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-direct {p0}, Lsmartisan/widget/search/WebSearchViewGroup;->getOriUrl()Ljava/lang/String;

    move-result-object v0

    .line 8
    :cond_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 9
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.VIEW"

    .line 10
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.android.browser"

    .line 11
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 13
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    move v3, v2

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v3

    :goto_0
    const/4 v4, 0x1

    if-le v3, v4, :cond_5

    .line 15
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    if-ge v2, v3, :cond_4

    .line 16
    invoke-virtual {v0, v2}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v5

    .line 17
    invoke-virtual {v5}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v6

    const-string v7, "about:blank"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 18
    invoke-virtual {v5}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 19
    :cond_4
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v0

    const-string v2, "currentItemIndex"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "shareHistory"

    .line 20
    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 21
    :cond_5
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 22
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mTrackerCallback:Lsmartisan/widget/search/WebSearchViewGroup$TrackerCallback;

    if-eqz v0, :cond_6

    .line 23
    invoke-interface {v0}, Lsmartisan/widget/search/WebSearchViewGroup$TrackerCallback;->onBrowserClick()V

    :cond_6
    return-void
.end method

.method private initWebView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 4
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    const/4 v2, 0x2

    .line 5
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 6
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->supportZoom()Z

    .line 7
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 9
    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->TEXT_AUTOSIZING:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 10
    new-instance v0, Lsmartisan/widget/search/WebSearchAdapter;

    iget-object v1, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lsmartisan/widget/search/WebSearchAdapter;-><init>(Lsmartisan/widget/search/WebSearchViewGroup;Landroid/content/Context;)V

    iput-object v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mAdapter:Lsmartisan/widget/search/WebSearch;

    .line 11
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mAdapter:Lsmartisan/widget/search/WebSearch;

    check-cast v0, Lsmartisan/widget/search/WebSearchAdapter;

    invoke-virtual {v0, p0}, Lsmartisan/widget/search/WebSearchAdapter;->setWebViewListenr(Lsmartisan/widget/search/WebSearchAdapter$WebViewListenr;)V

    .line 12
    invoke-direct {p0}, Lsmartisan/widget/search/WebSearchViewGroup;->setupWebView()V

    return-void
.end method

.method private needReloadUrl()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mAdapter:Lsmartisan/widget/search/WebSearch;

    instance-of v1, v0, Lsmartisan/widget/search/WebSearchAdapter;

    if-eqz v1, :cond_1

    check-cast v0, Lsmartisan/widget/search/WebSearchAdapter;

    iget-boolean v0, v0, Lsmartisan/widget/search/WebSearchAdapter;->mOverrideUrl:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private performSearch()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mIsNeedLoadUrl:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 3
    invoke-direct {p0}, Lsmartisan/widget/search/WebSearchViewGroup;->getOriUrl()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mAdapter:Lsmartisan/widget/search/WebSearch;

    invoke-interface {v1, v0}, Lsmartisan/widget/search/WebSearch;->performSearch(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mTrackerCallback:Lsmartisan/widget/search/WebSearchViewGroup$TrackerCallback;

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {v1, v0}, Lsmartisan/widget/search/WebSearchViewGroup$TrackerCallback;->onLoadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setupRadioFrameView()V
    .locals 2

    .line 1
    new-instance v0, Lsmartisan/widget/search/RadioFrameLayout;

    iget-object v1, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lsmartisan/widget/search/RadioFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mRadioFrameLayout:Lsmartisan/widget/search/RadioFrameLayout;

    .line 2
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mRadioFrameLayout:Lsmartisan/widget/search/RadioFrameLayout;

    iget-object v1, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mConfig:Lsmartisan/widget/search/data/GloableSearchConfig;

    invoke-virtual {v0, v1}, Lsmartisan/widget/search/RadioFrameLayout;->init(Lsmartisan/widget/search/data/GloableSearchConfig;)V

    .line 3
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mRadioFrameLayout:Lsmartisan/widget/search/RadioFrameLayout;

    new-instance v1, Lsmartisan/widget/search/WebSearchViewGroup$3;

    invoke-direct {v1, p0}, Lsmartisan/widget/search/WebSearchViewGroup$3;-><init>(Lsmartisan/widget/search/WebSearchViewGroup;)V

    invoke-virtual {v0, v1}, Lsmartisan/widget/search/RadioFrameLayout;->setOnCheckedChangedListener(Lsmartisan/widget/search/RadioFrameLayout$OnCheckedChangedListener;)V

    .line 4
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mBottomPanel:Lsmartisan/widget/search/ImageNavigation;

    iget-object v1, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mRadioFrameLayout:Lsmartisan/widget/search/RadioFrameLayout;

    invoke-virtual {v0, v1}, Lsmartisan/widget/search/ImageNavigation;->setView(Landroid/view/View;)V

    return-void
.end method

.method private setupWebView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mAdapter:Lsmartisan/widget/search/WebSearch;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mWebView:Landroid/webkit/WebView;

    invoke-interface {v0}, Lsmartisan/widget/search/WebSearch;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 3
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mAdapter:Lsmartisan/widget/search/WebSearch;

    invoke-interface {v1}, Lsmartisan/widget/search/WebSearch;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 4
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mAdapter:Lsmartisan/widget/search/WebSearch;

    invoke-interface {v1}, Lsmartisan/widget/search/WebSearch;->getDownloadListener()Landroid/webkit/DownloadListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    :cond_0
    return-void
.end method

.method private updateBrowserIcon()V
    .locals 6

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "http"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "*"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v2, 0x10000

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 5
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    :try_start_0
    const-string v2, "smartisanos"

    .line 6
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mBrowserIcon:Landroid/widget/ImageView;

    sget v1, Lsmartisan/widget/R$drawable;->boom_win_browser_smartisan:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-void

    .line 8
    :cond_0
    sget-object v2, Lsmartisan/widget/search/WebSearchViewGroup;->sSearchEngineResMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 9
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 10
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "drawable"

    iget-object v3, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    .line 11
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, v4}, Lsmartisanos/util/NameAvatarController;->getCircleBitmap(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mBrowserIcon:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void

    :cond_3
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 14
    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_4

    .line 15
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, v4}, Lsmartisanos/util/NameAvatarController;->getCircleBitmap(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 16
    iget-object v1, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mBrowserIcon:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public checkNetwork()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lsmartisan/util/Utils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lsmartisan/widget/search/WebSearchViewGroup;->needReloadUrl()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lsmartisan/widget/search/WebSearchViewGroup;->showNetworkView(I)V

    .line 4
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mWebView:Landroid/webkit/WebView;

    invoke-direct {p0}, Lsmartisan/widget/search/WebSearchViewGroup;->getOriUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lsmartisan/widget/search/WebSearchViewGroup;->showNetworkView(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getBackImageView()Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mBottomPanel:Lsmartisan/widget/search/ImageNavigation;

    invoke-virtual {v0}, Lsmartisan/widget/search/ImageNavigation;->getLeftImageView()Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public getCheckedIndex()I
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mRadioFrameLayout:Lsmartisan/widget/search/RadioFrameLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lsmartisan/widget/search/RadioFrameLayout;->getCheckedIndex()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getSearchText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mSearchText:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchTypeData()Lsmartisan/widget/search/data/SearchConfigTypeData;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mRadioFrameLayout:Lsmartisan/widget/search/RadioFrameLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lsmartisan/widget/search/RadioFrameLayout;->getSearchTypeData()Lsmartisan/widget/search/data/SearchConfigTypeData;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSearchTypeDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsmartisan/widget/search/data/SearchConfigTypeData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mRadioFrameLayout:Lsmartisan/widget/search/RadioFrameLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lsmartisan/widget/search/RadioFrameLayout;->getTypeDataList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getTitle()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mTopPanel:Lsmartisan/widget/search/ImageNavigation;

    invoke-virtual {v0}, Lsmartisan/widget/search/ImageNavigation;->getMidView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public hideNetworkView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mNetworkLayout:Lsmartisan/widget/search/NetworkView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public isAutoFinishAfterGoBrowser()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mIsAutoFinishAfterGoBrowser:Z

    return v0
.end method

.method public isAutoFinishAfterSetting()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mIsAutoFinishAfterSetting:Z

    return v0
.end method

.method public isRecordCheckedIndex()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mIsRecordCheckedIndex:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mAdapter:Lsmartisan/widget/search/WebSearch;

    invoke-interface {v0, p1, p2, p3}, Lsmartisan/widget/search/WebSearch;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mNetworkLayout:Lsmartisan/widget/search/NetworkView;

    invoke-virtual {v0}, Lsmartisan/widget/search/NetworkView;->getRefreshBtn()Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 2
    iget-object p1, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mTrackerCallback:Lsmartisan/widget/search/WebSearchViewGroup$TrackerCallback;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lsmartisan/widget/search/WebSearchViewGroup$TrackerCallback;->onRefreshClick()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lsmartisan/widget/search/WebSearchViewGroup;->checkNetwork()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mBrowserIcon:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    .line 6
    invoke-direct {p0}, Lsmartisan/widget/search/WebSearchViewGroup;->gotoBrowser()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 4
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 5
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 6
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V

    .line 7
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 8
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mWebView:Landroid/webkit/WebView;

    return-void
.end method

.method public onPageFinished(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mTrackerCallback:Lsmartisan/widget/search/WebSearchViewGroup$TrackerCallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lsmartisan/widget/search/WebSearchViewGroup$TrackerCallback;->onPageFinished(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPageFinishedSuccess()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mTrackerCallback:Lsmartisan/widget/search/WebSearchViewGroup$TrackerCallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lsmartisan/widget/search/WebSearchViewGroup$TrackerCallback;->onPageFinishedSuccess()V

    :cond_0
    return-void
.end method

.method public onPageFirstStart(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mTrackerCallback:Lsmartisan/widget/search/WebSearchViewGroup$TrackerCallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lsmartisan/widget/search/WebSearchViewGroup$TrackerCallback;->onPageFirstStart(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->pauseTimers()V

    .line 3
    invoke-virtual {p0}, Lsmartisan/widget/search/WebSearchViewGroup;->getCheckedIndex()I

    move-result v0

    iput v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mCheckedIndex:I

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "is_need_loadurl"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mIsNeedLoadUrl:Z

    .line 2
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V

    .line 3
    invoke-virtual {p0}, Lsmartisan/widget/search/WebSearchViewGroup;->checkNetwork()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "is_need_loadurl"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mIsNeedLoadUrl:Z

    .line 2
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mRadioFrameLayout:Lsmartisan/widget/search/RadioFrameLayout;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lsmartisan/widget/search/RadioFrameLayout;->reset()V

    :cond_0
    return-void
.end method

.method public setAdapter(Lsmartisan/widget/search/WebSearchAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mAdapter:Lsmartisan/widget/search/WebSearch;

    .line 2
    invoke-direct {p0}, Lsmartisan/widget/search/WebSearchViewGroup;->setupWebView()V

    return-void
.end method

.method public setAutoFinishAfterGoBrowser(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mIsAutoFinishAfterGoBrowser:Z

    return-void
.end method

.method public setAutoFinishAfterSetting(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mIsAutoFinishAfterSetting:Z

    return-void
.end method

.method public setCheckedIndex(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mRadioFrameLayout:Lsmartisan/widget/search/RadioFrameLayout;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lsmartisan/widget/search/RadioFrameLayout;->setCheckedIndex(I)V

    :cond_0
    return-void
.end method

.method public setData(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lsmartisan/widget/search/data/GloableSearchConfig;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lsmartisan/widget/search/data/GloableSearchConfig;

    iput-object p1, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mConfig:Lsmartisan/widget/search/data/GloableSearchConfig;

    .line 3
    invoke-virtual {p0}, Lsmartisan/widget/search/WebSearchViewGroup;->reset()V

    .line 4
    invoke-direct {p0}, Lsmartisan/widget/search/WebSearchViewGroup;->setupRadioFrameView()V

    .line 5
    iget-boolean p1, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mIsRecordCheckedIndex:Z

    if-eqz p1, :cond_0

    .line 6
    iget p1, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mCheckedIndex:I

    invoke-virtual {p0, p1}, Lsmartisan/widget/search/WebSearchViewGroup;->setCheckedIndex(I)V

    :cond_0
    return-void
.end method

.method public setProgressValue(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mRadioFrameLayout:Lsmartisan/widget/search/RadioFrameLayout;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lsmartisan/widget/search/RadioFrameLayout;->setProgressValue(I)V

    :cond_0
    return-void
.end method

.method public setRecordCheckedIndex(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mIsRecordCheckedIndex:Z

    return-void
.end method

.method public setSearchText(Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lsmartisan/widget/search/WebSearchViewGroup;->setSearchTextTitle(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mRadioFrameLayout:Lsmartisan/widget/search/RadioFrameLayout;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Lsmartisan/widget/search/RadioFrameLayout;->setChecked()V

    :cond_0
    return-void
.end method

.method public setSearchText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lsmartisan/widget/search/WebSearchViewGroup;->setSearchTextTitle(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mRadioFrameLayout:Lsmartisan/widget/search/RadioFrameLayout;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1, p2}, Lsmartisan/widget/search/RadioFrameLayout;->setCheckedWithSearchType(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setSearchTextTitle(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    .line 2
    :cond_0
    iput-object p1, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mSearchText:Ljava/lang/String;

    return-void
.end method

.method public setTrackerCallBack(Lsmartisan/widget/search/WebSearchViewGroup$TrackerCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mTrackerCallback:Lsmartisan/widget/search/WebSearchViewGroup$TrackerCallback;

    return-void
.end method

.method public showNetworkView(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mNetworkLayout:Lsmartisan/widget/search/NetworkView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 2
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mNetworkLayout:Lsmartisan/widget/search/NetworkView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchViewGroup;->mNetworkLayout:Lsmartisan/widget/search/NetworkView;

    invoke-virtual {v0, p1}, Lsmartisan/widget/search/NetworkView;->setStatus(I)V

    :cond_1
    :goto_0
    return-void
.end method
