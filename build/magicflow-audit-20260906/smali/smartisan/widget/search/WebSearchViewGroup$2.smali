.class Lsmartisan/widget/search/WebSearchViewGroup$2;
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
    iput-object p1, p0, Lsmartisan/widget/search/WebSearchViewGroup$2;->this$0:Lsmartisan/widget/search/WebSearchViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.GlobalSearchCategoryActivity"

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-object v0, p0, Lsmartisan/widget/search/WebSearchViewGroup$2;->this$0:Lsmartisan/widget/search/WebSearchViewGroup;

    invoke-static {v0}, Lsmartisan/widget/search/WebSearchViewGroup;->access$100(Lsmartisan/widget/search/WebSearchViewGroup;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 4
    iget-object p1, p0, Lsmartisan/widget/search/WebSearchViewGroup$2;->this$0:Lsmartisan/widget/search/WebSearchViewGroup;

    invoke-static {p1}, Lsmartisan/widget/search/WebSearchViewGroup;->access$100(Lsmartisan/widget/search/WebSearchViewGroup;)Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lsmartisan/widget/search/WebSearchViewGroup$2;->this$0:Lsmartisan/widget/search/WebSearchViewGroup;

    invoke-static {p1}, Lsmartisan/widget/search/WebSearchViewGroup;->access$200(Lsmartisan/widget/search/WebSearchViewGroup;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lsmartisan/widget/search/WebSearchViewGroup$2;->this$0:Lsmartisan/widget/search/WebSearchViewGroup;

    invoke-static {p1}, Lsmartisan/widget/search/WebSearchViewGroup;->access$100(Lsmartisan/widget/search/WebSearchViewGroup;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 6
    :cond_0
    iget-object p1, p0, Lsmartisan/widget/search/WebSearchViewGroup$2;->this$0:Lsmartisan/widget/search/WebSearchViewGroup;

    invoke-static {p1}, Lsmartisan/widget/search/WebSearchViewGroup;->access$000(Lsmartisan/widget/search/WebSearchViewGroup;)Lsmartisan/widget/search/WebSearchViewGroup$TrackerCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lsmartisan/widget/search/WebSearchViewGroup$2;->this$0:Lsmartisan/widget/search/WebSearchViewGroup;

    invoke-static {p1}, Lsmartisan/widget/search/WebSearchViewGroup;->access$000(Lsmartisan/widget/search/WebSearchViewGroup;)Lsmartisan/widget/search/WebSearchViewGroup$TrackerCallback;

    move-result-object p1

    invoke-interface {p1}, Lsmartisan/widget/search/WebSearchViewGroup$TrackerCallback;->onSettingClick()V

    :cond_1
    return-void
.end method
