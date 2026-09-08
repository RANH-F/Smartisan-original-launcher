.class Lsmartisan/widget/search/WebSearchAdapter$3;
.super Landroid/webkit/WebChromeClient;
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
.field final synthetic this$0:Lsmartisan/widget/search/WebSearchAdapter;


# direct methods
.method constructor <init>(Lsmartisan/widget/search/WebSearchAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/search/WebSearchAdapter$3;->this$0:Lsmartisan/widget/search/WebSearchAdapter;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lsmartisan/widget/search/WebSearchAdapter$3;->this$0:Lsmartisan/widget/search/WebSearchAdapter;

    invoke-static {p1}, Lsmartisan/widget/search/WebSearchAdapter;->access$800(Lsmartisan/widget/search/WebSearchAdapter;)Lsmartisan/widget/search/WebSearchViewGroup;

    move-result-object p1

    invoke-virtual {p1, p2}, Lsmartisan/widget/search/WebSearchViewGroup;->setProgressValue(I)V

    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lsmartisan/widget/search/WebSearchAdapter$3;->this$0:Lsmartisan/widget/search/WebSearchAdapter;

    const/4 v0, 0x0

    iput-boolean v0, p2, Lsmartisan/widget/search/WebSearchAdapter;->mOverrideUrl:Z

    .line 3
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lsmartisan/widget/search/WebSearchAdapter;->access$900(Lsmartisan/widget/search/WebSearchAdapter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p2, p0, Lsmartisan/widget/search/WebSearchAdapter$3;->this$0:Lsmartisan/widget/search/WebSearchAdapter;

    invoke-static {p2}, Lsmartisan/widget/search/WebSearchAdapter;->access$800(Lsmartisan/widget/search/WebSearchAdapter;)Lsmartisan/widget/search/WebSearchViewGroup;

    move-result-object p2

    invoke-virtual {p2, p1}, Lsmartisan/widget/search/WebSearchViewGroup;->setSearchTextTitle(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lsmartisan/widget/search/WebSearchAdapter$3;->this$0:Lsmartisan/widget/search/WebSearchAdapter;

    iget-object p1, p1, Lsmartisan/widget/search/WebSearchAdapter;->mUploadMessage:Landroid/webkit/ValueCallback;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lsmartisan/widget/search/WebSearchAdapter$3;->this$0:Lsmartisan/widget/search/WebSearchAdapter;

    iput-object v0, p1, Lsmartisan/widget/search/WebSearchAdapter;->mUploadMessage:Landroid/webkit/ValueCallback;

    .line 4
    :cond_0
    iget-object p1, p0, Lsmartisan/widget/search/WebSearchAdapter$3;->this$0:Lsmartisan/widget/search/WebSearchAdapter;

    iput-object p2, p1, Lsmartisan/widget/search/WebSearchAdapter;->mUploadMessage:Landroid/webkit/ValueCallback;

    .line 5
    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->createIntent()Landroid/content/Intent;

    move-result-object p1

    .line 6
    iget-object p2, p0, Lsmartisan/widget/search/WebSearchAdapter$3;->this$0:Lsmartisan/widget/search/WebSearchAdapter;

    invoke-static {p2}, Lsmartisan/widget/search/WebSearchAdapter;->access$100(Lsmartisan/widget/search/WebSearchAdapter;)Landroid/content/Context;

    move-result-object p2

    instance-of p2, p2, Landroid/app/Activity;

    if-eqz p2, :cond_1

    .line 7
    :try_start_0
    iget-object p2, p0, Lsmartisan/widget/search/WebSearchAdapter$3;->this$0:Lsmartisan/widget/search/WebSearchAdapter;

    invoke-static {p2}, Lsmartisan/widget/search/WebSearchAdapter;->access$100(Lsmartisan/widget/search/WebSearchAdapter;)Landroid/content/Context;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    const/16 p3, 0x64

    invoke-virtual {p2, p1, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8
    :catch_0
    iget-object p1, p0, Lsmartisan/widget/search/WebSearchAdapter$3;->this$0:Lsmartisan/widget/search/WebSearchAdapter;

    iput-object v0, p1, Lsmartisan/widget/search/WebSearchAdapter;->mUploadMessage:Landroid/webkit/ValueCallback;

    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
