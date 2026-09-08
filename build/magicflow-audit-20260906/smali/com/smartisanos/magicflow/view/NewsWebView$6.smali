.class Lcom/smartisanos/magicflow/view/NewsWebView$6;
.super Landroid/webkit/WebViewClient;
.source "NewsWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/view/NewsWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mLoadError:Z

.field final synthetic this$0:Lcom/smartisanos/magicflow/view/NewsWebView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/NewsWebView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/NewsWebView$6;->this$0:Lcom/smartisanos/magicflow/view/NewsWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/NewsWebView$6;->this$0:Lcom/smartisanos/magicflow/view/NewsWebView;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/smartisanos/magicflow/view/NewsWebView;->access$002(Lcom/smartisanos/magicflow/view/NewsWebView;Z)Z

    .line 3
    iget-boolean p2, p0, Lcom/smartisanos/magicflow/view/NewsWebView$6;->mLoadError:Z

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 5
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    const-string p2, "javascript:(function(){\nvar objs = document.getElementsByClassName(\'article-content\')[0].getElementsByTagName(\'img\');\n;if (objs.length > 0){\n   for (var i=0;i<objs.length;i++){\n       objs[i].onclick = function(e){\n       window.mWebViewImageListener.openImage(e.target.dataset.index);\n       }\n   }\nwindow.mWebViewImageListener.getImageArrayString(JSON.stringify(window.CONTENT_INFO.images));\n} })()"

    .line 6
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/NewsWebView$6;->this$0:Lcom/smartisanos/magicflow/view/NewsWebView;

    invoke-static {p2}, Lcom/smartisanos/magicflow/view/NewsWebView;->access$900(Lcom/smartisanos/magicflow/view/NewsWebView;)V

    .line 8
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/NewsWebView$6;->this$0:Lcom/smartisanos/magicflow/view/NewsWebView;

    invoke-static {p2}, Lcom/smartisanos/magicflow/view/NewsWebView;->access$100(Lcom/smartisanos/magicflow/view/NewsWebView;)Lcom/smartisanos/magicflow/view/NoNetworkView;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 p2, 0x8

    .line 9
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 2
    sget-boolean p1, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/NewsWebView$6;->this$0:Lcom/smartisanos/magicflow/view/NewsWebView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/NewsWebView;->access$400(Lcom/smartisanos/magicflow/view/NewsWebView;)Lcom/smartisanos/magicflow/LOG;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPageStarted url ="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/view/NewsWebView$6;->mLoadError:Z

    .line 5
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/NewsWebView$6;->this$0:Lcom/smartisanos/magicflow/view/NewsWebView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/NewsWebView;->access$100(Lcom/smartisanos/magicflow/view/NewsWebView;)Lcom/smartisanos/magicflow/view/NoNetworkView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-boolean p1, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/NewsWebView$6;->this$0:Lcom/smartisanos/magicflow/view/NewsWebView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/NewsWebView;->access$400(Lcom/smartisanos/magicflow/view/NewsWebView;)Lcom/smartisanos/magicflow/LOG;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "errorCode ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " description="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " failingUrl="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/view/NewsWebView$6;->mLoadError:Z

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 2

    .line 1
    sget-boolean p1, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/NewsWebView$6;->this$0:Lcom/smartisanos/magicflow/view/NewsWebView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/NewsWebView;->access$400(Lcom/smartisanos/magicflow/view/NewsWebView;)Lcom/smartisanos/magicflow/LOG;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceivedSslError :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/net/http/SslError;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView$6;->this$0:Lcom/smartisanos/magicflow/view/NewsWebView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/NewsWebView;->access$200(Lcom/smartisanos/magicflow/view/NewsWebView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "open.toutiao.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView$6;->this$0:Lcom/smartisanos/magicflow/view/NewsWebView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/NewsWebView;->access$1300(Lcom/smartisanos/magicflow/view/NewsWebView;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    const-string v0, "/js/"

    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    .line 4
    :cond_1
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView$6;->this$0:Lcom/smartisanos/magicflow/view/NewsWebView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/NewsWebView;->access$400(Lcom/smartisanos/magicflow/view/NewsWebView;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldInterceptRequest:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_2
    const/16 v0, 0x2f

    .line 5
    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_4

    .line 6
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_4

    add-int/2addr v0, v2

    .line 7
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 8
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView$6;->this$0:Lcom/smartisanos/magicflow/view/NewsWebView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/NewsWebView;->access$1400(Lcom/smartisanos/magicflow/view/NewsWebView;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView$6;->this$0:Lcom/smartisanos/magicflow/view/NewsWebView;

    invoke-static {v0, v2}, Lcom/smartisanos/magicflow/view/NewsWebView;->access$1002(Lcom/smartisanos/magicflow/view/NewsWebView;Z)Z

    .line 10
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView$6;->this$0:Lcom/smartisanos/magicflow/view/NewsWebView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/NewsWebView;->access$1400(Lcom/smartisanos/magicflow/view/NewsWebView;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 11
    sget-boolean v1, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/NewsWebView$6;->this$0:Lcom/smartisanos/magicflow/view/NewsWebView;

    invoke-static {v1}, Lcom/smartisanos/magicflow/view/NewsWebView;->access$400(Lcom/smartisanos/magicflow/view/NewsWebView;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shouldInterceptRequest hit:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 12
    :cond_3
    :try_start_0
    new-instance p2, Landroid/webkit/WebResourceResponse;

    const-string v1, "application/javascript"

    const-string v2, "UTF8"

    iget-object v3, p0, Lcom/smartisanos/magicflow/view/NewsWebView$6;->this$0:Lcom/smartisanos/magicflow/view/NewsWebView;

    iget-object v3, v3, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    .line 13
    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p2, v1, v2, v0}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, p2

    goto :goto_0

    :catch_0
    move-exception p2

    .line 14
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_0
    return-object p1

    .line 15
    :cond_5
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/NewsWebView$6;->this$0:Lcom/smartisanos/magicflow/view/NewsWebView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/NewsWebView;->access$400(Lcom/smartisanos/magicflow/view/NewsWebView;)Lcom/smartisanos/magicflow/LOG;

    move-result-object p1

    const-string p2, "shouldOverrideUrlLoading return by url null"

    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return v1

    .line 3
    :cond_0
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView$6;->this$0:Lcom/smartisanos/magicflow/view/NewsWebView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/NewsWebView;->access$400(Lcom/smartisanos/magicflow/view/NewsWebView;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shouldOverrideUrlLoading url ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_1
    const-string v0, "http:"

    .line 5
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "https:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/NewsWebView$6;->this$0:Lcom/smartisanos/magicflow/view/NewsWebView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/NewsWebView;->access$400(Lcom/smartisanos/magicflow/view/NewsWebView;)Lcom/smartisanos/magicflow/LOG;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldOverrideUrlLoading return by url format wrong,url ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return v1

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView$6;->this$0:Lcom/smartisanos/magicflow/view/NewsWebView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/NewsWebView;->access$1000(Lcom/smartisanos/magicflow/view/NewsWebView;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "reader.s-reader.com"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 9
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/NewsWebView$6;->this$0:Lcom/smartisanos/magicflow/view/NewsWebView;

    iget-object v2, v2, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 11
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView$6;->this$0:Lcom/smartisanos/magicflow/view/NewsWebView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/NewsWebView;->access$400(Lcom/smartisanos/magicflow/view/NewsWebView;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shouldOverrideUrlLoading err url ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return v1

    .line 13
    :cond_3
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "snssdk"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 15
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView$6;->this$0:Lcom/smartisanos/magicflow/view/NewsWebView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/NewsWebView;->access$000(Lcom/smartisanos/magicflow/view/NewsWebView;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 16
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView$6;->this$0:Lcom/smartisanos/magicflow/view/NewsWebView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/NewsWebView;->access$1100(Lcom/smartisanos/magicflow/view/NewsWebView;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 17
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView$6;->this$0:Lcom/smartisanos/magicflow/view/NewsWebView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/NewsWebView;->access$1200(Lcom/smartisanos/magicflow/view/NewsWebView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 18
    :cond_5
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v1
.end method
