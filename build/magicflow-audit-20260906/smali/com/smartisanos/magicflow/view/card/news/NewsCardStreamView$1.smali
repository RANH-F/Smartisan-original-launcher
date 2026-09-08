.class Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView$1;
.super Ljava/lang/Object;
.source "NewsCardStreamView.java"

# interfaces
.implements Lcom/smartisanos/magicflow/view/card/news/NoNetWorkButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;-><init>(Landroid/content/Context;Lcom/smartisanos/magicflow/h/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView$1;->this$0:Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onButtonClick(Landroid/view/View;I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView$1;->this$0:Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->access$000(Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView$1;->this$0:Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->access$100(Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;)Lcom/smartisanos/magicflow/view/NoNetworkView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView$1;->this$0:Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->refreshListData(Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/smartisanos/magicflow/o/j;->a(Landroid/content/Context;Z)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/smartisanos/magicflow/o/j;->b(Landroid/content/Context;Z)V

    :goto_0
    return-void
.end method
