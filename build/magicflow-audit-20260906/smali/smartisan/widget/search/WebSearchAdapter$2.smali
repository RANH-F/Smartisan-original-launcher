.class Lsmartisan/widget/search/WebSearchAdapter$2;
.super Landroid/webkit/WebViewClient;
.source "WebSearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/search/WebSearchAdapter;->initListenerAndClient()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mHasRetried:Z

.field mIsReloading:Z

.field mReceivedError:Z

.field final synthetic this$0:Lsmartisan/widget/search/WebSearchAdapter;


# direct methods
.method constructor <init>(Lsmartisan/widget/search/WebSearchAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/search/WebSearchAdapter$2;->this$0:Lsmartisan/widget/search/WebSearchAdapter;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchAdapter$2;->this$0:Lsmartisan/widget/search/WebSearchAdapter;

    invoke-static {v0}, Lsmartisan/widget/search/WebSearchAdapter;->access$700(Lsmartisan/widget/search/WebSearchAdapter;)Lsmartisan/widget/search/WebSearchAdapter$TimeoutHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    iget-boolean v0, p0, Lsmartisan/widget/search/WebSearchAdapter$2;->mReceivedError:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lsmartisan/widget/search/WebSearchAdapter$2;->this$0:Lsmartisan/widget/search/WebSearchAdapter;

    invoke-static {v0}, Lsmartisan/widget/search/WebSearchAdapter;->access$300(Lsmartisan/widget/search/WebSearchAdapter;)Lsmartisan/widget/search/WebSearchAdapter$WebViewListenr;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchAdapter$2;->this$0:Lsmartisan/widget/search/WebSearchAdapter;

    invoke-static {v0}, Lsmartisan/widget/search/WebSearchAdapter;->access$300(Lsmartisan/widget/search/WebSearchAdapter;)Lsmartisan/widget/search/WebSearchAdapter$WebViewListenr;

    move-result-object v0

    invoke-interface {v0}, Lsmartisan/widget/search/WebSearchAdapter$WebViewListenr;->onPageFinishedSuccess()V

    .line 4
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchAdapter$2;->this$0:Lsmartisan/widget/search/WebSearchAdapter;

    invoke-static {v0}, Lsmartisan/widget/search/WebSearchAdapter;->access$300(Lsmartisan/widget/search/WebSearchAdapter;)Lsmartisan/widget/search/WebSearchAdapter$WebViewListenr;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchAdapter$2;->this$0:Lsmartisan/widget/search/WebSearchAdapter;

    invoke-static {v0}, Lsmartisan/widget/search/WebSearchAdapter;->access$300(Lsmartisan/widget/search/WebSearchAdapter;)Lsmartisan/widget/search/WebSearchAdapter$WebViewListenr;

    move-result-object v0

    invoke-interface {v0, p2}, Lsmartisan/widget/search/WebSearchAdapter$WebViewListenr;->onPageFinished(Ljava/lang/String;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchAdapter$2;->this$0:Lsmartisan/widget/search/WebSearchAdapter;

    invoke-static {v0}, Lsmartisan/widget/search/WebSearchAdapter;->access$400(Lsmartisan/widget/search/WebSearchAdapter;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchAdapter$2;->this$0:Lsmartisan/widget/search/WebSearchAdapter;

    invoke-static {v0, v1}, Lsmartisan/widget/search/WebSearchAdapter;->access$402(Lsmartisan/widget/search/WebSearchAdapter;Z)Z

    .line 8
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchAdapter$2;->this$0:Lsmartisan/widget/search/WebSearchAdapter;

    invoke-static {v0}, Lsmartisan/widget/search/WebSearchAdapter;->access$600(Lsmartisan/widget/search/WebSearchAdapter;)Landroid/webkit/WebView;

    move-result-object v0

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->goBackOrForward(I)V

    .line 9
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchAdapter$2;->this$0:Lsmartisan/widget/search/WebSearchAdapter;

    invoke-static {v0}, Lsmartisan/widget/search/WebSearchAdapter;->access$600(Lsmartisan/widget/search/WebSearchAdapter;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 10
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 11
    iget-boolean p1, p0, Lsmartisan/widget/search/WebSearchAdapter$2;->mIsReloading:Z

    if-nez p1, :cond_3

    .line 12
    iput-boolean v1, p0, Lsmartisan/widget/search/WebSearchAdapter$2;->mHasRetried:Z

    .line 13
    :cond_3
    iget-object p1, p0, Lsmartisan/widget/search/WebSearchAdapter$2;->this$0:Lsmartisan/widget/search/WebSearchAdapter;

    invoke-static {p1}, Lsmartisan/widget/search/WebSearchAdapter;->access$500(Lsmartisan/widget/search/WebSearchAdapter;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object p2, p0, Lsmartisan/widget/search/WebSearchAdapter$2;->this$0:Lsmartisan/widget/search/WebSearchAdapter;

    invoke-static {p2}, Lsmartisan/widget/search/WebSearchAdapter;->access$600(Lsmartisan/widget/search/WebSearchAdapter;)Landroid/webkit/WebView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 14
    iget-boolean p1, p0, Lsmartisan/widget/search/WebSearchAdapter$2;->mReceivedError:Z

    if-nez p1, :cond_4

    .line 15
    iget-object p1, p0, Lsmartisan/widget/search/WebSearchAdapter$2;->this$0:Lsmartisan/widget/search/WebSearchAdapter;

    invoke-static {p1}, Lsmartisan/widget/search/WebSearchAdapter;->access$800(Lsmartisan/widget/search/WebSearchAdapter;)Lsmartisan/widget/search/WebSearchViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Lsmartisan/widget/search/WebSearchViewGroup;->hideNetworkView()V

    :cond_4
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 2
    iget-object p1, p0, Lsmartisan/widget/search/WebSearchAdapter$2;->this$0:Lsmartisan/widget/search/WebSearchAdapter;

    invoke-static {p1}, Lsmartisan/widget/search/WebSearchAdapter;->access$200(Lsmartisan/widget/search/WebSearchAdapter;)Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lsmartisan/widget/search/WebSearchAdapter$2;->this$0:Lsmartisan/widget/search/WebSearchAdapter;

    invoke-static {p1}, Lsmartisan/widget/search/WebSearchAdapter;->access$300(Lsmartisan/widget/search/WebSearchAdapter;)Lsmartisan/widget/search/WebSearchAdapter$WebViewListenr;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lsmartisan/widget/search/WebSearchAdapter$2;->this$0:Lsmartisan/widget/search/WebSearchAdapter;

    invoke-static {p1, p3}, Lsmartisan/widget/search/WebSearchAdapter;->access$202(Lsmartisan/widget/search/WebSearchAdapter;Z)Z

    .line 4
    iget-object p1, p0, Lsmartisan/widget/search/WebSearchAdapter$2;->this$0:Lsmartisan/widget/search/WebSearchAdapter;

    invoke-static {p1}, Lsmartisan/widget/search/WebSearchAdapter;->access$300(Lsmartisan/widget/search/WebSearchAdapter;)Lsmartisan/widget/search/WebSearchAdapter$WebViewListenr;

    move-result-object p1

    invoke-interface {p1, p2}, Lsmartisan/widget/search/WebSearchAdapter$WebViewListenr;->onPageFirstStart(Ljava/lang/String;)V

    .line 5
    :cond_0
    iput-boolean p3, p0, Lsmartisan/widget/search/WebSearchAdapter$2;->mReceivedError:Z

    .line 6
    iget-object p1, p0, Lsmartisan/widget/search/WebSearchAdapter$2;->this$0:Lsmartisan/widget/search/WebSearchAdapter;

    invoke-static {p1}, Lsmartisan/widget/search/WebSearchAdapter;->access$400(Lsmartisan/widget/search/WebSearchAdapter;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lsmartisan/widget/search/WebSearchAdapter$2;->this$0:Lsmartisan/widget/search/WebSearchAdapter;

    invoke-static {p1}, Lsmartisan/widget/search/WebSearchAdapter;->access$500(Lsmartisan/widget/search/WebSearchAdapter;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lsmartisan/widget/search/WebSearchAdapter$2;->this$0:Lsmartisan/widget/search/WebSearchAdapter;

    invoke-static {p1}, Lsmartisan/widget/search/WebSearchAdapter;->access$500(Lsmartisan/widget/search/WebSearchAdapter;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object p2, p0, Lsmartisan/widget/search/WebSearchAdapter$2;->this$0:Lsmartisan/widget/search/WebSearchAdapter;

    invoke-static {p2}, Lsmartisan/widget/search/WebSearchAdapter;->access$600(Lsmartisan/widget/search/WebSearchAdapter;)Landroid/webkit/WebView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 9
    :goto_0
    iput-boolean p3, p0, Lsmartisan/widget/search/WebSearchAdapter$2;->mIsReloading:Z

    .line 10
    iget-object p1, p0, Lsmartisan/widget/search/WebSearchAdapter$2;->this$0:Lsmartisan/widget/search/WebSearchAdapter;

    invoke-static {p1}, Lsmartisan/widget/search/WebSearchAdapter;->access$700(Lsmartisan/widget/search/WebSearchAdapter;)Lsmartisan/widget/search/WebSearchAdapter$TimeoutHandler;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceivedError, code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " des="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebSearchAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchAdapter$2;->this$0:Lsmartisan/widget/search/WebSearchAdapter;

    invoke-static {v0}, Lsmartisan/widget/search/WebSearchAdapter;->access$800(Lsmartisan/widget/search/WebSearchAdapter;)Lsmartisan/widget/search/WebSearchViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsmartisan/widget/search/WebSearchViewGroup;->showNetworkView(I)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lsmartisan/widget/search/WebSearchAdapter$2;->mReceivedError:Z

    .line 4
    iget-boolean v1, p0, Lsmartisan/widget/search/WebSearchAdapter$2;->mHasRetried:Z

    if-nez v1, :cond_0

    .line 5
    iput-boolean v0, p0, Lsmartisan/widget/search/WebSearchAdapter$2;->mHasRetried:Z

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 6
    iput-boolean v0, p0, Lsmartisan/widget/search/WebSearchAdapter$2;->mIsReloading:Z

    .line 7
    iget-object p1, p0, Lsmartisan/widget/search/WebSearchAdapter$2;->this$0:Lsmartisan/widget/search/WebSearchAdapter;

    invoke-static {p1}, Lsmartisan/widget/search/WebSearchAdapter;->access$600(Lsmartisan/widget/search/WebSearchAdapter;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    goto :goto_0

    .line 8
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lsmartisan/widget/search/WebSearchAdapter$2;->mIsReloading:Z

    if-nez p1, :cond_2

    .line 10
    iget-object p1, p0, Lsmartisan/widget/search/WebSearchAdapter$2;->this$0:Lsmartisan/widget/search/WebSearchAdapter;

    invoke-static {p1}, Lsmartisan/widget/search/WebSearchAdapter;->access$600(Lsmartisan/widget/search/WebSearchAdapter;)Landroid/webkit/WebView;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceivedSslError"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/net/http/SslError;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "WebSearchAdapter"

    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lsmartisan/widget/search/WebSearchAdapter$2;->this$0:Lsmartisan/widget/search/WebSearchAdapter;

    invoke-static {p1}, Lsmartisan/widget/search/WebSearchAdapter;->access$800(Lsmartisan/widget/search/WebSearchAdapter;)Lsmartisan/widget/search/WebSearchViewGroup;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lsmartisan/widget/search/WebSearchViewGroup;->showNetworkView(I)V

    .line 3
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "http://"

    .line 1
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "https://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v0, 0x1

    invoke-static {p2, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 4
    iget-object p1, p0, Lsmartisan/widget/search/WebSearchAdapter$2;->this$0:Lsmartisan/widget/search/WebSearchAdapter;

    invoke-static {p1}, Lsmartisan/widget/search/WebSearchAdapter;->access$100(Lsmartisan/widget/search/WebSearchAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/high16 v2, 0x10000

    invoke-virtual {p1, p2, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lsmartisan/widget/search/WebSearchAdapter$2;->this$0:Lsmartisan/widget/search/WebSearchAdapter;

    invoke-static {p1, p2}, Lsmartisan/widget/search/WebSearchAdapter;->access$000(Lsmartisan/widget/search/WebSearchAdapter;Landroid/content/Intent;)V

    .line 6
    iget-object p1, p0, Lsmartisan/widget/search/WebSearchAdapter$2;->this$0:Lsmartisan/widget/search/WebSearchAdapter;

    invoke-static {p1}, Lsmartisan/widget/search/WebSearchAdapter;->access$100(Lsmartisan/widget/search/WebSearchAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "WebSearchAdapter"

    const-string v0, "Can\'t resolve url:"

    .line 7
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8
    :cond_0
    :goto_0
    iget-object p1, p0, Lsmartisan/widget/search/WebSearchAdapter$2;->this$0:Lsmartisan/widget/search/WebSearchAdapter;

    iput-boolean v1, p1, Lsmartisan/widget/search/WebSearchAdapter;->mOverrideUrl:Z

    return v1
.end method
