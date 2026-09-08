.class public Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshWebView;
.super Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;
.source "PullToRefreshWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshWebView$InternalWebViewSDK9;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase<",
        "Landroid/webkit/WebView;",
        ">;"
    }
.end annotation


# static fields
.field private static final defaultOnRefreshListener:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnRefreshListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnRefreshListener<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final defaultWebChromeClient:Landroid/webkit/WebChromeClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshWebView$1;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshWebView$1;-><init>()V

    sput-object v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshWebView;->defaultOnRefreshListener:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnRefreshListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshWebView$2;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshWebView$2;-><init>(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshWebView;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshWebView;->defaultWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 3
    sget-object p1, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshWebView;->defaultOnRefreshListener:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnRefreshListener;

    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->setOnRefreshListener(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnRefreshListener;)V

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    check-cast p1, Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshWebView;->defaultWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    new-instance p1, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshWebView$2;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshWebView$2;-><init>(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshWebView;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshWebView;->defaultWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 7
    sget-object p1, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshWebView;->defaultOnRefreshListener:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnRefreshListener;

    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->setOnRefreshListener(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnRefreshListener;)V

    .line 8
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    check-cast p1, Landroid/webkit/WebView;

    iget-object p2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshWebView;->defaultWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;-><init>(Landroid/content/Context;Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;)V

    .line 10
    new-instance p1, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshWebView$2;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshWebView$2;-><init>(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshWebView;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshWebView;->defaultWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 11
    sget-object p1, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshWebView;->defaultOnRefreshListener:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnRefreshListener;

    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->setOnRefreshListener(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnRefreshListener;)V

    .line 12
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    check-cast p1, Landroid/webkit/WebView;

    iget-object p2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshWebView;->defaultWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$AnimationStyle;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;-><init>(Landroid/content/Context;Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$AnimationStyle;)V

    .line 14
    new-instance p1, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshWebView$2;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshWebView$2;-><init>(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshWebView;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshWebView;->defaultWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 15
    sget-object p1, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshWebView;->defaultOnRefreshListener:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnRefreshListener;

    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->setOnRefreshListener(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnRefreshListener;)V

    .line 16
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    check-cast p1, Landroid/webkit/WebView;

    iget-object p2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshWebView;->defaultWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshWebView;->createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/webkit/WebView;

    move-result-object p1

    return-object p1
.end method

.method protected createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/webkit/WebView;
    .locals 2

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 3
    new-instance v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshWebView$InternalWebViewSDK9;

    invoke-direct {v0, p0, p1, p2}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshWebView$InternalWebViewSDK9;-><init>(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshWebView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    :goto_0
    const p1, 0x7f080384

    .line 5
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setId(I)V

    return-object v0
.end method

.method public final getPullToRefreshScrollDirection()Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Orientation;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Orientation;->VERTICAL:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Orientation;

    return-object v0
.end method

.method protected isReadyForPullEnd()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    check-cast v1, Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    check-cast v1, Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    check-cast v2, Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isReadyForPullStart()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onPtrRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->onPtrRestoreInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    return-void
.end method

.method protected onPtrSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->onPtrSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    return-void
.end method
