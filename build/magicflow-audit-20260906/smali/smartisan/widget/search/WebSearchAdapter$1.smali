.class Lsmartisan/widget/search/WebSearchAdapter$1;
.super Ljava/lang/Object;
.source "WebSearchAdapter.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


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
    iput-object p1, p0, Lsmartisan/widget/search/WebSearchAdapter$1;->this$0:Lsmartisan/widget/search/WebSearchAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 2
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p2, p3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3
    iget-object p1, p0, Lsmartisan/widget/search/WebSearchAdapter$1;->this$0:Lsmartisan/widget/search/WebSearchAdapter;

    invoke-static {p1, p2}, Lsmartisan/widget/search/WebSearchAdapter;->access$000(Lsmartisan/widget/search/WebSearchAdapter;Landroid/content/Intent;)V

    .line 4
    iget-object p1, p0, Lsmartisan/widget/search/WebSearchAdapter$1;->this$0:Lsmartisan/widget/search/WebSearchAdapter;

    invoke-static {p1}, Lsmartisan/widget/search/WebSearchAdapter;->access$100(Lsmartisan/widget/search/WebSearchAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
