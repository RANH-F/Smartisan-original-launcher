.class Lcom/smartisanos/magicflow/view/ToolWebView$7;
.super Landroid/webkit/WebViewClient;
.source "ToolWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/view/ToolWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mLoadError:Z

.field final synthetic this$0:Lcom/smartisanos/magicflow/view/ToolWebView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/ToolWebView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/ToolWebView$7;->this$0:Lcom/smartisanos/magicflow/view/ToolWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/ToolWebView$7;->mLoadError:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 4
    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ToolWebView$7;->this$0:Lcom/smartisanos/magicflow/view/ToolWebView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/ToolWebView;->access$700(Lcom/smartisanos/magicflow/view/ToolWebView;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "https://resource.smartisan.com/docs/sm_express_terms_of_service_cn.html"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "file:///android_asset/express_protocol.html"

    .line 6
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/ToolWebView$7;->this$0:Lcom/smartisanos/magicflow/view/ToolWebView;

    invoke-static {p2}, Lcom/smartisanos/magicflow/view/ToolWebView;->access$800(Lcom/smartisanos/magicflow/view/ToolWebView;)V

    .line 8
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/ToolWebView$7;->this$0:Lcom/smartisanos/magicflow/view/ToolWebView;

    invoke-static {p2}, Lcom/smartisanos/magicflow/view/ToolWebView;->access$300(Lcom/smartisanos/magicflow/view/ToolWebView;)Lcom/smartisanos/magicflow/view/NoNetworkView;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 p2, 0x8

    .line 9
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/view/ToolWebView$7;->mLoadError:Z

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/ToolWebView$7;->this$0:Lcom/smartisanos/magicflow/view/ToolWebView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/ToolWebView;->access$300(Lcom/smartisanos/magicflow/view/ToolWebView;)Lcom/smartisanos/magicflow/view/NoNetworkView;

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
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/ToolWebView$7;->this$0:Lcom/smartisanos/magicflow/view/ToolWebView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/ToolWebView;->access$100(Lcom/smartisanos/magicflow/view/ToolWebView;)Lcom/smartisanos/magicflow/LOG;

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
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/view/ToolWebView$7;->mLoadError:Z

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "http:"

    .line 1
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "https:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/ToolWebView$7;->this$0:Lcom/smartisanos/magicflow/view/ToolWebView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/ToolWebView;->access$000(Lcom/smartisanos/magicflow/view/ToolWebView;)V

    .line 3
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p2, 0x10000000

    .line 4
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p2, "com.taobao.taobao"

    .line 5
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/ToolWebView$7;->this$0:Lcom/smartisanos/magicflow/view/ToolWebView;

    iget-object p2, p2, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v1

    .line 8
    :cond_0
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v1
.end method
