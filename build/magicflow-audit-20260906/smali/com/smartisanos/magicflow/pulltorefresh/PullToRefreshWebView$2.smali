.class Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshWebView$2;
.super Landroid/webkit/WebChromeClient;
.source "PullToRefreshWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshWebView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshWebView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshWebView$2;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    const/16 p1, 0x64

    if-ne p2, p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshWebView$2;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshWebView;

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->onRefreshComplete()V

    :cond_0
    return-void
.end method
