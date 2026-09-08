.class Lsmartisan/widget/search/WebSearchViewGroup$1;
.super Ljava/lang/Object;
.source "WebSearchViewGroup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/search/WebSearchViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/search/WebSearchViewGroup;


# direct methods
.method constructor <init>(Lsmartisan/widget/search/WebSearchViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/search/WebSearchViewGroup$1;->this$0:Lsmartisan/widget/search/WebSearchViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lsmartisan/widget/search/WebSearchViewGroup$1;->this$0:Lsmartisan/widget/search/WebSearchViewGroup;

    iget-object p1, p1, Lsmartisan/widget/search/WebSearchViewGroup;->mWebView:Landroid/webkit/WebView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lsmartisan/widget/search/WebSearchViewGroup$1;->this$0:Lsmartisan/widget/search/WebSearchViewGroup;

    iget-object p1, p1, Lsmartisan/widget/search/WebSearchViewGroup;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    .line 3
    :cond_0
    iget-object p1, p0, Lsmartisan/widget/search/WebSearchViewGroup$1;->this$0:Lsmartisan/widget/search/WebSearchViewGroup;

    invoke-static {p1}, Lsmartisan/widget/search/WebSearchViewGroup;->access$000(Lsmartisan/widget/search/WebSearchViewGroup;)Lsmartisan/widget/search/WebSearchViewGroup$TrackerCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lsmartisan/widget/search/WebSearchViewGroup$1;->this$0:Lsmartisan/widget/search/WebSearchViewGroup;

    invoke-static {p1}, Lsmartisan/widget/search/WebSearchViewGroup;->access$000(Lsmartisan/widget/search/WebSearchViewGroup;)Lsmartisan/widget/search/WebSearchViewGroup$TrackerCallback;

    move-result-object p1

    invoke-interface {p1}, Lsmartisan/widget/search/WebSearchViewGroup$TrackerCallback;->onBackOnClick()V

    :cond_1
    return-void
.end method
