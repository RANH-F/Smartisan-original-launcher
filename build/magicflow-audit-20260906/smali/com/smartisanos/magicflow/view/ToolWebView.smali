.class public Lcom/smartisanos/magicflow/view/ToolWebView;
.super Lcom/smartisanos/magicflow/view/BaseView;
.source "ToolWebView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TOOL_WEB_URL_TYPE:Ljava/lang/String; = "tool_web_url_type"


# instance fields
.field private isExpressProtocol:Z

.field private log:Lcom/smartisanos/magicflow/LOG;

.field private mNoNetwork:Lcom/smartisanos/magicflow/view/NoNetworkView;

.field private mTitle:Lsmartisan/widget/TitleBar;

.field private mUrl:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;

.field private mWebViewClient:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const v0, 0x7f0b00e8

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/smartisanos/magicflow/view/BaseView;-><init>(Landroid/content/Context;I)V

    .line 2
    const-class p1, Lcom/smartisanos/magicflow/view/ToolWebView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/ToolWebView;->log:Lcom/smartisanos/magicflow/LOG;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/view/ToolWebView;->isExpressProtocol:Z

    .line 4
    new-instance p1, Lcom/smartisanos/magicflow/view/ToolWebView$7;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/view/ToolWebView$7;-><init>(Lcom/smartisanos/magicflow/view/ToolWebView;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/ToolWebView;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 5
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v0, 0x7f080373

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisan/widget/TitleBar;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/ToolWebView;->mTitle:Lsmartisan/widget/TitleBar;

    .line 6
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v0, 0x7f080383

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/ToolWebView;->mWebView:Landroid/webkit/WebView;

    .line 7
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v0, 0x7f080385

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/magicflow/view/NoNetworkView;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/ToolWebView;->mNoNetwork:Lcom/smartisanos/magicflow/view/NoNetworkView;

    .line 8
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/ToolWebView;->mWebView:Landroid/webkit/WebView;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 9
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/ToolWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/ToolWebView;->setWebViewConfig(Landroid/webkit/WebSettings;)V

    .line 10
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/ToolWebView;->mWebView:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ToolWebView;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 11
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/ToolWebView;->mTitle:Lsmartisan/widget/TitleBar;

    sget v0, Lsmartisan/widget/TitleBar;->BACK_ICON_RES:I

    invoke-virtual {p1, v0}, Lsmartisan/widget/TitleBar;->addLeftImageView(I)Landroid/widget/ImageView;

    move-result-object p1

    new-instance v0, Lcom/smartisanos/magicflow/view/ToolWebView$1;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/view/ToolWebView$1;-><init>(Lcom/smartisanos/magicflow/view/ToolWebView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    invoke-direct {p0, p2}, Lcom/smartisanos/magicflow/view/ToolWebView;->getUrl(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/ToolWebView;->mUrl:Ljava/lang/String;

    .line 13
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/ToolWebView;->mWebView:Landroid/webkit/WebView;

    new-instance p2, Lcom/smartisanos/magicflow/view/ToolWebView$2;

    invoke-direct {p2, p0}, Lcom/smartisanos/magicflow/view/ToolWebView$2;-><init>(Lcom/smartisanos/magicflow/view/ToolWebView;)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 14
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/ToolWebView;->mWebView:Landroid/webkit/WebView;

    iget-object p2, p0, Lcom/smartisanos/magicflow/view/ToolWebView;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/ToolWebView;->mNoNetwork:Lcom/smartisanos/magicflow/view/NoNetworkView;

    new-instance p2, Lcom/smartisanos/magicflow/view/ToolWebView$3;

    invoke-direct {p2, p0}, Lcom/smartisanos/magicflow/view/ToolWebView$3;-><init>(Lcom/smartisanos/magicflow/view/ToolWebView;)V

    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/view/NoNetworkView;->setButtonClickListener(Lcom/smartisanos/magicflow/view/card/news/NoNetWorkButtonClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/magicflow/view/ToolWebView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/ToolWebView;->onBack()V

    return-void
.end method

.method static synthetic access$100(Lcom/smartisanos/magicflow/view/ToolWebView;)Lcom/smartisanos/magicflow/LOG;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/ToolWebView;->log:Lcom/smartisanos/magicflow/LOG;

    return-object p0
.end method

.method static synthetic access$200(Lcom/smartisanos/magicflow/view/ToolWebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/ToolWebView;->showDownDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/smartisanos/magicflow/view/ToolWebView;)Lcom/smartisanos/magicflow/view/NoNetworkView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/ToolWebView;->mNoNetwork:Lcom/smartisanos/magicflow/view/NoNetworkView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/smartisanos/magicflow/view/ToolWebView;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/ToolWebView;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/smartisanos/magicflow/view/ToolWebView;)Landroid/webkit/WebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/ToolWebView;->mWebView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/smartisanos/magicflow/view/ToolWebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/ToolWebView;->startDownload(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/smartisanos/magicflow/view/ToolWebView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/magicflow/view/ToolWebView;->isExpressProtocol:Z

    return p0
.end method

.method static synthetic access$800(Lcom/smartisanos/magicflow/view/ToolWebView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/ToolWebView;->setNetworkViewState()V

    return-void
.end method

.method private getUrl(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "https://resource.smartisan.com/docs/sm_express_terms_of_service_cn.html"

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/ToolWebView;->mUrl:Ljava/lang/String;

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/ToolWebView;->isExpressProtocol:Z

    goto :goto_0

    :cond_1
    const-string p1, "openApp.jdMobile://virtual?params={\"category\":\"jump\",\"sourceValue\":\"win_Wuliu\",\"sourceType\":\"win_Search\",\"des\":\"orderDetail\",\"msf_type\":\"click\",\"M_sourceFrom\":\"chuizi\",\"orderId\":"

    .line 3
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/ToolWebView;->mUrl:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string p1, "https://huodong.m.taobao.com/act/snipcode.html?_wml_code=vvslIPG4dzypz9NyrjCAq5IPalrXJLavIpXHcBKguXM%3D"

    .line 4
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/ToolWebView;->mUrl:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string p1, "https://huodong.m.taobao.com/act/snipcode.html?_wml_code=vvslIPG4dzypz9NyrjCAq5IPalrXJLavIpXHcBKguXM%3D&_wml_path=pages/mail/mail"

    .line 5
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/ToolWebView;->mUrl:Ljava/lang/String;

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/ToolWebView;->mUrl:Ljava/lang/String;

    return-object p1
.end method

.method private onBack()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/b;->j()Lcom/smartisanos/magicflow/view/MagicFlowActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/MagicFlowActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method private setNetworkViewState()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ToolWebView;->mNoNetwork:Lcom/smartisanos/magicflow/view/NoNetworkView;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/j;->g(Landroid/content/Context;)Z

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/ToolWebView;->mNoNetwork:Lcom/smartisanos/magicflow/view/NoNetworkView;

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

.method private setTitle(I)V
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/ToolWebView;->mTitle:Lsmartisan/widget/TitleBar;

    const v0, 0x7f0d0152

    invoke-virtual {p1, v0}, Lsmartisan/widget/TitleBar;->setCenterText(I)V

    :goto_0
    return-void
.end method

.method private setWebViewConfig(Landroid/webkit/WebSettings;)V
    .locals 2

    const/4 v0, 0x2

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

.method private showDownDialog(Ljava/lang/String;)V
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

    new-instance v2, Lcom/smartisanos/magicflow/view/ToolWebView$4;

    invoke-direct {v2, p0}, Lcom/smartisanos/magicflow/view/ToolWebView$4;-><init>(Lcom/smartisanos/magicflow/view/ToolWebView;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d0124

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/smartisanos/magicflow/view/ToolWebView$5;

    invoke-direct {v2, p0, p1}, Lcom/smartisanos/magicflow/view/ToolWebView$5;-><init>(Lcom/smartisanos/magicflow/view/ToolWebView;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7
    new-instance p1, Lcom/smartisanos/magicflow/view/ToolWebView$6;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/view/ToolWebView$6;-><init>(Lcom/smartisanos/magicflow/view/ToolWebView;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 8
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private startDownload(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
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

    const-string p1, ""

    .line 5
    invoke-virtual {v2, v1, p1}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    const/4 p1, 0x1

    .line 6
    invoke-virtual {v2, p1}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    const-string v1, "application/vnd.android.package-archive"

    .line 7
    invoke-virtual {v2, v1}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 8
    invoke-virtual {v2}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    .line 9
    invoke-virtual {v2, p1}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    .line 10
    invoke-virtual {v0, v2}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    return-void
.end method


# virtual methods
.method public onAdd()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ToolWebView;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 3
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/ToolWebView;->setNetworkViewState()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/ToolWebView;->mNoNetwork:Lcom/smartisanos/magicflow/view/NoNetworkView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/ToolWebView;->mWebView:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ToolWebView;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onExit()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ToolWebView;->mNoNetwork:Lcom/smartisanos/magicflow/view/NoNetworkView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/view/NoNetworkView;->setButtonClickListener(Lcom/smartisanos/magicflow/view/card/news/NoNetWorkButtonClickListener;)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ToolWebView;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ToolWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/smartisanos/magicflow/view/ToolWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ToolWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ToolWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ToolWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ToolWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 9
    iput-object v1, p0, Lcom/smartisanos/magicflow/view/ToolWebView;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 10
    iput-object v1, p0, Lcom/smartisanos/magicflow/view/ToolWebView;->mWebView:Landroid/webkit/WebView;

    :cond_1
    return-void
.end method

.method public onRemove()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ToolWebView;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    :cond_0
    return-void
.end method
